class AdminsController < ApplicationController
  before_action :ensure_admin

  def ensure_admin
    if !current_user.admin?
      flash[:error] = "您沒有權限進入此區域"
      redirect_to root_path
    end
  end
end