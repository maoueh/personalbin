# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'personalbin/version'

Gem::Specification.new do |gem|
  gem.name          = "personalbin"
  gem.version       = Personalbin::VERSION
  gem.authors       = ["Matthieu Vachon"]
  gem.email         = ["matthieu.o.vachon@gmail.com"]
  gem.summary       = "Personal repository where I put my custom-made bin commands"
  gem.description   = gem.summary

  gem.homepage      = "https://github.com/maoueh/personalbin"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/) - [".gitattributes", ".gitignore"]
  gem.executables   = gem.files.grep(%r{^bin/}) { |file| File.basename(file) }
  gem.test_files    = gem.files.grep(%r{^(test|gem|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rclid", "~> 1.0.0"
end
