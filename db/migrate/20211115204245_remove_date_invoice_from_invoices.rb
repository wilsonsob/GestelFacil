class RemoveDateInvoiceFromInvoices < ActiveRecord::Migration[6.0]
  def change
    remove_column :invoices, :date_invoice
  end
end
