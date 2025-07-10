SELECT 
ps.PatientId
,ps.Hospital
,ps.ward
,ps.Tariff
,ps.DischargeDate
,datediff(day,ps.AdmittedDate,ps.DischargeDate) AS lengthOfStay
,dateadd (week,-2,ps.AdmittedDate) as reminderDate
,ps.AdmittedDate 
FROM PatientStay ps
where ps.Hospital in('KINGSTON','PRUH')
and ps.ward like'%Surgery'
order by 
 ps.AdmittedDate DESC,
 ps.PatientId DESC
