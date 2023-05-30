# It provides common functionality for the splash screen.
class SplashController < ApplicationController
  def index
    if user_signed_in?
      redirect_to user_groups_path(current_user)
    else
      render :index
    end
  end
end
