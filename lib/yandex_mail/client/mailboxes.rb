module YandexMail
	class Client
		module Mailboxes

			def mailbox
				self
			end

			def create(options = {})
				response = self.class.post("/email/add", { query: options })
				response.parsed_response
			end

			def edit(options = {})
				response = self.class.post("/email/edit", { query: options })
				response.parsed_response
			end

			def list(options = {})
				response = self.class.get("/email/list", { query: options })
				response.parsed_response["accounts"]
			end

			def remove(options = {})
				response = self.class.post("/email/del", { query: options })
				response.parsed_response
			end

			def messages(options = {})
				response = self.class.get("/email/counters?", { query: options })
				response.parsed_response
			end
		end
	end
end
