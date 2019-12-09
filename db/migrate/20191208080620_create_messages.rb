class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :text, null: false
      t.integer :products_id, null: false
      t.integer :users_id, null: false
      t.timestamps
    end
  end
end
