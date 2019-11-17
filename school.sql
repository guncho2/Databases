


CREATE TABLE class
(
        class_id SERIAL PRIMARY KEY,
        class_name text
);


CREATE TABLE grades
 (
         grades_id SERIAL PRIMARY KEY,
         student_id integer REFERENCES students (student_id),
         class_id integer REFERENCES class (class_id),
         grade text
);
 
CREATE TABLE students
(
        student_id SERIAL PRIMARY KEY,
        student_name text,
        ph_numb varchar(10)
);

INSERT INTO students 
      (student_id, student_name, ph_numb)
    VALUES
      (0001, 'Charly', 3090011229),
      (0002, 'Edward', 3239488841),
      (0003, 'Paul', 2002219283),
      (0004, 'Tom', 2103948662),
      (0005, 'Mike', 9382271930),
      (0006, 'John', 3922223865);
    
    INSERT INTO class 
      (class_id, class_name)
    VALUES
      (101, 'History'),
      (102, 'Geography'),
      (103, 'Math'),
      (104, 'Algebra'),
      (105, 'Philosphy'),
      (201, 'Pogramming'),
      (202, 'Assembler'),
      (203, 'Linux');

    INSERT INTO grades
      (grades_id, student_id, class_id, grade)
    VALUES
      (221, 0001, 101, 'A'),
      (222, 0001, 102, 'A'),
      (223, 0001, 103, 'B'),
      (224, 0001, 104, 'B'),
      (225, 0001, 105, 'C'),
      (226, 0001, 201, 'X'),
      (227, 0002, 101, 'D'),
      (228, 0002, 102, 'D'),
      (229, 0002, 202, 'E'),
      (230, 0002, 104, 'X'),
      (231, 0003, 101, 'A'),
      (232, 0003, 102, 'A'),
      (233, 0003, 103, 'A'),
      (234, 0003, 104, 'B'),
      (235, 0003, 105, 'B'),
      (236, 0003, 201, 'B'),
      (237, 0003, 202, 'X'),
      (238, 0004, 101, 'C'),
      (239, 0004, 102, 'C'),
      (240, 0004, 103, 'A'),
      (241, 0004, 104, 'X'),
      (242, 0005, 101, 'A'),
      (243, 0005, 102, 'B'),
      (244, 0005, 201, 'B'),
      (245, 0005, 104, 'X'),
      (246, 0006, 101, 'A'),
      (247, 0006, 102, 'A'),
      (248, 0006, 103, 'B'),
      (249, 0006, 202, 'B'),
      (250, 0006, 201, 'B'),
      (251, 0006, 203, 'B'),
      (220, 0002, 203, 'A');
      (219, 0004, 201, 'C');





