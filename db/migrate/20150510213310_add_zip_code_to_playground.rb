class AddZipCodeToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :zip_code, :string
  end
end
