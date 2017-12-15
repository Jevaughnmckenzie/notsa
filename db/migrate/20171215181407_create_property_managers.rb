class CreatePropertyManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :property_managers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :company

      t.timestamps
    end
  end
end
