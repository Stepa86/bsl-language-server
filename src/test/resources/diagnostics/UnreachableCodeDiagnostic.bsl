Процедура Пример1()
    Для каждого Строка Из Строки Цикл
        Если Условие Тогда
            Продолжить; // <-- Ошибка нет
        КонецЕсли;
    КонецЦикла;
КонецПроцедуры

Процедура Пример1()
    Для каждого Строка Из Строки Цикл
        Если Условие Тогда
            Продолжить;
            Метод();    // <-- Ошибка: после продолжить
        КонецЕсли;
    КонецЦикла;
КонецПроцедуры

Процедура Пример2()
    Для каждого Строка Из Строки Цикл
        Если Условие Тогда
            Возврат;
            Метод();    // <-- Ошибка: после Возврат
        КонецЕсли;
    КонецЦикла;
КонецПроцедуры

Процедура Пример3()
    Для каждого Строка Из Строки Цикл
        Если Условие2 Тогда
            Прервать;
            Метод();    // <-- Ошибка: после Прервать
        КонецЕсли;
    КонецЦикла;
КонецПроцедуры

Процедура Пример4()
    Возврат;
    Для каждого Строка Из Строки Цикл   // <-- Ошибка: после Возврат
        Если Условие2 Тогда
            Метод();
        КонецЕсли;
    КонецЦикла;
КонецПроцедуры

Функция Пример5()
    Возврат 1;
    Возврат 2; // <-- Ошибка: после Возврат
    Для каждого Строка Из Строки Цикл  // <-- Ошибка нет: второй Возврат не ловим
        Если Условие2 Тогда
            Метод();
        КонецЕсли;
    КонецЦикла;
КонецФункции

Функция Пример6()
    Для каждого Строка Из Строки Цикл
        Если Условие2 Тогда
            ВызватьИсключение "Ошибка";
            Метод();    // <-- Ошибка: После ВызватьИсключение
        КонецЕсли;
    КонецЦикла;
КонецФункции

Функция Пример7()
    Для каждого Строка Из Строки Цикл
        Если Условие2 Тогда
            ВызватьИсключение "Ошибка";
            Метод();    // <-- Ошибка: После ВызватьИсключение
            Прервать;   // не анализируем
            Метод2();   // ошибки нет, относится к блоку выше
        КонецЕсли;
    КонецЦикла;
КонецФункции

Если Условие2 Тогда
    ВызватьИсключение "Ошибка";
    Метод();    // <-- Ошибка: После ВызватьИсключение
    Возврат;   // не анализируем
    Метод2();   // ошибки нет, относится к блоку выше
КонецЕсли;

Возврат;
Метод2();   // Ошибка: После Возврат