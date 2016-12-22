# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sanetitle/version'

Gem::Specification.new do |spec|
  spec.name          = "sanetitle"
  spec.version       = SaneTitle::VERSION
  spec.authors       = ["Edvaldo Silva de Almeida Júnior"]
  spec.email         = ["edvaldoajunior@gmail.com"]

  spec.summary       = "Generates a sane string which may be used as a URL, based on a sentence."
  spec.description   = "This gem generates a sane hyfen-separated text to serve as URL address to a page, based on a given string. It is ideal to generate a URL based on a title of a blog post or article, thus the name of the gem."
  spec.homepage      = "https://github.com/EdDeAlmeidaJr/sanetitle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
