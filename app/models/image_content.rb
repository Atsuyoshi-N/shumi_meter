class ImageContent < ApplicationRecord
  belongs_to :post

  mount_uploader :content, ImageUploader
end
