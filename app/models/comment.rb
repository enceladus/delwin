class Comment < ActiveRecord::Base
  attr_accessible :article_id, :author, :comment, :email, :url
end
