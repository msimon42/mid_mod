class PotterService
  def search_by_house(house)
    members = get_json("characters?house=#{house}&orderOfThePhoenix=true", ENV['POTTER_KEY'])
    members.map{|member| Member.new(member['name'], member['role'], member['house'], member['patronus'], member['_id'])}
  end

  private
    def conn
      Faraday.new('https://www.potterapi.com/v1/') do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json(endpoint, token)
      response = conn.get(endpoint, key: token)
      JSON.parse(response.body)
    end
end
