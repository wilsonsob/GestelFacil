class AddNoteToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :note, :text
  end
end
