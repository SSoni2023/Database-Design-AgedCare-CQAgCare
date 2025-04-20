SELECT rj.JobID, rj.JobDetails, rj.CompletionDate, rj.TotalRepairCost, rj.RoomID, es.FullName AS HandymanName
FROM RepairJob rj
inner JOIN ExternalStaff es ON rj.ExternalStaffID = es.ExternalStaffID
WHERE rj.CompletionDate >= CURDATE() - INTERVAL 3 MONTH
AND es.TypeOfTrade = 'Handyman';