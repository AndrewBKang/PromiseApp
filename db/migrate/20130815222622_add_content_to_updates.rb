class AddContentToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :content, :text
  end
end
