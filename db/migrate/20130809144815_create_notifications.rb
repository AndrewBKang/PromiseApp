class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :activity_id
      t.string :activity_type
      t.integer :read
      t.string :message

      t.timestamps
    end
  end
end
