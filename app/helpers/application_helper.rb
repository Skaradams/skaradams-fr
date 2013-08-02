module ApplicationHelper
  def admin_controller? params
    params[:controller].split('/').first == "admin"
  end
end
