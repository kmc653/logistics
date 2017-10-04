class Admin::TrailersController < Admin::BaseController
  def new
    @trailer = Trailer.new
    @trucks = Truck.all
  end

  def create
    @trailer = Trailer.new(trailer_params)

    if @trailer.save
      redirect_to admin_trailer_path(@trailer)
    else
      render :new
    end
  end
  
  def show
    @trailer = Trailer.find(params[:id])
    @truck = @trailer.truck
  end

  private
  
    def trailer_params
      params.require(:trailer).permit(:trailer_id, :trailer_brand, :trailer_type, :buy_date, :truck_id)
    end
end

