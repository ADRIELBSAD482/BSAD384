-- Insert sample Agents
INSERT INTO Agent VALUES
(1, 'Rachel', 'Nguyen', '902-555-1234', 'rachel.nguyen@realestate.com'),
(2, 'David', 'Osei', '902-555-5678', 'david.osei@realestate.com');

-- Insert sample Properties
INSERT INTO Property VALUES
(1, '123 Oak Street', 'Halifax', 'NS', 'B3H4R2', 'Detached', 2000, 3, 2),
(2, '45 Sunset Lane', 'Dartmouth', 'NS', 'B2W5L6', 'Condo', 1100, 2, 1);

-- Insert sample Listings
INSERT INTO Listing VALUES
(1, 1, 1, 449900.00, 'Active'),
(2, 2, 2, 329000.00, 'Active');

-- Insert sample Buyers
INSERT INTO Buyer VALUES
(1, 'Sarah', 'Lee', '902-555-9876', 'sarah.lee@email.com'),
(2, 'Jake', 'Smith', '902-555-5432', 'jake.smith@email.com');

-- Insert sample PropertyTransactions
INSERT INTO PropertyTransaction VALUES
(1, 1, 1, 439900.00, '2025-03-15'),
(2, 2, 2, 325000.00, '2025-03-20');
