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

      
      puts "Hi everybody :)"
      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
      
      def copy_migration
        migration_template 'migration.rb', "db/migrate/media_include_create_media"
      end
      # Generator Code. Remember this is just suped-up Thor so methods are executed in order
    
  
    end
  end
end