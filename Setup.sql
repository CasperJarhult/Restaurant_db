-- Restaurant table
CREATE TABLE Restaurant (
    id SERIAL PRIMARY KEY, -- Use SERIAL for auto-increment
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    phone VARCHAR(15),
    opening_hours VARCHAR(50),
    description VARCHAR(255)
);

-- Table (seating) table
CREATE TABLE RestaurantTable ( -- Renamed "Table" to "RestaurantTable" to avoid conflict with the SQL keyword "TABLE"
    id SERIAL PRIMARY KEY,
    capacity INT NOT NULL,
    table_number VARCHAR(10) NOT NULL,
    restaurant_id INT REFERENCES Restaurant(id)
);

-- Customer table
CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Orders table
CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    order_time TIMESTAMP,
    restaurant_id INT REFERENCES Restaurant(id),
    customer_id INT REFERENCES Customer(id),
    table_id INT REFERENCES RestaurantTable(id),
    total_amount NUMERIC(10, 2) -- Use NUMERIC for monetary values
);

-- Dish table
CREATE TABLE Dish (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price NUMERIC(10, 2), -- Use NUMERIC for monetary values
    restaurant_id INT REFERENCES Restaurant(id)
);

-- OrderDish table
CREATE TABLE OrderDish (
    order_id INT REFERENCES Orders(id),
    dish_id INT REFERENCES Dish(id),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, dish_id)
);

