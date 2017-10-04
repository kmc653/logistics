module Admin::DashboardHelper
  def show_all_trailers(trailers)
    result = ""
    trailers.each do |trailer|
      result << link_to(trailer.trailer_id.to_s, admin_trailer_path(trailer))
      result += "、" unless trailer.id == trailers.last.id
    end
    result
  end
end