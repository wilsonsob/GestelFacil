class RemoveServiceCodeFromInvoices < ActiveRecord::Migration[6.0]
  def change
    remove_column :invoices, :service_code
  end
end
