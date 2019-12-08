class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.integer :number,  null: false
      t.string :name,  null: false
      t.integer :deadline,  null: false
      t.integer :security_num,  null: false

      t.timestamps
    end
  end
end
