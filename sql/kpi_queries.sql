-- Total Students
SELECT COUNT(*) AS total_students
FROM student_success.silver.student_performance;

-- Average Attendance
SELECT ROUND(AVG(attendance_percentage),2) AS avg_attendance
FROM student_success.silver.student_performance;

-- Average Overall Score
SELECT ROUND(AVG(overall_score),2) AS avg_score
FROM student_success.silver.student_performance;

-- At Risk Students
SELECT COUNT(*) AS at_risk_students
FROM student_success.gold.at_risk_students;

-- Students by Grade
SELECT *
FROM student_success.gold.grade_summary;

-- School Performance Analysis
SELECT *
FROM student_success.gold.school_analysis;

-- Study Method Analysis
SELECT *
FROM student_success.gold.study_method_analysis;