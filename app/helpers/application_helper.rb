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

  def collect_all_missions_date(items)
    array = Array.new
    items.each do |mission|
      date = mission.m_date.to_s
      array.push(date)
    end
    array = array.uniq.sort
  end

  def find_all_missions_with_specific_date(missions, date)
    mission_array = Array.new
    missions.each do |mission|
      mission_array.push(mission) if mission.m_date.to_s == date
    end
    mission_array
  end
end
