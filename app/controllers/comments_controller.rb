class CommentsController < ApplicationController
  
  def create 
    params[:comment][:user_id] = current_user.id
    @comment = Comment.create(params[:comment])
    if request.xhr?
      render partial: @comment      
    end
  end
  
end
