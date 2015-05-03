class AddImageurlToPlaygrounds < ActiveRecord::Migration
  def change
    add_column :playgrounds, :imageurl, :text
  end
end
