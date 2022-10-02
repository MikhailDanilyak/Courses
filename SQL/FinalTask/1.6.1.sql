select City,
stars as star_rating,
count(*) as count
from business
where City = 'Avon'
Group by stars
