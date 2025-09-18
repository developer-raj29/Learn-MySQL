CREATE TABLE Customer(
  custID INT PRIMARY KEY,
  custName VARCHAR(50),
  mode VARCHAR(50),
  city VARCHAR(50)
);

INSERT INTO Customer(custID, custName, mode, city)
VALUE
(101, "Olivia Barret", "Net Banking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandz", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Net Banking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phonenix"),
(108, "Lucas Carter", "Net Banking", "Boston"),
(109, "Isabella Martinez", "Net Banking", "Nashville"),
(110, "Jackson Brook", "Credit Card", "Boston");

SELECT * FROM Customer;





