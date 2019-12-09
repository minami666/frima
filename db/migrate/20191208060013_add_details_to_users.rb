class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name_knj, :string
    add_column :users, :family_name_ktkn, :string
    add_column :users, :first_name_knj, :string
    add_column :users, :first_name_ktkn, :string
    add_column :users, :birth, :string
    add_column :users, :tel, :string
    add_column :users, :profile, :string
  end
end
