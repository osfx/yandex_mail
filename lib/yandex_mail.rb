require 'rubygems'
require 'action_mailer'
require 'yaml'

def smtp_config
  file = File.expand_path('~/.yandexmail')
  raise " \e[0;31m\No configuration file found! Please create \e[0;32m\ #{file} \e[0m\ " unless File.exists? file
  @config ||= YAML::load(File.open(file))
end

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.yandex.ru",
  :port => 587,
  :domain => "yandex.ru",
  :authentication => :plain,
  :user_name => smtp_config["user_name"],
  :password => smtp_config["password"]
}

class Yandexmail < ActionMailer::Base
  def line(t, sub, mess)
    from smtp_config["user_name"]
    recipients t
    subject "#{sub}"
    body "#{mess}"
  end
end
