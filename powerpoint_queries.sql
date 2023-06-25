USE meriners_2022;

SELECT gameDate AS 'Game Date', -- show game date
opponent AS 'Opponent', -- show opponent
outcome AS 'Outcome', -- show outcome
marinersScore AS 'Mariner\'s Score', -- show mariner's score
opponentScore AS 'Opponent\'s Score' -- show opponent's score
FROM game_log -- select the game_log table
WHERE marinersScore <= 2 -- only select entries where the mariner's score less than 2 
AND outcome = 'W' -- only select entries where the outcome is a Win
ORDER BY gameDate; -- order the outcome by gameDate

SELECT 
gameID as 'Game ID', -- show game number
gameDate AS 'Game Date', -- show game date
opponent AS 'Opponent', -- show opponent
strikeouts AS 'Strikeouts' -- show number of team pitched strikeouts
FROM pitching_log -- select the pitching_log table
WHERE strikeouts >= 10 -- select entries where the mariner's strikeout more than 10 batters
ORDER BY gameDate; -- order the outcome by gameDate