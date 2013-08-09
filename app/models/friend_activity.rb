class FriendActivity < ActiveRecord::Base
  attr_accessible :activity_id, :activity_type
  
  belongs_to :activity, polymorphic: :true
  
  after_initialize :init
  
  def init
    self.user_id ||= self.activity.user_id
  end
  
  def self.feed(current_user_guy)
    self.where(user_id: current_user_guy.approved_friends_ids).order('id DESC')
  end
  
end
