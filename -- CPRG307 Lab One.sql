-- CPRG307 Lab One Prelab
-- Brent Martin

--3 
Select * from mm_member;

--4 
insert into mm_member
(member_id, last, first)
values
(15,'Martin','Brent');

--5
update mm_member
set credit_card = 666666666666
where member_id = 15;

--6
DELETE FROM mm_member where member_id = 15;

--7
commit;

--8
select movie_title,rental_id,last
from mm_movie
join mm_rental
on mm_movie.movie_id = mm_rental.movie_id
join mm_member
on mm_rental.member_id = mm_member.member_id;

--9
select movie_title ,rental_id,last
from mm_movie mv, mm_rental r, mm_member mb
where mv.movie_id = r.movie_id AND r.member_id = mb.member_id;

--10
create table MY_TABLE
    (
    MY_NUMBER NUMBER,
    MY_DATE DATE,
    MY_STRING VARCHAR2(5)
    );


-- CPRG307 Lab One 
-- Brent Martin

--2 
CREATE SEQUENCE seq_movie_id
    Start with 20
    Increment by 5;

--3
SELECT *
FROM User_sequences
WHERE sequence_name = 'SEQ_MOVIE_ID';


--4
select seq_movie_id.NEXTVAL from DUAL;

--5
insert into mm_movie
values (seq_movie_id.NEXTVAL, 'Misery', 2, 8, 6);


--6
CREATE VIEW VW_MOVIE_RENTAL AS
select movie_title ,rental_id,last
from mm_movie mv, mm_rental r, mm_member mb
where mv.movie_id = r.movie_id AND r.member_id = mb.member_id;

--7
Select * from VW_MOVIE_RENTAL;

--8
Create PUBLIC SYNONYM m_type
for mm_movie_type;