# -*- encoding: utf-8 -*-
##
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
$:.push File.expand_path("../lib", __FILE__)
require 'media_include/version'

Gem::Specification.new do |gem|
  gem.name          = "media_include"
  gem.version       = MediaInclude::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["Erick Garcia"]
  gem.email         = ["erick_8911@hotmail.com "]
  gem.description   = %q{includes images and videos to models alfa}
  gem.summary       = %q{includes images and videos to models}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
