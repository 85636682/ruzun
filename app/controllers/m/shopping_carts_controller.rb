class M::ShoppingCartsController < MobileController
  def index
    @shopping_carts = current_user.shopping_carts
  end

  def add
    @shopping_cart = ShoppingCart.new
    @shopping_cart.user_id = current_user.id
    @shopping_cart.ticket_id = params[:ticket_id]
    if @shopping_cart.save
      rediect_to m_tickets_path, notice: "添加成功."
    else
      rediect_to m_tickets_path, notice: "添加失败."
    end
  end
  
  def udpate
  end
  
  def destroy

  end
  
end
