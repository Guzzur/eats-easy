CREATE TABLE Ingredients
(
  Ingredient_name INT NOT NULL,
  ingredient_ID INT NOT NULL,
  image_url INT NOT NULL,
  description INT NOT NULL,
  PRIMARY KEY (ingredient_ID)
);

CREATE TABLE Restaurants
(
  name INT NOT NULL,
  rest_ID INT NOT NULL,
  gps_point INT NOT NULL,
  address INT NOT NULL,
  PRIMARY KEY (rest_ID)
);

CREATE TABLE Credit_cards
(
  ID INT NOT NULL,
  number INT NOT NULL,
  owner_name INT NOT NULL,
  cvc INT NOT NULL,
  expires_on INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Ingredients_type
(
  type INT NOT NULL,
  ingredient_ID INT NOT NULL,
  PRIMARY KEY (type, ingredient_ID),
  FOREIGN KEY (ingredient_ID) REFERENCES Ingredients(ingredient_ID)
);

CREATE TABLE Restaurants_type
(
  type INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (type, rest_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Dishes
(
  price INT NOT NULL,
  description INT NOT NULL,
  dish_ID INT NOT NULL,
  dish_name INT NOT NULL,
  image_url INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (dish_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Tables
(
  table_ID INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (table_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Shifts
(
  shift_ID INT NOT NULL,
  starts_at INT NOT NULL,
  ends_at INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (shift_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Stock_ingredients
(
  stock_ID INT NOT NULL,
  quantity INT NOT NULL,
  ingredient_ID INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (stock_ID, ingredient_ID),
  FOREIGN KEY (ingredient_ID) REFERENCES Ingredients(ingredient_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Users
(
  user_ID INT NOT NULL,
  email INT NOT NULL,
  phone INT NOT NULL,
  hashed_passwd INT NOT NULL,
  name INT NOT NULL,
  table_ID INT NOT NULL,
  ID INT,
  PRIMARY KEY (user_ID),
  FOREIGN KEY (table_ID) REFERENCES Tables(table_ID),
  FOREIGN KEY (ID) REFERENCES Credit_cards(ID)
);

CREATE TABLE Roles
(
  role_ID INT NOT NULL,
  role_name INT NOT NULL,
  user_ID INT,
  PRIMARY KEY (role_ID, user_ID),
  FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);

CREATE TABLE dish_ingredients
(
  quantity INT NOT NULL,
  ingredient_ID INT NOT NULL,
  dish_ID INT NOT NULL,
  PRIMARY KEY (ingredient_ID, dish_ID),
  FOREIGN KEY (ingredient_ID) REFERENCES Ingredients(ingredient_ID),
  FOREIGN KEY (dish_ID) REFERENCES Dishes(dish_ID)
);

CREATE TABLE Dishes_type
(
  type INT NOT NULL,
  dish_ID INT NOT NULL,
  PRIMARY KEY (type, dish_ID),
  FOREIGN KEY (dish_ID) REFERENCES Dishes(dish_ID)
);

CREATE TABLE Employees
(
  employee_ID INT NOT NULL,
  user_ID INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (employee_ID, user_ID),
  FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Orders
(
  order_ID INT NOT NULL,
  status INT NOT NULL,
  time_received INT NOT NULL,
  time_delivered INT NOT NULL,
  table_ID INT NOT NULL,
  rest_ID INT NOT NULL,
  user_ID INT NOT NULL,
  PRIMARY KEY (order_ID),
  FOREIGN KEY (table_ID) REFERENCES Tables(table_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID),
  FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);

CREATE TABLE Calls_for_waiter
(
  reason INT NOT NULL,
  call_date INT NOT NULL,
  call_ID INT NOT NULL,
  table_ID INT NOT NULL,
  rest_ID INT NOT NULL,
  user_ID INT NOT NULL,
  PRIMARY KEY (call_ID),
  FOREIGN KEY (table_ID) REFERENCES Tables(table_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID),
  FOREIGN KEY (user_ID) REFERENCES Users(user_ID)
);

CREATE TABLE Payments
(
  date_accepted INT NOT NULL,
  amount INT NOT NULL,
  payment_ID INT NOT NULL,
  order_ID INT NOT NULL,
  user_ID INT NOT NULL,
  rest_ID INT NOT NULL,
  PRIMARY KEY (payment_ID),
  FOREIGN KEY (order_ID) REFERENCES Orders(order_ID),
  FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
  FOREIGN KEY (rest_ID) REFERENCES Restaurants(rest_ID)
);

CREATE TABLE Calls_resolved
(
  call_resolve_date INT NOT NULL,
  call_resolve_ID INT NOT NULL,
  employee_ID INT NOT NULL,
  user_ID INT NOT NULL,
  call_ID INT NOT NULL,
  PRIMARY KEY (call_resolve_ID),
  FOREIGN KEY (employee_ID, user_ID) REFERENCES Employees(employee_ID, user_ID),
  FOREIGN KEY (call_ID) REFERENCES Calls_for_waiter(call_ID)
);

CREATE TABLE order_items
(
  quantity INT NOT NULL,
  subtotal INT NOT NULL,
  dish_ID INT NOT NULL,
  order_ID INT NOT NULL,
  PRIMARY KEY (dish_ID, order_ID),
  FOREIGN KEY (dish_ID) REFERENCES Dishes(dish_ID),
  FOREIGN KEY (order_ID) REFERENCES Orders(order_ID)
);

CREATE TABLE working
(
  employee_ID INT NOT NULL,
  user_ID INT NOT NULL,
  shift_ID INT NOT NULL,
  PRIMARY KEY (employee_ID, user_ID, shift_ID),
  FOREIGN KEY (employee_ID, user_ID) REFERENCES Employees(employee_ID, user_ID),
  FOREIGN KEY (shift_ID) REFERENCES Shifts(shift_ID)
);
