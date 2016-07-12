class Api::V1::TechstatsController < Api::V1::BaseController
  before_action :set_played, only: [:index]

  def index
    @techstats = @played.techstats
  end

  private

  def set_played
    @played = Played.find(params[:id])
  end
end
