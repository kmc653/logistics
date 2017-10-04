class Admin::TrucksController < Admin::BaseController
  def show
    @truck = Truck.find(params[:id])
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)

    if @truck.save
      redirect_to admin_truck_path(@truck)
    else
      render :new
    end
  end

  private

  def truck_params
    params.require(:truck).permit(:truck_id, :truck_brand, :truck_type, :buy_date)
  end
  
end