-- =============================================================
-- PROJECT: MOCK DEFECT TRACKING DATABASE SYSTEM (QA PORTFOLIO)
-- SYSTEM MODULE: OPENCART E-COMMERCE CORE TESTING
-- =============================================================

-- 1. CREATE THE TESTING DEFECT TABLE
CREATE TABLE Defect_Tracker (
    Bug_ID VARCHAR(10) PRIMARY KEY,
    Module_Name VARCHAR(50),
    Summary VARCHAR(255),
    Severity VARCHAR(15),
    Priority VARCHAR(15),
    Status VARCHAR(15)
);

-- 2. INSERT SIMULATED TEST AUTOMATION & MANUAL DEFECT LOGS
INSERT INTO Defect_Tracker VALUES ('BUG-101', 'Authentication', 'Login page crashes on typing numeric characters', 'Critical', 'High', 'Open');
INSERT INTO Defect_Tracker VALUES ('BUG-102', 'Cart Funnel', 'Add to Cart button unresponsive on mobile view', 'High', 'High', 'Assigned');
INSERT INTO Defect_Tracker VALUES ('BUG-103', 'Payment Gateway', 'Transaction status text mismatch on successful debit', 'Medium', 'Medium', 'Fixed');
INSERT INTO Defect_Tracker VALUES ('BUG-104', 'Authentication', 'Session timeout triggering inside 30 seconds', 'High', 'Medium', 'Open');
INSERT INTO Defect_Tracker VALUES ('BUG-105', 'Search Module', 'Product sorting filter shows zero results intermittently', 'Low', 'Low', 'Closed');

-- =============================================================
-- REAL-TIME INTERVIEW ANALYTICS QUERIES (COMPANIES PREFER THESE)
-- =============================================================

-- Query A: Retrieve all active/unresolved Critical and High bugs
SELECT * FROM Defect_Tracker 
WHERE Severity IN ('Critical', 'High') AND Status <> 'Closed';

-- Query B: Find the total volume of defects grouped by each system module
SELECT Module_Name, COUNT(Bug_ID) AS Total_Bugs 
FROM Defect_Tracker 
GROUP BY Module_Name;

-- Query C: Update bug status after running validation/re-testing scripts
UPDATE Defect_Tracker 
SET Status = 'Closed' 
WHERE Bug_ID = 'BUG-101';
