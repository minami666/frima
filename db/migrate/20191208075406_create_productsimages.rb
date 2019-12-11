class CreateProductsimages < ActiveRecord::Migration[5.2]
  def change
    create_table :productsimages do |t|
      t.integer :product_id,  null: false
      t.string :image,  null: false
      t.timestamps
    end
  end
end
