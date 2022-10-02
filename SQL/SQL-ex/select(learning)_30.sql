With Income_outcome(point, date, inc, out) AS (
Select 
Case 
When Inc.point IS Not NULL 
Then Inc.point
Else Out.point
END point,
Case
When Inc.date IS Not NULL 
Then Inc.date
Else Out.date
END date,
Inc.inc,
Out.out
From Income_o Inc Full Outer Join Outcome_o Out
ON Inc.date = Out.date AND Inc.point = Out.point
)
Select point,
date,
sum(out) as Outcome,
sum(inc) as Income,
From Income_outcome
Group by date asc