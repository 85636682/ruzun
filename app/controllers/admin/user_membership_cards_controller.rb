class Admin::UserMembershipCardsController < AdminController
  before_action :set_membership_card, only: [:index, :edit, :update, :destroy]
  before_action :set_user_membership_card, only: [:show, :edit, :update, :destroy]
  
  def index
    @user_membership_cards = @membership_card.user_membership_cards.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def update
    if @user_membership_card.update user_membership_card_params
      redirect_to admin_membership_card_user_membership_card_path(@membership_card, @user_membership_card), notice: "更新成功！"
    else
      redirect_to admin_membership_card_user_membership_card_path(@membership_card, @user_membership_card), notice: "更新失败！"
    end
  end

  def destroy
    @user_membership_card.destroy
    redirect_to admin_membership_card_user_membership_cards_path(@membership_card), notice: "删除成功！"
  end

  private

  def set_membership_card
    @membership_card = MembershipCard.find params[:membership_card_id]
  end

  def set_user_membership_card
    @user_membership_card = UserMembershipCard.find params[:id]
  end

  def user_membership_card_params
    params.require(:user_membership_card).permit(:status)
  end
  
end
