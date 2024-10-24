Use mm_team02_02;

-- New queries that were added to the app

-- Query1: This query calculates the Blood Supply Vs Demand gap of hospitals. Parameters: HospitalID, HospitalName, BloodGroup. 
-- Example parameters are used in the query.

SELECT 
	h.HospitalID,
	h.HospitalName,
	COALESCE(SUM(dr.Quantity), 0) - COALESCE(SUM(br.Quantity), 0) AS SupplyDemandGap,
	COALESCE(SUM(dr.Quantity), 0) AS TotalBloodDonated,
	COALESCE(SUM(br.Quantity), 0) AS TotalBloodRequested,
	h.Address,
	h.Phone,
	h.Email,
	h.ContactPersonName
FROM 
	Hospital h
LEFT JOIN 
	BloodRequest br ON h.HospitalID = br.HospitalID AND (br.BloodGroup = 'O-' OR 'O-' IS NULL) -- the parameters in the query are optional
LEFT JOIN 
	DonationEntry dr ON br.BloodRequestID = dr.BloodRequestID
WHERE 
	(h.HospitalID = NULL OR NULL IS NULL) -- the parameters in the query are optional
	AND (h.HospitalName LIKE 'A%' OR 'A%' IS NULL) -- the parameters in the query are optional
GROUP BY 
	h.HospitalID, h.HospitalName
ORDER BY 
	SupplyDemandGap DESC;

-- Query2 This query find the total number of donations for a specific month or day
-- with Year and month parameter
SELECT 
	DATE_FORMAT(DonationTS, '%Y-%m') AS YearMonth, 
	COUNT(DonationEntryID) AS NumberOfDonations, 
	SUM(Quantity) AS TotalQuantityDonated
	FROM DonationEntry
	WhERE  DATE_FORMAT(DonationTS, '%Y-%m') = '2023-02'
	GROUP BY DATE_FORMAT(DonationTS, '%Y-%m')
	ORDER BY YearMonth desc;
    
-- with day parameter
 SELECT 
	DATE_FORMAT(DonationTS, '%Y-%m-%d') AS Date, 
	COUNT(DonationEntryID) AS NumberOfDonations, 
	SUM(Quantity) AS TotalQuantityDonated
	FROM DonationEntry
	WhERE  DATE_FORMAT(DonationTS, '%Y-%m-%d') = '2023-02-24'
	GROUP BY DATE_FORMAT(DonationTS, '%Y-%m-%d');
    
-- PREVIOUS QUERIES 
-- 1.  List of total number of Donors by Blood Group
SELECT BloodGroup, COUNT(*) AS NumberOfDonors FROM Donor GROUP BY BloodGroup;

-- 2. Top 10 Donors based on number of donations
SELECT
	d.DonorID,
	d.FirstName,
	d.LastName,
    TIMESTAMPDIFF(YEAR, DOB, CURDATE()) AS Age,  -- Derived Column
    COUNT(de.DonationEntryID) AS DonationEntryCount
FROM
    mm_team02_02.DonationEntry de
JOIN
	mm_team02_02.Donor d ON de.DonorID = d.DonorID
GROUP BY
	d.DonorID, d.FirstName, d.LastName
ORDER BY
	DonationEntryCount DESC
LIMIT 10;
 
 -- 3.  Count the number of blood units of each blood group:
SELECT BloodGroup, COUNT(*) AS NumUnits
FROM Blood
GROUP BY BloodGroup;

-- 4. Top 5 hospital with the greatest number of blood requests.
SELECT h.HospitalID, h.HospitalName, COUNT(br.BloodRequestID) AS NumberOfRequests
FROM mm_team02_02.BloodRequest br
JOIN mm_team02_02.Hospital h ON br.HospitalID = h.HospitalID
GROUP BY br.HospitalID
ORDER BY NumberOfRequests DESC
LIMIT 5;
  
-- 5. Employee who handled most blood requests
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(br.BloodRequestID) AS NumberOfRequestsHandled
FROM mm_team02_02.Employee e
JOIN mm_team02_02.BloodRequest br ON e.EmployeeID = br.EmployeeID
GROUP BY e.EmployeeID
ORDER BY NumberOfRequestsHandled DESC
LIMIT 1;


-- 6.Blood group with the most donations:
SELECT b.BloodGroup, COUNT(*) AS HighestBloodGroupDonated
FROM Blood b
GROUP BY b.BloodGroup
ORDER BY HighestBloodGroupDonated DESC
LIMIT 1;

-- 7. Total number of blood donations past month:
SELECT COUNT(*) AS TotalDonations
FROM Blood
WHERE CollectionDate >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);

-- 8. Query to find the blood group with highest number of requests (demanded blood group)
SELECT BloodGroup, COUNT(*) AS RequestCount
FROM BloodRequest
GROUP BY BloodGroup
ORDER BY RequestCount DESC
LIMIT 1;

-- 9. Query to retrieve blood that are expired
SELECT *
FROM Blood
WHERE ExpiryDate  < CURRENT_TIMESTAMP;

-- 10. Find the employee with the longest tenure:
SELECT * FROM mm_team02_02.Employee 
ORDER BY JoiningDate ASC 
LIMIT 1;

-- 11. Average, min, max Age of Donors
SELECT Round(AVG(TIMESTAMPDIFF(YEAR, DOB, CURDATE())),0) AS AverageAge,
 MIN(TIMESTAMPDIFF(YEAR, DOB, CURDATE())) AS MinAge,
 MAX(TIMESTAMPDIFF(YEAR, DOB, CURDATE())) AS MaxAge
 FROM Donor;

-- 12. Healthy Donors
SELECT DonorID, FirstName,LastName, Phone, DeferralStatus
FROM mm_team02_02.Donor
where DeferralStatus = 'No' AND 
PastMedicalConditions IS NULL AND 
CurrentMedicalConditions IS NULL AND 
Medications IS NULL AND 
SurgicalHistory IS NULL 
GROUP BY DonorID;

-- 13. Retrieve total blood supplied by each hospital ordered by the amount supplied:
SELECT HospitalName, TotalBloodSupplied 
FROM mm_team02_02.Hospital 
ORDER BY TotalBloodSupplied DESC;
 
 -- 14. Total Donations at each location
 Select DonationLocation, Count(*) AS TotalDonations
 FROM mm_team02_02.DonationEntry
 GROUP BY DonationLocation;
 
 -- 15. Finds all donors whose name starts with Jor
 SELECT * FROM mm_team02_02.Donor
 WHERE FirstName LIKE 'Jor%';
 
 -- 16. Donors who have not donated in the last 6 months 
SELECT * 
FROM mm_team02_02.Donor
WHERE DonorID NOT IN (
        SELECT DonorID
        FROM DonationEntry
        WHERE
            LastDonationDate >= DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH)
    );

-- 17. Employees whose salary is between $35k - 45k
SELECT * FROM mm_team02_02.Employee
WHERE Salary BETWEEN 38000 and 40000
ORDER BY Salary ASC;