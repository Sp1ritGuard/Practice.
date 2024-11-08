1. Створив ролі та призначив їм привілеї:
CREATE ROLE admin_role;
CREATE ROLE developer_role;
CREATE ROLE analyst_role;

2. Створив користувачів з паролями та призначив їм відповідні ролі:
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'Admin@2024';
CREATE USER 'dev_user'@'localhost' IDENTIFIED BY 'Dev@2024';
CREATE USER 'analyst_user'@'localhost' IDENTIFIED BY 'Analyst@2024';
CREATE USER 'guest_user'@'localhost' IDENTIFIED BY 'Guest@2024';

3. Призначення ролей користувачам
GRANT 'admin_role' TO 'admin_user'@'localhost';
GRANT 'developer_role' TO 'dev_user'@'localhost';
GRANT 'analyst_role' TO 'analyst_user'@'localhost';

4. Надав користувачу guest_user права на читання таблиці targets
GRANT SELECT ON spiritguard.targets TO 'guest_user'@'localhost';
REVOKE CREATE ON `spiritguard` FROM 'dev_user'@'localhost';

5. Управління доступом на рівні таблиць та стовпців
GRANT SELECT(`column1`, `column2`) ON `spiritguard`.units TO 'analyst_user'@'localhost';
