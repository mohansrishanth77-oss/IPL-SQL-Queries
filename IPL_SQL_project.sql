 -- 1. Total Matches SELECT 
 COUNT(*) AS total_matches
FROM matches;



-- 2. Matches Won By Each Team
SELECT winner, COUNT(*) AS matches_won
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY matches_won DESC;

-- 3. Matches Played In Each Season
SELECT season, COUNT(*) AS matches_played
FROM matches
GROUP BY season
ORDER BY season;

-- 4. Number Of Matches At Each Venue
SELECT venue, COUNT(*) AS matches_count
FROM matches
GROUP BY venue
ORDER BY matches_count DESC;

-- 5. Toss Wins By Team
SELECT toss_winner, COUNT(*) AS toss_wins
FROM matches
GROUP BY toss_winner
ORDER BY toss_wins DESC;

-- 6. Teams Choosing To Bat First
SELECT toss_decision, COUNT(*) AS count
FROM matches
GROUP BY toss_decision;

-- 7. Matches Played In Each City
SELECT city, COUNT(*) AS matches_count
FROM matches
GROUP BY city
ORDER BY matches_count DESC;

-- 8. Highest Win Margin By Runs
SELECT *
FROM matches
ORDER BY win_by_runs DESC
LIMIT 1;

-- 9. Highest Win Margin By Wickets
SELECT *
FROM matches
ORDER BY win_by_wickets DESC
LIMIT 1;

-- 10. Player Of The Match Awards
SELECT player_of_match, COUNT(*) AS awards
FROM matches
GROUP BY player_of_match
ORDER BY awards DESC;

-- 11. Matches Umpired By Each Umpire
SELECT umpire1, COUNT(*) AS matches_officiated
FROM matches
GROUP BY umpire1
ORDER BY matches_officiated DESC;

-- 12. Number Of Tied Matches
SELECT COUNT(*) AS tied_matches
FROM matches
WHERE result = 'tie';

-- 13. Teams Appearing As Team1
SELECT team1, COUNT(*) AS appearances
FROM matches
GROUP BY team1
ORDER BY appearances DESC;

-- 14. Teams Appearing As Team2
SELECT team2, COUNT(*) AS appearances
FROM matches
GROUP BY team2
ORDER BY appearances DESC;

-- 15. Season Wise Player Of The Match Awards
SELECT season, player_of_match, COUNT(*) AS awards
FROM matches
GROUP BY season, player_of_match
ORDER BY season;