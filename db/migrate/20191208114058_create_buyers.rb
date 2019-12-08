class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.integer :products_id, null: false
      t.integer :users_id, null: false
      t.integer :buyer_evaluates_id, null: false
      t.timestamps
    end
  end
end
