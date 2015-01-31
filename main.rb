require 'dotenv'
require 'shishiodoshi'

require './shishiodoshi_slack'

Dotenv.load

Shishiodoshi::App.class_eval do
  set :poll_per, 10
  set :shishiodoshi_type, Shishiodoshi::Slack
end
Shishiodoshi::App.run!(daemon: false)
