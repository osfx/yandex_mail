module YandexMail
	class Client
		module Mailboxes

			def mailboxes(options = {})
				response = self.class.get("/email/list", { query: options })
				response.parsed_response["accounts"]
			end

		end
	end

end
