/* RESTAURANT */
CREATE TABLE Restaurants
(
  rest_id SERIAL,
  rest_name VARCHAR NOT NULL,
  gps_lat FLOAT,
  gps_lon FLOAT,
  rest_address VARCHAR,
  rest_type JSON,
  PRIMARY KEY (rest_id)
);
/* -------------------------------------------------- */
/* DISH */
CREATE TABLE Dishes
(
  dish_id SERIAL,
  rest_id INT NOT NULL,
  price FLOAT NOT NULL,
  dish_name VARCHAR NOT NULL,
  dish_description VARCHAR,
  image_url VARCHAR,
  PRIMARY KEY (dish_id, rest_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id)
);
CREATE TABLE Dishes_type
(
  dish_id SERIAL,
  dish_type VARCHAR NOT NULL,
  PRIMARY KEY (dish_id, dish_type),
  FOREIGN KEY (dish_id) REFERENCES Dishes(dish_id)
);
/* -------------------------------------------------- */
/* CARD */
CREATE TABLE Credit_cards
(
  card_id SERIAL,
  card_number BIGINT NOT NULL,
  owner_name VARCHAR NOT NULL,
  cvc INT NOT NULL,
  expires_on DATE NOT NULL,
  PRIMARY KEY (card_id, card_number)
);
/* -------------------------------------------------- */
/* USER */
CREATE TABLE Users
(
  user_id SERIAL,
  user_name VARCHAR NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR,
  phone BIGINT,
  hashed_passwd VARCHAR NOT NULL,
  PRIMARY KEY (user_id)
);
CREATE TABLE Roles
(
  role_id SERIAL,
  role_name VARCHAR NOT NULL,
  user_id INT,
  PRIMARY KEY (role_id, user_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE Users_credit_cards
(
  card_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (card_id, user_id)
  FOREIGN KEY (card_id) REFERENCES Credit_cards(card_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
)
/* -------------------------------------------------- */
/* ORDER */
CREATE TABLE Orders
(
  order_id SERIAL,
  status VARCHAR NOT NULL,
  time_received DATE NOT NULL,
  time_delivered DATE NOT NULL,
  table_id INT NOT NULL,
  rest_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (order_id, rest_id),
  FOREIGN KEY (table_id) REFERENCES TablesData(table_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE Order_items
(
  order_id SERIAL,
  dish_id INT NOT NULL,
  quantity INT NOT NULL,
  subtotal INT NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (dish_id) REFERENCES Dishes(dish_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
/* -------------------------------------------------- */
/* CALL */
CREATE TABLE Calls_for_waiter
(
  call_id SERIAL,
  table_id INT NOT NULL,
  rest_id INT NOT NULL,
  reason VARCHAR NOT NULL,
  call_date DATE NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (call_id),
  FOREIGN KEY (table_id) REFERENCES TablesData(table_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE Calls_resolved
(
  call_resolve_id SERIAL,
  employee_id INT NOT NULL,
  user_id INT NOT NULL,
  call_id INT NOT NULL,
  call_resolve_date DATE NOT NULL,
  PRIMARY KEY (call_resolve_id, call_id),
  FOREIGN KEY (call_id) REFERENCES Calls_for_waiter(call_id),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
/* -------------------------------------------------- */
/* PAYMENT */
CREATE TABLE Payments
(
  payment_id SERIAL,
  amount FLOAT NOT NULL,
  order_id INT NOT NULL,
  user_id INT NOT NULL,
  rest_id INT NOT NULL,
  date_accepted DATE NOT NULL,
  PRIMARY KEY (payment_id, order_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id)
);
/* -------------------------------------------------- */
/* TABLE */
CREATE TABLE TablesData
(
  table_id SERIAL,
  rest_id INT NOT NULL,
  table_code_name VARCHAR,
  PRIMARY KEY (table_id, rest_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id)
);
/* -------------------------------------------------- */
/* EMPLOYEE */
CREATE TABLE Employees
(
  employee_id SERIAL,
  user_id INT NOT NULL,
  rest_id INT NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id)
);
CREATE TABLE Shifts
(
  shift_id SERIAL,
  rest_id INT NOT NULL,
  starts_at DATE NOT NULL,
  ends_at DATE NOT NULL,
  PRIMARY KEY (shift_id, rest_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id)
);
CREATE TABLE Working
(
  employee_id INT NOT NULL,
  shift_id INT NOT NULL,
  PRIMARY KEY (employee_id, shift_id),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (shift_id) REFERENCES Shifts(shift_id)
);
/* -------------------------------------------------- */
/* TODO LATER */
/*
CREATE TABLE Ingredients
(
  ingredient_id SERIAL,
  ingredient_name VARCHAR NOT NULL,
  image_url VARCHAR,
  ingredient_description VARCHAR,
  PRIMARY KEY (ingredient_id)
);

CREATE TABLE Ingredients_type
(
  ingredient_id SERIAL,
  ingredient_type VARCHAR NOT NULL,
  PRIMARY KEY (ingredient_type, ingredient_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);

CREATE TABLE Dish_ingredients
(
  quantity INT NOT NULL,
  ingredient_id INT NOT NULL,
  dish_id INT NOT NULL,
  PRIMARY KEY (ingredient_id, dish_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id),
  FOREIGN KEY (dish_id) REFERENCES Dishes(dish_id)
);

CREATE TABLE Stock_ingredients
(
  stock_id SERIAL,
  ingredient_id INT NOT NULL,
  rest_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (stock_id, ingredient_id, rest_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id),
  FOREIGN KEY (rest_id) REFERENCES Restaurants(rest_id)
);

*/