class ResolutionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @resolutions = Resolution.all

  end
  
end
