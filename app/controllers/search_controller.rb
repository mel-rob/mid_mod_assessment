class SearchController < ApplicationController

  def index
    render locals: {
      search_results: PotterSearch.new(search_params)
    }
  end

  def search_params
    params.permit(:house)
  end
end
