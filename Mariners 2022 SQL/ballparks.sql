CREATE DATABASE IF NOT EXISTS mariners_2022;

USE mariners_2022;

DROP TABLE IF EXISTS ballparks;

CREATE TABLE ballparks(
	ballparkID INT(5) AUTO_INCREMENT,
	stadium varchar(25) not null,
	team varchar(25) not null,
	teamAbrev varchar(5) not null,
	dateOpened DATE,
	capacity int,
	cost int,
	fieldType varchar(25) not null,
	leftFieldLength int,
	centerFieldLength int,
	rightFieldLength int,
	PRIMARY KEY(`ballparkID`)
);




INSERT INTO ballparks VALUES
(NULL,"American Family Field","Milwaukee Brewers","MI","2001-06-04",41900,382000000,"Grass",332,400,325),
(NULL,"Angel Stadium","Los Angeles Angels","AN","1966-04-19",45050,24000000,"Grass",330,396,330),
(NULL,"Busch Stadium","St. Louis Cardinals","STL","2006-04-10",43975,411000000,"Grass",336,400,335),
(NULL,"Camden Yards","Baltimore Orioles","BAL","1992-06-04",45971,110000000,"Grass",337,406,320),
(NULL,"Chase Field","Arizona Diamondbacks","AZ","1998-03-31",48633,354000000,"Fieldturf",330,407,335),
(NULL,"Citi Field","New York Mets","NYM","2009-04-13",42000,632000000,"Grass",335,405,330),
(NULL,"Citizens Bank Park","Philadelphia Phillies","PHI","2004-12-04",43035,458000000,"Grass",330,401,329),
(NULL,"Comerica Park","Detroit Tigers","DET","2000-11-04",41574,300000000,"Grass",345,420,330),
(NULL,"Coors Field","Colorado Rockies","COL","1995-04-26",50398,115000000,"Grass",347,415,350),
(NULL,"Dodger Stadium","Los Angeles Dodgers","LA","1962-10-04",56000,23000000,"Grass",330,400,300),
(NULL,"Fenway Park","Boston Red Sox","BOS","1912-04-20",37673,650000,"Grass",310,420,302),
(NULL,"Globe Life Field","Texas Rangers","TEX","2020-05-29",40300,1200000000,"Fieldturf",329,407,326),
(NULL,"Great American Ball Park","Cincinnati Reds","CIN","2003-03-31",42271,320000000,"Grass",325,404,328),
(NULL,"Guaranteed Rate Field","Chicago White Sox","CHIW","1991-04-18",40615,137000000,"Grass",330,400,335),
(NULL,"Kauffman Stadium","Kansas City Royals","KC","1973-10-04",37903,43000000,"Grass",330,400,330),
(NULL,"loanDepot Park","Miami Marlins","MIA","2012-04-04",37442,515000000,"Fieldturf",340,420,335),
(NULL,"Minute Maid Park","Houston Astros","HOU","2000-07-04",40963,248000000,"Grass",315,435,326),
(NULL,"Nationals Park","Washington Nationals","WAS","2008-03-30",41313,611000000,"Grass",336,403,335),
(NULL,"Oracle Park","San Francisco Giants","SF","2000-11-04",41915,255000000,"Grass",339,399,309),
(NULL,"Petco Park","San Diego Padres","SD","2004-08-04",42445,449000000,"Grass",336,396,322),
(NULL,"PNC Park","Pittsburgh Pirates","PIT","2001-09-04",38362,216000000,"Grass",325,399,320),
(NULL,"Progressive Field","Cleveland Indians","CLE","1994-04-04",35041,169000000,"Grass",325,405,325),
(NULL,"RingCentral Coliseum","Oakland A’s","OAK","1966-09-18",35067,25500000,"Grass",330,400,330),
(NULL,"Rogers Centre","Toronto Blue Jays","TOR","1989-05-06",41500,500000000,"Fieldturf",328,400,328),
(NULL,"T-Mobile Park","Seattle Mariners","SEA","1999-07-15",47116,517000000,"Grass",331,405,327),
(NULL,"Target Field","Minnesota Twins","MIN","2010-12-04",39504,545000000,"Grass",339,404,328),
(NULL,"Tropicana Field","Tampa Bay Rays","TB","1990-03-03",25025,138000000,"Fieldturf",315,404,322),
(NULL,"Truist Park","Atlanta Braves","ATL","2017-04-14",41500,672000000,"Grass",335,400,325),
(NULL,"Wrigley Field","Chicago Cubs","CHIC","1914-04-23",41649,250000,"Grass",355,400,353),
(NULL,"Yankee Stadium","New York Yankees","NYY","2009-04-02",52355,1600000,"Grass",318,404,314);

SELECT * FROM ballparks;
