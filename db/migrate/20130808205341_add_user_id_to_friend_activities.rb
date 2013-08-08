class AddUserIdToFriendActivities < ActiveRecord::Migration
  def change
    add_column :friend_activities, :user_id, :integer
  end
end
