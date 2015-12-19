class MissionsController < ApplicationController
  before_action :set_trucks, :set_clients

  def index
    @missions = Mission.where(m_date: Time.now.strftime("%Y-%m-%d")).order(created_at: :desc)
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

  def search
    if params[:mission].present?
      @search_date = "" << params[:mission]["date(1i)"] << "-" << params[:mission]["date(2i)"] << "-" << params[:mission]["date(3i)"]
      search_id = params[:id].to_i

      if search_id == 0
        @missions = Mission.where(m_date: @search_date).order(created_at: :desc)
      else
        @missions = Mission.where(m_date: @search_date, truck_id: search_id).order(created_at: :desc)
      end 

      # if @missions.empty?
      #   flash[:error] = "選擇日期或車牌無任何任務。"
      # else
      #   flash[:success] = "搜尋成功！"
      # end
      respond_to do |format|
        format.html do
          if @missions.empty?
            flash[:notice] = "選擇日期或車牌無任何任務。"
          else
            flash[:notice] = "搜尋成功！"
          end
        end
      end
    end
  end

  private

  def mission_params
    params.require(:mission).permit(:client_1, :client_2, :truck_id, :number_of_item, :two_clients, :loading_position, :m_date)
  end

  def set_trucks
    @trucks = Truck.all
  end

  def set_clients
    @clients = Client.all
  end
end