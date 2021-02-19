class Page < ApplicationRecord
  validates :url, uniqueness: true

  mount_uploader :photo, ContentImageUploader

end
