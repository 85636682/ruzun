class Admin::UserLockersController < AdminController
    def index
        @user_lockers = UserLocker.all.order("created_at DESC").paginate(:page => params[:page])
    end
    
    def back
        user_locker = UserLocker.find params[:id]
        if user_locker.used
            user_locker.update_attributes(used: false, returned_at: DateTime.now)
            user_locker.locker.update_attributes(state: :unused)
        end
        redirect_to admin_user_lockers_path
    end
    
end
