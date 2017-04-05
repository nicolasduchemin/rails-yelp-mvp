class AddInfoToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :category, :string
    add_column :restaurants, :phone_number, :string
  end
end
