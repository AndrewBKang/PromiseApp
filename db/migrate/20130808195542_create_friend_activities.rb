class CreateFriendActivities < ActiveRecord::Migration
  def change
    create_table :friend_activities do |t|
      t.integer :activity_id
      t.string :activity_type

      t.timestamps
    end
  end
end
