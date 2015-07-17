SELECT blog_content FROM HDATA.weibo_content
WHERE 
--blog_time LIKE '%2015-06-29%'
--AND
blog_content LIKE '%今天亏%'

OR 

blog_content LIKE '%亏了好多%'

AND
mid>(SELECT max(mid) FROM HDATA.weibo_content ) *RANDOM()
LIMIT 1000        
;
 
