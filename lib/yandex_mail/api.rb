module YandexMail
  class API
    def initialize(access_token = nil)
      # @access_token = access_token || ENV["yandex_pdd_token"]

      @key  = YAML.load_file('./.key.yaml')
      @domain = @key['yandex_pdd_domain']
      @access_token = @key['yandex_pdd_token']
      @url = 'https://pddimp.yandex.ru/'
    end

    def perform_request(path)
      url = @url + "api2/admin/" + path
      response = HTTParty.get(url, headers: { 'PddToken' => "#{@access_token}" }, body: {'domain' => "#{@domain}"})
      JSON.parse(response.body)
    end
  end
end
