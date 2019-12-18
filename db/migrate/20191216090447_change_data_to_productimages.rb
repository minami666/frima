class ChangeDataToProductimages < ActiveRecord::Migration[5.2]
  def change
    create_table :productimages do |t|
    t.references :product,  foreign_key: true
    end
  end
end
