select City,
count(*) as number_of_reviews
from business
Group by city
Order by number_of_reviews desc