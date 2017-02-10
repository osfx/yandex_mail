require "virtus"
module YandexMail
  class Mailbox
    include Virtus.model

    attribute :login, String, :default => 'johndoe2'
    attribute :password, String, :default => 'secret'
    attribute :age, Integer
    attribute :birthday, DateTime, :default => Time.new


  end
end
