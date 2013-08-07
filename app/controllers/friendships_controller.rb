class FriendshipsController < ApplicationController
  
  def create
    @friendship = Friendship.new(params[:friendship])
    @friendship.user_id = current_user.id
    @friendship.save
    redirect_to User.find(@friendship.friend_id)
  end
  
  def update
    @friendship = Friendship.find(params[:id])
    @friendship.approve
    @friendship2 = Friendship.new({friend_id: @friendship.user_id, user_id: @friendship.friend_id})
    @friendship2.approve
    render :nothing => true
  end
  
end
