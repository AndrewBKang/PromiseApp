class LikesController < ApplicationController
  
  def create
    @like = Like.new(params[:like])
    @like.user_id = current_user.id
    if @like.save && request.xhr?
      @like.notifications.create
      render nothing: true 
    end
  end
  
  def unlike
    @like = Like.find_by_user_id_and_likeable_id_and_likeable_type(
    current_user.id,params[:like][:likeable_id].to_i,params[:like][:likeable_type])
    @like.destroy
    if request.xhr?
      render nothing:true
    end
  end
  
end
