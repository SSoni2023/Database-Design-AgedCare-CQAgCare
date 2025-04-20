SELECT s.FullName AS ManagerName, COUNT(RT.RoomID) AS NumOfRoomsManaged
FROM CareManager CM
INNER JOIN Room RT ON CM.CareManagerID = RT.CareManagerID
inner join staff s on s.staffid=cm.staffid
where s.stafftype='CM'
GROUP BY CM.CareManagerID
ORDER BY NumOfRoomsManaged DESC;
