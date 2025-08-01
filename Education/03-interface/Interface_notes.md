## Конспект: Блок «Интерфейс» (1С)

Т.к. у команды нет формы, то у нее нет и контекста.

### Исполнение команды начинается НаКлиенте, процедура будет выполнятся там, откуда был вызван метод.
Выполнение команды начинается с процедуры «Обработка команды».

```
ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
```

Для параметризованных команд, у которых заполнено свойство `ТипКоманды`, в первый параметр передается либо ссылка, либо массив ссылок того объекта, который они должны обработать. 

Вторым параметром передается специальный объект `«Параметры выполнения команды»`. Он описывает источник, откуда была вызвана команда.

Служебный параметр (из структуры с параметрами для открытия формы) `«Отбор»` (свойство- имя поля для отбора; значение- конкретное значение отбора);
	
```	
ОтборВСписке = Новый Структура;
ОтборВСписке.Вставить («Контрагент», ПараметрКоманды);
ПараметрыФормы = Новый Структура («Отбор», ОтборВСписке);
```

Структура-в-Структуре

Служебный параметр `«Ключ»` позволяет открыть форму конкретного элемента справочника, документа, записи регистра;
	
```	
СсылкаНаДоговор = ПолучитьСсылку();
ПараметрыФормы = Новый Структура ("Ключ", СсылкаНаДоговор);
```

### Прочие параметры: 
`Значения заполнения` — структура со значениями полей, которые должны быть заполнены при открытии формы нового элемента;

`Значение копирования` — открытие формы нового элемента, в которую скопированы все поля из переданного параметра;

`Режим выбора` — открытие формы в режиме выбора;

### Свойства команды: 
 * Группа
 * Тип параметра команды
 * Режим использования параметра: одиночный/ множественный

Параметры выполнения команды позволяют настроить открытие так, чтобы новая форма открылась в том же окне.

### Команды располагаются в панели навигации раздела, либо в панели действий (Создать, Отчеты, Сервис), либо в командной панели формы.

`Панель навигации` – глобальная панель внутри раздела управляемого интерфейса. Только для непараметризованных команд.

`Панель действий` – подменю, видимое, только если на экране показана панель функций текущего раздела.

`Панель навигации формы` размещает команды в гиперссылках навигации формы.

`Командная панель формы`: команды размещаются наверху формы в панели кнопок. 

