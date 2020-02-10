class PotterService

  def initialize(search_params)
    @house = search_params[:house]
  end

  def house
    get_json("characters?house=#{@house}")
  end

private
  def get_json(url)
    response = conn.get(url)
    json_response = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1') do |faraday|
      faraday.params['key'] = ENV['POTTER_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
