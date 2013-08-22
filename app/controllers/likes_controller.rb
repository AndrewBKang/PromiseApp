class LikesController < ApplicationController
  
  def create
    @like = Like.new(params[:like])
    @like.user_id = current_user.id
    render nothing: true if @like.save && request.xhr?
  end
  
  def unlike
    @like = Like.find_by_user_id_and_likeable_id_and_likeable_type(
    current_user.id,params[:like][:likeable_id],params[:like][:likeable_type])
    @like.destroy
    if request.xhr?
      render nothing:true
    end
  end
  
end
