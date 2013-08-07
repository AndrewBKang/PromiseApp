class Friendship < ActiveRecord::Base
  attr_accessible :friend_id, :user_id
  
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: 'friend_id'
  
  validates_uniqueness_of :user_id, :scope => :friend_id
  
  after_initialize :init
  
  def init
    self.status ||= 0
  end
  
  def approve
    self.status = 1
    self.save
  end
  
end
