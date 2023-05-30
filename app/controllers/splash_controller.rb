# frozen_string_literal: true

# It provides common functionality for the splash screen.
class SplashController < ApplicationController
  def index
    if user_signed_in?
      redirect_to groups_path
    else
      render :index
    end
  end
end
