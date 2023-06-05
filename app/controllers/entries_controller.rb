# It provides common functionality for Entries.
class EntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_entry, only: %i[show destroy]

  # GET /entries or /entries.json
  def index
    @user = current_user
    @group = Group.find(params[:group_id])
    @entries = @group.entries.where(author_id: current_user.id).order(created_at: :desc)
  end

  # GET /entries/new
  def new
    @user = current_user
    @group = Group.find(params[:group_id])
    @entry = Entry.new
  end

  # POST /entries or /entries.json
  def create
    @group_ids = params[:entry][:group_ids]
    check_group_ids unless @group_ids.nil?

    respond_to do |format|
      if @entry.save
        format.html do
          redirect_to user_group_entries_path(current_user, @entry.groups.first),
                      notice: 'Transaction was successfully created.'
        end
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1 or /entries/1.json
  def destroy
    respond_to do |format|
      if @entry.destroy
        format.html { redirect_to user_group_entries_path, notice: 'Entry was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { redirect_to user_group_entries_path, notice: 'Error deleting entry.' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def entry_params
    params.require(:entry).permit(:name, :amount, group_ids: [])
  end

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def check_group_ids
    return unless @group_ids.present?

    @group_ids.each do |group_id|
      @group = Group.find(group_id)
      @entry = @group.entries.new(entry_params)
      @entry.author = current_user
      @entry.save
    end
  end
end
