CREATE TABLE IF NOT EXISTS `sunwood`.`users` (
	`login` VARCHAR(15) NOT NULL COMMENT 'Login',
	`pass` VARCHAR(45) NOT NULL COMMENT 'Password',
	PRIMARY KEY (`login`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `sunwood`.`groupuser` (
	`name` VARCHAR(20) NOT NULL COMMENT 'group name',
	`users_login` VARCHAR(15) NOT NULL COMMENT 'Secondary key from table users',
	PRIMARY KEY (`name`),
	INDEX `fk_groupuser_users` (`users_login` ASC),
	CONSTRAINT `fk_groupuser_users`
		FOREIGN KEY (`users_login`)
		REFERENCES `sunwood`.`users` (`login`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `sunwood`.`issue` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`description` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `sunwood`.`job` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`description` VARCHAR(255) NOT NULL,
	`master_login` VARCHAR(15) NOT NULL COMMENT 'user that control the job',
	`worker_login` VARCHAR(15) NOT NULL COMMENT 'user, that gains the job',
	`issues_id` INT NOT NULL COMMENT 'issue that aggregates this job',
	PRIMARY KEY (`id`),
	INDEX `fk_jobs_masters1` (`master_login` ASC),
	INDEX `fk_jobs_workers1` (`worker_login` ASC),
	INDEX `fk_jobs_issues1` (`issues_id` ASC),
	CONSTRAINT `fk_jobs_masters1`
		FOREIGN KEY (`master_login`)
		REFERENCES `sunwood`.`users` (`login`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_jobs_workers1`
		FOREIGN KEY (`worker_login`)
		REFERENCES `sunwood`.`users` (`login`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_jobs_issues1`
		FOREIGN KEY (`issues_id`)
		REFERENCES `sunwood`.`issues` (`id`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `sunwood`.`groupuser_has_issues` (
	`groupuser_name` VARCHAR(20) NOT NULL,
	`issues_id` INT NOT NULL,
	PRIMARY KEY (`groupuser_name`, `issues_id`),
	INDEX `fk_groupuser_has_issues_issues1` (`issues_id` ASC),
	INDEX `fk_groupuser_has_issues_groupuser1` (`groupuser_name` ASC),
	CONSTRAINT `fk_groupuser_has_issues_grouuser1`
		FOREIGN KEY (`groupuser_name`)
		REFERENCES `sunwood`.`groupuser` (`name`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_groupuser_has_issues_issues1`
		FOREIGN KEY (`issues_id`)
		REFERENCES `sunwood`.`issue` (`id`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
	




