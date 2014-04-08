class Hat < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
