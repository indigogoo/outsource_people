class AddLocalToSpeakers < ActiveRecord::Migration
  def change
  	add_column :speakers, :first_name_en, :string
  	add_column :speakers, :last_name_en, :string
  	add_column :speakers, :speaker_description_en, :text
  	add_column :speakers, :speech_title_en, :string
  	add_column :speakers, :speech_description_en, :text
  end
end
