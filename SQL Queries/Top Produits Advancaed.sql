-- This quiery will select the top 5 seled prudect 
SELECT  code_p, SUM(qut_p)
FROM bonv_ctr_list
GROUP BY code_p
ORDER BY sum(qut_p) DESC LIMIT 5

-- This quiery will select the top 5 seled prudect 
SELECT  code_p, SUM(qut_p)
FROM bonv_ctr_list
GROUP BY code_p
ORDER BY sum(qut_p) DESC LIMIT 5

-- This quiery will select the top 5 seled prudect in CTR only the validated bons
SELECT code_p,
SUM(qut_p) AS best_ctr_produit
FROM bonv_ctr_list d 
INNER JOIN bonv_ctr p ON d.code_bvctr = p.code_bvctr
WHERE valider_bvctr = true 
GROUP by code_p 
ORDER BY SUM(qut_p) DESC 
LIMIT 5;

-------- This SQL syntax will show the code_p of the produit and the SUM of it for validated bons only --- First Method

  SELECT code_p, SUM(total) as totalALL 
  FROM (   
  SELECT code_p as code_p, SUM(qut_p) AS total FROM bonv_ctr_list d 
  INNER JOIN bonv_ctr p ON d.code_bvctr = p.code_bvctr 
  WHERE valider_bvctr = true 
  GROUP BY code_p,qut_p
-----------------------------------------------------------------------
  UNION ALL 
  SELECT code_p, SUM(qut_p) as total FROM bonv_fac_list a
  INNER JOIN bonv_fac c ON a.code_bvfac = c.code_bvfac 
  WHERE valider_bvfac = true 
  GROUP BY code_p,qut_p
-----------------------------------------------------------------------
  UNION ALL 
  SELECT code_p, SUM(qut_p) as total FROM bonv_liv_list e
  INNER JOIN bonv_liv f ON e.code_bvliv = f.code_bvliv 
  WHERE valider_bvliv = true 
  GROUP BY code_p,qut_p
      ) a 
      GROUP BY  code_p	 
      ORDER BY  totalALL  DESC 
      LIMIT 5 ;
	  
	
	
-------- This SQL syntax will show the code_p of the produit and the SUM of it for validated bons only --- Second Method  


SELECT code_p, sum(sum)
FROM ( 
  select  code_p, SUM(total) from (   
  select code_p as code_p, SUM(qut_p) as total from bonv_ctr_list d 
  INNER JOIN bonv_ctr p ON d.code_bvctr = p.code_bvctr 
  WHERE valider_bvctr = true 
  GROUP BY code_p,qut_p
-----------------------------------------------------------------------
  union all 
  select code_p, SUM(qut_p) as total from bonv_fac_list a
  INNER JOIN bonv_fac c ON a.code_bvfac = c.code_bvfac 
  WHERE valider_bvfac = true 
  GROUP BY code_p,qut_p
-----------------------------------------------------------------------
  union all 
  select code_p, SUM(qut_p) as total from bonv_liv_list e
  INNER JOIN bonv_liv f ON e.code_bvliv = f.code_bvliv 
  WHERE valider_bvliv = true 
  GROUP BY code_p,qut_p
      ) a 
    --  where code_p = 4 
--		INNER JOIN a ON code_bvliv = code_bvliv 
      GROUP by code_p ,total
	  ORDER BY  code_p, total DESC 
	--	LIMIT 5;
 ) x
GROUP BY code_p 
LIMIT 5;



