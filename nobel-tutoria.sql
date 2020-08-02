
/*nobel(yr, subject, winner)
Using the SELECT statement.

Winners from 1950
1.*/
-- Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1960;
 
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;
 

-- Show who won the 1962 prize for Literature.

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

-- 3.Show the year and subject that won 'Albert Einstein' his prize.

select yr, subject from nobel where winner = 'Albert Einstein' ;

-- 4.Give the name of the 'Peace' winners since the year 2000, including 2000.

select winner from nobel where yr > 1999 and subject = 'Peace' ;

-- 5.Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

select yr,subject,winner from nobel where subject = 'Literature' and (yr > 1979 and yr < 1990);

-- 6.Show all details of the presidential winners:

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter','Barack Obama');

-- 7.Show the winners with first name John

select winner from nobel where winner like 'John %';

-- 8.Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

select yr,subject,winner from nobel where (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' and yr = 1984);

-- 9.Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

select yr, subject, winner from nobel where yr=1980 and (subject NOT IN ('Chemistry','Medicine'));

-- 10.Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

select yr,subject,winner from nobel where (yr < 1910 and subject = 'Medicine') or (yr > 2003 and subject = 'Literature');

-- 11.Find all details of the prize won by PETER GRÜNBERG

select * from nobel where winner = 'PETER GRÜNBERG';

-- 12.Find all details of the prize won by EUGENE O'NEILL

select * from nobel where winner like 'EUGENE O%';

-- 13.Knights in order

select winner,yr,subject from nobel where winner like 'Sir %' order by yr desc;

-- 14.The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry') asc,winner desc;
