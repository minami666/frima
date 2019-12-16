class ChangeDataToSellers < ActiveRecord::Migration[5.2]
  def create
    create_table :sellers do |t|
      t.references :product,  foreign_key: true
      t.references :user, foreign_key: true
      t.references :seller_evaluates, foreign_key: true
    end
  end
end
