class Notification < ActiveRecord::Base
  attr_accessible :activity_id, :activity_type, :read, :user_id, :message
  
  belongs_to :activity, polymorphic: :true
  belongs_to :user
  
  after_initialize :init
  
  def init
    self.read ||= 0
    if self.activity_type == "Friendship"
      self.user_id ||= self.activity.friend_id
      self.message ||= "#{self.activity.user.username} accepted your friend request!"
    end
  end
  
  def set_read
    self.read = 1
    self.save
  end
  
end
