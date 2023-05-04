SELECT Дата_поставки, Заказчик, Номер_заказа
FROM     ЗАКАЗЫ
WHERE  (Заказчик = N'reStore')
ORDER BY Дата_поставки