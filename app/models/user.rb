class User < ActiveRecord::Base
  # Include default devise modules. Others available are: :confirmable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :token_authenticatable, :lockable,
         :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :profile_photo, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend
  has_many :notifications
  has_many :comments
  
  has_attached_file :profile_photo, :styles => {
    :big => "150x150#",
    :small => "50x50#",
    :thumb => "25x25#"
  }
  
  validates_presence_of :username
  
  validates_uniqueness_of :username
  
  def friend_requests
    unapproved_friendships = Friendship.includes(:user).where('friend_id = ? AND status = ?',self.id,0)
    unapproved_friendships.map { |friendship| {friendname: friendship.user.username,
                                               user_id: friendship.user_id,
                                               id: friendship.id} }
  end
  
  def approved_friends_ids
    approved_friendships = Friendship.where('user_id = ? AND status = ?', self.id, 1)
    approved_friendships.map { |friendship| friendship.friend_id }
  end
  
  def feed
    activities = FriendActivity.includes({activity: :user}).feed(self)
    activities.map { |friend_activity| {
                                        username: friend_activity.activity.user.username,
                                        picture: friend_activity.activity.user.profile_photo.url(:thumb),
                                        type: friend_activity.activity_type, 
                                        user_id: friend_activity.user_id,
                                        activity_id: friend_activity.id}}
  end
  
  def notifications_count
    self.notifications.where('read = ?',0).length
  end
  
  def unread_notifications
    self.notifications.select {|note| note.read == 0}.reverse
  end
  
end
