select Review_count,
min(Review_count) as minimum_value,
max(Review_count) as maximum_value,
Avg(Review_count) as average_value
From user