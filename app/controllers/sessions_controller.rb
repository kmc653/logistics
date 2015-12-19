class SessionsController < ApplicationController
  before_action :set_staffs, :set_trucks

  def new
    # if current_user.admin
    #   redirect_to missions_path
    # elsif current_user
    #   redirect_to check_in_path
    # end
  end

  def create
    staff = Staff.where(id: params[:staff_id], truck_id: params[:truck_id]).first
    if staff.present?
      session[:staff_id] = staff.id
      flash[:success] = "登入成功！"
      redirect_to missions_path
    else
      flash[:error] = "資料有誤，請重新輸入。"
      redirect_to login_path
    end
  end

  def destroy
    session[:staff_id] = nil
    flash[:notice] = "您已登出。"
    redirect_to login_path
  end

  private

  def set_staffs
    @staffs = Staff.all
  end

  def set_trucks
    @trucks = Truck.all
  end
end