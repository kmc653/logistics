class Admin::TrailersController < Admin::BaseController
  def show
    @trailer = Trailer.find(params[:id])
  end
end