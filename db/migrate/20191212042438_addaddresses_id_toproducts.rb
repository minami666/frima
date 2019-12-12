class AddaddressesIdToproducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :addresses_id, :integer
  end
end
