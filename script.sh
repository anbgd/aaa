#!/bin/bash

#побайтово сравнивает два файла, выводит различающиеся
cmp -b 4.txt 5.txt
#4.txt
#a
#b
#c
#d
#e

#5.txt
#a
#b
#c
#d
#e

#сравнивает строки и выводит результат в столбцак: строки, найденные только в файле файл1; строки, найденные только в файле файл2; и строки, общие для обоих файлов
comm 6.txt 7.txt

#выводит количество слов и строк
wc -lw 1.txt 2.txt 3.txt 4.txt 6.txt 7.txt

#Выводит "Heeeeey" вертикально
echo "Heeeeey" | dd cbs=1 conv=unblock 2> /dev/null

#выводит разницу между файлами, tee записывает ее в файл p.diff, далее patch переносит разницу в 3.txt 
diff -u 3.txt 2.txt | tee p.diff && patch -i p.diff -o result.txt 3.txt && cat result.txt

#ищет все слова "не" в файле
grep -w "Не" 8.txt

#cоединяет строки с одинаковыми полями
join 9.txt 10.txt

#выводится в восьмеричном формате, 2 строки сверху, 1 строка снизу в обычвном виде
od 2.txt | head -2  && tail -1 2.txt

#файл сортируетсыя, -с выводит кол-во повторящихся строк, удаляются одинаковые строки, сортируются в порядке убывания
sort 11.txt | uniq -c | sort -nr 

#удаляет все цифры
tr -d 0-9 <12.txt

#выводит 5й б в строке
cut -b 5 1.txt

#меняет положение строк со столбцами
paste -s 1.txt

#копирует файл и разбивает его на отдельные файлы(в каждый выходной файл 8 байт)
split -b 8 1.txt

#разбивает поток аргументов на отдельные составляющие и отправляет его как аргументы в команду echo, запуская для каждой группы из одного параметра отдельный процесс
xargs -n 1 echo < 1.txt

#Устанавливает дату последнего изменения и доступа в 8:40:00 6 июля 2000 г
touch -d '2000-07-06 8:40:00' dateofbirth.my && ls -l dateofbirth.my

#объем каждого файла и итоговый размер занимаемый текущим каталогом
du -ach