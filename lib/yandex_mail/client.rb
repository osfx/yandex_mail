require "yandex_mail/client/mailing_list"
require "yandex_mail/client/mailboxes"

module YandexMail
	class Client
		include HTTParty
		include YandexMail::Client::Mailboxes
		include YandexMail::Client::MailingList

		base_uri "https://pddimp.yandex.ru/api2/admin/"
		format :json



		def initialize(access_token = nil)
			load_config
      access_token ||= @config['yandex_pdd_token']
      self.class.default_options.merge!(headers: { 'PddToken' => "#{access_token}" }, body: {'domain' => "#{@domain}"})
    end


		private

		def load_config
			@config = YAML.load_file('./.key.yaml')
			@domain = @config['yandex_pdd_domain']
		end
	end
end
