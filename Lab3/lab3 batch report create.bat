@echo off

set "report_path=C:\Projects UNI\lab3\Labs\PZ-23-2\Shapovalov Vladyslav Serhiyovych\Report.txt"

set "report_content= Вступ: У цій роботі було досліджено та використано основні команди пакетних файлів для автоматизації певних завдань в операційній системі Windows. Мета: Головною метою роботи було ознайомлення з функціональними можливостями пакетних файлів та їх застосування для створення каталогів, копіювання файлів і зміни атрибутів файлів та папок. Методи: Для досягнення поставленої мети використовувалися такі команди пакетних файлів: mkdir: для створення нових каталогів. attrib: для зміни атрибутів файлів та папок. xcopy: для копіювання файлів. Опис виконаних дій: Спочатку за допомогою команди mkdir було створено основну папку під назвою batch. У цій папці були створені дві додаткові папки: Hidden folder та Not hidden folder. Командою attrib було змінено атрибути однієї з підпапок, щоб вона стала прихованою. Копіювання файлу copyhelp.txt було здійснено за допомогою команди xcopy з папки Not hidden folder до папки Hidden folder."

echo %report_content% > "%report_path%"

echo The report was successfully created in the path: %report_path%
