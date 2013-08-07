class ResolutionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @resolutions = Resolution.all
  end
  
  def create
    
    @resolution = Resolution.new(params[:resolution])
    @resolution.save
    
    if request.xhr?
      render partial: "resolution", locals: {resolution: @resolution}
    else
      redirect_to profile_url
    end
  end
  
end
