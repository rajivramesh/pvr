class HomeController < ApplicationController

  def index
    @q = Channel.search(params[:q])
    @channels = Channel.all
  end

  def search_shows
    @shows = Show.where("name LIKE ?", "%#{params['q']['name_eq']}%") if params["q"]["name_eq"].present?
    @channels = Channel.where("name LIKE ?", "%#{params['q']['name_eq']}%") if params["q"]["name_eq"].present?
  end

end
