--R1 trend of number of first readers per day
SELECT DATE_TRUNC('day', my_time) AS day,
       COUNT(*) AS num_lines
FROM first_read
GROUP BY day
ORDER BY day;

--R2 overall number of first readers by 31th March
SELECT COUNT(DISTINCT(user_id)) 
FROM first_read;

--R3 list of sources of first readers
SELECT source, COUNT(*) as num_first_read
FROM first_read
GROUP BY source
ORDER By num_first_read DESC;

--R4 list of countries of first readers
SELECT country, COUNT(*) as num_first_read
FROM first_read
GROUP BY country
ORDER By num_first_read DESC;

--R5 list of topics of first readers
SELECT topic, COUNT(*) as num_first_read
FROM first_read
GROUP BY topic
ORDER By num_first_read DESC;

--R6 segment of sources and topics of firt readers
SELECT source, topic, COUNT(*) as num_first_read
FROM first_read
GROUP BY source, topic
ORDER By source, num_first_read DESC;

--R7 segment of countries and topics of first readers
SELECT country, topic, COUNT(*) as num_first_read
FROM first_read
GROUP BY country, topic
ORDER By country, num_first_read DESC;

--R8 segment of countries and sources of first readers
SELECT country, source, COUNT(*) as num_first_read
FROM first_read
GROUP BY country, source
ORDER By country, num_first_read DESC;

--R9 trend of sources of first readers
SELECT DATE_TRUNC('day', my_time) AS day,
        source,
       COUNT(*) AS num_lines
FROM first_read
GROUP BY day, source
ORDER BY day, num_lines DESC;

--R10 trend of topic of first readers
SELECT DATE_TRUNC('day', my_time) AS day,
       topic,
       COUNT(*) AS num_lines
FROM first_read
GROUP BY day, topic
ORDER BY day, num_lines DESC;

--R11 trend of countries of first readers
SELECT DATE_TRUNC('day', my_time) AS day,
       country,
       COUNT(*) AS num_lines
FROM first_read
GROUP BY day, country
ORDER BY day, num_lines DESC;

