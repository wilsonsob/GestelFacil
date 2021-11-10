class AddColumnsToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :service_name, :string
    add_column :invoices, :date_invoice, :date
  end
end
