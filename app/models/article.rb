class Article < ActiveRecord::Base
  attr_accessible :body, :excerpt, :main_image, :slug, :title, :category_ids
  has_and_belongs_to_many :categories
  
  before_create :create_slug
  
  mount_uploader :main_image, ImageUploader
  
  def to_param
  	slug
  end
  
  def create_slug
  	self.slug = self.title.parameterize
  end
  
end
