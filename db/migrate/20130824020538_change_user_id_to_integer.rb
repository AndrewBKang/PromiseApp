class ChangeUserIdToInteger < ActiveRecord::Migration
  def change
    change_column :likes, :user_id, :integer
  end
end
