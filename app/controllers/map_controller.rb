class MapController < ApplicationController
	def map
#get the value and store it into the database

		#addes filter
		if params[:place].present?
			@pics = Pic.where(:place => params[:place])
		else
			@pics = Pic.all
		end

	end
end