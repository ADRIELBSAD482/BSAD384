-- Create Property table
CREATE TABLE Property (
    PropertyID INT PRIMARY KEY,
    Address VARCHAR(255),
    City VARCHAR(100),
    Province VARCHAR(100),
    PostalCode VARCHAR(20),
    Type VARCHAR(50),
    SquareFootage INT,
    Bedrooms INT,
    Bathrooms INT
);

-- Create Listing table
CREATE TABLE Listing (
    ListingID INT PRIMARY KEY,
    PropertyID INT,
    AgentID INT,
    ListingPrice DECIMAL(12,2),
    Status VARCHAR(50),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID),
    FOREIGN KEY (AgentID) REFERENCES Agent(AgentID)
);

-- Create Agent table
CREATE TABLE Agent (
    AgentID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

-- Create Buyer table
CREATE TABLE Buyer (
    BuyerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

-- Create PropertyTransaction table
CREATE TABLE PropertyTransaction (
    TransactionID INT PRIMARY KEY,
    ListingID INT,
    BuyerID INT,
    SalePrice DECIMAL(12,2),
    SaleDate DATE,
    FOREIGN KEY (ListingID) REFERENCES Listing(ListingID),
    FOREIGN KEY (BuyerID) REFERENCES Buyer(BuyerID)
);
