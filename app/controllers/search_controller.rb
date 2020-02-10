class SearchController < ApplicationController
  def index
    @members = PotterService.new.search_by_house(params[:house])
  end
end
