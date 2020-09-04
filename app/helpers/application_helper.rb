module ApplicationHelper
  def formatted_price(price)
    "U$ #{price / 100.0}"
  end
end
