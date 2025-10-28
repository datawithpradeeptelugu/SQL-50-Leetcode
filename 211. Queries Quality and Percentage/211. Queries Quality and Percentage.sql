CREATE TABLE Queries (
    query_name VARCHAR(50),
    result VARCHAR(100),
    position INT,
    rating INT
);

INSERT INTO Queries (query_name, result, position, rating) VALUES
('Dog', 'Golden Retriever', 1, 5),
('Dog', 'German Shepherd', 2, 5),
('Dog', 'Mule', 200, 1),
('Cat', 'Shirazi', 5, 2),
('Cat', 'Siamese', 3, 3),
('Cat', 'Sphynx', 7, 4);


With Query as (
select 
    query_name,
    Round(Avg(Cast(rating as float) /position),2) as Quality,

    Count(Case 
    when rating <3 then 1 
    End ) as Numerator,
    Count(query_name) as Denominator

FROM
Queries
group by query_name)

Select 
    q.query_name,
    q.Quality,
    Round(  (cast(q.Numerator as float) *100 /q.Denominator),2)
From Query q







