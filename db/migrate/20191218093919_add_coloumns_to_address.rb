class AddColoumnsToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :family_name_knj, :string
    add_column :addresses, :family_name_ktkn, :string
  end
end
