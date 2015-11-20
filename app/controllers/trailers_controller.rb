class TrailersController < ApplicationController
  before_action :set_trucks

  def index
    @trailers = Trailer.all
  end

  def new
    @trailer = Trailer.new
  end

  def create
    @trailer = Trailer.create(trailer_params)
    if @trailer.save
      flash[:success] = "You have successfully added the trailer '#{@trailer.trailer_id}'"
      redirect_to trailer_path(@trailer)
    else
      flash[:error] = "You cannot add this video. Please check the errors."
      render :new
    end
  end

  def show
    @trailer = Trailer.where(id: params[:id]).first
  end

  def edit
    @trailer = Trailer.where(id: params[:id]).first
  end

  def update
    @trailer = Trailer.where(id: params[:id]).first
    if @trailer.update(trailer_params)
      flash[:success] = "edit successfully!"
      redirect_to trailer_path(@trailer)
    else
      flash[:error] = "There are something wrong with your update."
      render :edit
    end
  end

  private

  def trailer_params
    params.require(:trailer).permit(:trailer_id, :trailer_brand, :trailer_type, :buy_date, :truck_id)
  end

  def set_trucks
    @trucks = Truck.all
  end
end