# Задание для модуля 2

## Устанавливаем PostgreSQL на локальный компьютер. Загрузка данных в БД. Запросы к БД

**Запросы для загрузки данных**

- [x] [2.3. table_orders.sql](https://github.com/a2say/DE-101/blob/main/Module02/2.3.%20table_orders.sql)
- [x] [2.3. table_people.sql](https://github.com/a2say/DE-101/blob/main/Module02/2.3.%20table_people.sql)
- [x] [2.3. table_returns.sql](https://github.com/a2say/DE-101/blob/main/Module02/2.3.%20table_returns.sql)

**Делаем SQL запросы к БД**

- [x] [2.3. query.sql](https://github.com/a2say/DE-101/blob/main/Module02/2.3.%20query.sql)

## Рисуем модель данных в SQLdbm для создания новой БД

**Концептуальная модель**

![Концептуальная модель](https://github.com/a2say/DE-101/blob/main/Module02/2.4.%20Conceptual_model.png)

**Логическая модель**

![Логическая модель](https://github.com/a2say/DE-101/blob/main/Module02/2.4.%20Logical%20model.png)

**Физическая модель**

![Физическая модель](https://github.com/a2say/DE-101/blob/main/Module02/2.4.%20Physical%20model.png)

## Создаём БД в AWS RDS и загружаем данные

- [x] Создаем учетную запись в AWS.
- [x] Используя сервис AWS RDS создаём БД PostgreSQL и настраиваем к ней доступ.
- [x] Подключаемся к новой БД через SQL клиент (DBeaver) и загружаем данные из модуля 2.3 (Superstore dataset):
  - [x] В staging (схема БД stg) — [stg.orders.sql](https://github.com/a2say/DE-101/blob/main/Module02/stg.orders.sql)
  - [x] В Business Layer (схема БД dw) — [from_stg_to_dw.sql](https://github.com/a2say/DE-101/blob/main/Module02/from_stg_to_dw.sql)

## Google Data Studio: подключение к БД в AWS RDS и создание дашборда

[Дашборд в Data Studio](https://datastudio.google.com/reporting/ef9fef9b-5892-434d-8f2c-3214bc23d2be)
