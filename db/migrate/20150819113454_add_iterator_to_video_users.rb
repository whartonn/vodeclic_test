class AddIteratorToVideoUsers < ActiveRecord::Migration
  def change
    add_column :video_users, :iteration, :integer, :default => 0
  end
end
