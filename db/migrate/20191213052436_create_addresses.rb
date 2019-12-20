class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :postnum,  null: false
      t.integer :prefecture,null: false
      t.string :city, null: false
      t.integer :street_num ,null: false
      t.string :building
      t.string :family_name_knj
      t.string :first_name_knj
      t.string :family_name_ktkn
      t.string :first_name_ktkn
      t.string :tel
      t.references :user, foreign_key: true
      t.timestamps

    end
  end
end