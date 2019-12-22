class Card < ApplicationRecord
  belongs_to :user, foreign_key: true
end
