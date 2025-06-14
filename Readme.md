### Создание бд store
psql -U user -h localhost -d postgres
CREATE DATABASE store;

### Добавление пользователся для миграций
psql -U user -h localhost -d store

CREATE ROLE migration_account WITH LOGIN PASSWORD 'password2';

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migration_account;

GRANT CREATE ON SCHEMA public TO migration_account;

## Запрос
### Показывает, какое количество сосисок было продано за каждый день предыдущей недели:Add commentMore actions
```sql
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created;
```