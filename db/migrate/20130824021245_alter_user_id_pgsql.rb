class AlterUserIdPgsql < ActiveRecord::Migration
  def change
    execute %q{
      alter table likes
      alter column user_id
      type int using cast(user_id as int)
    }
  end
end
