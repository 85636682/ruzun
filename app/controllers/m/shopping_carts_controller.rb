class M::ShoppingCartsController < MobileController
  def index
    @shopping_carts = current_user.shopping_carts
  end

  def add
    @shopping_cart = ShoppingCart.new
    @shopping_cart.user_id = current_user.id
    @shopping_cart.ticket_id = params[:ticket_id]
    @result = @shopping_cart.save
  end
  
  def udpate
  end
  
  def destroy

  end
  
end
