CREATE TABLE employee(
    emp_id INT CONSTRAINT emp_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    emp_phone VARCHAR(255) CONSTRAINT emp_phone_cnst NOT NULL,
    emp_fname VARCHAR(255) CONSTRAINT emp_fname_cnst NOT NULL,
    emp_lname VARCHAR(255) CONSTRAINT emp_lname_cnst NOT NULL,
    emp_email VARCHAR(255) CONSTRAINT emp_email_cnst NOT NULL
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE employee_seq;
CREATE TRIGGER employee_trig
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
      SELECT employee_seq.NEXTVAL
      INTO :new.emp_id
      FROM dual;
END;
/

INSERT ALL
INTO employee VALUES(1, '0112358', 'Elvis', 'Presley', 'is@dead.io')
INTO employee VALUES(2, '0132134', 'Elvis', 'Presley', 'is@alive.io')
INTO employee VALUES(3, '3141592', 'Erwin', 'Schrodinger', 'i@like.cats')
select 1 from dual;
column emp_phone format A15;
column emp_fname format A15;
column emp_lname format A15;
column emp_email format A15;



