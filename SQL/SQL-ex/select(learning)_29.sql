Select 
Case 
When Inc.point IS NULL Then Out.point
Else Out.point IS NULL Then Inc.point
END,
Case 
When Inc.date IS NULL Then Out.date
Else Out.date IS NULL Then Inc.date
END,
Inc.inc,
Out.out
From Income_o Inc Full Outer Join Outcome_o Out
ON Inc.date = Out.date



SELECT t1.point, t1.date, inc, out
FROM income_o t1 LEFT JOIN outcome_o t2 ON t1.point = t2.point AND t1.date = t2.date
UNION
SELECT t2.point, t2.date, inc, out
FROM income_o t1 RIGHT JOIN outcome_o t2 ON t1.point = t2.point AND t1.date = t2.date





Select Inc.point,
Case Inc.point
When IS NULL Then Out.point
Else Inc.point
END Inc.point,
Inc.date,
Case Inc.date
When IS NULL Then Out.date
Else Inc.date
END  Inc.date,
Inc.inc,
Out.out
From Income_o Inc Full Outer Join Outcome_o Out
ON Inc.date = Out.date AND Inc.point = Out.point





Select 
Coalesce(Inc.point, Out.point) point,
Coalesce(Inc.date, Out.date) date,
Inc.inc,
Out.out
From Income_o Inc Full Outer Join Outcome_o Out
ON Inc.date = Out.date AND Inc.point = Out.point



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