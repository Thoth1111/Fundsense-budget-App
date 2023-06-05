class EntriesGroupsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @entry = Entry.find(params[:entry_id])
        @group = Group.find(params[:group_id])
        @entry.groups << @group
        redirect_to user_group_entries_path(current_user, @group)
    end
    
    def destroy
        @entry = Entry.find(params[:entry_id])
        @group = Group.find(params[:group_id])
        @entry.groups.delete(@group)
        redirect_to user_group_entries_path(current_user, @group)
    end
end
