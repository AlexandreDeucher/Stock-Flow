class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  # has_manys

  # belongs_to

  # enumerations
  enumerize :role, in: { cashier: 1, manager: 2 }

  # scopes

  # validates
  validates :role, presence: true
end
