module JiroHelper
  # @return[string]
  def exist(facility)
    return '○' if facility
    return '×' unless facility
  end
end
