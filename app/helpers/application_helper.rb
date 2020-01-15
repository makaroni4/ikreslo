module ApplicationHelper
  def to_apex(readings)
    readings.each_with_object([]) do |reading, o|
      o.push([reading.created_at.to_s, reading.value])
    end
  end
end
