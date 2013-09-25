class Product < ActiveRecord::Base
	validates_presence_of :title, :description
	validates_numericality_of :price, greater_than_or_equal_to: 0.01
	validates_uniqueness_of :title, :message => "must be unique"
	validates_format_of :image_url, allow_blank: true, :with => %r{\.(gif|jpg|png)\Z}i, :message => "must be a URL for GIF, JPG or PNG image."
end
