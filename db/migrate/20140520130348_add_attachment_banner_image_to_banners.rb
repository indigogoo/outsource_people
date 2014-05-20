class AddAttachmentBannerImageToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :banner_image
    end
  end

  def self.down
    drop_attached_file :banners, :banner_image
  end
end
