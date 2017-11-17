class Comment < ActiveRecord::Base
  belongs_to :product
  validates :author, :content, :rating, :presence => true
end
