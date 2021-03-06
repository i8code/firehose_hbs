class PicsController < ApplicationController
	def index 
		#get the value and store it into the database
		#addes filter
		if params[:place].present?
			@pics = Pic.where(:place => params[:place])
		else
			@pics = Pic.all
		end
	end 

	def show
	#get the value and store it into the datab
		@picsAll = Pic.all
		if params[:id].present?
			@pic = Pic.find_by_id(params[:id])
			# show all places nearby 
			@picsNearby = Pic.within(1, origin: @pic)
		end
	end

	def new
		#building a blank item, filling it out on the form
		@pic = Pic.new
	end

	#do...end, def...end, passes all parameters from the simple form into this array
	def create 
		@pic = Pic.create( pic_params )
		#add validation 
		if @pic.persisted?
			redirect_to pics_path
		else
			render :new, :status => :unprocessable_entity
		end
	end

	#function 
	private
	#slurp up these paramaters
	def pic_params
		# permit the user to upload these things into your site 
		params.require(:pic).permit(:place, :description, :location, :image)
	end

	#added for maps
	def map
		#loads most recent place, always pull the last row in the table
		@location = Location.last
	end
end
