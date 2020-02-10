class PotterSearch

  def initialize(search_params)
    @service = PotterService.new(search_params)
  end

  def get_members
    @service.house.map do |house_data|
      HouseMember.new(house_data)
    end
  end
end
