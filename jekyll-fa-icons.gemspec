# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-fa-icons/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-fa-icons"
  spec.version       = Jekyll::FontAwesomeIcons::VERSION
  spec.authors       = ["bauagonzo"]
  spec.email         = ["baua.gonzo@gmail.com"]

  spec.summary       = %q{jekyll plugin to easily display FontAwesome icons}
  spec.description   = %q{jekyll plugin to generate html snippets for embedding fa-icons}
  spec.homepage      = "https://github.com/bauagonzo/jekyll-fa-icons"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jekyll', "~> 4.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
