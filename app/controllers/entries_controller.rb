# It provides common functionality for Entries.
class EntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_entry, only: %i[show edit update destroy]

  # GET /entries or /entries.json
  def index
    @user = current_user
    @group = Group.find(params[:group_id])
    @entries = Entry.all
  end

  # GET /entries/1 or /entries/1.json
  def show; end

  # GET /entries/new
  def new
    @user = current_user
    @group = Group.find(params[:group_id])
    @entry = Entry.new
  end

  # POST /entries or /entries.json
  def create
    @entry = Entry.new(entry_params)
    @group = Group.find(params[:entry][:group_id])

    respond_to do |format|
      if save_entry
        format.html do
          redirect_to user_group_entries_path(current_user, @group), notice: 'Transaction was successfully created.'
        end
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /entries/1/edit
  def edit
    @group = Group.find(params[:group_id])
  end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    @entry = Entry.find(params[:id])
    @group = Group.find(params[:entry][:group_id])
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to user_group_entries_path(current_user, @group), notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
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

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = Entry.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entry_params
    params.require(:entry).permit(:name, :amount, :author_id, :group_id)
  end

  def save_entry
    @entry.group = @group
    @entry.author_id = current_user.id
    @entry.save
  end
end
