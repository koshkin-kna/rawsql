-- name: simple
SELECT * FROM table1 u where  u.name = ?;

-- name: two-lines
Insert INTO table2
SELECT * FROM table1;

-- name: complex
SELECT *
FROM Customers c
INNER JOIN CustomerAccounts ca
    ON ca.CustomerID = c.CustomerID
    AND c.State = ?
INNER JOIN Accounts a
    ON ca.AccountID = a.AccountID
    AND a.Status = ?;

-- name: psql-insert
INSERT INTO person (name, data) VALUES ($1, $2);
