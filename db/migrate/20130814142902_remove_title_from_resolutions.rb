class RemoveTitleFromResolutions < ActiveRecord::Migration
  def up
    remove_column :resolutions, :title
  end

  def down
    add_column :resolutions, :title, :string
  end
end
