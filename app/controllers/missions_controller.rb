class MissionsController < ApplicationController
  before_action :set_trucks

  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.create(mission_params)
    if @mission.save
      flash[:success] = "您已成功加入任務。"
      redirect_to missions_path
    else
      flash[:error] = "輸入資料有誤，請重新輸入。"
      render :new
    end
  end

  def show
    @mission = Mission.where(id: params[:id]).first
  end

  def edit
    @mission = Mission.where(id: params[:id]).first
  end

  def update
    @mission = Mission.where(id: params[:id]).first
    if @mission.update(mission_params)
      flash[:success] = "修改完成。"
      redirect_to mission_path(@mission)
    else
      flash[:error] = "輸入資料有誤，請重新輸入。"
      render :edit
    end
  end

  private

  def mission_params
    params.require(:mission).permit(:deliver_date, :client_1, :client_2, :truck_id, :number_of_item, :two_clients)
  end

  def set_trucks
    @trucks = Truck.all
  end
end