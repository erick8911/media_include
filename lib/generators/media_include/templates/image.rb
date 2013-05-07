class Image < ActiveRecord::Base
  attr_accessible :object, :picture
  
  belongs_to :user
  belongs_to :object, :polymorphic => true
  

  has_attached_file :picture, :styles => {
                   :square=> "170x170#",
                   :rectangle=> "220x170#",
                   :large  => "640x390#" }, 
                   #:default_url => "/images/:style/missing.png"
                   :storage => :s3, 
                   :s3_credentials => "#{Rails.root}/config/s3.yml",
                   :path => "/:style/:id/:filename",
                   :bucket =>  lambda { |attachment| "#{attachment.instance.object_type.to_s.downcase}-images" },
                   :s3_protocol => 'https'

  
 validates_attachment_presence :picture
 validates_attachment_size :picture, :less_than => 5.megabytes, :message => 'Solo se permite archivo menor a 5 MB'
 validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp', 'image/pjpeg', 'image/x-png']
  
 validates :object_type, :presence => true
    
  
end