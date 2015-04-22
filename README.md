# cs345
Northern Arizona University Databases

```
ssh username@linux.cefns.nau.edu
git clone https://github.com/corburn/cs345.git
cd cs345
sqlplus username@tund.cefns.nau.edu @reset
```

Running the reset.sql script as above will drop all tables, recreate them, and fill them with seed data.

The drop_ _table_name_ .sql scripts in `seed/` drop the table and sequences.
The _table_name_ .sql scripts create the table, sequences, and triggers as well as seed the table with data.

[Design Document](https://docs.google.com/document/d/1ycWA8mqwbwmc90nGuNukhJcRUCIzEG3IyhkCROw5XDY/edit?usp=sharing)

TODO:
- [x] A written overview of the system and how it works (the business process). (See Design Document)
- [x] Data dictionaries including data types and constraints for each field. (See Design Document)
- [x] Complete relationships for each entity (1:m, mandatory, optional, weak, strong, etc). (See Design Document)
- [ ] A written overview/user guide describing how to use the system (update/insert/delete from each table/view) along with example queries and result sets.
- [ ] A detailed description for each function/procedure
      - [ ] How it supports the business case.
      - [ ] How to use it, what data is required, what is the expected result/information.
      - [ ] The functions/procedures must be executable and include examples of actual results.
- [x] Fill each table with seed data. (See [seed/](https://github.com/corburn/cs345/tree/project4/seed))
- [x] Create one (useful) view for *each* user group. There must be at least two user groups. (See [views/](https://github.com/corburn/cs345/tree/project4/views))
- [ ] Create two PL/SQL functions.
- [x] Create one PL/SQL procedure. (See [procedures/](https://github.com/corburn/cs345/tree/project4/procedures))
- [ ] Create one PL/SQL trigger.
- [ ] A detailed description of each trigger including the trigger condition and how it supports the business case.
- [x] Grant database read/write permissions for the grader.
