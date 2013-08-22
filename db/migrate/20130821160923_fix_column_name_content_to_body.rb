class FixColumnNameContentToBody < ActiveRecord::Migration
  def change
    rename_column :updates, :content, :body
  end
end
