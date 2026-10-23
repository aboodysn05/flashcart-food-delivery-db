-- =====================================================================
-- STEP 1: Core User Management (Users, Profiles, Phones, Addresses)
-- =====================================================================

-- Insert 30 users (IDs 1..15 = Customer, 16..23 = Driver, 24..29 = Staff, 30 = Admin)
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (1, 'John', 'Smith', 'john.smith@email.com', 'hash_pass_01', 'Customer', TIMESTAMP '2026-05-01 10:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (2, 'Emma', 'Johnson', 'emma.johnson@email.com', 'hash_pass_02', 'Customer', TIMESTAMP '2026-05-02 11:15:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (3, 'Michael', 'Brown', 'michael.brown@email.com', 'hash_pass_03', 'Customer', TIMESTAMP '2026-05-03 09:30:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (4, 'Sarah', 'Davis', 'sarah.davis@email.com', 'hash_pass_04', 'Customer', TIMESTAMP '2026-05-04 14:20:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (5, 'James', 'Wilson', 'james.wilson@email.com', 'hash_pass_05', 'Customer', TIMESTAMP '2026-05-05 16:45:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (6, 'Linda', 'Martinez', 'linda.martinez@email.com', 'hash_pass_06', 'Customer', TIMESTAMP '2026-05-06 12:10:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (7, 'Robert', 'Anderson', 'robert.anderson@email.com', 'hash_pass_07', 'Customer', TIMESTAMP '2026-05-07 08:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (8, 'Mary', 'Taylor', 'mary.taylor@email.com', 'hash_pass_08', 'Customer', TIMESTAMP '2026-05-08 19:30:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (9, 'David', 'Thomas', 'david.thomas@email.com', 'hash_pass_09', 'Customer', TIMESTAMP '2026-05-09 13:40:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (10, 'Jennifer', 'Moore', 'jennifer.moore@email.com', 'hash_pass_10', 'Customer', TIMESTAMP '2026-05-10 17:55:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (11, 'William', 'Jackson', 'william.jackson@email.com', 'hash_pass_11', 'Customer', TIMESTAMP '2026-05-11 10:25:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (12, 'Patricia', 'White', 'patricia.white@email.com', 'hash_pass_12', 'Customer', TIMESTAMP '2026-05-12 15:05:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (13, 'Richard', 'Harris', 'richard.harris@email.com', 'hash_pass_13', 'Customer', TIMESTAMP '2026-05-13 11:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (14, 'Susan', 'Martin', 'susan.martin@email.com', 'hash_pass_14', 'Customer', TIMESTAMP '2026-05-14 09:15:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (15, 'Joseph', 'Thompson', 'joseph.thompson@email.com', 'hash_pass_15', 'Customer', TIMESTAMP '2026-05-15 20:00:00');
-- Drivers (16-23)
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (16, 'Ahmed', 'Hassan', 'ahmed.driver@flashcart.com', 'hash_driver_01', 'Driver', TIMESTAMP '2026-04-01 08:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (17, 'Khalid', 'Omar', 'khalid.driver@flashcart.com', 'hash_driver_02', 'Driver', TIMESTAMP '2026-04-02 09:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (18, 'Fatima', 'Zahra', 'fatima.driver@flashcart.com', 'hash_driver_03', 'Driver', TIMESTAMP '2026-04-03 10:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (19, 'Youssef', 'Ali', 'youssef.driver@flashcart.com', 'hash_driver_04', 'Driver', TIMESTAMP '2026-04-04 11:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (20, 'Leila', 'Sami', 'leila.driver@flashcart.com', 'hash_driver_05', 'Driver', TIMESTAMP '2026-04-05 12:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (21, 'Omar', 'Nabil', 'omar.driver@flashcart.com', 'hash_driver_06', 'Driver', TIMESTAMP '2026-04-06 13:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (22, 'Nour', 'Fadi', 'nour.driver@flashcart.com', 'hash_driver_07', 'Driver', TIMESTAMP '2026-04-07 14:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (23, 'Hassan', 'Rami', 'hassan.driver@flashcart.com', 'hash_driver_08', 'Driver', TIMESTAMP '2026-04-08 15:00:00');
-- Staff (24-29)
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (24, 'Sami', 'Khouri', 'sami.staff@flashcart.com', 'hash_staff_01', 'Staff', TIMESTAMP '2026-03-01 08:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (25, 'Mona', 'Taleb', 'mona.staff@flashcart.com', 'hash_staff_02', 'Staff', TIMESTAMP '2026-03-02 09:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (26, 'Khaled', 'Zaki', 'khaled.staff@flashcart.com', 'hash_staff_03', 'Staff', TIMESTAMP '2026-03-03 10:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (27, 'Rania', 'Fouad', 'rania.staff@flashcart.com', 'hash_staff_04', 'Staff', TIMESTAMP '2026-03-04 11:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (28, 'Samer', 'Nader', 'samer.staff@flashcart.com', 'hash_staff_05', 'Staff', TIMESTAMP '2026-03-05 12:00:00');
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (29, 'Dina', 'Maher', 'dina.staff@flashcart.com', 'hash_staff_06', 'Staff', TIMESTAMP '2026-03-06 13:00:00');
-- Admin (30)
INSERT INTO "User" (UserID, FirstName, LastName, Email, PasswordHash, UserType, RegistrationDate) VALUES (30, 'Admin', 'FlashCart', 'admin@flashcart.com', 'hash_admin_master', 'Admin', TIMESTAMP '2026-01-01 00:00:00');

-- Populate Customer extension table (IDs 1..15)
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (1, 'Credit Card');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (2, 'Cash');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (3, 'Wallet');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (4, 'Credit Card');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (5, 'Cash');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (6, 'Wallet');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (7, 'Credit Card');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (8, 'Cash');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (9, 'Wallet');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (10, 'Credit Card');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (11, 'Cash');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (12, 'Wallet');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (13, 'Credit Card');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (14, 'Cash');
INSERT INTO Customer (CustomerID, PreferedPaymentMethod) VALUES (15, 'Wallet');

-- Populate Driver extension table (IDs 16..23)
INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (16, 'Bike', 'LIC-BIKE-001', 'Y', 4.5, TIMESTAMP '2026-04-01 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (17, 'Scooter', 'LIC-SCOOT-002', 'Y', 4.7, TIMESTAMP '2026-04-02 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (18, 'Car', 'LIC-CAR-003', 'Y', 4.9, TIMESTAMP '2026-04-03 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (19, 'Bike', 'LIC-BIKE-004', 'Y', 4.2, TIMESTAMP '2026-04-04 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (20, 'Scooter', 'LIC-SCOOT-005', 'Y', 4.6, TIMESTAMP '2026-04-05 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (21, 'Car', 'LIC-CAR-006', 'Y', 4.8, TIMESTAMP '2026-04-06 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (22, 'Bike', 'LIC-BIKE-007', 'Y', 4.3, TIMESTAMP '2026-04-07 00:00:00');

INSERT INTO Driver (DriverID, VehicleType, LicenseNumber, isAvailable, Rating, RegistrationDate)
VALUES (23, 'Scooter', 'LIC-SCOOT-008', 'Y', 4.4, TIMESTAMP '2026-04-08 00:00:00');

-- UserPhone – one mobile number per user (IDs 1..30)
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (1, 'Mobile', '+962790000001');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (2, 'Mobile', '+962790000002');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (3, 'Mobile', '+962790000003');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (4, 'Mobile', '+962790000004');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (5, 'Mobile', '+962790000005');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (6, 'Mobile', '+962790000006');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (7, 'Mobile', '+962790000007');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (8, 'Mobile', '+962790000008');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (9, 'Mobile', '+962790000009');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (10, 'Mobile', '+962790000010');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (11, 'Mobile', '+962790000011');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (12, 'Mobile', '+962790000012');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (13, 'Mobile', '+962790000013');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (14, 'Mobile', '+962790000014');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (15, 'Mobile', '+962790000015');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (16, 'Mobile', '+962790000016');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (17, 'Mobile', '+962790000017');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (18, 'Mobile', '+962790000018');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (19, 'Mobile', '+962790000019');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (20, 'Mobile', '+962790000020');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (21, 'Mobile', '+962790000021');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (22, 'Mobile', '+962790000022');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (23, 'Mobile', '+962790000023');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (24, 'Mobile', '+962790000024');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (25, 'Mobile', '+962790000025');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (26, 'Mobile', '+962790000026');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (27, 'Mobile', '+962790000027');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (28, 'Mobile', '+962790000028');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (29, 'Mobile', '+962790000029');
INSERT INTO UserPhone (UserID, PhoneType, PhoneNumber) VALUES (30, 'Mobile', '+962790000030');

-- Address – one default address per user (IDs 1..30)
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (1, 1, '123 Rainbow St', 'Amman', 'Abdoun', 'Near Coffee Shop', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (2, 2, '45 Gardens Ave', 'Amman', 'Shmeisani', 'Opposite Mall', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (3, 3, '78 King Rd', 'Amman', 'Jabal Hussein', 'By Post Office', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (4, 4, '12 Queen St', 'Amman', 'Dabouq', 'Near Park', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (5, 5, '99 Third Circle', 'Amman', 'Swefieh', 'Beside Bank', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (6, 6, '34 Medical St', 'Amman', 'Lweibdeh', 'Near Hospital', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (7, 7, '22 Business Park', 'Amman', 'Abdali', 'Downtown', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (8, 8, '66 Jordan St', 'Amman', 'Tlaa Al Ali', 'Next to School', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (9, 9, '88 Amman St', 'Amman', 'Khalda', 'Near Mosque', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (10, 10, '15 Red Sea St', 'Amman', 'Marj Al Hamam', 'Close to Mall', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (11, 11, '27 Blue Heights', 'Amman', 'Jubeiha', 'University Area', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (12, 12, '44 Orange Rd', 'Amman', 'Bayader Wadi Seer', 'Near Bakery', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (13, 13, '19 Green Valley', 'Irbid', 'Downtown Irbid', 'City Center', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (14, 14, '55 Silver St', 'Irbid', 'Yarmouk', 'Near University', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (15, 15, '77 Golden Ave', 'Zarqa', 'New Zarqa', 'Opposite Park', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (16, 16, '100 Driver Lane', 'Amman', 'Marka', 'Garage Area', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (17, 17, '101 Scooter St', 'Amman', 'Sahab', 'Industrial Zone', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (18, 18, '102 Car Road', 'Amman', 'Naour', 'Near Gas Station', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (19, 19, '103 Bike Way', 'Irbid', 'Hakama', 'Driver Base', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (20, 20, '104 Fleet Ave', 'Amman', 'Ras Al Ain', 'Central', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (21, 21, '105 Transport St', 'Zarqa', 'Zarqa Free Zone', 'Warehouse', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (22, 22, '106 Delivery Rd', 'Amman', 'Jabal Al Nuzha', 'Hub Nearby', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (23, 23, '107 Courier Ln', 'Amman', 'Tariq', 'Main Street', 'Home', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (24, 24, '108 Staff Hub', 'Amman', 'Abdoun', 'FlashCart Office', 'Work', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (25, 25, '109 Operations', 'Amman', 'Shmeisani', 'HQ', 'Work', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (26, 26, '110 West Hub', 'Amman', 'Swefieh', 'Near Mall', 'Work', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (27, 27, '111 East Hub', 'Amman', 'Marka', 'Industrial Area', 'Work', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (28, 28, '112 Central Hub', 'Irbid', 'Irbid City', 'Main Square', 'Work', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (29, 29, '113 Support', 'Amman', 'Khalda', 'Customer Care', 'Work', 'Y');
INSERT INTO Address (AddressID, UserID, AddressLine1, City, District, Landmark, AddressType, IsDefault)
VALUES (30, 30, '114 Admin HQ', 'Amman', 'Abdali', 'FlashCart Tower', 'Work', 'Y');

COMMIT;

-- =====================================================================
-- STEP 2: Logistics and Infrastructure (Regions, Hubs, Staff, Manager update)
-- =====================================================================

-- Regions
INSERT INTO Region (RegionID, RegionName, Country, City) VALUES (1, 'Amman West', 'Jordan', 'Amman');
INSERT INTO Region (RegionID, RegionName, Country, City) VALUES (2, 'Amman East', 'Jordan', 'Amman');
INSERT INTO Region (RegionID, RegionName, Country, City) VALUES (3, 'Irbid Central', 'Jordan', 'Irbid');

-- Hubs (ManagerID initially NULL)
INSERT INTO Hub (HubID, RegionID, HubName, LocationCoordinates, Capacity, ContactNumber) 
VALUES (1, 1, 'West Hub', '35.8949,31.9566', 60, '+96265000001');
INSERT INTO Hub (HubID, RegionID, HubName, LocationCoordinates, Capacity, ContactNumber) 
VALUES (2, 2, 'East Hub', '35.9552,31.9726', 55, '+96265000002');
INSERT INTO Hub (HubID, RegionID, HubName, LocationCoordinates, Capacity, ContactNumber) 
VALUES (3, 3, 'Central Hub', '35.8567,32.5567', 70, '+96265000003');

-- Staff (IDs 24-29) assigned to hubs
-- Hub 1: West Hub gets StaffID 24 (Manager) and 25 (Staff)
-- Hub 2: East Hub gets StaffID 26 (Manager) and 27 (Staff)
-- Hub 3: Central Hub gets StaffID 28 (Manager) and 29 (Staff)
INSERT INTO Staff (StaffID, HubID, StaffRole, HireDate) VALUES (24, 1, 'Hub Manager', DATE '2025-06-01');
INSERT INTO Staff (StaffID, HubID, StaffRole, HireDate) VALUES (25, 1, 'Operations Coordinator', DATE '2025-06-15');
INSERT INTO Staff (StaffID, HubID, StaffRole, HireDate) VALUES (26, 2, 'Hub Manager', DATE '2025-07-01');
INSERT INTO Staff (StaffID, HubID, StaffRole, HireDate) VALUES (27, 2, 'Logistics Staff', DATE '2025-07-10');
INSERT INTO Staff (StaffID, HubID, StaffRole, HireDate) VALUES (28, 3, 'Hub Manager', DATE '2025-08-01');
INSERT INTO Staff (StaffID, HubID, StaffRole, HireDate) VALUES (29, 3, 'Hub Supervisor', DATE '2025-08-05');

-- Update Hub ManagerID references (circular dependency resolved)
UPDATE Hub SET ManagerID = 24 WHERE HubID = 1;
UPDATE Hub SET ManagerID = 26 WHERE HubID = 2;
UPDATE Hub SET ManagerID = 28 WHERE HubID = 3;

COMMIT;

-- =====================================================================
-- STEP 3: Restaurant Ecosystem & Menus
-- =====================================================================

-- Restaurants (IDs 1..3)
INSERT INTO Restaurant (RestaurantID, RestaurantName, CuisineType, PhoneNumber, Email, RegistrationDate, Rating, Status)
VALUES (1, 'Shawerma House', 'Middle Eastern', '+962799990001', 'contact@shawermahouse.com', DATE '2026-01-10', 4.6, 'Active');
INSERT INTO Restaurant (RestaurantID, RestaurantName, CuisineType, PhoneNumber, Email, RegistrationDate, Rating, Status)
VALUES (2, 'Pizza Italia', 'Italian', '+962799990002', 'info@pizzaitalia.com', DATE '2026-01-15', 4.8, 'Active');
INSERT INTO Restaurant (RestaurantID, RestaurantName, CuisineType, PhoneNumber, Email, RegistrationDate, Rating, Status)
VALUES (3, 'Burger Planet', 'American', '+962799990003', 'hello@burgerplanet.com', DATE '2026-02-01', 4.7, 'Active');

-- Operating Hours for each restaurant (7 days)
-- Shawerma House
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Monday', '09:00', '23:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Tuesday', '09:00', '23:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Wednesday', '09:00', '23:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Thursday', '09:00', '23:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Friday', '12:00', '01:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Saturday', '09:00', '23:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (1, 'Sunday', '09:00', '23:00');
-- Pizza Italia
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Monday', '10:00', '22:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Tuesday', '10:00', '22:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Wednesday', '10:00', '22:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Thursday', '10:00', '22:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Friday', '11:00', '00:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Saturday', '10:00', '22:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (2, 'Sunday', '10:00', '22:00');
-- Burger Planet
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Monday', '11:00', '00:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Tuesday', '11:00', '00:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Wednesday', '11:00', '00:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Thursday', '11:00', '00:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Friday', '11:00', '01:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Saturday', '11:00', '00:00');
INSERT INTO RestaurantOperatingHours (RestaurantID, DayOfWeek, OpeningTime, ClosingTime) VALUES (3, 'Sunday', '11:00', '00:00');

-- Menus (one active menu per restaurant, ID 1..3)
INSERT INTO Menu (MenuID, RestaurantID, MenuName, IsActive, ValidFrom) VALUES (1, 1, 'Shawerma House Main Menu', 'Y', DATE '2026-01-10');
INSERT INTO Menu (MenuID, RestaurantID, MenuName, IsActive, ValidFrom) VALUES (2, 2, 'Pizza Italia Classics', 'Y', DATE '2026-01-15');
INSERT INTO Menu (MenuID, RestaurantID, MenuName, IsActive, ValidFrom) VALUES (3, 3, 'Burger Planet Signature', 'Y', DATE '2026-02-01');

-- Global Menu Categories (IDs 1..4)
INSERT INTO MenuCategory (MenuCategoryID, CategoryName, Description, DisplayOrder) VALUES (1, 'Appetizers', 'Starters and small plates', 10);
INSERT INTO MenuCategory (MenuCategoryID, CategoryName, Description, DisplayOrder) VALUES (2, 'Main Course', 'Hearty main dishes', 20);
INSERT INTO MenuCategory (MenuCategoryID, CategoryName, Description, DisplayOrder) VALUES (3, 'Beverages', 'Soft drinks, juices, etc.', 30);
INSERT INTO MenuCategory (MenuCategoryID, CategoryName, Description, DisplayOrder) VALUES (4, 'Desserts', 'Sweet treats', 40);

-- Menu Items (for each restaurant)
-- Restaurant 1: Shawerma House (MenuID 1)
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (1, 1, 'Chicken Shawerma Plate', 'Grilled chicken, garlic sauce, pickles, fries', 5.99, 12, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (2, 1, 'Beef Shawerma Sandwich', 'Tender beef, tahini, vegetables, wrapped', 4.49, 8, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (3, 1, 'Falafel Platter', 'Crispy falafel, hummus, salad', 3.99, 10, 'Y');
-- Restaurant 2: Pizza Italia (MenuID 2)
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (4, 2, 'Margherita Pizza', 'Fresh mozzarella, basil, tomato sauce', 8.99, 15, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (5, 2, 'Pepperoni Pizza', 'Spicy pepperoni, mozzarella, tomato sauce', 10.49, 15, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (6, 2, 'Four Cheese Pizza', 'Mozzarella, parmesan, gorgonzola, ricotta', 11.99, 18, 'Y');
-- Restaurant 3: Burger Planet (MenuID 3)
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (7, 3, 'Classic Cheeseburger', 'Beef patty, cheddar, lettuce, tomato, sauce', 7.99, 12, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (8, 3, 'Double Bacon Burger', 'Two patties, bacon, cheese, caramelized onion', 10.99, 15, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (9, 3, 'Veggie Burger', 'Plant-based patty, avocado, lettuce, vegan sauce', 8.49, 10, 'Y');

-- Map MenuItems to Categories
-- Shawerma items
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (1, 2); -- Chicken plate -> Main
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (2, 2); -- Beef sandwich -> Main
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (3, 1); -- Falafel platter -> Appetizer
-- Pizza items
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (4, 2); -- Margherita -> Main
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (5, 2); -- Pepperoni -> Main
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (6, 2); -- Four cheese -> Main
-- Burger items
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (7, 2); -- Cheeseburger -> Main
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (8, 2); -- Double bacon -> Main
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (9, 2); -- Veggie -> Main
-- Add beverages/desserts optional (only for completeness, but not required for transaction load)
-- For demonstration we add two generic extras (IDs 10,11) to enrich categories
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (10, 1, 'Soft Drink', 'Coke, Sprite, or Fanta', 1.99, 1, 'Y');
INSERT INTO MenuItem (MenuItemID, MenuID, ItemName, Description, BasePrice, PreparationTime, IsAvailable)
VALUES (11, 2, 'Tiramisu', 'Classic Italian dessert', 4.49, 5, 'Y');
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (10, 3); -- drink -> Beverages
INSERT INTO MenuItemCategory (MenuItemID, MenuCategoryID) VALUES (11, 4); -- tiramisu -> Desserts

COMMIT;

-- =====================================================================
-- STEP 4: Transactional Bulk Data (45 Orders, OrderItems, Payments)
-- =====================================================================

-- Use PL/SQL to generate 45 orders spread across different days/hours,
-- hubs (1..3), customers (1..15), drivers (16..23), and menu items (1..11)
DECLARE
    v_order_id      NUMBER;
    v_order_ts      TIMESTAMP;
    v_customer_id   NUMBER;
    v_hub_id        NUMBER;
    v_driver_id     NUMBER;
    v_delivery_fee  NUMBER;
    v_est_delivery  TIMESTAMP;
    v_actual_delivery TIMESTAMP;
    v_total_amount  NUMBER;
    v_line_no       NUMBER;
    v_num_items     NUMBER;
    v_item_id       NUMBER;
    v_qty           NUMBER;
    v_price         NUMBER;
    v_subtotal      NUMBER;
BEGIN
    FOR i IN 1..45 LOOP
        -- Order ID explicit (1..45)
        v_order_id := i;
        
        -- Spread order timestamps: start June 1, 2026, plus random-ish days/hours
        -- Pattern: i=1 -> 2026-06-01 09:15; i=2 -> 2026-06-01 12:30; i=3 -> 2026-06-01 18:45; i=4 -> 2026-06-02 08:30; etc.
        v_order_ts := TIMESTAMP '2026-06-01 00:00:00' 
                      + NUMTODSINTERVAL(TRUNC((i-1)/3), 'DAY')   -- shift day every 3 orders
                      + NUMTODSINTERVAL( 
                            CASE MOD(i,3) 
                                WHEN 0 THEN 19   -- 19:00 (dinner)
                                WHEN 1 THEN 9    -- 09:00 (morning)
                                WHEN 2 THEN 12   -- 12:00 (lunch)
                            END, 'HOUR')
                      + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(0,59)), 'MINUTE');
        
        -- Customer: cycle 1..15
        v_customer_id := MOD(i-1, 15) + 1;
        -- Hub: cycle 1..3
        v_hub_id := MOD(i-1, 3) + 1;
        -- Driver: cycle 16..23
        v_driver_id := 16 + MOD(i-1, 8);
        -- Delivery fee: 2.5 to 4.5
        v_delivery_fee := 2.5 + MOD(i, 3) * 0.5;
        
        -- Estimated delivery time = order time + 35..55 minutes
        v_est_delivery := v_order_ts + NUMTODSINTERVAL(35 + MOD(i,20), 'MINUTE');
        -- Actual delivery (usually on time or few min late)
        v_actual_delivery := v_est_delivery + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(-3,12)), 'MINUTE');
        
        -- Insert Order header
        INSERT INTO "Order" (OrderID, CustomerID, HubID, DriverID, OrderTimestamp, DeliveryFee, OrderStatus, EstimatedDeliveryTime, ActualDeliveryTime)
        VALUES (v_order_id, v_customer_id, v_hub_id, v_driver_id, v_order_ts, v_delivery_fee, 'Delivered', v_est_delivery, v_actual_delivery);
        
        -- Determine number of items for this order (1 to 4)
        v_num_items := TRUNC(DBMS_RANDOM.VALUE(1,5));
        v_total_amount := 0;
        
        -- Insert OrderItems
        FOR line IN 1..v_num_items LOOP
            v_line_no := line;
            -- Pick a menu item from 1..11 (all valid IDs)
            v_item_id := TRUNC(DBMS_RANDOM.VALUE(1,12));
            -- Quantity 1 or 2
            v_qty := TRUNC(DBMS_RANDOM.VALUE(1,3));
            -- Fetch current price from MenuItem
            SELECT BasePrice INTO v_price FROM MenuItem WHERE MenuItemID = v_item_id;
            v_subtotal := v_price * v_qty;
            v_total_amount := v_total_amount + v_subtotal;
            
            INSERT INTO OrderItem (OrderID, LineNumber, MenuItemID, Quantity, UnitPriceAtTimeOfOrder, SpecialInstructions)
            VALUES (v_order_id, v_line_no, v_item_id, v_qty, v_price, 'No special instructions');
        END LOOP;
        
        -- Add delivery fee to total amount
        v_total_amount := v_total_amount + v_delivery_fee;
        
        -- Insert Payment (successful)
        INSERT INTO Payment (PaymentID, OrderID, Amount, PaymentMethod, PaymentStatus, TransactionReference, PaymentTimestamp)
        VALUES (v_order_id, v_order_id, v_total_amount, 
                CASE MOD(i,3) WHEN 0 THEN 'Credit Card' WHEN 1 THEN 'Cash' ELSE 'Wallet' END,
                'Success', 
                'TXN_FLASH_' || TO_CHAR(v_order_id) || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS'),
                v_order_ts + NUMTODSINTERVAL(5, 'MINUTE'));
    END LOOP;
    COMMIT;
END;
/

-- Final commit to ensure all data is saved
COMMIT;

-- Optional: Verify counts (uncomment for testing)
-- SELECT COUNT(*) FROM "User";
-- SELECT COUNT(*) FROM "Order";
-- SELECT COUNT(*) FROM OrderItem;
-- SELECT COUNT(*) FROM Payment;

----
----
----
----

DECLARE
    v_start_id      NUMBER;
    v_order_id      NUMBER;
    v_order_ts      TIMESTAMP;
    v_customer_id   NUMBER;
    v_hub_id        NUMBER;
    v_driver_id     NUMBER;
    v_delivery_fee  NUMBER;
    v_est_delivery  TIMESTAMP;
    v_actual_delivery TIMESTAMP;
    v_total_amount  NUMBER;
    v_line_no       NUMBER;
    v_num_items     NUMBER;
    v_item_id       NUMBER;
    v_qty           NUMBER;
    v_price         NUMBER;
    v_subtotal      NUMBER;
    v_payment_method VARCHAR2(30);
BEGIN
    -- Get the maximum existing OrderID
    SELECT NVL(MAX(OrderID), 0) INTO v_start_id FROM "Order";
    
    FOR i IN 1..5000 LOOP
        v_order_id := v_start_id + i;
        
        -- Random timestamp over the last 180 days (Jan 1, 2026 to June 30, 2026)
        v_order_ts := TIMESTAMP '2026-01-01 00:00:00'
                      + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(0, 180)), 'DAY')
                      + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(0, 24)), 'HOUR')
                      + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(0, 60)), 'MINUTE');
        
        -- Random customer (1..15), hub (1..3), driver (16..23)
        v_customer_id := TRUNC(DBMS_RANDOM.VALUE(1, 16));
        v_hub_id := TRUNC(DBMS_RANDOM.VALUE(1, 4));
        v_driver_id := 16 + TRUNC(DBMS_RANDOM.VALUE(0, 8));
        v_delivery_fee := 2.0 + TRUNC(DBMS_RANDOM.VALUE(0, 7)) * 0.5;
        
        v_est_delivery := v_order_ts + NUMTODSINTERVAL(25 + TRUNC(DBMS_RANDOM.VALUE(0, 31)), 'MINUTE');
        v_actual_delivery := v_est_delivery + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(-5, 16)), 'MINUTE');
        
        -- Insert Order
        INSERT INTO "Order" (OrderID, CustomerID, HubID, DriverID, OrderTimestamp,
                             DeliveryFee, OrderStatus, EstimatedDeliveryTime, ActualDeliveryTime)
        VALUES (v_order_id, v_customer_id, v_hub_id, v_driver_id, v_order_ts,
                v_delivery_fee, 'Delivered', v_est_delivery, v_actual_delivery);
        
        -- Items per order: 1 to 5
        v_num_items := TRUNC(DBMS_RANDOM.VALUE(1, 6));
        v_total_amount := 0;
        
        FOR line IN 1..v_num_items LOOP
            v_line_no := line;
            v_item_id := TRUNC(DBMS_RANDOM.VALUE(1, 12));  -- MenuItem IDs 1..11
            v_qty := TRUNC(DBMS_RANDOM.VALUE(1, 3));
            IF DBMS_RANDOM.VALUE(0,1) < 0.1 THEN v_qty := 3; END IF;
            
            SELECT BasePrice INTO v_price FROM MenuItem WHERE MenuItemID = v_item_id;
            v_subtotal := v_price * v_qty;
            v_total_amount := v_total_amount + v_subtotal;
            
            INSERT INTO OrderItem (OrderID, LineNumber, MenuItemID, Quantity, UnitPriceAtTimeOfOrder, SpecialInstructions)
            VALUES (v_order_id, v_line_no, v_item_id, v_qty, v_price,
                    CASE WHEN DBMS_RANDOM.VALUE(0,1) < 0.1 THEN 'Extra sauce please' ELSE NULL END);
        END LOOP;
        
        v_total_amount := v_total_amount + v_delivery_fee;
        
        -- Random payment method
        CASE TRUNC(DBMS_RANDOM.VALUE(1,4))
            WHEN 1 THEN v_payment_method := 'Cash';
            WHEN 2 THEN v_payment_method := 'Credit Card';
            WHEN 3 THEN v_payment_method := 'Wallet';
        END CASE;
        
        INSERT INTO Payment (OrderID, Amount, PaymentMethod, PaymentStatus, TransactionReference, PaymentTimestamp)
        VALUES (v_order_id, v_total_amount, v_payment_method, 'Success',
                'TXN_FLASH_' || TO_CHAR(v_order_id) || '_' || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS'),
                v_order_ts + NUMTODSINTERVAL(TRUNC(DBMS_RANDOM.VALUE(2, 10)), 'MINUTE'));
        
        IF MOD(i, 500) = 0 THEN
            COMMIT;
        END IF;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Inserted 5000 new orders. Total orders now: ' || (v_start_id + 5000));
END;
/