class CreateSellerEvaluates < ActiveRecord::Migration[5.2]
  def change
    create_table :seller_evaluates do |t|
      t.integer :sellers_id, null: false
      t.integer :good
      t.integer :ordinary
      t.integer :bad
      t.timestamps
    end
  end
end
