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

Access token can be created by using FB Graph API Explorer tools. Make sure you *disabled* "Remove Offline access permission".
Facebook page is any page the facebook accound can post to.


### Set up Cron Job for blog published in the future.

Set your cron job to run the following task.

    bundle exec rake refinery:auto_fbposts:cron

## Standalone Gem set up

### How to build this engine as a gem

    gem build refinerycms-auto_fbposts.gemspec
    gem install refinerycms-auto_fbposts.gem


### TODO: Sign up for a http://rubygems.org/ account and publish the gem

    gem push refinerycms-auto_fbposts.gem

## Authors

* Jussi Virtanen: http://github.com/iwalabs
* Timo Lehto: http://github.com/iwalabs
* Joe Rerngniransatit: http://github.com/iwalabs

## License

Copyright 2012 Iwa Labs Ltd. Licensed under the MIT License.
