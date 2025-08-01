﻿Функция ИННВерен(Знач ИНН) Экспорт
	
	МассивИНН = Новый Массив;
	Для Сч = 0 По 9 Цикл
		ЧислоИзИНН = Сред(ИНН,(Сч+1),1);
		МассивИНН.Добавить(ЧислоИзИНН);
	КонецЦикла;

	КонтрольнаяСумма = 0;
	
	КоэффициентыДляПроверки = Новый Массив;
	КоэффициентыДляПроверки.Добавить(2);
	КоэффициентыДляПроверки.Добавить(4);
	КоэффициентыДляПроверки.Добавить(10);
	КоэффициентыДляПроверки.Добавить(3);
	КоэффициентыДляПроверки.Добавить(5);
	КоэффициентыДляПроверки.Добавить(9);
	КоэффициентыДляПроверки.Добавить(4);
	КоэффициентыДляПроверки.Добавить(6);
	КоэффициентыДляПроверки.Добавить(8);
	
	Для Сч = 0 По 8 Цикл
		ПроизведениеДляПроверки = МассивИНН.Получить(Сч) * КоэффициентыДляПроверки.Получить(Сч);
		КонтрольнаяСумма = КонтрольнаяСумма + ПроизведениеДляПроверки; 
	КонецЦикла;	
	
	КонтрольныйРазрядДляПроверки = КонтрольнаяСумма % 11;
	Если КонтрольныйРазрядДляПроверки = 10 Тогда
		КонтрольныйРазрядДляПроверки = 0;
	КонецЕсли;
	
	КонтрольныйРазрядИзИНН = Число(МассивИНН.Получить(9));
	
	Если КонтрольныйРазрядИзИНН = КонтрольныйРазрядДляПроверки Тогда
		ИННВерен = Истина;
	Иначе
		ИННВерен = Ложь;
	КонецЕсли;
	
	Возврат ИННВерен;
	
КонецФункции