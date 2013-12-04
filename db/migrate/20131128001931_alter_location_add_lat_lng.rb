class AlterLocationAddLatLng < ActiveRecord::Migration
  def change
  	#add long and lat 
	add_column :pics, :lat, :decimal, {:precision=>10, :scale=>6}
	add_column :pics, :lng, :decimal, {:precision=>10, :scale=>6}
  end
end
