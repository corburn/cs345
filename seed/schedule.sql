CREATE TABLE schedule(
    sche_id INT CONSTRAINT sche_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    emp_id INT CONSTRAINT sche_emp_id_cnst NOT NULL,
    sche_start DATE CONSTRAINT sche_sche_start_cnst NOT NULL,
    sche_end DATE CONSTRAINT sche_sche_end_cnst NOT NULL,
    CONSTRAINT emp_id_fk FOREIGN KEY (emp_id) REFERENCES employee(emp_id) DEFERRABLE INITIALLY IMMEDIATE
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE schedule_seq;
CREATE TRIGGER schedule_trig
BEFORE INSERT ON schedule
FOR EACH ROW
BEGIN
      SELECT schedule_seq.NEXTVAL
      INTO :new.sche_id
      FROM dual;
END;
/