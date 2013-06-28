# MediaInclude

Includes Images and videos your models

## Installation

Add this line to your application's Gemfile:

    gem 'media_include'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install media_include

## Usage
To generate the image and video models 
    rails generate media_include:install
    rake db:migrate

Now we are going to attach images to Post model

	class Post < ActiveRecord::Base
	  attr_accessible :title
	  accept_images
	end

In the form

	= nested_form_for @post do |f|
      = f.input :title
	  =render :partial => "layouts/load_images", :locals => {:f => f}

	  = f.button :submit




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request



## To do 

 Try version 14, if works uninstall and reset version to 1




