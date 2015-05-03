class AddFencingRatingToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :fencing_rating, :integer
  end
end
