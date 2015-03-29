CREATE TABLE vehicle(
    veh_id INT CONSTRAINT veh_pk PRIMARY KEY DEFERRABLE INITIALLY IMMEDIATE,
    emp_id INT CONSTRAINT veh_emp_id_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    veh_make VARCHAR(255) CONSTRAINT veh_make_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    veh_model VARCHAR(255) CONSTRAINT veh_model_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    veh_year VARCHAR(255) CONSTRAINT veh_year_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    veh_color VARCHAR(255) CONSTRAINT veh_color_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    veh_lic_plt VARCHAR(255) CONSTRAINT veh_lic_plt_cnst NOT NULL DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT veh_emp_id_fk FOREIGN KEY (emp_id) REFERENCES employee(emp_id) DEFERRABLE INITIALLY IMMEDIATE
);

-- Autoincrement primary key
-- If a value for the primary key is unspecified, it will be set to the next number in the sequence.
CREATE SEQUENCE vehicle_seq;
CREATE TRIGGER vehicle_trig
BEFORE INSERT ON vehicle
FOR EACH ROW
BEGIN
      SELECT vehicle_seq.NEXTVAL
      INTO :new.veh_id
      FROM dual;
END;
/
