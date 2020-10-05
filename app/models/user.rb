class User < ApplicationRecord
  has_secure_password
  # VALID_USERNAME_FORMAT = /[a-zA-Z]+[0-9]*//
  validates :name, presence: true, length: { maximum: 60 }, uniqueness: { case_sensitive: true}
  validates :password, presence: true, length: { maximum: 16 }
  before_save { self.name = name }

  # associations
  has_many :wallets

end