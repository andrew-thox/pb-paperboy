-- name: all-articles
SELECT * FROM article ORDER BY publish_date DESC

-- name: article-by-hash
SELECT * FROM article WHERE hash = :hash
