class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def profile
    @resolution = Resolution.new
    @resolutions = Resolution.where(user_id: current_user.id).order("id DESC")
  end
  
  def show
    @friendship = Friendship.new
    @resolutions = Resolution.where(user_id: params[:id]).order("id DESC")
    user = User.find(params[:id])
    @profile_pic = user.profile_photo.url(:small)
    @username = user.username
    @id = user.id
    @current_friends_ids = current_user.friends.map {|friend| friend.id}
    @already_friends = @current_friends_ids.include? @id
  end
  
end
