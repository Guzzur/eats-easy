SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'fqrtxpjluhvled' AND pid <> pg_backend_pid();

SELECT 'DROP TABLE ID EXISTS "' || tablename || '" CASCADE;' 
FROM pg_tables
WHERE schemaname = 'public';

DROP SCHEMA public CASCADE;
CREATE SCHEMA public;