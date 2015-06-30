class Movie < ActiveRecord::Base
  searchkick
  attr_accessible :description, :director, :movie_length, :rating, :title, :image
  belongs_to :user


  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
