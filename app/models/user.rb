class User < ApplicationRecord
  has_secure_password
  VALID_USERNAME_FORMAT = /[a-zA-Z]+[0-9]*/
  validates name, format: { with: VALID_USERNAME_FORMAT }, uniqueness: { case_sensitive: true }, presence: true
  validates password, presence: true
  before_save { self.name = name }
end