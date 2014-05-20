class AddStatusToSpeakers < ActiveRecord::Migration
  def change
  	change_table :speakers do |t|
    	t.string :status, index: true
    	
    end
  end
end
