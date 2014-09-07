class Post < ActiveRecord::Base
	mount_uploader :post_image, PostImageUploader
	validates: :name length: { maximmum: 50 },presence: true
	validates: :content length: { maximmum: 1000 },presence: true
end
