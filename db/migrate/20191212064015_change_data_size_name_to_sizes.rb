class ChangeDataSizeNameToSizes < ActiveRecord::Migration[5.2]
  def up
    change_column :sizes, :size_name, :string
  end
end
