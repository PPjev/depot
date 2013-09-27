class Order < ActiveRecord::Base
	PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]

	validates_presence_of :name, :address, :email
	validates :pay_type, inclusion: PAYMENT_TYPES
end
