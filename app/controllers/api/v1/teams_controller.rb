class Api::V1::TeamsController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:create, :update]

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new team_params
    @team.user_id = current_user.id
    if not @team.save
      api_error(status: 400)
    end
  end

  def update
    @team = Team.find(params[:id])
    if @team.user_id == current_user.id
      api_error(status: 400) if not @team.update_attributes team_params
    else
      api_error(status: 400)
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :logo, :province, :city, :district, :sign)
  end
end
