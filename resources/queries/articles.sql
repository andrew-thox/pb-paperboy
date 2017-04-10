-- name: all-articles
SELECT * FROM article

-- name: article-by-hash
SELECT * FROM article WHERE hash = :hash
