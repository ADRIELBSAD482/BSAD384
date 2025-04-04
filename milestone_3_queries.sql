-- Query 1: List active listings with agent name and address
SELECT 
    l.ListingID,
    a.FirstName + ' ' + a.LastName AS AgentName,
    p.Address,
    l.ListingPrice,
    l.Status
FROM Listing l
JOIN Agent a ON l.AgentID = a.AgentID
JOIN Property p ON l.PropertyID = p.PropertyID
WHERE l.Status = 'Active';

-- Query 2: Count listings per agent
SELECT 
    a.FirstName + ' ' + a.LastName AS AgentName,
    COUNT(l.ListingID) AS TotalListings
FROM Agent a
LEFT JOIN Listing l ON a.AgentID = l.AgentID
GROUP BY a.FirstName, a.LastName;

-- Query 3: Price per square foot
SELECT 
    p.Address,
    l.ListingPrice,
    p.SquareFeet,
    (l.ListingPrice / p.SquareFeet) AS PricePerSqFt
FROM Listing l
JOIN Property p ON l.PropertyID = p.PropertyID
WHERE l.Status = 'Active';

-- Query 4: Show all amenities per property
SELECT 
    p.Address,
    a.AmenityName
FROM Property p
JOIN Property_Amenity pa ON p.PropertyID = pa.PropertyID
JOIN Amenities a ON pa.AmenityID = a.AmenityID;

-- Query 5: Total sales handled by agent
SELECT 
    ag.FirstName + ' ' + ag.LastName AS AgentName,
    SUM(pt.SalePrice) AS TotalSales
FROM PropertyTransaction pt
JOIN Listing l ON pt.ListingID = l.ListingID
JOIN Agent ag ON l.AgentID = ag.AgentID
GROUP BY ag.FirstName, ag.LastName;
