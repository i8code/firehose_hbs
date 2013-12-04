class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
		t.string :emotion #place
		t.text :description
		t.text :location 
	  	t.timestamps
    end
  end
end
