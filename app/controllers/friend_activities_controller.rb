class FriendActivitiesController < ApplicationController
  
  def show
    @feeds = FriendActivity.feed(current_user)
  end
  
end
