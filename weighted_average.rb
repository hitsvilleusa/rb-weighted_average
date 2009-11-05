module Enumerable
  def weighted_average(average_attribute, weight_attribute)
    weight = 0.0
    sum    = 0.0
    
    each do |item|
      average_value = item.send(average_attribute)
      weight_value  = item.send(weight_attribute)
      
      next if average_value.nil?
      next if weight_value.nil?  || weight_value  == 0
      
      sum    += weight_value * average_value 
      weight += weight_value
    end

    weight == 0.0 ? 0 : sum / weight
  end
end
