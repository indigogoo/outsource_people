class Speaker < ActiveRecord::Base

    has_attached_file :avatar, :styles => { :medium => "174x174>", :thumb => "78x78>" }, :default_url => "pr.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    validates :first_name, :last_name, :first_name_en, :last_name_en, 
              :speaker_description, :speech_title, :speech_description, 
              :speaker_description_en, :speech_title_en, :speech_description_en, 
              :speech_day, :speech_time, presence: true
    validates :status, presence: true


    before_save :check_status_valid
    before_create :check_speakers_count
    Status_arr = ["International Speakers", 
    	          "Sales and Marketing", 
    	          "Speeches for CEO's", 
    	          "PM, lawyers and HR"]

    



    def check_status_valid
    	return false unless Status_arr.include?(self.status)
        
    end

    def check_speakers_count
        if self.speech_day.wday > 0 && self.speech_day.wday < 6
            self.errors.add(:base, :max_4)
            return false if Speaker.where(speech_day: self.speech_day).count > 3
        else
            self.errors.add(:base, :max_6) 
            return false if Speaker.where(speech_day: self.speech_day).count > 5
        end
    end
    
	def my_class
		return 'international-speaker' if self.status == "International Speakers"
		return 'sales-speaker' if self.status == "Sales and Marketing"
		return 'ceo-speaker' if self.status == "Speeches for CEO's"
		return 'pm-speaker' if self.status == "PM, lawyers and HR"
	end



end

