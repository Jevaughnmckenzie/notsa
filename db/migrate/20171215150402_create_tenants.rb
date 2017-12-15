class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.belongs_to :property, foreign_key: true

      t.timestamps
    end
  end
end
