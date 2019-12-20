class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name,  null: false
      t.integer :deliver_how,null: false
      t.integer :deliverday, null: false
      t.integer :price ,null: false
      t.string :explanation ,null: true
      t.integer :state ,null: false
      # t.references :category, foreign_key: true
      # t.references :size, foreign_key: true
      # t.references :brand, foreign_key: true
      # t.references :user, foreign_key: true
      # t.references :seller, foreign_key: true
      t.timestamps
    end
  end
end
