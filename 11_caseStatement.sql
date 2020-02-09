-- SELECT title, author_lname,
-- 	CASE
-- 		WHEN title LIKE '%stories%' THEN 'Short Stories'
-- 		WHEN title LIKE '%kids%' OR title LIKE '%heartbreaking%' THEN 'Memoir'
-- 		ELSE 'Novel'
-- 	END AS TYPE
-- FROM books;



SELECT 
	ANY_VALUE(title),
	author_lname, 
	CONCAT(COUNT(*),
		CASE
			WHEN COUNT(*)=1 THEN ' book'
			ELSE  ' books'
		END
		) AS COUNT

FROM books GROUP BY author_lname, author_fname;
