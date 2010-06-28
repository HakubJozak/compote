# -*- coding: utf-8 -*-

class Compote < Thor::Group
  include Thor::Actions

  desc "Generates fresh new game."

  argument :game, :type => :string, :desc => "name of the game", :required => true

  class_option :git, :default => true, :desc => 'Generate GIT .gitignore file?',
                     :type => :boolean, :aliases => '-g'

  class_option :destination, :default => true, :desc => 'Destination directory',
                             :type => :string, :aliases => '-d'

  def self.source_root
    File.join(File.dirname(__FILE__), '/template')
  end

  def setup
    destination_root = File.join(File.dirname(__FILE__), options[:destination]) if options[:destination]
  end


  # def create_test_file
  #   test = options[:test_framework] == "rspec" ? :spec : :test
  #   create_file "#{game}/#{test}/#{game}_#{test}.rb"
  # end

  def create_skeleton
    directory("skeleton","#{game}")

    [ 'media/images', 'media/sounds', 'test', 'lib' ].each do |dir|
      empty_directory("#{game}/#{dir}")      
    end
  end

  def create_game
    template 'app.rb.erb', "#{game}/lib/#{game}.rb"
  end
  
  def create_optionals
    copy_file("Gemfile", "#{game}/Gemfile") if options[:bundler]
    copy_file(".gitignore", "#{game}/.gitignore") if options[:git]
  end

  protected

  def maybe
    
  end

end

