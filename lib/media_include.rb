require "media_include/version"
require 'media_include/railtie'  ##Esential!
module MediaInclude
  require "rails"
  # Your code goes here...
  def accept_images
    has_many :images, :as => :object
    accepts_nested_attributes_for :images, :reject_if => proc { |attributes| attributes['picture'].blank? }, :allow_destroy => true
    attr_accessible :images_attributes if Rails.version.to_i < 4
  end

  def accept_videos
    has_many :videos, :as => :object
    accepts_nested_attributes_for :videos, :allow_destroy => true
    attr_accessible :videos_attributes if Rails.version.to_i < 4
  end
  
  def accept_images_and_videos
    accept_images
    accept_videos
  end
end