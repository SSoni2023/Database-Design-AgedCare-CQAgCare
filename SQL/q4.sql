SELECT rt.RoomID, rt.Type AS RoomType, rt.DailyRental, COUNT(at.RoomID) AS NumberOfApplications
FROM Room rt
inner JOIN Application at ON rt.RoomID = at.RoomID
WHERE at.SubmittedDate >= CURDATE() - INTERVAL 12 MONTH
GROUP BY rt.RoomID
HAVING COUNT(at.RoomID) > 1;