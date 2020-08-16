class ApplicationController < ActionController::Base
  helper_method :is_admin!

  private
  def is_admin!
    if current_user && current_user.admin
    else
      redirect_to_root_path
    end
  end
end
