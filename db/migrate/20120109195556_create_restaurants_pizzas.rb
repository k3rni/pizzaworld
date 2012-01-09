class CreateRestaurantsPizzas < ActiveRecord::Migration
  def up
    create_table :pizzas_restaurants do |t|
	t.integer :restaurant_id
	t.integer :pizza_id
    end
  end

  def down
    drop_table :pizzas_restaurants
  end
end
