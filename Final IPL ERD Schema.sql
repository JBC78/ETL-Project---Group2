-- ETL PROJECT Group 2 - Sri Vegunta & Josh Cullen
-- IPL Data Schema

CREATE TABLE "Players" (
    "Player_Id" VARCHAR(10)   NOT NULL,
    "Player_Name" VARCHAR(100)   NOT NULL,
    "DOB" VARCHAR(20)   NOT NULL,
    "Batting_Hand" VARCHAR(15)   NOT NULL,
    "Bowling_Skill" VARCHAR(50)   NOT NULL,
    "Country" VARCHAR(15)   NOT NULL,
    "Is_Umpire" INTEGER   NOT NULL,
    "age" FLOAT8   NOT NULL,
    "Cntry_code" VARCHAR(3)   NOT NULL,
    "Series_BestBatsman" FLOAT8   NOT NULL,
    "Series_BestBowler" FLOAT8   NOT NULL,
    "Manoftheseries" FLOAT8   NOT NULL,
    CONSTRAINT "pk_Players" PRIMARY KEY (
        "Player_Id"
     )
);

CREATE TABLE "Matches" (
    "Match_Id" VARCHAR(10)   NOT NULL,
    "Match_Date" VARCHAR(9)   NOT NULL,
    "Team_Name_Id" VARCHAR(10)   NOT NULL,
    "Opponent_Team_Id" VARCHAR(10)   NOT NULL,
    "Season_Id" VARCHAR(10)   NOT NULL,
    "Venue_Name" VARCHAR(100)   NOT NULL,
    "Toss_Winner_Id" INTEGER   NOT NULL,
    "Toss_Decision" VARCHAR(15)   NOT NULL,
    "IS_Superover" INTEGER   NOT NULL,
    "IS_Result" INTEGER   NOT NULL,
    "Is_DuckWorthLewis" INTEGER   NOT NULL,
    "Win_Type" VARCHAR(15)   NOT NULL,
    "Won_By" VARCHAR(10)   NOT NULL,
    "Match_Winner_Id" VARCHAR(10)   NOT NULL,
    "Man_Of_The_Match_Id" VARCHAR(10)   NOT NULL,
    "First_Umpire_Id" VARCHAR(10)   NOT NULL,
    "Second_Umpire_Id" VARCHAR(10)   NOT NULL,
    "City_Name" VARCHAR(100)   NOT NULL,
    "Host_Country" VARCHAR(25)   NOT NULL,
    "Team1_Name" VARCHAR(100)   NOT NULL,
    "Team1_Short_Code" VARCHAR(5)   NOT NULL,
    "Opponent_Team_Name" VARCHAR(100)   NOT NULL,
    "OpponentTeam_Short_Code" VARCHAR(5)   NOT NULL,
    "Season_Year" VARCHAR(4)   NOT NULL,
    "Orange_Cap_Id" VARCHAR(10)   NOT NULL,
    "Purple_Cap_Id" VARCHAR(10)   NOT NULL,
    "Man_of_the_Series_Id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Matches" PRIMARY KEY (
        "Match_Id"
     )
);

CREATE TABLE "Player_Match" (
    "Match_Id" VARCHAR(10)   NOT NULL,
    "Player_Id" VARCHAR(10)   NOT NULL,
    "Team_Id" VARCHAR(10)   NOT NULL,
    "Is_Keeper" INTEGER   NOT NULL,
    "Is_Captain" INTEGER   NOT NULL,
    CONSTRAINT "pk_Player_Match" PRIMARY KEY (
        "Match_Id","Player_Id"
     )
);

ALTER TABLE "Player_Match" ADD CONSTRAINT "fk_Player_Match_Match_Id" FOREIGN KEY("Match_Id")
REFERENCES "Matches" ("Match_Id");

ALTER TABLE "Player_Match" ADD CONSTRAINT "fk_Player_Match_Player_Id" FOREIGN KEY("Player_Id")
REFERENCES "Players" ("Player_Id");

