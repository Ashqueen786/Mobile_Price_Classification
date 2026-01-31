USE Mobile_Classification;

#step 1: Total mobiles in train dataset and test dataset
SELECT COUNT(*) AS Total_Mobiles FROM mobile_train;
SELECT COUNT(*) AS Total_mobiles FROM mobile_test;

#step 2:Mobiles by price_range
SELECT price_range, COUNT(*) AS mobile_count
FROM mobile_train
GROUP BY price_range
ORDER BY price_range;

#step 2:Average RAM by price_range
SELECT price_range, ROUND(avg(ram), 2) AS avg_ram
FROM mobile_train
GROUP BY price_range
ORDER BY price_range;

#step 3:Average Battery Power by price_range
SELECT price_range, ROUND(AVG(battery_power), 2) AS avg_battery
FROM mobile_train
GROUP BY price_range
ORDER BY price_range;

#step 4: Top 5 mobiles with Highest RAM
SELECT ram, battery_power, price_range
FROM mobile_train
ORDER BY ram DESC
LIMIT 5;

#setep 5:Average Internal memory by price_range
SELECT price_range, ROUND(AVG(int_memory), 2) AS avg_internal_memory
FROM mobile_train
GROUP BY price_range
ORDER BY price_range;

#step 6:Average screen resolution by price_range
SELECT 
    price_range,
    ROUND(AVG(px_height * px_width), 2) AS avg_resolution
FROM mobile_train
GROUP BY price_range
ORDER BY price_range;

#step 7:Mobiles with RAM above overall average
SELECT COUNT(*) AS high_ram_mobiles
FROM mobile_train
WHERE ram > (SELECT AVG(ram) FROM mobile_train);

#step 8:Mobiles with battery power > 4000
SELECT COUNT(*) AS long_battery_mobiles
FROM mobile_train
WHERE battery_power > 4000;

#step 9:Average mobile rate by price_range
SELECT price_range, ROUND(AVG(mobile_wt), 2) AS avg_weight
FROM mobile_train
GROUP BY price_range
ORDER BY price_range;

#step 10:Average RAM comparison Train vs Test
SELECT 
    'Train' AS dataset,
    ROUND(AVG(ram), 2) AS avg_ram
FROM mobile_train
UNION ALL
SELECT 
    'Test' AS dataset,
    ROUND(AVG(ram), 2) AS avg_ram
FROM mobile_test;

