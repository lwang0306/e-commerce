class Blog < ActiveRecord::Base
  validates :title, presence: true

  mount_uploader :picture, PictureUploader
end
