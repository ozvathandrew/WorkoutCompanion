BEGIN TRANSACTION; 

ALTER TABLE profile
ADD CONSTRAINT fk_role_id foreign key (role_id) references access(role_id); 

COMMIT; 

rollback
