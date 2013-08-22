class Update < ActiveRecord::Base
  attr_accessible :body, :update_photo, :updateable_id, :updateable_type, :user_id
  
  belongs_to :user
  belongs_to :updateable, polymorphic: true
  
  has_attached_file :update_photo, :styles => {
    
    :post_size => "250x250>",
  }
  
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :friend_activities, as: :activity, dependent: :destroy
  
  validates_presence_of :body
  
end
