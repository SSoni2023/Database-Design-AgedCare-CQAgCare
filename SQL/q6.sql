SELECT r.FullName, r.Phone, rt.Type AS RoomType, c.TypeOfCare, rt.DailyRental AS RoomCost
FROM Resident r
inner join Care c ON r.ResidentID = c.ResidentID
inner join Room rt ON c.RoomID = rt.RoomID
WHERE DATEDIFF(CURRENT_DATE, c.ContractStartDate) >= 1095;
