class AddNameToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :name, :string
    add_column :cards, :deadline, :integer
    add_column :cards, :security_num, :integer
  end
end
