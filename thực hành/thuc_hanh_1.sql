use quanlisinhvien_thuchanh3;
-- hiển thị số lượng sinh viên ở từng nơi
select Address, count(studentId) as "so luong hoc vien"
from student
group by address;

-- tính điểm trung bình các môn học của mỗi học viên
select s.studentId, s.studentName , avg(mark ) 
from student s join mark m on s.studentId=m.studentId
group by s. studentId, s.studentName;

-- hiển thị học viên có điểm trung bình lớn hơn 8
select s.studentId, s.studentName , avg(mark ) 
from student s join mark m on s.studentId=m.studentId
group by s. studentId, s.studentName
having avg(mark)>8;

-- hiển thị thông tin các học viên có điểm trung bình lớn nhất

select s.studentId, s.studentName , avg(mark ) 
from student s join mark m on s.studentId=m.studentId
group by s. studentId, s.studentName
having avg(mark) >= all(select avg(mark) from mark group by mark.studentId);



