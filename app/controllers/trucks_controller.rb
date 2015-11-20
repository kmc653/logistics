class TrucksController < ApplicationController
  
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.create(truck_params)
    if @truck.save
      flash[:success] = "You have successfully added the truck '#{@truck.truck_id}'"
      redirect_to truck_path(@truck)
    else
      flash[:error] = "You cannot add this video. Please check the errors."
      render :new
    end
  end

  def show
    @truck = Truck.where(id: params[:id]).first
  end

  def edit
    @truck = Truck.where(id: params[:id]).first
  end

  def update
    @truck = Truck.where(id: params[:id]).first
    if @truck.update(truck_params)
      flash[:success] = "edit successfully!"
      redirect_to truck_path(@truck)
    else
      flash[:error] = "There are something wrong with your update."
      render :edit
    end
  end

  private

  def truck_params
    params.require(:truck).permit(:truck_id, :truck_brand, :truck_type, :buy_date)
  end
end