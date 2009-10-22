class AddPublishToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :published, :boolean
  end

  def self.down
    remove_column :posts, :puublished
  end
end
