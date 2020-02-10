class SearchController < ApplicationController

def index
  house = params[:house]

  conn = Faraday.new(url: 'https://www.potterapi.com/v1') do |faraday|
    faraday.params['key'] = ENV['POTTER_KEY']
    faraday.adapter Faraday.default_adapter
  end

    response = conn.get("characters?house=#{house}")

    json = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry

  end
end
