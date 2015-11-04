class AddSpoilerToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :spoiler, :text
  end
end
