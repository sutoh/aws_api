require 'rubygems'
require 'aws-sdk'
# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
AWS.config(access_key_id: `echo $AWS_ACCESS_KEY_ID`.chomp, secret_access_key: `echo $AWS_SECRET_ACCESS_KEY`.chomp)