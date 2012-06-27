-- Ajeita o user_id pra apontar para user(id), e não para user(username)
ALTER TABLE  `codes` CHANGE  `user_id`  `user_id` INT( 13 ) NOT NULL;

-- Insere a chave estrangeira
ALTER TABLE codes
	ADD CONSTRAINT fk__codes__users
	FOREIGN KEY (user_id)
	REFERENCES users(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;