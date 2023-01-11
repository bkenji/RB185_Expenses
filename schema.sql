DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
 id serial PRIMARY KEY,
 amount numeric(6, 2) NOT NULL,
 memo text NOT NULL,
 created_on date DEFAULT now() 
);

ALTER TABLE expenses 
ADD CHECK (amount > 0);