class Update < ActiveRecord::Base
  attr_accessible :content, :update_photo, :updateable_id, :updateable_type
  
  belongs_to :updateable, polymorphic: true
  
  has_attached_file :update_photo, :styles => {
    
    :post_size => "250x250>",
  }
  
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  
end
