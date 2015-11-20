module ApplicationHelper
  def has_using_truck(trailer)
    if trailer.truck.present?
      return true
    else
      return false
    end
  end

  def has_using_trailer(truck)
    if truck.trailers.present?
      return true
    else
      return false
    end
  end
end
