class AddVariousgRatingsToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :musical_features_rating, :integer
    add_column :playgrounds, :swings_rating, :integer
    add_column :playgrounds, :bucket_swings_rating, :integer
    add_column :playgrounds, :sprayground_play_fountain_rating, :integer
    add_column :playgrounds, :skate_park_rating, :integer
    add_column :playgrounds, :streams_rating, :integer
    add_column :playgrounds, :slide_ratings, :integer
    add_column :playgrounds, :climbing_structures_rating, :integer
    add_column :playgrounds, :spinning_structures_rating, :integer
    add_column :playgrounds, :rocking_structure, :integer
    add_column :playgrounds, :balance_features_rating, :integer
    add_column :playgrounds, :sandbox_rating, :integer
    add_column :playgrounds, :playhouse_rating, :integer
    add_column :playgrounds, :stage_rating, :integer
    add_column :playgrounds, :path_for_wheeled_toys_rating, :integer
    add_column :playgrounds, :basketball_courts_rating, :integer
    add_column :playgrounds, :surface_marked_for_games_rating, :integer
    add_column :playgrounds, :open_space_for_ball_play, :integer
    add_column :playgrounds, :woods_rating, :integer
    add_column :playgrounds, :garden_rating, :integer
    add_column :playgrounds, :natural_elements_rating, :integer
  end
end
