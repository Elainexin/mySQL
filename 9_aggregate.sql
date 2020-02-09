-- SELECT COUNT(*) FROM books;

-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- SELECT SUM(stock_quantity) FROM books;

-- SELECT CONCAT(author_fname,' ',author_lname) AS author,
-- 		AVG(released_year) FROM books
-- GROUP BY author_fname, author_lname;

-- SELECT CONCAT(author_fname,' ',author_lname),pages AS full_name 
-- FROM books
-- ORDER BY pages DESC LIMIT 1;

SELECT 
released_year AS year, 
COUNT(*) AS '# books',
AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year ASC;
