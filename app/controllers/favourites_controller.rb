class FavouritesController < ApplicationController


  def mark_as_favourite
  	Favourite.create(show_id: params["show_id"], user_id: current_user.id)
  	@channels = Channel.all
  end

end
