class PicsController < ApplicationController

	def index 

		#get the value and store it into the database
		@pics = Pic.all

	end 
end
