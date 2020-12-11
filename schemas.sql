-- Adding all tables for titles, employees, salaries, departments, dept_emp, dept_manager
CREATE TABLE "titles" (
    "title_id" VARCHAR(40) NOT NULL,
    "title" VARCHAR(40) NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
    "emp_no" INTEGER NOT NULL,
    "emp_title_id" VARCHAR(40) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(40) NOT NULL,
    "last_name" VARCHAR(40) NOT NULL,
    "sex" VARCHAR(40) NOT NULL,
    "hire_data" DATE NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER NOT NULL,
    "salary" INTEGER NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(40) NOT NULL,
    "emp_no" INTEGER NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("dept_no","emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER NOT NULL,
    "dept_no" VARCHAR(40) NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY ("emp_no","dept_no")
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(40) NOT NULL,
    "dept_name" VARCHAR(40) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);

-- Updating table with foreign keys
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

-- Updating tables with index
CREATE INDEX "ix_employees_emp_title_id"
ON employees(emp_title_id);

CREATE INDEX "ix_salaries_emp_no"
ON salaries(emp_no);

CREATE INDEX ix_dept_manager_dept_no
ON dept_manager(dept_no);

CREATE INDEX "ix_dept_manager_emp_no"
ON dept_manager(emp_no);

CREATE INDEX "ix_dept_emp_emp_no"
ON dept_emp(emp_no);

CREATE INDEX "ix_dept_emp_dept_no"
ON dept_emp(dept_no);