class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :user_id, null: false
      t.string :customer_id, null: false
      t.string :card_id, null: false
      t.string :name, null: false

      t.integer :number,  null: false
      t.string :name,  null: false
      t.integer :deadline,  null: false
      t.integer :security_num,  null: false

      t.timestamps
    end
  end
end
