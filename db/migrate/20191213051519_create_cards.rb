class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.integer :customer_id, foreign_key: true
      t.integer :number
      t.integer :deadline
      t.integer :security_num
      t.references :user, null: false
      t.references :card, foreign_key: true
      t.timestamps
    end
  end
end
