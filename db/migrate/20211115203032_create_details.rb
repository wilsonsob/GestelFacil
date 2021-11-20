class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.string :invoice_number
      t.integer :service_code
      t.string :cnpj_contractor
      t.float :value
      t.string :service_name
      t.date :date_invoice
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
