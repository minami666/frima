class ChangeDataTitleToArticle < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :deliverday, :integer
  end
end
