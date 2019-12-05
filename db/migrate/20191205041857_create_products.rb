class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name,  null: false
      t.int :deliver_how,null: false
      t.date :deliver_day, null: false
      t.int :price ,null: false
      t.string :explanation ,null: true
      t.int :state ,null: false
      t.timestamps
    end
  end
end
