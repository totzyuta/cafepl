# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

<<<<<<< HEAD
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
=======
require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])
>>>>>>> 2ab2344959793e0755899109882cf6ce4bba394d
