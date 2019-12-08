class CreateProductslikes < ActiveRecord::Migration[5.2]
  def change
    create_table :productslikes do |t|
      t.integer :products_likes,default: 0
      t.integer :users_id
      t.integer :products_id, null: false
      t.timestamps
    end
  end
end
