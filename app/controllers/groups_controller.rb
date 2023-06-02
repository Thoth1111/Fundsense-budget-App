# It provides common functionality for Groups.
class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i[show edit update destroy]

  # GET /groups or /groups.json
  def index
    @user = current_user
    @groups = if params[:search]
      @user.groups.where('name LIKE ?', "%#{params[:search]}%")
    else
      @user.groups
    end
  end

  # GET /groups/1 or /groups/1.json
  def show; end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # POST /groups or /groups.json
  def create
    @group = current_user.groups.new(group_params)
    attach_icon if group_params[:icon]

    respond_to do |format|
      if @group.save
        format.html { redirect_to user_groups_path(current_user), notice: 'Category created successfully.' }
        format.json { render :show, status: :created, location: @group }
      else
        puts @group.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    respond_to do |format|
      if @group.destroy
        format.html { redirect_to user_groups_path(current_user), notice: 'Category deleted successfully.' }
        format.json { head :no_content }
      else
        format.html { redirect_to user_groups_path(current_user), notice: 'Error deleting category.' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @group = Group.find(params[:id])
  end

  #Attach icon to group
  def attach_icon
    @group.icon.attach(group_params[:icon])
  end

  # Only allow a list of trusted parameters through.
  def group_params
    params.require(:group).permit(:name, :icon).tap do |whitelisted|
      whitelisted[:icon] = params[:group][:icon]
    end
  end
end
