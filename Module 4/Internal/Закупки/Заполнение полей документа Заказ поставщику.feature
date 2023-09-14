﻿#language: ru

@tree

Функционал: проверка заполнения полей документа Заказ поставщику

Как Менеджер по закупкам я хочу
проверить заполнение полей документа Заказ поставщику
чтобы зафиксировать данные по заказу товара у поставщика   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _1001 подготовительный (заполнение полей документа Заказ поставщику)
	Когда экспорт основных данных

Сценарий: _1002 проверка заполнения полей документа Заказ поставщику
	* Заполнение документа
		Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля с именем "Partner"
		И в таблице "List" я перехожу к строке
			| 'Наименование'               |
			| 'Поставщик 1 (1 соглашение)' |
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Заказ поставщику (создание) *'
		И я нажимаю на кнопку с именем 'FormWrite'
	* Проверка заполнения полей при выборе Партнера	
		Тогда элемент формы с именем "Partner" стал равен 'Поставщик 1 (1 соглашение)'
		Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с поставщиком 1'
	* Проверка заполнения полей при перевыборе Партнера 
		И я нажимаю кнопку выбора у поля с именем "Partner"
		Тогда открылось окно 'Партнеры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование' |
			| '4'   | 'Поставщик 2'  |
		И в таблице "List" я активизирую поле с именем "Description"
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы с именем "Partner" стал равен 'Поставщик 2'
		Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с поставщиком 2'	
	* Проверка заполнения полей при очистке Партнера
		И я нажимаю кнопку очистить у поля с именем "Partner"
		Тогда элемент формы с именем "Partner" стал равен ''
		Тогда элемент формы с именем "Agreement" стал равен ''
	* Проверка доступности поля Контрагент
		И Проверяю шаги на Исключение:
			|'И из выпадающего списка с именем "LegalName" я выбираю по строке 'поставщик 2''|
	* Проверка заполнения полей после того, как документ закрыт
		И я удаляю переменную 'Номер'
		И я запоминаю значение поля "Номер" как "$Номер$"
		И я закрываю все окна клиентского приложения
		И я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
		И в таблице "List" я перехожу к строке:
			| 'Номер'   |
			| '$Номер$' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на гиперссылку с именем "DecorationGroupTitleCollapsedPicture"
		Тогда элемент формы с именем "Partner" стал равен 'Поставщик 1 (1 соглашение)'
		Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с поставщиком 1'
	* Проведение документа
		И я нажимаю на кнопку с именем 'FormPostAndClose'
		И я жду закрытия окна 'Заказ поставщику * от *' в течение 20 секунд
										
				
				
		

				
		
						
				
				
				
						
				
		