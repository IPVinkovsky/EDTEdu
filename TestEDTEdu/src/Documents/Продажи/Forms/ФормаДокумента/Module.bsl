
#Область ОбработчикиСобытийЭлементовТаблицыФормыТовары

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	ИдентификаторСтроки = Элементы.Товары.ТекущаяСтрока;
	ПересчитатьСуммуДокумента(ИдентификаторСтроки)
КонецПроцедуры

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	ИдентификаторСтроки = Элементы.Товары.ТекущаяСтрока;
	ПересчитатьСуммуДокумента(ИдентификаторСтроки)
КонецПроцедуры

#КонецОбласти


#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура ПересчитатьСуммуДокумента(ИдентификаторСтроки)
	СтрокаТЧ = Объект.Товары.НайтиПоИдентификатору(ИдентификаторСтроки);
	СтрокаТЧ.Сумма = СтрокаТЧ.Цена*СтрокаТЧ.Количество;
КонецПроцедуры


#КонецОбласти
