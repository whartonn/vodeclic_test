class AddUniqueConstraintToVideoUsers < ActiveRecord::Migration
  def change
    add_index :video_users, [:user_id, :video_id], :unique => true
  end
end
