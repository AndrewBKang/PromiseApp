class UsersController < ApplicationController
  
  def profile
    @resolution = Resolution.new()
    @resolutions = Resolution.where(user_id: current_user.id).order("id DESC")
  end
  
end
