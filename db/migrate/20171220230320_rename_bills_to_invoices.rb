class RenameBillsToInvoices < ActiveRecord::Migration[5.1]
  def change
  	rename_table :bills, :invoices
  end
end
