class User < ActiveRecord::Base
  has_secure_password

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :password, length: { minimum: 5, maximum: 20 }, on: :create
  validates :password, presence: true, if: :password_confirmation_given?
    def password_confirmation_given?
      password_confirmation.nil? ? false : !password_confirmation.empty?
    end

    def self.authenticate_with_credentials(email, password)
      user = User.find_by(email: email.downcase.strip)
      if user && user.authenticate(password)
        return user
      end 
        return nil
    end

    def name
      "#{first_name} #{last_name}"
    end
end
