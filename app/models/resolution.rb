class Resolution < ActiveRecord::Base
  attr_accessible :body, :title, :user_id
  
  belongs_to :user
  has_many :friend_activities, as: :activity, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :updates, as: :updateable, dependent: :destroy
  
end
