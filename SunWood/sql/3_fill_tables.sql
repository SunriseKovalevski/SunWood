INSERT INTO `sunwood`.`users` (`login`, `pass`) VALUES ('guest', 'guest');

INSERT INTO `sunwood`.`groupuser` (`name`, `users_login`) VALUES ('default', 'guest');

INSERT INTO `sunwood`.`issue` (`description`) VALUES ('Домик дачный 4*4 м стены 35 мм шпунт, 2.5 м высотой крыша андулин');

INSERT INTO `sunwood`.`issue` (`description`) VALUES ('Домик дачный 3*5 м стены 50 мм шпунт, 2.5 м высотой крыша шифер');

INSERT INTO `sunwood`.`issue` (`description`) VALUES ('Домик дачный 5*5 м стены 35 мм шпунт, 2.5 м высотой крыша металлопрофиль');

INSERT INTO `sunwood`.`job` (`description`, `master_login`, `worker_login`, `issues_id`) 
	VALUES ('Доска шпунтованная 35 мм 10 м2', 'guest', 'guest', 1);
	
INSERT INTO `sunwood`.`job` (`description`, `master_login`, `worker_login`, `issues_id`) 
	VALUES ('Доска шпунтованная 35 мм 20 м2', 'guest', 'guest', 1);

INSERT INTO `sunwood`.`job` (`description`, `master_login`, `worker_login`, `issues_id`) 
	VALUES ('Доска шпунтованная 50 мм 10 м2', 'guest', 'guest', 2);
	
INSERT INTO `sunwood`.`job` (`description`, `master_login`, `worker_login`, `issues_id`) 
	VALUES ('Доска шпунтованная 50 мм 20 м2', 'guest', 'guest', 2);
	
INSERT INTO `sunwood`.`job` (`description`, `master_login`, `worker_login`, `issues_id`) 
	VALUES ('Доска шпунтованная 35 мм 15 м2', 'guest', 'guest', 3);
	
INSERT INTO `sunwood`.`job` (`description`, `master_login`, `worker_login`, `issues_id`) 
	VALUES ('Доска шпунтованная 35 мм 25 м2', 'guest', 'guest', 3);

INSERT INTO `sunwood`.`groupuser_has_issues` (`groupuser_name`, `issues_id`)
	VALUES ('default', 1);
	
INSERT INTO `sunwood`.`groupuser_has_issues` (`groupuser_name`, `issues_id`)
	VALUES ('default', 2);
	
INSERT INTO `sunwood`.`groupuser_has_issues` (`groupuser_name`, `issues_id`)
	VALUES ('default', 3);
	