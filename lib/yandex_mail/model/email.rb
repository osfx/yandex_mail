module YandexMail
  module Model
    class Email < Model::Base
      attribute :login, String

      # def initialize(email)
      #   @login = @login || email
      #   super
      # end
    end
  end

end
