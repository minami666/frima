class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.integer :product_id, null: false
      t.integer :users_id, null: false
      t.integer :seller_evaluates_id, null: false
      t.timestamps
    end
  end
end
