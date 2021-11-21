class RemoveCnpjContractorFromInvoices < ActiveRecord::Migration[6.0]
  def change
    remove_column :invoices, :cnpj_contractor
  end
end
