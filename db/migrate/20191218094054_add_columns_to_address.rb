class AddColumnsToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :first_name_knj, :string
    add_column :addresses, :first_name_ktkn, :string
  end
end
