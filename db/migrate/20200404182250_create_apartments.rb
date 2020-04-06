class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.integer :rooms
      t.boolean :available_space
      t.string :address

      t.timestamps
    end
  end
end
