class CreateBrandCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_categories do |t|
      t.integer :categories_id
      t.integer :brands_id
      t.timestamps
    end
  end
end
