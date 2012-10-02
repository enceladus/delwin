class Book < ActiveRecord::Base
  attr_accessible :author, :cover_image, :date_finished, :date_started, :description, :link, :summary, :title
end
