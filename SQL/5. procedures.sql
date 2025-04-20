#procedure 1
    
DELIMITER //
CREATE PROCEDURE GetRoomsByCM(IN proomID int)
BEGIN
    SELECT s.staffid,s.fullname staffname,RoomID, Type, DailyRental, RoomSize
    FROM Room r
    inner join caremanager cm
    on cm.CareManagerID=r.caremanagerid
    inner join staff s
    on s.staffid=cm.staffid
    where RoomID=proomID;
    END //
DELIMITER ;

#execute procedure 1

CALL GetRoomsByCM(100);


#procedure 2

DELIMITER //
CREATE PROCEDURE Getresidentcare(IN residentid int)
BEGIN
 SELECT r.ResidentID, r.FullName, r.Address, r.Phone,rm.roomid,c.typeofcare,
 c.contractstartdate,c.contractenddate
FROM Resident r
INNER JOIN Care c ON r.ResidentID = c.ResidentID
inner join room rm on rm.roomid =c.roomid
WHERE r.residentid = residentid;
END //
DELIMITER ;

#execute procedure 2

CALL Getresidentcare(1);

