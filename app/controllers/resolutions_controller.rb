class ResolutionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @comment = Comment.new
    @resolutions = Resolution.includes(:user, likes: :user, comments: :user, updates:[:user, {comments: :user, likes: :user}]).order('id DESC').page(params[:page])
    render @resolutions if request.xhr?
  end
  
  def create
    @resolution = Resolution.create(params[:resolution])
    @resolution.friend_activities.create
    
    if request.xhr?
      render @resolution
    else
      redirect_to profile_url
    end
  end
  
  def show
    @resolution = Resolution.includes(:user, likes: :user, comments: :user, updates:[:user, {comments: :user, likes: :user}]).find(params[:id])
  end
  
end
