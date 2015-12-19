class StaffsController < ApplicationController
  before_action :set_trucks
  
  def index
    @staffs = Staff.all
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      flash[:success] = "已新增一位員工。"
      redirect_to staffs_path
    else
      render :new
    end
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])
    if @staff.update(staff_params)
      flash[:success] = "修改成功！"
      redirect_to staffs_path
    else
      flash[:error] = "修改有誤，請重新輸入。"
      render :edit
    end
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :password, :truck_id, :admin)
  end

  def set_trucks
    @trucks = Truck.all
  end
end