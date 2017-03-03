SELECT 1 IN (1, 2, 3);
SELECT toUInt16(1) IN (1, 1000, 3);
SELECT [1, 2, 3] IN (3, 4, 5);
SELECT materialize([1, 2, 3]) IN (3, 4, 5);
SELECT 'Hello' IN ('Hello', 'world');
SELECT (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17) IN ((1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17));
SELECT (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, '') IN ((1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, ''));
SELECT (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, '') IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 'a');
SELECT (number AS n, n + 1, n + 2, n + 3) IN (1, 2, 3, 4) FROM system.numbers LIMIT 3;
SELECT (number AS n, n + 1, n + 2, n + 3, n - 1) IN (1, 2, 3, 4, 0) FROM system.numbers LIMIT 3;
SELECT (number AS n, n + 1, toString(n + 2), n + 3, n - 1) IN (1, 2, '3', 4, 0) FROM system.numbers LIMIT 3;
SELECT [1, 2, 3] IN (2);
SELECT [1, 2, 3] IN (4);
SELECT [1, 2, 3] NOT IN (1);
SELECT [1, 2, 3] NOT IN (1, 2);
SELECT [1, 2, 3] NOT IN (1, 2, 3);
SELECT [1, 2, 3] NOT IN (1, 2, 3, 4);
SELECT ['Hello', 'world'] IN ('world');
SELECT ['Hello', 'world'] NOT IN ('world');
SELECT ['Hello', 'world'] NOT IN ('Hello', 'world');
SELECT ['Hello', 'world'] NOT IN ('hello', 'world');
SELECT number, tuple FROM (SELECT 1 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN (((1, (2, 3)), (4, (5, 6))));
SELECT number, tuple FROM (SELECT 2 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN ((2, (2, 3)));
SELECT number, tuple FROM (SELECT 3 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN (3, (2, 3));
SELECT number, tuple FROM (SELECT 4 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN (SELECT (4, (2, 3)));
SELECT number, tuple FROM (SELECT 5 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN (SELECT 5, (2, 3));
