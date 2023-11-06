﻿#language: ru

@tree

Функционал: проверка прав для роли Продавец

Как Продавец я хочу
создавать документ Продажа и просматривать документ Заказ 
чтобы фиксировать факт продажи товара покупателю  

Контекст:
 	И я закрываю TestClient "Администратор"
 	И я закрываю TestClient "Продавец"
 	 	
Сценарий: _1401 подготовительный (проверка прав для роли Продавец)
*Подключение клиента тестирования под ролью Администратор
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя'           | 'Тип клиента' | 'Порт'  | 'Строка соединения'                                                            | 'Логин'         | 'Дополнительные параметры строки запуска' |
		| 'Администратор' | 'Тонкий'      | '48001' | 'File="C:\Обучение\Информационные базы\Тестовая база Управляемое приложение";' | 'Администратор' |                                           |
*Проверка видимо
	Когда Загрузка констант, справочников и документов
	И я выполняю код встроенного языка на сервере
		|'Документы.ПриходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000002").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000003").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000004").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000005").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
	И я выполняю код встроенного языка на сервере
		|'Документы.РасходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000002").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000003").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000004").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000005").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
	И я выполняю код встроенного языка на сервере
		|'Документы.Заказ.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		
Сценарий: _1402 проверка прав на создание документа РасходТовара для роли Продавец
*Подключение клиента тестирования под ролью Продавец
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя'      | 'Тип клиента' | 'Порт'  | 'Строка соединения'                                                            | 'Логин'    | 'Дополнительные параметры строки запуска' |
		| 'Продавец' | 'Тонкий'      | '48001' | 'File="C:\Обучение\Информационные базы\Тестовая база Управляемое приложение";' | 'Продавец' |                                           |
*Создание документа РасходТовара
	И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
*Заполнение документа РасходТовара
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'              |
		| '000000014' | 'Магазин "Бытовая техника"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' |
		| 'Н657'    | '000000040' | 'Sony К3456P'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '9 000,00'
	И в таблице "Товары" я завершаю редактирование строки
*Проведение документа РасходТовара
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я удаляю переменную 'НомерДокумента'
	И я запоминаю значение поля "Номер" как "$НомерДокумента$"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
*Проверка создания документа РасходТовара
	И таблица "Список" содержит строки:
		| 'Номер'            |
		| '$НомерДокумента$' |
	
Сценарий: _1403 проверка прав на открытие существующего документа Заказ для роли Продавец	
*Подключение клиента тестирования под ролью Продавец
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий		
*Проверка видимости документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'     |
		| '000000001' |
	И в таблице "Список" я выбираю текущую строку	
	И Я закрываю окно 'Заказ * от *'

Сценарий: _1404 проверка отсутствия прав на создание документа Заказ для роли Продавец
*Подключение клиента тестирования под ролью Продавец
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий		
*Проверка прав на создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	Когда Проверяю шаги на Исключение:
			|'И я нажимаю на кнопку с именем 'ФормаСоздать''|
	Когда Проверяю шаги на Исключение:
			|'И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздать' на элементе формы с именем "Список"'|
	
Сценарий: _1405 проверка отсутствия прав на проведение документа Заказ для роли Продавец
*Подключение клиента тестирования под ролью Продавец
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий		
*Проверка возможности проведения документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'     |
		| '000000001' |
	Когда Проверяю шаги на Исключение:	
		|'И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем "Список"'|
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
	Когда Проверяю шаги на Исключение:
		|'И я нажимаю на кнопку с именем 'ФормаПровести''|
	Когда Проверяю шаги на Исключение:
		|'И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть''|
	И я закрываю все окна клиентского приложения
	