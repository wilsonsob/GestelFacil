class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :item_number
      t.string :item_title
      t.integer :service_code
      t.integer :quantity
      t.float :price
      t.references :term, null: false, foreign_key: true

      t.timestamps
    end
  end
end
