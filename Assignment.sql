--Total games played, win, loss, goals for/goals against
WITH
	Allworld_cup AS (
		SELECT 
	'wc_2002' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
	FROM
	fifa_2002
	UNION ALL
SELECT
	'wc_2006' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
	FROM
	fifa_2006
	UNION ALL
SELECT
	'wc_2010' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM
	fifa_2010
	UNION ALL
SELECT
	'wc_2014' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM
	fifa_2014
	UNION ALL
SELECT
	'wc_2018' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM
	fifa_2018
 )
	
SELECT 
	team,
	SUM(games_played) AS total_games,
	SUM(win) AS total_wins,
	SUM(loss) AS total_loss,
	SUM(goals_for) AS total_goalsfr,
	SUM(goals_against) AS total_goalsagainst
FROM
	Allworld_cup
GROUP BY 
	team
ORDER BY SUM(win)DESC;

-- Country with the Highest appearance in the last five years
WITH
	Allworld_cup AS (
		SELECT 
	'wc_2002' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
	FROM
	fifa_2002
	UNION ALL
SELECT
	'wc_2006' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
	FROM
	fifa_2006
	UNION ALL
SELECT
	'wc_2010' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM
	fifa_2010
	UNION ALL
SELECT
	'wc_2014' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM
	fifa_2014
	UNION ALL
SELECT
	'wc_2018' AS worldcup_year,
	team,
	point,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM
	fifa_2018
 )
	
SELECT 
	team,
	SUM(games_played) AS Highest_game_ply
FROM
	Allworld_cup
GROUP BY 
	team
ORDER BY SUM(games_played)DESC
LIMIT 5;
--Germany has total of 31 appearance then Brazil with 29 appearance.


--Country with the Lowest appearance in the last five(5) years.
	
SELECT 
	team,
	SUM(games_played) AS Lowest_game_ply
FROM
	Allworld_cup
GROUP BY 
	team
ORDER BY SUM(games_played)ASC
LIMIT 15;


--Country with the Highest game won
SELECT 
	team,
	SUM(win) AS highest_gamewon
FROM
	Allworld_cup
GROUP BY 
	team
ORDER BY SUM(win)DESC
--Germany has won the highest of games with 22 wins and brazil 20.


--Country with the Lowest game won
SELECT 
	team,
	SUM(win) AS lowest_gamewon
FROM
	Allworld_cup
GROUP BY 
	team
ORDER BY SUM(win)ASC
LIMIT 15;


--Country with the highest game lost
SELECT 
	team,
	SUM(loss) AS Highest_gamelost
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(loss)DESC;
--South Korea has the most number of games lost (9) then Japan, Nigeria, Mexico (8)


--Country with the lowest Game lost
SELECT 
	team,
	SUM(loss) AS lowest_gamelost
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(loss)ASC
LIMIT 15;


-- Country with the Highest Goals_For
WITH 
	Allworld_cup AS (
		SELECT
	'WC_2002' AS worldcup_year,
	team,
	point,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2002
UNION ALL
SELECT 
	'WC_2006' AS worldcup_year,
	team,
	point,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2006
UNION ALL
SELECT 
	'WC_2010' AS worldcup_year,
	team,
	point,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2010
UNION ALL
SELECT 
	'WC_2014' AS worldcup_year,
	team,
	point,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2014
UNION ALL
SELECT
	'WC_2018' AS worldcup_year,
	team,
	point,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2018
	)
SELECT 
	team,
	SUM(goals_for) AS Highest_goalsfor
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(goals_for)DESC;
--Germany has the highest goals_for with 64 goals and Brazil 56.ADD



--Country with the Lowest Goals_for
SELECT 
	team,
	SUM(goals_for) AS Lowest_goalsfor
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(goals_for)ASC;

--Country with the Highest Goals_against
SELECT 
	team,
	SUM(goals_against) AS Highest_goalagainst
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(goals_against)DESC;
--Brazil and South Korea has the Highest goals_against with 27goals.


--Country with the Lowest Goals_against
SELECT 
	team,
	SUM(goals_against) AS Lowest_goalagainst
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(goals_against)ASC;
--Peru, Angola and Newzealand has the lowest goals_against with 2 goals.


--Country with the Highest Goal_difference.
SELECT 
	team,
	SUM(goal_difference) AS Highest_goaldifference
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(goal_difference)DESC;
--Germany has the Highest goal difference with 42 goals.


--Country with the Lowest goal difference
SELECT 
	team,
	SUM(goal_difference) AS Lowest_goaldifference
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(goal_difference)ASC;

--Country with the Highest Points
SELECT 
	team,
	SUM(point) AS Highest_Point
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(point)DESC;

--Germany has the highest Points with a total of 69 Points then Brazil 64 Points.


--Country with the Lowest Points
SELECT 
	team,
	SUM(point) AS Lowest_Point
FROM Allworld_cup
Group By 
	team
ORDER BY SUM(point)ASC;