module YandexMail
	class Client
		module MailingList

			def mailing_list
				self
			end

			def add(options = {})
				response = self.class.post("/email/ml/add", { query: options })
				response.parsed_response
			end

			def list
				response = self.class.get("/email/ml/list?")
				response.parsed_response["maillists"]
			end

			def delete(options = {})
				response = self.class.post("/email/ml/del", { query: options })
				response.parsed_response
			end

			def subscribe(options = {})
				response = self.class.post("/email/ml/subscribe", { query: options })
				response.parsed_response
			end

			def subscribers(options = {})
				response = self.class.get("/email/ml/subscribers?", { query: options })
				response.parsed_response
			end

			def unsubscribe(options = {})
				response = self.class.post("/email/ml/unsubscribe", { query: options })
				response.parsed_response
			end

			def status_get(options = {})
				response = self.class.post("/email/ml/get_can_send_on_behalf", { query: options })
				response.parsed_response
			end

			def status_set(options = {})
				response = self.class.post("/email/ml/set_can_send_on_behalf", { query: options })
				response.parsed_response
			end

			alias_method :ml, :mailing_list
		end
	end
end
