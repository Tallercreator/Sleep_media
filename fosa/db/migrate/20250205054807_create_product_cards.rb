class CreateProductCards < ActiveRecord::Migration[8.0]
  def change
    create_table :product_cards do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
