SELECT r.FullName, r.DOB, r.phone EmergencyContact, c.ContractStartDate, c.ContractEndDate
FROM Resident r
inner join Care c ON r.ResidentID = c.ResidentID
WHERE c.TypeOfCare = 'Respite Care';