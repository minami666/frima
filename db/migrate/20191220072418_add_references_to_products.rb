class AddReferencesToProducts < ActiveRecord::Migration[5.2]
  def change
    change_table :products do |t|
      # t.integer :category_id, foreign_key: true
      t.integer :size_id, foreign_key: true
      t.integer :brand_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      # t.integer :addresses_id, foreign_key: true
      t.integer :seller_id,foreign_key: true
    end
  end
end
