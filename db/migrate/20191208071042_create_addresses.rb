class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :postnum,  null: false
      t.string :prefecture,null: false
      t.string :city, null: false
      t.integer :street_num ,null: false
      t.string :building
      t.integer :user_id ,null: false
      t.timestamps
    end
  end
end