USE genzdataset ;



SHOW TABLES  ;

SELECT * from personalized_info ;
select * from learning_aspirations ;
select * from  manager_aspirations ;
SELECT * from mission_aspirations ;
#ANSWER 1
SELECT count(*) as Male_respondents from personalized_info 
  where Gender like "male%" AND currentcountry= "India" ;
#ANSWER 2
SELECT count(*) as Female_respondents from personalized_info 
  where Gender like "female%" AND currentcountry= "India" ;
#ANSWER 3
SELECT count(*) AS Gender from personalized_info 
as p inner join learning_aspirations as L on p.responseID=L.responseID
where p.currentcountry="india" and CareerInfluenceFactor="my parents" ;
#ANSWER 4
SELECT count(*) AS Female_GenZ from personalized_info 
as p inner join learning_aspirations as L on p.responseID=L.responseID 
where p.currentcountry="india" and CareerInfluenceFactor="my parents" and p.gender like "female%" ;
#ANSWER 5
SELECT count(*) AS male_GenZ from personalized_info 
as p inner join learning_aspirations as L on p.responseID=L.responseID 
where p.currentcountry="india" and CareerInfluenceFactor="my parents" and p.gender like "male%" ;
#ANSWER 6
select count(case when L.careerinfluencefactor like "social%" then 1 end)
as linkedin, count(case when L.careerinfluencefactor like "influencers%" then 1 end) 
as successfulcareer from personalized_info as p inner join learning_aspirations as l on p.responseID=l.responseID 
where p.currentcountry="india" ;
#ANSWER 8
select CareerInfluenceFactor,count(case when p.gender like "female%" then 1 end) as female_genz, 
count(case when p.gender like "male%" then 1 end) as male_genz from personalized_info as p 
inner join learning_aspirations as l on p.responseID=l.responseID where p.currentcountry="india" group by l.careerinfluencefactor
limit 2 offset 1 ;
#ANSWER 9
select count(*) as GENZ from learning_aspirations 
where HigherEducationAbroad like "yes%" and careerinfluencefactor like "socials%" ;
#ANSWER 10
select count(*) as GENZ from learning_aspirations 
where HigherEducationAbroad like "yes%" and careerinfluencefactor like "%circle%" ;
