class PotterService

#   def house(name)
#     get_json("characters?house=#{name}")
#   end
#
# private
#   def get_json(url)
#     response = conn.get(url)
#     json_response = JSON.parse(response.body, symbolize_names: true)
#     require "pry"; binding.pry
#   end
#
#   def conn
#     Faraday.new(url: 'https://www.potterapi.com/v1/') do |faraday|
#       faraday.headers["Key"] = ENV['POTTER_KEY']]
#       faraday.adapter Faraday.default_adapter
#     end
#   end
end
