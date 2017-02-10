require "httparty"
require "yandex_mail/version"
require 'yandex_mail/client'


module YandexMail
	autoload :Client, 'yandex_mail/client'
	autoload :Mailboxes, 'yandex_mail/client/mailboxes'
end
