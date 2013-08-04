require 'rails/generators'

module MediaInclude
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      desc "Crea tabla images"
      
      # Commandline options can be defined here using Thor-like options:
      #class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"
      # I can later access that option using:
      # options[:my_opt]
      ## Code goes here ;)  
      #source_root File.expand_path("../templates", __FILE__)
      ruta_archivo =  File.join(File.dirname(__FILE__), "templates/")
      source_root ruta_archivo 
      puts ruta_archivo

      
      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
      
      
      def copy_migration
        migration_template 'migration.rb', "db/migrate/media_include_create_media"
        template "image.rb", "app/models/image.rb"
        template "video.rb", "app/models/video.rb"
        template "_load_images.html.haml", "app/views/layouts/_load_images.html.haml"
        template "_script_template.html.erb", "app/views/layouts/_script_template.html.erb"
        template "_uploads.html.haml", "app/views/layouts/_uploads.html.haml"
        template "s3.yml", "config/s3.yml"        
        
      end
      # Generator Code. Remember this is just suped-up Thor so methods are executed in order
    end
  end
end