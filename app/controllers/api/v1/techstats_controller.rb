class Api::V1::TechstatsController < Api::V1::BaseController
  before_action :set_played, only: [:index]

  def index
    @techstats_by_team = @played.techstats.group_by{ |t| t.user.team_id }
  end

  private

  def set_played
    @played = Played.find(params[:played_id])
  end
end
