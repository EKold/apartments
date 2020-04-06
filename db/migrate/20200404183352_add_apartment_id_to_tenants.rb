class AddApartmentIdToTenants < ActiveRecord::Migration[6.0]
  def change
    add_column :tenants, :apartment_id, :integer
  end
end
