class AddPleasantSurroundingRatingToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :pleasant_surrounding_rating, :integer
  end
end
