class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) { |total, order|
      total + order.keys.inject(0) { |cost, key| cost + @menu[key] * order[key] }
    }
  end
end
