﻿Функция Цена(Дата, ЭлементНоменклатуры) Экспорт
	Отбор = Новый Структура("Корреспонденция", ЭлементНоменклатуры);
	ЗначениеРесурсов = РегистрыСведений.Цены.ПолучитьПоследнее(Дата,Отбор);
    Возврат ЗначениеРесурсов.Стоимость;	 
КонецФункции

Функция ЗаказНаЦеныПолучить(Дата, ЭлементНоменклатуры) Экспорт
	Отбор = Новый Структура("Корреспонденция", ЭлементНоменклатуры);
	ЗначениеРесурсов = РегистрыСведений.ЗаказныеЦены.ПолучитьПоследнее(Дата,Отбор);
    Возврат ЗначениеРесурсов.Стоимость;	 
КонецФункции         
Функция Ценность(Дата, ЭлементНоменклатуры) Экспорт
	Отбор = Новый Структура("ВидЦенности", ЭлементНоменклатуры);
	ЗначениеРесурсов = РегистрыСведений.ВидЦенности.ПолучитьПоследнее(Дата,Отбор);
    Возврат ЗначениеРесурсов.Стоимость;	 
	КонецФункции