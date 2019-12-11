class ChangeColumnToBuyerevaluate < ActiveRecord::Migration[5.2]
  def up
    change_column :buyer_evaluates, :good, :integer, default: 0
    change_column :buyer_evaluates, :ordinary, :integer, default: 0
    change_column :buyer_evaluates, :bad, :integer, default: 0
  end
end
