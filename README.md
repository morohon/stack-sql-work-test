# stack-sql-work-test

Тестовое задание по базам данным

# Описание задач

## Задача 1

Написать функцию select_orders_by_item_name. Она получает один аргумент - наименование позиции (строка),
и должна найти все заказы, в которых имеется позиция с данным наименованием. Кроме того, она должна
подсчитать количество позиций с указанным наименованием в каждом отдельном заказе. Результатом вызова
функции должна быть таблица с тремя колонками:

1. order_id (row_id заказа)
2. customer (наименование заказчика)
3. items_count (количество позиций с данным наименованием в этом заказе)

## Задача 2

Написать функцию calculate_total_price_for_orders_group. Она получает row_id группы (либо заказа),
и возвращает суммарную стоимость всех позиций всех заказов в этой группе (заказе), причем 
суммирование должно выполняться по всему поддереву заказов, начинающемуся с данной группы.
Функция должна возвращать число.