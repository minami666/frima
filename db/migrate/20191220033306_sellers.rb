class Sellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.references :user,foreign_key: true
      t.references :product,foreign_key: true
    end
  end
end
