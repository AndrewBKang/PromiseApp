class Like < ActiveRecord::Base
  attr_accessible :likeable_id, :likeable_type, :user_id
  
  belongs_to :user
  belongs_to :likeable, polymorphic: true
  
  validates_uniqueness_of :user_id, :scope => [:likeable_id, :likeable_type]
  
end
