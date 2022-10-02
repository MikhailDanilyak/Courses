select 
Sum(Case 
  when R.text LIKE '%hate%' then 1
  Else Null
  End) hate_test,
Sum(Case 
  when R.text LIKE '%love%' then 1
  Else Null
  End) love_test
From User U left join Review R on U.id = R.id