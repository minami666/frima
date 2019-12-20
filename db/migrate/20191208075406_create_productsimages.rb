class CreateProductsimages < ActiveRecord::Migration[5.2]
  def change
    create_table :productsimages do |t|
      t.references : :product, foreign_key: true
      t.string :image,  null: false
      t.timestamps
    end
  end
end
