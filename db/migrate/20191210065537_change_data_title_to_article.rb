class ChangeDataTitleToArticle < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :deliverday, :integer
  end
end
