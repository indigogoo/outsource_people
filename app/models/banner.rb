class Banner < ActiveRecord::Base
	has_attached_file :banner_image, :styles => { :medium => "300x300>", :thumb => "100x100>" , :partner => "150x150"}, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :banner_image, :content_type => /\Aimage\/.*\Z/

    validates :name, :url, presence: true
    validates :banner_image, :attachment_presence => true
    validates_with AttachmentPresenceValidator, :attributes => :banner_image
    validates_attachment :banner_image,
    :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
