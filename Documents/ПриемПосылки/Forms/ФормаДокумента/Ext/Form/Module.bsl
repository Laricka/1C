
&НаСервере
Функция ТЧ1ПриИзмененииНаСервере(СпособДоставки,Вес)

	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	ВесПосылки.Стоимость * СпособДоставки.Стоимость КАК Стоимость
		|ИЗ
		|	РегистрСведений.СпособДоставки КАК СпособДоставки,
		|	РегистрСведений.ВесПосылки КАК ВесПосылки
		|ГДЕ
		|	СпособДоставки.Способ = &Способ
		|	И ВесПосылки.Вес = &Вес";
	
	Запрос.УстановитьПараметр("Способ", СпособДоставки);
	Запрос.УстановитьПараметр("Вес", Вес);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Если ВыборкаДетальныеЗаписи.Следующий() Тогда 
		Возврат ВыборкаДетальныеЗаписи.Стоимость;
	КонецЕсли;
КонецФункции

&НаКлиенте
Процедура ТЧ1СпособДоставкиПриИзменении(Элемент)
	ТекСтрока = Элементы.ТЧ1.ТекущиеДанные;
	Стоимость = ТЧ1ПриИзмененииНаСервере(ТекСтрока.СпособДоставки,ТекСтрока.Вес);
	ТекСтрока.Стоимость = Стоимость;
КонецПроцедуры
