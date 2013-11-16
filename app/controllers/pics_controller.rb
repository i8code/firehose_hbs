class PicsController < ApplicationController

	def index 

		#get the value and store it into the database
		@pics = Pic.all

	end 

	def new

		#building a blank thng, filling it out on the form
		@pic = Pic.new


	end

	#do...end, def...end
	def create 
			@pic = Pic.create( pic_params )
			redirect_to pics_path

	end

#function 
private
#slurp up these paramaters
def pic_params
	# permit the user to upload these things into your site 
	params.require(:pic).permit(:emotion, :description, :location)

	end


end
