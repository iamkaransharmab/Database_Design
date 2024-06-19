users [icon: user]{
  _id string pk
  username string
  email string
  password string

}

products[icon: box]{
  _id string pk
  name string
  Description  string
  productImage string
  price number
  stock number
  category ObjectID categories
  owner ObjectID users
  createdAt Date
  updateAt Date

}

categories[icon: package]{
  _id string pk
  name string
  createdAt Date
  updateAt Date

}

orderItems[icon: list]{
  _id string pk
  productID ObjectID products
  Quantity number


}

orders[icon: list]{
  _id string pk
  customer ObjectID users
  orderItems ObjectID orderItems
  address string
  status enum "PENDING", "CANCELLED","DELIVERED"
  paymentID string
  createdAt Date
  updateAt Date

}

products.category  - categories._id
products.owner  - users._id
orderItems.productID - products._id
orders.customer - users._id
orders.orderItems  < orderItems._id
users.username < orders.address






