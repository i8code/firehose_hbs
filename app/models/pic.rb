class Pic < ActiveRecord::Base
	#field should map to schema 
	#ImageUploader from the uploaders file 
	mount_uploader :image, ImageUploader

end
