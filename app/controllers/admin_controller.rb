class AdminController < ApplicationController
    before_action :authenticate_admin!

    layout "admin"

    def authenticate_admin!
        redirect_to new_admin_session_path if current_admin.blank?
    end

    private
    def current_admin
        @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
    end

    helper_method :current_admin

end