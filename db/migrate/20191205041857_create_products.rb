class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name,  null: false
      t.integer :deliver_how,null: false
      t.integer :deliverday, null: false
      t.integer :price ,null: false
      t.string :explanation ,null: true
      t.integer :state ,null: false
      t.integer :category_id,null: false
      t.integer :size_id,null: false
      t.integer :brand_id,null: false
      t.integer :user_id,null: false
      t.integer :seller_id,null: false
      t.timestamps
    end
  end
end
