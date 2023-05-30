# frozen_string_literal: true

# It provides common functionality for Entries.
class EntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_entry, only: %i[show edit update destroy]

  # GET /entries or /entries.json
  def index
    @user = User.find(params[:user_id])
    @group = Group.find(params[:group_id])
    @entries = Entry.all
  end

  # GET /entries/1 or /entries/1.json
  def show; end

  # GET /entries/new
  def new
    @user = User.find(params[:user_id])
    @group = Group.find(params[:group_id])
    @entry = Entry.new
  end

  # POST /entries or /entries.json
  def create
    @entry = Entry.new(entry_params)
    @group = Group.find(params[:entry][:group_id])

    respond_to do |format|
      if save_entry
        format.html { redirect_to user_group_entries_path(current_user, @group), notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /entries/1/edit
  def edit; end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to entry_url(@entry), notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1 or /entries/1.json
  def destroy
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
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
