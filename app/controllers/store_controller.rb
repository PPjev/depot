class StoreController < ApplicationController
  
  def index
  	@count = increment_counter
  	@products = Product.order(:title)
  	@time = Time.now
  	@show_message = "You've been here #{@count} times" if increment_counter > 5
  end

  private

  	def increment_counter
			if session[:counter].nil?
  			session[:counter] = 0
  		end
  			session[:counter] += 1
  	end
end
