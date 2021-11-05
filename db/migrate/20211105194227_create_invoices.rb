class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :number
      t.integer :service_code
      t.float :value
      t.string :cnpj_contractor
      t.references :term, null: false, foreign_key: true

      t.timestamps
    end
  end
end
