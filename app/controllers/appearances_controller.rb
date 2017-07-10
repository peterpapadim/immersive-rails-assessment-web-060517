class AppearancesController < ApplicationController

  def new
  end

  def create
    @guest = Guest.find_by(name: params[:guest])
    @episode = Episode.find(params[:episode].to_i)
    @episode.guests << @guest
    @episode.save
    redirect_to episodes_path
  end

end
