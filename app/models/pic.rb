class Pic < ActiveRecord::Base
	#field should map to schema 
	#ImageUploader from the uploaders file 
	mount_uploader :image, ImageUploader

	# validate that the user added text
	validates :image, :presence => true
	validates :place, :presence => true
	validates :description, :presence => true
	validates :location, :presence => true

end
