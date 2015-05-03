class AddIsSchoolToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :is_school, :boolean
  end
end
