class CreateMaintenanceRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenance_requests do |t|
      t.string :subject
      t.text :description
      t.boolean :completed?
      t.timestamp :completed_at
      t.belongs_to :tenant, foreign_key: true
      t.belongs_to :property, foreign_key: true

      t.timestamps
    end
  end
end
