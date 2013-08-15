class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :updateable_id
      t.string :updateable_type
      t.string :content
      t.attachment :update_photo

      t.timestamps
    end
  end
end
