-- This quiery will select the top 5 seled prudect 
SELECT  code_p, SUM(qut_p)
FROM bona_rec_list
GROUP BY code_p
ORDER BY sum(qut_p) DESC LIMIT 5


-- This quiery to Select first row in each GROUP BY group?
WITH summary AS (
    SELECT p.code_barecl, 
           p.nom_p, 
           p.qut_p, 
           ROW_NUMBER() OVER(PARTITION BY p.nom_p 
                                 ORDER BY p.qut_p DESC) AS rk
      FROM bona_rec_list p)
SELECT s.*
  FROM summary s
 WHERE s.rk = 1 ORDER BY qut_p DESC LIMIT 5