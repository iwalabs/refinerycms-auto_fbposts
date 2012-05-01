# Auto Facebook Post engine for Refinery CMS.

## Installing

Add refinerycms-auto_fbposts to your Gemfile

    gem 'refinerycms-auto_fbposts', :git => 'git://github.com/iwalabs/refinerycms-auto_fbposts.git'

Run generator

    bundle exec rails g refinerycms_auto_fbposts

*Please check your `config/application.rb` for observer configuration*

Set default host URL

    Rails.application.routes.default_url_options[:host]= 'www.iwa.fi'


Run migration

    bundle exec rake db:migrate

Go to Refinery admin and set appropriate Facebook API key.

### Set up Cron Job for blog published in the future.

Set your cron job to run the following task.

    bundle exec rake refinery:auto_fbposts:cron

## Standalone Gem set up

### How to build this engine as a gem

    gem build refinerycms-auto_fbposts.gemspec
    gem install refinerycms-auto_fbposts.gem


### TODO: Sign up for a http://rubygems.org/ account and publish the gem

    gem push refinerycms-auto_fbposts.gem

