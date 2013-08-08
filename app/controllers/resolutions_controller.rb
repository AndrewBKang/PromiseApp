class ResolutionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @resolutions = Resolution.order('id DESC').all
  end
  
  def create
    
    @resolution = Resolution.create(params[:resolution])
    @resolution.friend_activities.create
    
    if request.xhr?
      render partial: "shared/resolution", locals: {resolution: @resolution}
    else
      redirect_to profile_url
    end
  end
  
end
