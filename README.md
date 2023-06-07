# README

This README would normally document whatever steps are necessary to get the
application up and running.
Application that has walks input by registered users. 

Makes use of following gems: 
- devise
- fontawesome
- httparty

Design patterns implemented
+ decorator 
+ observer
+ singleton
 
This has a 1:1 relationship user and profile. Includes static pages, partials, w3css framework, similar to bootstrap. 

Some notes from development:

* Ruby version: ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]

* Rails 7

* rails generate controller Pages home about other --skip-assets

* Devise User model

* rails g scaffold Walk name:string desc:text start_lat:decimal start_long:decimal end_lat:decimal end_long:decimal duration:decimal loop:boolean difficulty:integer

* rails g scaffold Note title:string content:text

* rails g scaffold Profile firstname:string lastname:string username:string country:string user:references

* add to config/initializers/devise.rb: config.navigational_formats = ['*/*', :html, :turbo_stream]

* How to run the test suite

* Deployment instructions, probably won't!

* ...
