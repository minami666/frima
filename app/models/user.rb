class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :sns_credentials, dependent: :destroy

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable,:omniauthable

  mount_uploader :image, ImageUploader

  # validates :nickname, presence: true,unique: true
  # validates :tel, presence: true,unique: true
  # validates :family_name_knj, presence: true
  # validates :family_name_ktkne, presence: true
  # validates :first_name_knj, presence: true
  # validates :first_name_ktkne, presence: true
  # validates :birth, presence: true

  has_many :products
  has_many :productslikes
  has_many :messages
  has_one :credit
  has_many :addresses

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :year
  belongs_to_active_hash :month
  belongs_to_active_hash :day

  def self.without_sns_data(auth)
    user = User.where(email: auth.info.email).first

      if user.present?
        sns = SnsCredential.create(
          uid: auth.uid,
          provider: auth.provider,
          user_id: user.id
        )
      else
        user = User.new(
          nickname: auth.info.name,
          email: auth.info.email,
        )
        sns = SnsCredential.new(
          uid: auth.uid,
          provider: auth.provider
        )
      end
      return { user: user ,sns: sns}
    end

   def self.with_sns_data(auth, snscredential)
    user = User.where(id: snscredential.user_id).first
    unless user.present?
      user = User.new(
        nickname: auth.info.name,
        email: auth.info.email,
      )
    end
    return {user: user}
   end

   def self.find_oauth(auth)
    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.where(uid: uid, provider: provider).first
    if snscredential.present?
      user = with_sns_data(auth, snscredential)[:user]
      sns = snscredential
    else
      user = without_sns_data(auth)[:user]
      sns = without_sns_data(auth)[:sns]
    end
    return { user: user ,sns: sns}
  end

end
