class AppearancesController < ApplicationController

  def new
  end

  def create
    @appearance_episode = Episode.all.find(params[:episode].to_i)
    @appearance_guest = Guest.all.find_by(name: params[:guest])
    if @appearance_episode && @appearance_guest && params[:rating].to_i.between?(1,5)

        @appearance_episode.guests << @appearance_guest
        @appearance_guest.episodes << @appearance_episode
        Appearance.create(episode_id: @appearance_episode.id, guest_id: @appearance_guest.id, rating: params[:rating])

        redirect_to episode_path(@appearance_episode)
    else
      redirect_to new_appearance_path
    end
  end

end
