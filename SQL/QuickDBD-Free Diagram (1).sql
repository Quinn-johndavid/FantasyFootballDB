-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Pm09XG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "wideReciever" (
    "WRID" int   NOT NULL,
    "Player" varchar   NOT NULL,
    "REC" int   NOT NULL,
    "TGT" int   NOT NULL,
    "CatchYDS" int   NOT NULL,
    "YardsPerCatch" decimal   NOT NULL,
    "Longest" int   NOT NULL,
    "20YardsorMore" int   NOT NULL,
    "TD" int   NOT NULL,
    "ATT" int   NOT NULL,
    "RushYDS" int   NOT NULL,
    "RushingTD" int   NOT NULL,
    "FumblesLost" int   NOT NULL,
    "Games" int   NOT NULL,
    "FPTS" decimal   NOT NULL,
    "FPTSPerGame" decimal   NOT NULL,
    "Rost" decimal   NOT NULL,
    CONSTRAINT "pk_wideReciever" PRIMARY KEY (
        "WRID"
     )
);

CREATE TABLE "runningBacks" (
    "RBID" int   NOT NULL,
    "Player" varchar   NOT NULL,
    "ATT" int   NOT NULL,
    "RushYDS" int   NOT NULL,
    "YardsPerAttempt" decimal   NOT NULL,
    "Longest" int   NOT NULL,
    "20YardsorMore" int   NOT NULL,
    "RushingTD" int   NOT NULL,
    "REC" int   NOT NULL,
    "TGT" int   NOT NULL,
    "CatchYDS" int   NOT NULL,
    "YardsPerCatch" decimal   NOT NULL,
    "CatchTD" int   NOT NULL,
    "FumblesLost" int   NOT NULL,
    "Games" int   NOT NULL,
    "FPTS" decimal   NOT NULL,
    "FPTSPerGame" decimal   NOT NULL,
    "Rost" decimal   NOT NULL,
    CONSTRAINT "pk_runningBacks" PRIMARY KEY (
        "RBID"
     )
);

CREATE TABLE "TightEnds" (
    "TEID" int   NOT NULL,
    "Player" Varchar   NOT NULL,
    "REC" int   NOT NULL,
    "TGT" int   NOT NULL,
    "YDS" int   NOT NULL,
    "YardsPerCatch" decimal   NOT NULL,
    "Longest" int   NOT NULL,
    "20YardsorMore" int   NOT NULL,
    "TD" int   NOT NULL,
    "ATT" int   NOT NULL,
    "RushYDS" int   NOT NULL,
    "RushingTD" int   NOT NULL,
    "FumblesLost" int   NOT NULL,
    "Games" int   NOT NULL,
    "FPTS" Decimal   NOT NULL,
    "FPTSPerGame" decimal   NOT NULL,
    "ROST" decimal   NOT NULL,
    CONSTRAINT "pk_TightEnds" PRIMARY KEY (
        "TEID"
     )
);

CREATE TABLE "QuarterBacks" (
    "QBID" int   NOT NULL,
    "Player" Varchar   NOT NULL,
    "CMP" int   NOT NULL,
    "PassingATT" int   NOT NULL,
    "PCT" decimal   NOT NULL,
    "PassingYDS" int   NOT NULL,
    "YardsPerThrow" decimal   NOT NULL,
    "PassingTD" int   NOT NULL,
    "INT" int   NOT NULL,
    "Sacks" int   NOT NULL,
    "RushingATT" int   NOT NULL,
    "RushingYDS" int   NOT NULL,
    "RushingTD" int   NOT NULL,
    "FumblesLost" int   NOT NULL,
    "Games" int   NOT NULL,
    "FPTS" decimal   NOT NULL,
    "FPTSPerGame" decimal   NOT NULL,
    "ROST" decimal   NOT NULL,
    CONSTRAINT "pk_QuarterBacks" PRIMARY KEY (
        "QBID"
     )
);

CREATE TABLE "Players" (
    "PlayerID" int   NOT NULL,
    "PlayerName" varchar   NOT NULL,
    CONSTRAINT "pk_Players" PRIMARY KEY (
        "PlayerID"
     )
);

ALTER TABLE "wideReciever" ADD CONSTRAINT "fk_wideReciever_WRID" FOREIGN KEY("WRID")
REFERENCES "Players" ("PlayerID");

ALTER TABLE "runningBacks" ADD CONSTRAINT "fk_runningBacks_RBID" FOREIGN KEY("RBID")
REFERENCES "Players" ("PlayerID");

ALTER TABLE "TightEnds" ADD CONSTRAINT "fk_TightEnds_TEID" FOREIGN KEY("TEID")
REFERENCES "Players" ("PlayerID");

ALTER TABLE "QuarterBacks" ADD CONSTRAINT "fk_QuarterBacks_QBID" FOREIGN KEY("QBID")
REFERENCES "Players" ("PlayerID");

