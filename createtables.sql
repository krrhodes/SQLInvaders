DROP TABLE IF EXISTS vars;
CREATE TABLE vars(key VARCHAR(255), value INT);

DROP TABLE IF EXISTS screen;
CREATE TABLE screen(hidden_column);
-- Create columns dynamically
WITH RECURSIVE 
  for(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM for WHERE i < 1000)
	INSERT INTO vars (key, value) VALUES ('test', (SELECT i FROM for));
   	ALTER TABLE screen ADD COLUMN (?) NVARCHAR(1) % (SELECT i FROM for);

DROP TABLE IF EXISTS score;
CREATE TABLE score(player VARCHAR(255), score INT);
SELECT * FROM vars;