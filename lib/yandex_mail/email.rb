module YandexMail
  class Email < API


    def list
      perform_request('email/list')
    end

    def counters(login)
      perform_request('email/counters')

  end
end
end
