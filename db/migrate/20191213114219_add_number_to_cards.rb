class AddNumberToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :number, :integer
  end
end
