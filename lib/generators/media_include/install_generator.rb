require 'rails/generators'
module MediaInclude
  module Generators
    class InstallGenerator < Rails::Generators::Base
    
      desc "Crea tabla images"
  
      # Commandline options can be defined here using Thor-like options:
      class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"
  
      # I can later access that option using:
      # options[:my_opt]
  
      ##Inicializa el generador para ser usado en la app
      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end
      ## Your code goes here ;)  
        puts "Hola a todos2 :)"
  
      # Generator Code. Remember this is just suped-up Thor so methods are executed in order
  
    end
  end
end