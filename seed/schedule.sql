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

INSERT ALL
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (1, 1, TO_DATE('2015-03-29 12:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 16:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (2, 1, TO_DATE('2015-03-29 17:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 20:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (3, 2, TO_DATE('2015-03-29 12:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 17:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (4, 2, TO_DATE('2015-03-29 18:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 22:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (5, 4, TO_DATE('2015-03-29 12:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 17:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (6, 4, TO_DATE('2015-03-29 17:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 22:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (7, 5, TO_DATE('2015-03-29 14:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-29 22:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (8, 1, TO_DATE('2015-03-30 12:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 16:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (9, 1, TO_DATE('2015-03-30 17:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 20:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (10, 3, TO_DATE('2015-03-30 12:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 17:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (11, 3, TO_DATE('2015-03-30 18:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 22:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (12, 4, TO_DATE('2015-03-30 12:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 17:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (13, 4, TO_DATE('2015-03-30 17:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 22:00', 'yyyy-mm-dd hh24:mi'))
INTO schedule(sche_id, emp_id, sche_start, sche_end) VALUES (14, 6, TO_DATE('2015-03-30 14:00', 'yyyy-mm-dd hh24:mi'), TO_DATE('2015-03-30 22:00', 'yyyy-mm-dd hh24:mi'))
SELECT 1 FROM dual;
