class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)(?=.*?[!-\/:-@\[-`{-~])[!-~]+\z/i }
  validates :password_confirmation, format: { with: /\A(?=.*?[a-z])(?=.*?\d)(?=.*?[!-\/:-@\[-`{-~])[!-~]+\z/i }
  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :last_name, presence: true, format:  { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :birthday, presence: true

end
