﻿begin
  var year := ReadInteger('Введите номер года:');
  Assert(year > 0);
  Println($'Этот год является високосным: {year.Divs(4) and not year.Divs(100) or year.Divs(400)}');
  var (date1, month1) := ReadInteger2('Введите день и месяц первой даты:');
  var (date2, month2) := ReadInteger2('Введите день и месяц второй даты:');
  if month1 > month2 then
    Println(1)
  else
  if (month1 = month2) and (date1 > date2) then
    Println(1)
  else
    Println(2);
  Println($'Количество дней в году: {if year.Divs(4) and not year.Divs(100) or year.Divs(400) then 366 else 365}');
  var (year1, year2) := ReadInteger2('Введите 2 номера года:');
  Assert(year1 > 0);
  Assert(year2 > 0);
  var cnt := 0;
  for var i := year1 to year2 - 1 do
    if i.Divs(4) and not i.Divs(100) or i.Divs(400) then
      cnt += 366
    else
      cnt += 365;
  Println($'Количество дней между годами: {cnt}');
  var hour := ReadInteger('Введите количество часов:');
  Println($'Количество секунд в введенных часах: {3600 * hour}');
end.