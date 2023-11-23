﻿#language: ru

@tree

// Указываем то, сценарий экспортный
@ExportScenarios

// Для экспортных сценариев исключаем из основной сборки, чтобы выполнение не задваивалось
@IgnoreOnCIMainBuild	

Функционал: Создание документа Поступления товаров (Экспорт)

Как Менеджер по закупкам я хочу
создание документа поступления товаров
чтобы поставить товар на учёт

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документа поступления товаров (Экспорт)
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения	
	И Я открываю основную форму обработки "ЖурналДокументовЗакупки"
	И открылось окно 'Документы закупки (все)'
	И в таблице "СписокДокументыЗакупки" я нажимаю на кнопку с именем 'Создать_ДокументЧерезФормуВыбора'
	И открылось окно 'Создание документа по хозяйственной операции'
	И я нажимаю на кнопку с именем 'ФормаВыбратьСоздать'
	И открылось окно 'Приобретение товаров и услуг (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Партнер" я выбираю точное значение 'АБСОЛЮТНАЯ ЭНЕРГИЯ АО'
	И я нажимаю кнопку выбора у поля с именем "Договор"
	И открылось окно 'Договоры с контрагентами'
	И в таблице "Список" я перехожу к строке:
		| 'Валюта взаиморасчетов' | 'Действует с' | 'Рабочее наименование'                                                                                                         | 'Статус'    |
		| 'RUB'                   | '04.01.2023'  | 'Основной договор с поставщиком                                                                       (перенос остатков) УТ10' | 'Действует' |
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокВыбрать'
	И элемент формы с именем "Договор" стал равен 'Основной договор с поставщиком                                                                       (перенос остатков) УТ10'
	И открылось окно 'Приобретение товаров и услуг (создание) *'
* Заполнение товарной части
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатураПартнера"
	И открылось окно 'Номенклатура поставщика'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул'     | 'Владелец'              | 'Код'         | 'Наименование'                                                                           | 'Ссылка'                                                                                 |
		| 'УТ000012006' | 'АБСОЛЮТНАЯ ЭНЕРГИЯ АО' | '00-00000035' | 'Фонарь GB-501  ЭРА Налобный "Blackjack" [3Вт COB , 3хААА, 3 режима, карт] (12/48/1152)' | 'Фонарь GB-501  ЭРА Налобный "Blackjack" [3Вт COB , 3хААА, 3 режима, карт] (12/48/1152)' |
	И в таблице "Список" я выбираю текущую строку
	И открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '10,000'
	И я перехожу к следующему реквизиту
	И я перехожу к следующему реквизиту
	И в таблице "Товары" из выпадающего списка с именем "ТоварыВидЦеныПоставщика" я выбираю точное значение 'АБСОЛЮТНАЯ ЭНЕРГИЯ, АО'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '50,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатураПартнера"
	И открылось окно 'Номенклатура поставщика'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул'     | 'Владелец'              | 'Код'         | 'Наименование'                                | 'Ссылка'                                      |
		| 'УТ000035710' | 'АБСОЛЮТНАЯ ЭНЕРГИЯ АО' | '00-00000052' | 'ЭРА наст.светильник N-212-E27-40W-R красный' | 'ЭРА наст.светильник N-212-E27-40W-R красный' |
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокВыбрать'
	И открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '10,000'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатураПартнера"
	И открылось окно 'Номенклатура поставщика'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул'     | 'Владелец'              | 'Код'         | 'Наименование'                       | 'Ссылка'                             |
		| 'УТ000000395' | 'АБСОЛЮТНАЯ ЭНЕРГИЯ АО' | '00-00000040' | 'Элем.пит. Космос LR03 4*BL CLASSIC' | 'Элем.пит. Космос LR03 4*BL CLASSIC' |
	И в таблице "Список" я выбираю текущую строку
	И открылось окно 'Приобретение товаров и услуг (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '10,000'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку "Записать"
