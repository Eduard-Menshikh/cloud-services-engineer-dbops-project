### Создание бд store
psql -U user -h localhost -d postgres
CREATE DATABASE store;

### Добавление пользователся для миграций
CREATE ROLE migration_account WITH LOGIN PASSWORD 'password2';

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migration_account;

GRANT CREATE ON SCHEMA public TO migration_account;
