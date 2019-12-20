class AddTranstateToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :transtate, :integer
  end
end
