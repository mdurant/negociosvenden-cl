class Product < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" , large: "400x400>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
