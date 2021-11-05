class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :number
      t.string :cnpj
      t.string :company
      t.text :object

      t.timestamps
    end
  end
end
