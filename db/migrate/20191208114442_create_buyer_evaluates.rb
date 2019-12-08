class CreateBuyerEvaluates < ActiveRecord::Migration[5.2]
  def change
    create_table :buyer_evaluates do |t|

      t.timestamps
    end
  end
end
