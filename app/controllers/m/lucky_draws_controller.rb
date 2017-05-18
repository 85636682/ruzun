class M::LuckyDrawsController < MobileController
    def index
        @lucky_draws = current_user.lucky_draws.order("created_at DESC")
    end
    
    def draw
        @lucky_draw = LuckyDraw.find params[:id]
    end
end
