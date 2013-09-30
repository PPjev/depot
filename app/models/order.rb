class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	has_one :pay_type

	validates_presence_of :name, :address, :email, :pay_type_id

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end
end
