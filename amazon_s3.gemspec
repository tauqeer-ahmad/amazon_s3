# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amazon_s3/version'

Gem::Specification.new do |spec|
  spec.name          = "amazon_s3"
  spec.version       = AmazonS3::VERSION
  spec.authors       = ["Tauqeer"]
  spec.email         = ["tauqeer.ahmad2008@gmail.com"]
  spec.summary       = %q{Using amazon_s3 you can directly upload and download files from amazon s3 buckets}
  spec.description   = %q{Using amazon_s3 you can directly upload and download files from amazon s3 buckets}
  spec.homepage      = "https://github.com/tauqeerahamd/amazon_s3"
  spec.license       = "MIT"

  spec.files = [
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "lib/amazon_s3.rb",
    "amazon_s3.gemspec",
  ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'aws-sdk'
end
