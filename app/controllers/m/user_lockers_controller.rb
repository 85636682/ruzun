class M::UserLockersController < MobileController
  def new
    user_locker = UserLocker.where(user_id: current_user.id, used: true).first
  end

  def create
    if current_user.foregift.to_i < 20
      redirect_to new_m_user_locker_path and return
    end
    locker = Locker.where(state: :unused).first
    if locker.blank?
      redirect_to new_m_user_locker_path and return
    end
    user_locker = UserLocker.new
    user_locker.user_id = current_user.id
    user_locker.locker_id = locker.id
    user_locker.used = true
    if user_locker.save
      locker.update_attributes(state: :used)
      redirect_to new_m_user_locker_path
    else
      redirect_to new_m_user_locker_path
    end
  end

  def back
    user_locker = UserLocker.find params[:id]
    user_locker.update_attributes(used: false, returned_at: DateTime.now)
    user_locker.locker.update_attributes(state: :unused)
  end
  
end
