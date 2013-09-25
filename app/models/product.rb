class Product < ActiveRecord::Base
	validates_presence_of :title, :description, :image_url
	validates_length_of :title, minimum: 10, too_short: 'please enter at least 10 characters'
	validates_numericality_of :price, greater_than_or_equal_to: 0.01, message: 'price must be greater than $0.01'
	validates_uniqueness_of :title, :message => "must be unique"
	validates_format_of :image_url, allow_blank: true, :with => %r{\.(gif|jpg|png)\Z}i, :message => "must be a URL for GIF, JPG or PNG image."
end
