ALTER TABLE `users` ADD COLUMN `quiz` TEXT NOT NULL  AFTER `loses` , ADD COLUMN `corrects` INT NOT NULL DEFAULT 0  AFTER `quiz` , ADD COLUMN `wrongs` INT NOT NULL DEFAULT 0  AFTER `corrects` , ADD COLMN `quiz_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' AFTER `quiz` ;