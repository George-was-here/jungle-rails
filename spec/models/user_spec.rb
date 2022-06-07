require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "should create a user when all four fields set" do
      @user = User.create({name: "Zoe", email: "zoe@dogue.com", password: 'bones', password_confirmation: 'bones'})
      expect(@user).to be_valid
    end

    it "should fail create a user when password field does not match" do
      @user = User.create({name: "Zoe", email: "zoe@dogue.com", password: "bones", password_confirmation: "b0nes"})
      expect(@user).to_not be_valid
    end

    it "should fail create a user when there is no name given" do
      @user = User.create({name: nil, email: "zoe@dogue.com", password: "bones", password_confirmation: "bones"})
      expect(@user).to_not be_valid
    end

    it "should fail create a user when there is no email given" do
      @user = User.create({name: "Zoe", email: nil, password: "bones", password_confirmation: "bones"})
      expect(@user).to_not be_valid
    end

    it "should fail create a user when there is no password given" do
      @user = User.create({name: "Zoe", email: "zoe@dogue.com", password: nil, password_confirmation: nil})
      expect(@user).to_not be_valid
    end

    it "should fail to create a user when a user already exists with that email" do
      @user = User.create({name: "Zoe", email: "zoe@dogue.com", password: 'bones', 
      password_confirmation: 'bones'})
      @user2 = User.create({name: "Zoe", email: "zoe@dogue.com", password: 'bones', 
      password_confirmation: 'bones'})
      expect(@user2).to_not be_valid
    end

    it "should fail create a user when there is a password shorter than 5 character" do
      @user = User.create({name: "Zoe", email: "zoe@dogue.com", password: "bop", password_confirmation: "bop"})
      expect(@user).to_not be_valid
    end
  end  
end