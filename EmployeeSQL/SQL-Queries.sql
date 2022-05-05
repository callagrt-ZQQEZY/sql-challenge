select * from employees;
select * from dept_emp;
select * from departments;
select * from salaries;
select * from titles;
select * from dept_manager;
-- 1.
select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
from employees
left join salaries
on employees.emp_no = salaries.emp_no;
-- 2.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'
-- 3.
select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_manager
inner join departments
on departments.dept_no = dept_manager.dept_no
inner join employees
on employees.emp_no = dept_manager.emp_no;
-- 4.
select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from  dept_emp
inner join employees
on employees.emp_no = dept_emp.emp_no
inner join departments
on departments.dept_no = dept_emp.dept_no;
-- 5.
select first_name, Last_name, gender
from employees
where first_name = 'Hercules' and last_name like 'B%';
-- 6.
select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp 
inner join employees
on employees.emp_no = dept_emp.emp_no
inner join departments
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';
-- 7.
select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp 
inner join employees
on employees.emp_no = dept_emp.emp_no
inner join departments
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';
-- 8.
select last_name, count(Last_name) as "Name Count"
from employees
group by last_name
order by "Name Count" desc;