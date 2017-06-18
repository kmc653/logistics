class Admin::DashboardController < Admin::BaseController
  def index
    @trucks = Truck.all
    @trailers = Trailer.all
  end
end
