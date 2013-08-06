class ResolutionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @resolutions = Resolution.all
  end
  
  def create
    @resolution = Resolution.new(params[:resolution])
    if @resolution.save
      redirect_to profile_url
    else
      
    end
  end
  
end
