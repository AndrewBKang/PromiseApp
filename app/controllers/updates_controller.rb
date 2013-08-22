class UpdatesController < ApplicationController

  def create
    @update = Update.new(params[:update])
    @update.user_id = current_user.id
    if @update.save && request.xhr?
      render @update
    end
  end
  
  def destroy
    
  end
  
end
