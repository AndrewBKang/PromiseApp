class User < ActiveRecord::Base
  # Include default devise modules. Others available are: :confirmable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :token_authenticatable, :lockable, 
         :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :profile_photo, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend
  
  has_attached_file :profile_photo, :styles => {
    :big => "150x150#",
    :small => "50x50#"
  }
  
  validates_presence_of :username
  
  validates_uniqueness_of :username
  
  def friend_requests
    unapproved_friendships = Friendship.where('friend_id = ? AND status = ?',self.id,0)
    unapproved_friendships.map { |friendship| {friendname: User.find(friendship.user_id).username,
                                               id: friendship.id} }
  end
  
end
