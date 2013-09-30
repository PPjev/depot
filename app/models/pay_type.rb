class PayType < ActiveRecord::Base
	belongs_to :order

	def self.names
		PayType.all.map { |p| [p.name, p.id] }
	end
end
