begin
  var year := ReadInteger('Введите номер года:');
  Assert(year > 0);
  Print($'Этот год является високосным: {year.Divs(4) and not year.Divs(100) or year.Divs(400)}');
end.