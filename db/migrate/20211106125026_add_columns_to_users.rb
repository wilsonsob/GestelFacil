class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :admin, :boolean, default: false
  end
end
