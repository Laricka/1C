
&НаКлиенте
Процедура ТЧ1ПриИзменении(Элемент)
	СтрокаТабличнойЧасти = Элементы.ТЧ1.ТекущиеДанные;
	СтрокаТабличнойЧасти.Стоимость = РаботаСЦенами.Цена(ТекущаяДата(),СтрокаТабличнойЧасти.Издательство);
КонецПроцедуры
 