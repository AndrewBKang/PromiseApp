class ResolutionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /posts
  # GET /posts.json
  def index
    @comment = Comment.new
    @resolutions = Resolution.order('id DESC').page(params[:page])
    render @resolutions if request.xhr?
  end
  
  def create
    @resolution = Resolution.create(params[:resolution])
    @resolution.friend_activities.create
    
    if request.xhr?
      render partial: @resolution
    else
      redirect_to profile_url
    end
  end
  
  def show
    @resolution = Resolution.find(params[:id])
  end
  
end
