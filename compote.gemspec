# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler'

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
 
Gem::Specification.new do |s|
  s.name        = "compote"
  s.version     = 0.01
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jakub Hozak"]
  s.email       = ["jakub.hozak@gmail.com"]
  s.homepage    = "http://github.com/HakubJozak/compote"
  s.summary     = "Templating toolbox for rapid prototyping."
  s.description = "Templating toolbox for prototyping and development. Just make a skeleton full of ERB files and let the magic happen."
  s.required_rubygems_version = ">= 1.3.6"
  s.add_bundler_dependencies
  s.files = Dir.glob("{bin,lib,template}/**/*") + %w(README.rdoc)
  s.test_files = Dir.glob('test/**/*')  
  s.executables  = ['compote']
  s.require_path = 'lib'
end
