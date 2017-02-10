require "virtus"
module YandexMail
  module Model
    class  Base
      include Virtus.model

      attribute :id, String, default: '0000-aaaa-123456'
    end

  end

end
