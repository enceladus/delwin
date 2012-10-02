class Book < ActiveRecord::Base
  attr_accessible :author, :cover_image, :date_finished, :date_started, :description, :link, :summary, :title
  
  mount_uploader :cover_image, ImageUploader
end
