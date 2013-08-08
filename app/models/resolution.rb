class Resolution < ActiveRecord::Base
  attr_accessible :body, :title, :user_id
  
  belongs_to :user
  has_many :friend_activities, as: :activity
  
end
