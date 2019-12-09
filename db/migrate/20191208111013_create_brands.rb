  class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :brand_name, null: false
      t.string :text, null: false
      t.timestamps
    end
  end
end
