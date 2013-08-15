class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def profile
    @resolution = Resolution.new
    @resolutions = Resolution.where(user_id: current_user.id).order("id DESC").page(params[:page])
    render @resolutions if request.xhr?
  end
  
  def show
    @friendship = Friendship.new
    @resolutions = Resolution.where(user_id: params[:id]).order("id DESC")
    user = User.find(params[:id])
    @profile_pic = user.profile_photo.url(:small)
    @username = user.username
    @id = user.id
    @current_friends_ids = current_user.friends.map {|friend| friend.id}
    @not_friends = !(@current_friends_ids.include? @id)
    @existing_friendship = Friendship.find_by_user_id_and_friend_id(current_user.id,@id)
    @approved_friends = (@existing_friendship.status == 1) unless @not_friends
    @friendship_id = @existing_friendship.id if @approved_friends
  end
  
end
