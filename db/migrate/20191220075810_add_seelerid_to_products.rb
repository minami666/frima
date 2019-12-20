class AddSeeleridToProducts < ActiveRecord::Migration[5.2]
  def change
    change_table :products do |t|
      t.integer :seller_id,foreign_key: true
    end
  end
end
