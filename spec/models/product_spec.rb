require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do 
      @category = Category.new(:name => "Shrubbery")
    end

    it "should save a product with all four fields set" do
      @product = Product.new(name: "Shrub", price: 40.00, quantity: 4, category: @category)
      expect(@product).to be_valid
    end

    it "should not save a product with invalid fields" do
      @product = Product.new(name: "Shrub", price: "", quantity: 4, category: @category)
      expect(@product).to_not be_valid
    end

    it "should not save a product with invalid fields" do
      @product = Product.new(name: "", price: 40.00, quantity: 4, category: @category)
      expect(@product).to_not be_valid
    end

    it "should not save a product with invalid fields" do
      @product = Product.new(name: "Shrub", price: 40.00, quantity: nil, category: @category)
      expect(@product).to_not be_valid
    end

    it "should not save a product with invalid fields" do
      @product = Product.new(name: "Shrub", price: 40.00, quantity: 4, category: nil)
      expect(@product).to_not be_valid
    end
  end
end