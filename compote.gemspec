# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
 
Gem::Specification.new do |s|
  s.name        = "compote"
  s.version     = 0.01
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jakub Hozak"]
  s.email       = ["jakub.hozak@gmail.com"]
  s.homepage    = "http://github.com/HakubJozak/compote"
  s.summary     = "Toolbox for rapid game prototyping."
  s.description = "Toolbox for rapid game prototyping and development using Ruby, Gosu and Chipmunk."
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency "thor"
  s.files = Dir.glob("{bin,lib,template}/**/*") + %w(README.rdoc)
  s.test_files = Dir.glob('test/**/*')  
  s.executables  = ['compote']
  s.require_path = 'lib'
end
