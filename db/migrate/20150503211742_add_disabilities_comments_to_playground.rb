class AddDisabilitiesCommentsToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :disabilities_comments, :text
  end
end
