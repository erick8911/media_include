class Video < ActiveRecord::Base
  attr_accessible :object, :video, :url
  belongs_to :object, :polymorphic => true
  # attr_accessible :title, :body
end