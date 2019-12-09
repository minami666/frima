class CreateBuyerEvaluates < ActiveRecord::Migration[5.2]
  def change
    create_table :buyer_evaluates do |t|
      t.integer :buyers_id, null: false
      t.integer :good
      t.integer :ordinary
      t.integer :bad
      t.timestamps
    end
  end
end