* Проверка заполнения табличной части
	И таблица "Товары" содержит строки:
		| 'N' | 'Упаковка' | 'Номер ГТД'             | 'Цена'   | 'Сумма взаиморасчетов' | 'Цена в заказе' | 'Номенклатура поставщика'                                                                | 'Номенклатура'                                                                                   | 'Назначение' | '% руч.' | 'Количество' | 'Вид цены'               | 'Сумма с НДС' | 'Статья расходов' | 'Заказ поставщику' | 'Ставка НДС' | 'Номер паспорта' | 'Склад'  | 'Подразделение-получатель'  | 'Сумма руч.' | 'Сделка' | 'Списать на расходы' | 'Сумма'    | 'Аналитика расходов' | 'Страна происхождения'  | 'Наименование вх.' | 'Номер вх.' | 'НДС'    | 'Сертификат' | 'Дата вх.' |
		| '1' | 'шт.'      | '<ГТД не используются>' | '*'  | '500'                  | ''              | 'Фонарь GB-501  ЭРА Налобный "Blackjack" [3Вт COB , 3хААА, 3 режима, карт] (12/48/1152)' | 'Фонарь налобный ЭРА GB-501 Блэкджек (3Вт, 7LED, 95 лм, 3 реж.работы, IP40, 3xAAA, чёрный)'      | ''           | ''       | '10,000'     | 'АБСОЛЮТНАЯ ЭНЕРГИЯ, АО' | '500'         | ''                | ''                 | '20%'        | ''               | 'РЦ_ЛТК' | '<при списании на расходы>' | ''           | ''       | 'Нет'                | '500,00'   | ''                   | '<ГТД не используются>' | ''                 | ''          | '83,33'  | ''           | ''         |
		| '2' | 'шт.'      | '<ГТД не используются>' | '284,70' | '2 847'                | ''              | 'ЭРА наст.светильник N-212-E27-40W-R красный'                                            | 'Светильник настольный на прищепке ЭРА N-212-E27-40W-R (до 40 Вт, E27, металл/пластик, красный)' | ''           | ''       | '10,000'     | 'АБСОЛЮТНАЯ ЭНЕРГИЯ, АО' | '2 847'       | ''                | ''                 | '20%'        | ''               | 'РЦ_ЛТК' | '<при списании на расходы>' | ''           | ''       | 'Нет'                | '2 847,00' | ''                   | '<ГТД не используются>' | ''                 | ''          | '474,50' | ''           | ''         |
		| '3' | 'шт.'      | '<ГТД не используются>' | '73,00'  | '730'                  | ''              | 'Элем.пит. Космос LR03 4*BL CLASSIC'                                                     | 'Батарейка AAA Космос Classic LR03-4BL (1.5В, алкалиновая, 4шт/уп)'                              | ''           | ''       | '10,000'     | 'АБСОЛЮТНАЯ ЭНЕРГИЯ, АО' | '730'         | ''                | ''                 | '20%'        | ''               | 'РЦ_ЛТК' | '<при списании на расходы>' | ''           | ''       | 'Нет'                | '730,00'   | ''                   | '<ГТД не используются>' | ''                 | ''          | '121,67' | ''           | ''         |
	
		
*Номер 
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Приобретение товаров и услуг (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "СписокДокументыЗакупки" содержит строки:
		| 'Номер' |
		| '$Номер$'   |

//Пример добавление сценанрия в библиотеку
@ТипШага: Проверка номенклатуры
@Описание: Проверяем номенклатуру планшета
@ПримерИспользования: и проверка наличия в справочнике номенклатуры Фонарь GB-501  ЭРА Налобный Blackjack [3Вт COB , 3хААА, 3 режима, карт] (12/48/1152)
Сценарий: проверка наличия в справочнике номенклатуры Фонарь GB-501  ЭРА Налобный Blackjack [3Вт COB , 3хААА, 3 режима, карт] (12/48/1152)

	И Я открываю основную форму списка справочника "Номенклатура"
	И таблица "СписокРасширенныйПоискНоменклатура" содержит строки:
	| 'Наименование' |
		| ' 7" IRBIS TG79'   |
	
		
