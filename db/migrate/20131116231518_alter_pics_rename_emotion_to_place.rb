class AlterPicsRenameEmotionToPlace < ActiveRecord::Migration
  def change
  	rename_column :pics, :emotion, :place
  end
end
