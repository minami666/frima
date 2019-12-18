class AddhogeToAddress < ActiveRecord::Migration[5.2]
  def change
    change_table :addresses do |t|
      t.integer :tel,null: false
    end
  end
end
