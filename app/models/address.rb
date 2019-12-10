class Address < ApplicationRecord
  validates :postnum, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :street_num, presence: true
  validates :user_id, presence: true

  belongs_to :user
end
