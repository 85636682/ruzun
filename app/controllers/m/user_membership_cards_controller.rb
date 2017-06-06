class M::UserMembershipCardsController < MobileController
  def index
    @user_membership_cards = current_user.user_membership_cards.order("created_at DESC")
  end

  def show
    @user_membership_card = UserMembershipCard.find params[:id]
  end

  def create
    @user_membership_card = UserMembershipCard.new user_membership_card_params
    @user_membership_card.user_id = current_user.id
    @user_membership_card.trade_no = "MC" + DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s
    @user_membership_card.status = :pending
    if @user_membership_card.save
      redirect_to m_membership_cards_path
    else
      redirect_to new_m_membership_card_path
    end
  end

  def check
    @user_membership_card = UserMembershipCard.find params[:id]
  end

  def checkin
    @user_membership_card = UserMembershipCard.find params[:id]
    @checked = false
    unless params[:safe_code].blank?
      if params[:safe_code] == "bf007"
        @checked = true if @user_membership_card.update_attributes(count: @user_membership_card.count + 1)
      end
    end
  end

  private

  def user_membership_card_params
    params.require(:user_membership_card).permit(:membership_card_id)
  end
    
end
