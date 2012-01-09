class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.text :opening_hours
      t.timestamps
    end
  end
end
