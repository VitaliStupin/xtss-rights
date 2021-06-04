-- Users should be managed by DB admin
--CREATE ROLE rights_app WITH LOGIN;
--GRANT CONNECT ON DATABASE rights TO rights_app;
GRANT USAGE ON SCHEMA rights TO rights_app;
GRANT INSERT ON rights.change_log TO rights_app;
GRANT SELECT, INSERT, UPDATE ON rights.organization TO rights_app;
GRANT SELECT, INSERT, UPDATE ON rights.person TO rights_app;
GRANT SELECT, INSERT, UPDATE ON rights."right" TO rights_app;
GRANT USAGE ON SEQUENCE rights.organization_id_seq TO rights_app;
GRANT USAGE ON SEQUENCE rights.person_id_seq TO rights_app;
GRANT USAGE ON SEQUENCE rights.right_id_seq TO rights_app;
