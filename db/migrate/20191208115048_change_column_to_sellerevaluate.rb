class ChangeColumnToSellerevaluate < ActiveRecord::Migration[5.2]
  def up
    change_column :seller_evaluates, :good, :integer, default: 0
    change_column :seller_evaluates, :ordinary, :integer, default: 0
    change_column :seller_evaluates, :bad, :integer, default: 0
  end
end
