class Speaker < ActiveRecord::Base

    has_attached_file :avatar, :styles => { :medium => "174x174>", :thumb => "78x78>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    validates :first_name, :last_name, :first_name_en, :last_name_en, :company, :position, 
              :speaker_description, :speech_title, :speech_description, 
              :speaker_description_en, :speech_title_en, :speech_description_en, 
              :speech_day, :speech_time, :image_url, presence: true
    validates :status, presence: true
    validates :avatar, :attachment_presence => true
    validates_with AttachmentPresenceValidator, :attributes => :avatar
    validates_attachment :avatar,
    :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }


    before_save :check_status_valid
    Status_arr = ["International Speakers", 
    	          "Sales and Marketing", 
    	          "Speeches for CEO's", 
    	          "PM, lawyers and HR"]

    



    def check_status_valid
    	return false unless Status_arr.include?(self.status)
        
    end

    def check_speakers_count
        return false unless Speaker.where(speech_time: :self.speech_time).count < 4
    end
    
	def my_class
		return 'international-speaker' if self.status == "International Speakers"
		return 'sales-speaker' if self.status == "Sales and Marketing"
		return 'ceo-speaker' if self.status == "Speeches for CEO's"
		return 'pm-speaker' if self.status == "PM, lawyers and HR"
	end



end

