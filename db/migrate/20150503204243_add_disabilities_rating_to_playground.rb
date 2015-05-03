class AddDisabilitiesRatingToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :disabilities_rating, :integer
  end
end
