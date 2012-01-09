class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.text :name
      t.text :description
      t.decimal :price, :scale => 2
      t.timestamps
    end
  end
end
