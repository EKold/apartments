class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.integer :rent
      t.boolean :living_here_next_year

      t.timestamps
    end
  end
end
