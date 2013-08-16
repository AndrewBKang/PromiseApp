class RemoveContentFromUpdates < ActiveRecord::Migration
  def up
    remove_column :updates, :content
  end

  def down
    add_column :updates, :content, :string
  end
end
