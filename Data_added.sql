-- Insert into Restaurant table
INSERT INTO Restaurant (name, location, phone, opening_hours, description)
VALUES
    ('Gourmet Bistro', '123 Main St, New York, NY', '212-555-1234', '9:00 AM - 10:00 PM', 'Fine dining with a focus on local ingredients'),
    ('Pasta Palace', '456 Elm St, San Francisco, CA', '415-555-5678', '11:00 AM - 11:00 PM', 'Authentic Italian cuisine with a modern twist'),
    ('Burger Haven', '789 Oak St, Austin, TX', '512-555-2468', '10:00 AM - 9:00 PM', 'Casual spot for gourmet burgers and fries');

-- Insert into RestaurantTable (seating) table
INSERT INTO RestaurantTable (capacity, table_number, restaurant_id)
VALUES
    (4, 'T1', 1), (2, 'T2', 1), (6, 'T3', 1),
    (4, 'T1', 2), (8, 'T2', 2), (2, 'T3', 2),
    (6, 'T1', 3), (4, 'T2', 3), (2, 'T3', 3);

-- Insert into Customer table
INSERT INTO Customer (name, phone, email)
VALUES
    ('Alice Johnson', '212-555-7890', 'alice.johnson@example.com'),
    ('Bob Smith', '415-555-1234', 'bob.smith@example.com'),
    ('Charlie Brown', '512-555-5678', 'charlie.brown@example.com'),
    ('Daisy Miller', '212-555-2468', 'daisy.miller@example.com');

-- Insert into Dish table
INSERT INTO Dish (name, description, price, restaurant_id)
VALUES
    ('Spaghetti Carbonara', 'Creamy pasta with pancetta and parmesan', 15.99, 1),
    ('Margherita Pizza', 'Classic pizza with tomato, mozzarella, and basil', 12.99, 1),
    ('Fettuccine Alfredo', 'Rich and creamy Alfredo sauce with fettuccine', 14.99, 2),
    ('Caesar Salad', 'Crisp romaine lettuce with Caesar dressing', 9.99, 2),
    ('Classic Burger', 'Beef patty with lettuce, tomato, and cheese', 10.99, 3),
    ('Truffle Fries', 'Crispy fries with truffle oil and parmesan', 7.99, 3);

-- Insert into Orders table (including restaurant_id)
INSERT INTO Orders (order_time, customer_id, restaurant_id, table_id, total_amount)
VALUES
    ('2024-12-01 12:30:00', 1, 1, 1, 28.98),
    ('2024-12-01 13:00:00', 2, 2, 4, 24.98),
    ('2024-12-02 18:45:00', 3, 3, 7, 18.98),
    ('2024-12-03 20:15:00', 4, 1, 3, 35.97);

-- Insert into OrderDish table
INSERT INTO OrderDish (order_id, dish_id, quantity)
VALUES
    (1, 1, 1), (1, 2, 1), -- Order 1: Spaghetti Carbonara and Margherita Pizza
    (2, 3, 1), (2, 4, 1), -- Order 2: Fettuccine Alfredo and Caesar Salad
    (3, 5, 2),            -- Order 3: 2 Classic Burgers
    (4, 6, 3);            -- Order 4: 3 Truffle Fries

