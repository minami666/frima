class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :sns_credentials, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook google_oauth2]


  has_many :products
  has_many :productslikes
  has_many :messages
  has_one :credit
  has_many :addresses

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day

end
