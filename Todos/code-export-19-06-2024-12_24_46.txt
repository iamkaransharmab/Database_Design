todos [icon: list]{
  _id string pk
  content string
  complete boolean
  subTodos ObjectID[] subTodos
  createdBy ObjectID users
  createdAt Date
  updateAt Date


}

Users [icon: user]{
  _id string pk
  username string
  email string
  password string


}

subTodos [icon: list]{
  _id string pk
  content string
  complete boolean
  createdBy ObjectID user
  createdAt Date
  updateAt Date


}

todos.subTodos  < subTodos._id 
todos.createdBy - Users._id

subTodos.createdBy - Users._id 







