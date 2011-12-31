class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @product = Product.order(:title)
    increment_count
    @count = session[:counter]
    @cart = current_cart
    puts('here i am')
    puts(@count)
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
      puts('im in increment_count')
  end
end