class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :location
      t.integer :rooms
      t.integer :available_rooms
      t.belongs_to :property_manager, foreign_key: true

      t.timestamps
    end
  end
end
