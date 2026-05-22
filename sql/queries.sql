SELECT * FROM projects;

SELECT Department,count(*) As project_count
from projects
group by Department;

select t.Task_ID,
t.Task_Name,
p.Project_Name,
p.Department
from tasks t
join projects p on t.Project_id=p.Project_id;

SELECT 
p.Project_id,
p.Project_Name,
count(t.Task_ID) as TASK_COUNT
from projects p
left join tasks t on p.Project_id=t.Project_id
group by p.Project_id,p.Project_Name
order by TASK_COUNT;

select t.Task_Name,
p.Project_Name,
p.Department,
t.Assigned_Role,
r.Hourly_Rate,
t.Actual_Hours,
(t.Planned_Hours*r.Hourly_Rate) as planned_labour_cost
from tasks t
join projects p on t.Project_id=p.Project_id
join resources r on t.Assigned_Role= r.Role; 
