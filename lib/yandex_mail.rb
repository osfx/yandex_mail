require "httparty"

require "yandex_mail/version"
require "yandex_mail/api"
require "yandex_mail/email"
require "yandex_mail/mailbox"

require "yandex_mail/model/base"
require "yandex_mail/model/email"
require 'yaml'
require "httparty"
# require 'pry'
require "virtus"

module YandexMail
  class << self


  # autoload :Email, 'yandex_mail/email'
  def initialize
    @mailbox = Email.new
  end


  def email
    YandexMail::Email.new
  end


  def mailbox
    @mailbox || YandexMail::Mailbox.new
  end
  # def self.email
  #   YandexMail::Email.new
  #
  end
end
