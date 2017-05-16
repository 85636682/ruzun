class Admin::MembershipCardsController < AdminController
  before_action :set_membership_card, only: [:show, :edit, :update, :destroy]
  
  def index
    @membership_cards = MembershipCard.all
  end

  def show
  end

  def new
    @membership_card = MembershipCard.new
  end

  def create
    @membership_card = MembershipCard.new membership_card_params
    if @membership_card.save
      redirect_to admin_membership_cards_path, notice: "保存成功！"
    else
      redirect_to admin_membership_cards_path, notice: "保存失败！"
    end
  end

  def edit
  end

  def update
    if @membership_card.update membership_card_params
      redirect_to admin_membership_cards_path, notice: "更新成功！"
    else
      redirect_to admin_membership_cards_path, notice: "更新失败！"
    end
  end

  def destroy
    @membership_card.destroy
    redirect_to admin_membership_cards_path, notice: "删除成功！"
  end

  def sell
    @membership_cards = MembershipCard.all
  end

  private

  def set_membership_card
    @membership_card = MembershipCard.find params[:id]
  end

  def membership_card_params
    params.require(:membership_card).permit(:name, :fee, :summary)
  end
end
