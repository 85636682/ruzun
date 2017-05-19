class M::LuckyDrawsController < MobileController
  def index
    # @lucky_draws = current_user.lucky_draws.order("created_at DESC")
  end

  def create
    @lucky_draw = LuckyDraw.new lucky_draw_params
    if @lucky_draw.save
      render json: { result: true, msg: "获得一次抽奖机会" }
    else
      render json: { result: false, msg: "没有获得抽奖机会" }
    end
  end
  
  def draw
    @lucky_draw = LuckyDraw.where(award_id: nil).first
    if @lucky_draw.blank?
      redirect_to m_lucky_draws_path and return
    end
    # 抽奖
  end

  private

  def lucky_draw_params
    params.require(:lucky_draw).permit(:user_id, :award_id, :received)
  end
end
