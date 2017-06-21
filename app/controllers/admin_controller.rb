class AdminController < ApplicationController
  include Pundit

  before_action :authenticate_admin!

  layout "admin"

  helper_method :current_admin, :is_current_scope?

  def authenticate_admin!
    redirect_to new_admin_session_path if current_admin.blank?
  end

  rescue_from Pundit::NotAuthorizedError, with: :unauthorized

  private

  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
  alias_method :pundit_user, :current_admin

  def unauthorized
    redirect_to request.referrer || admin_dashboard_path, alert: 'You are not authorized to perform this action.'
  end

  def is_current_scope?(scope_name)
    scope_name == request.original_url.split("/")[4]
  end

end