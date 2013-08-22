class LikesController < ApplicationController
  
  def create
    @like = Like.new(params[:like])
    @like.user_id = current_user.id
    if @like.save && request.xhr?
      render nothing: true
    end
  end
  
  def destroy
    Like.destroy(params[:id])
    if request.xhr?
      render nothing:true
    end
  end
  
end
