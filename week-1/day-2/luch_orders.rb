require 'set'
def process_orders(people_orders)
    final = {}
    
    unique_food = people_orders.values.to_set.to_a   
    total_food = people_orders.values
    
    unique_food.each do |f|
        final[f] = total_food.count(f)
    end
    
    final
end
