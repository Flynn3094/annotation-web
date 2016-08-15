-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	5.7.14-log
--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS submission;

CREATE TABLE submission (
  id int(11) NOT NULL,
  s_id int(11) NOT NULL,
  label int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY fk_sentence_id (s_id),
  CONSTRAINT fk_sentence_id FOREIGN KEY (s_id) REFERENCES sentence (id)
);

--
-- Dumping data for table `submission`
--

INSERT INTO submission VALUES (1,247,2);
INSERT INTO submission VALUES (2,161,1);
INSERT INTO submission VALUES (3,183,0);
INSERT INTO submission VALUES (4,49,0);
INSERT INTO submission VALUES (5,380,1);
INSERT INTO submission VALUES (6,380,1);
INSERT INTO submission VALUES (7,87,0);
INSERT INTO submission VALUES (8,390,0);
INSERT INTO submission VALUES (9,349,0);
INSERT INTO submission VALUES (10,12,1);
INSERT INTO submission VALUES (11,19,0);
INSERT INTO submission VALUES (12,26,2);
INSERT INTO submission VALUES (13,33,1);
INSERT INTO submission VALUES (14,40,0);
INSERT INTO submission VALUES (15,47,1);
INSERT INTO submission VALUES (16,54,2);
INSERT INTO submission VALUES (17,61,1);
INSERT INTO submission VALUES (18,68,0);
INSERT INTO submission VALUES (19,75,1);
INSERT INTO submission VALUES (20,82,2);
INSERT INTO submission VALUES (21,89,1);
INSERT INTO submission VALUES (22,96,1);
INSERT INTO submission VALUES (23,103,0);
INSERT INTO submission VALUES (24,185,0);
INSERT INTO submission VALUES (25,193,1);
INSERT INTO submission VALUES (26,201,2);
INSERT INTO submission VALUES (27,441,0);
INSERT INTO submission VALUES (28,300,0);
INSERT INTO submission VALUES (29,307,1);
INSERT INTO submission VALUES (30,314,2);
INSERT INTO submission VALUES (31,437,0);
INSERT INTO submission VALUES (32,444,1);
INSERT INTO submission VALUES (33,451,2);
INSERT INTO submission VALUES (34,458,1);
INSERT INTO submission VALUES (35,465,0);
INSERT INTO submission VALUES (36,430,1);
INSERT INTO submission VALUES (37,437,1);
INSERT INTO submission VALUES (38,89,1);
INSERT INTO submission VALUES (39,96,2);
INSERT INTO submission VALUES (40,103,1);
INSERT INTO submission VALUES (41,110,0);
INSERT INTO submission VALUES (42,117,1);
INSERT INTO submission VALUES (43,124,2);
INSERT INTO submission VALUES (44,239,0);
INSERT INTO submission VALUES (45,246,2);
INSERT INTO submission VALUES (46,253,1);
INSERT INTO submission VALUES (47,260,0);
INSERT INTO submission VALUES (48,267,1);
INSERT INTO submission VALUES (49,274,2);
INSERT INTO submission VALUES (50,281,1);
INSERT INTO submission VALUES (51,288,1);
INSERT INTO submission VALUES (52,436,0);
INSERT INTO submission VALUES (53,443,1);
INSERT INTO submission VALUES (54,450,2);
INSERT INTO submission VALUES (55,457,1);
INSERT INTO submission VALUES (56,464,0);
INSERT INTO submission VALUES (57,3,1);
INSERT INTO submission VALUES (58,10,2);
INSERT INTO submission VALUES (59,17,1);
INSERT INTO submission VALUES (60,24,0);
INSERT INTO submission VALUES (61,31,1);
INSERT INTO submission VALUES (62,38,1);
INSERT INTO submission VALUES (63,45,1);
INSERT INTO submission VALUES (64,52,1);
INSERT INTO submission VALUES (65,305,0);
INSERT INTO submission VALUES (66,312,1);
INSERT INTO submission VALUES (67,319,2);
INSERT INTO submission VALUES (68,326,1);
INSERT INTO submission VALUES (69,333,0);
INSERT INTO submission VALUES (70,340,1);
INSERT INTO submission VALUES (71,347,2);
INSERT INTO submission VALUES (72,354,0);
INSERT INTO submission VALUES (73,361,0);
INSERT INTO submission VALUES (74,368,1);
INSERT INTO submission VALUES (75,375,2);
INSERT INTO submission VALUES (76,382,1);
INSERT INTO submission VALUES (77,389,2);
INSERT INTO submission VALUES (78,396,0);
INSERT INTO submission VALUES (79,146,2);
INSERT INTO submission VALUES (80,153,1);
INSERT INTO submission VALUES (81,160,0);
INSERT INTO submission VALUES (82,157,2);
INSERT INTO submission VALUES (83,164,2);
INSERT INTO submission VALUES (84,171,2);
INSERT INTO submission VALUES (85,178,1);
INSERT INTO submission VALUES (86,185,0);
INSERT INTO submission VALUES (87,192,1);
INSERT INTO submission VALUES (88,199,1);
INSERT INTO submission VALUES (89,206,1);
INSERT INTO submission VALUES (90,213,0);
INSERT INTO submission VALUES (91,220,1);
INSERT INTO submission VALUES (92,227,2);
INSERT INTO submission VALUES (93,234,0);
INSERT INTO submission VALUES (94,241,1);
INSERT INTO submission VALUES (95,248,2);
INSERT INTO submission VALUES (96,357,2);
INSERT INTO submission VALUES (97,364,2);
INSERT INTO submission VALUES (98,371,1);
INSERT INTO submission VALUES (99,378,0);
INSERT INTO submission VALUES (100,219,0);
INSERT INTO submission VALUES (101,226,1);
INSERT INTO submission VALUES (102,233,2);
INSERT INTO submission VALUES (103,279,1);
INSERT INTO submission VALUES (104,286,0);
INSERT INTO submission VALUES (105,293,0);
INSERT INTO submission VALUES (106,300,2);
INSERT INTO submission VALUES (107,395,0);
INSERT INTO submission VALUES (108,38,0);
INSERT INTO submission VALUES (109,45,1);
INSERT INTO submission VALUES (110,52,2);
INSERT INTO submission VALUES (111,66,0);
INSERT INTO submission VALUES (112,73,1);
INSERT INTO submission VALUES (113,87,0);
INSERT INTO submission VALUES (114,168,0);

DELIMITER ;;

after insert on submission for each row 
begin
update sentence set sentence.nums = sentence.nums+1 where new.s_id = sentence.id;
end */;;
DELIMITER ;

-- Dump completed
