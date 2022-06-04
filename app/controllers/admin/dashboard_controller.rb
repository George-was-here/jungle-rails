class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV['ADMIN_NAME'], :password => ENV['ADMIN_PASSWORD']

  def show
    @products_length = Product.order(id: :desc).all.length
    @orders_length = Order.order(id: :desc).all.length
  end

end
