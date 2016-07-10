class Api::V1::TeamsController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:create, :update]
  before_action :set_team, only: [:show, :update, :playeds]

  def index
    @teams = Team.all
  end

  def show
  end

  def create
    @team = Team.new team_params
    @team.user_id = current_user.id
    if not @team.save
      api_error(message: @team.errors.full_messages, status: 400)
    end
  end

  def update
    if @team.user_id == current_user.id
      api_error(message: @team.errors.full_messages, status: 400) if not @team.update_attributes team_params
    else
      api_error(message: "没权限编辑该队伍！", status: 400)
    end
  end

  def playeds
    @playeds = Played.where("home_team_id = ? OR guest_team_id = ?", @team.id, @team.id).order("start_time DESC")
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :logo, :province, :city, :district, :sign)
  end
end
