CREATE TABLE company_categories (
    category varchar(50) PRIMARY KEY
);

CREATE TABLE user_categories (
    category varchar(50) PRIMARY KEY
);

CREATE TABLE companies (
  id SERIAL PRIMARY KEY,
  name varchar(255) DEFAULT NULL,
  company_category varchar(255) REFERENCES company_categories(category)
);

CREATE TABLE advertisements (
  id SERIAL PRIMARY KEY,
  type varchar(255) NOT NULL,
  company_id INT REFERENCES companies(id),
  date_posted date NOT NULL,
  ad_text text
);

CREATE TABLE people (
  username varchar(30) PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  dateofbirth date,
  email varchar(255),
  phone varchar(20),
  category varchar(255) REFERENCES user_categories(category),
  hashedpw varchar(255) NOT NULL
);

CREATE TABLE applications (
  id SERIAL PRIMARY KEY,
  ad_id int REFERENCES advertisements(id),
  username varchar(30) REFERENCES people(username),
  first_name varchar(255),
  last_name varchar(255),
  email varchar(255),
  phone varchar(20),
  application_message text
);