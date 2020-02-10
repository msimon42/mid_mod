require 'rails_helper'

RSpec.describe 'potter_service' do
  describe 'search for members by house' do
    before :each do
      @members = PotterService.new.search_by_house('Gryffindor')
    end

    it 'returns 21 members for gryffindor' do
      expect(@members.length).to eq(21)
    end

    it 'returns info on each member' do
      @members.each do |member|
        expect(member.name).to be_truthy
        expect(member.house).to eq('Gryffindor')
      end   
    end
  end
end
