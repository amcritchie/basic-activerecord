require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"

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

p Order.average(:amount).to_f
