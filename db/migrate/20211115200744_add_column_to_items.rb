class AddColumnToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :fixed_price, :boolean, default: false
  end
end
