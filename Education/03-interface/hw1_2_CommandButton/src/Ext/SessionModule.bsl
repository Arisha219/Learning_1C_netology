﻿Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	ПараметрыСеанса.ВремяНачалаСеанса = ТекущаяДатаСеанса();

	ПолноеИмяПользователя = ПользователиИнформационнойБазы.ТекущийПользователь().ПолноеИмя;
	ПользовательИзСправочника = Справочники.Сотрудники.НайтиПоНаименованию(ПолноеИмяПользователя);
	ПараметрыСеанса.СотрудникТекущегоПользователя = ПользовательИзСправочника; 
КонецПроцедуры

