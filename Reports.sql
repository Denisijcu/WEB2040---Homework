1- 
SELECT 
     A.Student_Id, B.Name, B.DBO, B.Date_Registered, A.grade, A.Class_code, C.Name,   
     D.professor_Id, D.Name, D.department_id, E.name, A.status, F.name 
FROM  classes  as A 
INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code 
INNER JOIN professors D ON D.Class_code = A.Class_code 
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
ORDER by A.Student_Id

2. 
SELECT 
     A.Student_Id, B.Name, B.DBO, B.Date_Registered, A.grade, A.Class_code, C.Name,   
     D.professor_Id, D.Name, D.department_id, E.name, A.status, F.name 
FROM  classes  as A 
INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code 
INNER JOIN professors D ON D.Class_code = A.Class_code 
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
WHERE A.STATUS = 3
ORDER by A.Student_Id

3
SELECT  
    D.Faculty_Id, E.name, A.Student_Id, B.Name,  A.Class_code,  C.Name,  A.status, F.name,    
    D.professor_Id, D.Name, D.department_id From classes  As A 
INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code 
INNER JOIN professors D ON D.Class_code = A.Class_code
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
ORDER by D.Faculty_Id

4
SELECT 
   B.Name, A.grade, C.Name as Class,   F.name as Status, B.Date_Registered From classes  As A    
 INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code
 INNER JOIN professors D ON D.Class_code = A.Class_code 
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
ORDER by A.grade

5
SELECT 
     A.Class_code, C.Name,   
     D.professor_Id, D.Name, D.department_id, E.name,  A.Student_Id, B.Name, year(now())-year(B.DBO) as age , B.Date_Registered, A.grade, A.status, F.name 
FROM  classes  as A 
INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code 
INNER JOIN professors D ON D.Class_code = A.Class_code 
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
ORDER by A.Class_code  and B.DBO desc

6
SELECT 
       
     D.professor_Id, D.Name, D.Ternure, D.department_id, E.name, A.Class_code, C.Name
FROM  classes  as A 
INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code 
INNER JOIN professors D ON D.Class_code = A.Class_code 
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
GROUP by D.professor_Id
ORDER by D.professor_Id

7 
SELECT 
     A.Class_code, C.Name, C.Description, C.Date_started,   
     D.professor_Id, D.Name, D.department_id, E.name
FROM  classes  as A 
INNER JOIN students B ON  B.StudentID = A.Student_Id
INNER JOIN class C ON C.Class_code = A.Class_code 
INNER JOIN professors D ON D.Class_code = A.Class_code 
INNER JOIN department E ON E.department_id = D.department_id 
INNER JOIN status F ON F.status = A.status 
ORDER by A.Class_code