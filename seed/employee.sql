CREATE TABLE employee(
    emp_id INT CONSTRAINT emp_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    emp_phone CHAR(10) CONSTRAINT emp_phone_cnst NOT NULL,
    emp_fname VARCHAR(20) CONSTRAINT emp_fname_cnst NOT NULL,
    emp_lname VARCHAR(20) CONSTRAINT emp_lname_cnst NOT NULL,
    emp_email VARCHAR(100) CONSTRAINT emp_email_cnst NOT NULL
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
INTO employee VALUES(1, '9280112358', 'Elvis', 'Presley', 'is@dead.io')
INTO employee VALUES(2, '9280132134', 'Elvis', 'Presley', 'is@alive.io')
INTO employee VALUES(3, '9283141592', 'Erwin', 'Schrodinger', 'i@like.cats')
INTO employee VALUES(4, '5155621569', 'John', 'Booth', 'ihateabe@confederate.gov')
INTO employee VALUES(5, '9284562318', 'Sirhan', 'Sirhan', 'shooter@guns.com')
INTO employee VALUES(6, '9284812369', 'Charles', 'Guiteau', 'ihatemonday@lasagna.fat')
select 1 from dual;
column emp_phone format A15;
column emp_fname format A15;
column emp_lname format A15;
column emp_email format A15;



