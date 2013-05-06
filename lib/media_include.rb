require "media_include/version"
require 'rails'
module MediaInclude
  # Your code goes here...
  
  ##Not tested
  def accept_images
    has_many :images, :as => :object
    accepts_nested_attributes_for :images, :allow_destroy => true
    attr_accessible :images_attributes
  end

  def accept_videos
    has_many :videos, :as => :object
    accepts_nested_attributes_for :videos, :allow_destroy => true
    attr_accessible :videos_attributes
  end
  
  def accept_images_and_videos
    accept_images
    accept_videos
  end
  
end
