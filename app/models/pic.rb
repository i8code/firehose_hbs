class Pic < ActiveRecord::Base
	#field should map to schema 
	#ImageUploader from the uploaders file 
	mount_uploader :image, ImageUploader

	# validate that the user added text in form
	validates :image, :presence => true
	validates :place, :presence => true
	validates :description, :presence => true
	validates :location, :presence => true

##end

#added
	#before you save this, do the geocode stuff
	before_save :geocode


#def geocode
	# #set loc to the user input address
	#loc = Geokit::Geocoders::GoogleGeocoder3.geocode(
		#self.address
		#)

	#set lat lng values 
	#self.lat = loc.lat
	#self.lng = loc.lng

	def geocode
	# set loc to the user input address
	loc = Geokit::Geocoders::GoogleGeocoder3.geocode(
		self.location
		)

	#set lat lng values 
	self.lat = loc.lat
	self.lng = loc.lng
end
end



