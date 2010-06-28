#!/usr/bin/env ruby

require 'singleton'
require 'rubygems'
require 'bundler'
Bundler.require(:default, :debug)
require_all 'lib/**/*.rb'


Game.new.show



#p YAML::load(CP::Vec2.new(2,1).to_yaml)
#p YAML::load(Track.new([Stick.new(CP::Vec2.new(0,1), CP::Vec2.new(2,1))]).to_yaml )

