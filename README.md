# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]

* Rails 7

* System dependencies

* rails generate controller Pages home about other --skip-assets

* Devise User model

* rails g scaffold Walk name:string desc:text start_lat:decimal start_long:decimal end_lat:decimal end_long:decimal duration:decimal loop:boolean difficulty:integer

* rails g scaffold Note title:string content:text

* add to config/initializers/devise.rb: config.navigational_formats = ['*/*', :html, :turbo_stream]

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions, probably won't!

* ...
