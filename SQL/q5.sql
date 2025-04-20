SELECT s.StaffID, s.FullName, s.Address, s.StaffType
FROM Staff s
WHERE s.Salary = (SELECT MAX(Salary) FROM Staff);