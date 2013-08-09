class NotificationsController < ApplicationController
  
  def read
    if request.xhr?
      notes_to_read = current_user.unread_notifications[0..params[:count].to_i-1]
      notes_to_read.each { |note| note.set_read } unless params[:count] == 0
      render nothing: true
    end
  end
    # on button click, send the number of notifications to update, find those notifications and change the read column. 
  
end
