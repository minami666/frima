class AddAddressesToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :family_name_knj, :string
    add_column :addresses, :first_name_knj, :string
    add_column :addresses, :family_name_ktkn, :string
    add_column :addresses, :first_name_ktkn, :string
    add_column :addresses, :tel, :string
  end
end
