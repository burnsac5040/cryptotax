-- master table
CREATE TABLE crypto.mega (
  user_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  pass VARCHAR(255) NOT NULL,
  date_created TIMESTAMP DEFAULT NOW()
);

-- first table to have data inserted
-- one line, one user

-- expanded documents table
CREATE TABLE crypto.documents (
  trans_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  user_id INTEGER NOT NULL,
  doc_id INTEGER NOT NULL,
  exchange VARCHAR(255),
  trans_date DATETIME,
  trans_type VARCHAR(50),
  asset VARCHAR(10),
  quantity DECIMAL(16,10),
  cost_basis DECIMAL(8,2),
  subtotal DECIMAL(10,2),
  total DECIMAL(8,2),
  amount_left INTEGER
  /* amount_left DECIMAL(16, 10), */
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  FOREIGN KEY(user_id) REFERENCES mega(user_id)
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
);

-- trans_id to keep track of every line of every document
-- amount_left used as integer for now (will be changed)
-- 1 Coinbase 2020-05-21T22:27:28Z Buy BTC 0.00201928 9166.63 18.51 20.00 924

-- all users & documents table
CREATE TABLE crypto.users (
  user_id INTEGER NOT NULL,
  doc_id INTEGER AUTO_INCREMENT,
  filename VARCHAR(255) NOT NULL,
  exchange VARCHAR(255) NOT NULL,
  date_uploaded TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES mega(user_id),
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  FOREIGN KEY(doc_id) REFERENCES documents(doc_id),
  PRIMARY KEY(doc_id)
=======
  PRIMARY KEY(user_id_id)
>>>>>>> Stashed changes
=======
  PRIMARY KEY(user_id_id)
>>>>>>> Stashed changes
=======
  PRIMARY KEY(user_id_id)
>>>>>>> Stashed changes
);


-- one line per document
-- one user can have several entries

-- sync documents.exchange, users.exchange

-- TODO AT SOME POINT:
-- change database and table names when going public
-- password hasing algorithm (SHA256+)
-- method to create trans_id = 000000001 (integers)
-- ip
-- filesize

-- QUESTIONS:
-- unique filename to prevent clashes?

-- REFERENCE: tutorials/sql/ig-data-orig.sql to help get an idea of how we structure

-----------------------------------------------------------------

-- ENGINE:
-- default storage engine is already InnoDB
-- 1) if you feel the need, can be invoked via: mysql -u root -p password --defualt-storage-engine
-- 2) set it in your configuration file
-- 3) use the command below

SET default_storage_engine=INNODB;
