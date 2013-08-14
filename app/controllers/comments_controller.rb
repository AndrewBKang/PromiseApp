class CommentsController < ApplicationController
  
  def create 
    @comment = Comment.create(params[:comment])
    if request.xhr?
      render partial: @comment      
    end
  end
  
end
