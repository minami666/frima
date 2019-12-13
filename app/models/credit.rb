class Credit < ApplicationRecord
  validates :number, presence: true 
  validates :name, presence: true 
  validates :deadline, presence: true
  validates :security_num , presence: true

  #belongs_to :user
end
  
