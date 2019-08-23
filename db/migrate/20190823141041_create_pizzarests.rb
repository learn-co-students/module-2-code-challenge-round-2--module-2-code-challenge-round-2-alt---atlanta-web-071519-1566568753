class CreatePizzarests < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzarests do |t|
      t.string :pizza_id
      t.string :restaurant_id

      t.timestamps
    end
  end
end
