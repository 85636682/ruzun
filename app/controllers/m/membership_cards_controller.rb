class M::MembershipCardsController < MobileController
  def index
    @user_membership_cards = current_user.user_membership_cards.order("created_at DESC")
  end

  def new
    @membership_cards = MembershipCard.all.order("created_at ASC")
  end
end
