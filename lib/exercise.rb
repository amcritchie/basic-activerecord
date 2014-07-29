require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"
require "awesome_print"

p "="*100

# p Customer.all

# p Customer.first

# p Customer.last

# p Customer.find(3)

# p Customer.where(state: "Colorado")

# p Customer.limit(5)

# p Customer.order(:name :asc)

# p Customer.order(:name :desc)

# p Item.all

# p Item.where('name LIKE ?', 'boot%')

# p Order.all

# p Order.limit(5)

# p Order.order(:id :desc).limit(5)

# p Customer.select(:id, :name, :email)

# p Customer.select(:id, :name, :address)

# p Customer.count

# p Order.sum(:amount).to_f

# p Order.where(customer_id: 1).sum(:amount).to_f

# p Order.average(:amount).to_f

#p Order.average(:amount).to_f.round(2)

# p Order.minimum(:amount).to_f

# p Order.maximum(:amount).to_f

# hash = Order.select(:customer_id, :amount).group(:customer_id).minimum(:amount)
# p hash.each { |k, v| hash[k] = v.to_f }

#hash = Order.select(:customer_id, :amount).group(:customer_id).maximum(:amount)
#p hash.each { |k, v| hash[k] = v.to_f }

# p Customer.where(state: "Colorado")

# p Customer.where(state: "Colorado", city: "Rigobertoside")

# p Customer.where(:state => ['Ohio', 'Virginia'])

# p Item.find_by(description: "snow board").update(name: "board01")

# p Item.create(
#   name: "kayak01",
#   description: "one person river kayak."
#   )

# p Item.delete(10)

# ap hash = Order.select(:customer_id, :amount).group(:customer_id).sum(:amount)
# # ap hash.each { |k, v| hash[k] = v.to_f }

# display the order id, customer name and order amount for each order

Customer.all.each do |customer|
  p customer.name
  p "="*20
  customer.orders.each do |order|
    p "-"*20
    p "Order ID.#{order.id}"
    p "Amount paid: $#{order.amount.to_f}"
  end
  p "="*20
end
