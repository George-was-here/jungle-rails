require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "should create a user when all four fields set" do
      @user1 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: 'bones', password_confirmation: 'bones'})
      expect(@user1).to be_valid
    end

    it "should fail create a user when password field does not match" do
      @user1 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: "bones", password_confirmation: "b0nes"})
      expect(@user1).to_not be_valid
    end

    it "should fail create a user when there is no first_name given" do
      @user1 = User.create({first_name: nil, last_name: "B", email: "zoe@dogue.com", password: "bones", password_confirmation: "bones"})
      expect(@user1).to_not be_valid
    end

    it "should fail create a user when there is no first_name given" do
      @user1 = User.create({first_name: "Zoe", last_name: nil, email: "zoe@dogue.com", password: "bones", password_confirmation: "bones"})
      expect(@user1).to_not be_valid
    end

    it "should fail create a user when there is no email given" do
      @user1 = User.create({first_name: "Zoe", last_name: "B", email: nil, password: "bones", password_confirmation: "bones"})
      expect(@user1).to_not be_valid
    end

    it "should fail create a user when there is no password given" do
      @user1 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: nil, password_confirmation: nil})
      expect(@user1).to_not be_valid
    end

    it "should fail to create a user when a user already exists with that email" do
      @user1 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: 'bones', 
      password_confirmation: 'bones'})
      @user2 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: 'bones', 
      password_confirmation: 'bones'})
      expect(@user2).to_not be_valid
    end

    it "should fail create a user when there is a password shorter than 5 character" do
      @user1 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: "bop", password_confirmation: "bop"})
      expect(@user1).to_not be_valid
    end
  end  

  describe '.authenticate_with_credentials' do
        before do 
          @user1 = User.create({first_name: "Zoe", last_name: "B", email: "zoe@dogue.com", password: "bones", password_confirmation: "bones"})
        end

        it "should log in a user if the credentials are correct" do
          successful_login = User.authenticate_with_credentials("zoe@dogue.com", "bones")
          expect(successful_login).to be_truthy
        end
        
        it "should not log in a user if the credentials do not match" do
          successful_login = User.authenticate_with_credentials("zoe@dogue.com", "b0nes")
          expect(successful_login).to be_nil
        end

        it "should not log in a user if the credentials do not match" do
          successful_login = User.authenticate_with_credentials("zoey@dogue.com", "bones")
          expect(successful_login).to be_nil
        end

        it "should still log in a user with extra whitespaces in the email" do
          successful_login = User.authenticate_with_credentials(" zoe@dogue.com ", "bones")
          expect(successful_login).to be_truthy
        end

        it "should still log in a user regardless email's case" do
          successful_login = User.authenticate_with_credentials("Zoe@dogue.com", "bones")
          expect(successful_login).to be_truthy
        end
  end
end