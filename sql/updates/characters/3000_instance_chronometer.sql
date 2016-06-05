--
-- Add column endBoss to `mangos`.`instance_template`
--

ALTER TABLE mangos.instance_template ADD endBoss MEDIUMINT(8);
UPDATE mangos.instance_template SET endBoss = 639 WHERE map = 36;
UPDATE mangos.instance_template SET endBoss = 1716 WHERE map = 34;


--
-- Introduce table `characters`.`instance_record`
--
DROP TABLE IF EXISTS `characters`.`instance_record`;
CREATE TABLE `characters`.`instance_record` (
  `instance` INT(11) UNSIGNED NOT NULL,
  `map` SMALLINT(5) UNSIGNED NOT NULL,
  `type` TINYINT(2) UNSIGNED NULL NULL DEFAULT 0,
  `valid` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `startTime` BIGINT(40) UNSIGNED NOT NULL,
  `endTime` BIGINT(40) UNSIGNED NULL,
  `time` BIGINT(40) UNSIGNED NULL,
  `guild` INT(6) UNSIGNED NULL,
  `member0` INT(11) UNSIGNED NULL,
  `member1` INT(11) UNSIGNED NULL,
  `member2` INT(11) UNSIGNED NULL,
  `member3` INT(11) UNSIGNED NULL,
  `member4` INT(11) UNSIGNED NULL,
  PRIMARY KEY (`instance`, `map`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
