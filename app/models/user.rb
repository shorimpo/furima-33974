class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ }
    validates :last_name_kana, format: { with: /\A\p{katakana}+\z/ }
    validates :first_name_kana, format: { with: /\A\p{katakana}+\z/ }
    validates :user_birth_data_1i
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
  validates_format_of :password_confirmation, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
end
