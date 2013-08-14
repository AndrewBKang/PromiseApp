class Like < ActiveRecord::Base
  attr_accessible :likeable_id, :likeable_type, :user_id
  
  belongs_to :likeable, polymorphic: true
  
  validates_uniqueness_of :user_id, :scope => [:likeable_id, :likeable_type]
  
  after_initialize :init
  
  def init
    self.user_id = current_user.id
  end
  
end
