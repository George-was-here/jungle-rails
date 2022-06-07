class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :name, presence: true

  validates :password, length: { minimum: 5, maximum: 20 }, on: :create
  validates :password, presence: true, if: :password_confirmation_given?
    def password_confirmation_given?
      password_confirmation.nil? ? false : !password_confirmation.empty?
    end
    
end
