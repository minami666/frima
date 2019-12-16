class ChangeDataToProducts < ActiveRecord::Migration[5.2]
  def change
    def change
      create_table :products do |t|
        t.references :category, foreign_key: true
        t.references :size, foreign_key: true
        t.references :brand,  foreign_key: true
        t.references :user, foreign_key: true
        t.references :seller, foreign_key: true
      end
    end
  end
end
