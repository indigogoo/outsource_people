class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :position
      t.text :speaker_description
      t.string :speech_title
      t.text :speech_description
      t.date :speech_day
      t.string :speech_time
      t.string :image_url

      t.timestamps
    end
  end
end
