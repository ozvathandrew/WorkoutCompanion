BEGIN TRANSACTION;

ALTER TABLE login
ADD CONSTRAINT pk_login_id PRIMARY KEY (login_id);

COMMIT; 

rollback; 