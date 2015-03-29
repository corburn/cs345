CREATE TABLE employee(
    emp_id INT CONSTRAINT emp_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    emp_phone VARCHAR(255) CONSTRAINT emp_phone_cnst NOT NULL,
    emp_fname VARCHAR(255) CONSTRAINT emp_fname_cnst NOT NULL,
    emp_lname VARCHAR(255) CONSTRAINT emp_lname_cnst NOT NULL,
    emp_email VARCHAR(255) CONSTRAINT emp_email_cnst NOT NULL
);
