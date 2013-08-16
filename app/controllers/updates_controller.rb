class UpdatesController < ApplicationController

  def create
    @update = Update.create(params[:update])
    if request.xhr?
      render @update
    end
  end
  
  def destroy
    
  end
  
end
