class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
    	t.float :amount_due
    	t.string :due_date
    	t.boolean :overdue?, default: false
    	t.boolean :paid?, default: false
    	t.string :payment_method

    	t.belongs_to :tenant

      t.timestamps
    end
  end
end
