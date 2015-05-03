class AddOtherCoolFeaturesToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :other_cool_features, :text
  end
end
