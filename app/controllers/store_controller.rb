class StoreController < ApplicationController

  def index
    @product = Product.order(:title)
    increment_count
    @count = session[:counter]
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