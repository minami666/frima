class ChangeDataPrefectureToAddresses < ActiveRecord::Migration[5.2]
  class Address < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture
  def change
    change_column :addresses, :prefecture, :integer
  end
  end
end

