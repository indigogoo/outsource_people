class AddTopCheckToSpeakers < ActiveRecord::Migration
  def change
  	add_column :speakers, :top, :boolean
  end
end
