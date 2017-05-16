class M::UserMembershipCardsController < MobileController
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
    
    private

    def user_membership_card_params
        params.require(:user_membership_card).permit(:membership_card_id)
    end
    
end
