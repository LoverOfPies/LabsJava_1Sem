Program Var21;
// Блок глобальных переменных.
var a:array[1..10,1..10] of integer;
    m,n:byte; //переменные для задания размерности матрицы
    k: integer; //число для задания условия задачи
    i,j: byte; //переменные для задания индексов матрицы
    num: integer; //количество подматриц
    
//Вывод подматрицы на экран
procedure Print_matrix(q, e: integer);
var i2, j2: integer; //переменные для задания индексов подматрицы
begin
  for i2:=i to q do
  begin
    for j2:=j to e do
      write(a[i2,j2]+' ');
    writeln(' ');
  end; 
end;

//Подсчет суммы элементов подматрицы
procedure Summa_matrix(q, e: integer; var sum: integer);
var i2, j2: integer; //переменные для задания индексов подматрицы
begin
  sum:=0;
  for i2:=i to q do
  begin
    for j2:=j to e do
      sum:=sum+a[i2, j2];
  end;
end;

//Процедура обработки поиска подматрицы
procedure Search_matrix();
var sum: integer; //переменная суммы элементов подматрицы
    q, e: integer; //переменные для задания строки и столбца подматрицы
    f: byte; //переменная флага
begin
  //задание изначальной размерности 2 на 2 и обнуление флага
  q:=i+1; 
  e:=j+1;
  f:=0;
  
  for q:=i+1 to n do //цикл по строкам
  begin
    while (f=0) and (e<=m) do //цикл по столбцам
    begin
      Summa_matrix(q, e, sum); //подсчет суммы
      f:=1;
      if (sum<k) then
      begin
        Print_matrix(q, e); //вывод подматрицы соответствующей условию
        writeln(' ');
        f:=0;
        num:=num+1;
      end;
      e:=e+1;
      sum:=0;
    end;
    e:=j+1;
  end;
end;

//Текст программы
Begin
  randomize;
  
  //Ввод значений массива соответствующих условию
  while (n>10) and (m> 10) or (n<=1) and (m <= 1) do
  begin 
    try 
      writeln('Введите размерность матрицы');readln(n,m);
    except
      writeln('Значения размерности должны быть целого типа и в диапозоне от 2 до 10');
      n:=1;
      m:=1;
    end;
  end;

  k:=-1;
  
  //Ввод значения для нахождения матриц 
  while (k<=1) or (k>=100) do
  begin 
    try 
      write('Введите число от 1 до 100 k='); readln(k);
    except
      writeln('Значения числа должны быть целого типа и в диапозоне от 1 до 100');
      k:=-1;
    end;
  end;
  
  //Генерация и вывод элементов исходной матрицы.
  for i:=1 to n do
  begin
    for j:=1 to m do
    begin
      a[i,j]:= random(10);
      write(a[i,j]+' ');
    end;
    writeln('');
  end;
  
  writeln('');
  num:=0;
  
  //Цикл по каждому элементу матрицы
  for i:=1 to n-1 do
    for j:=1 to m-1 do
      Search_matrix();
  
  if (num<=0) then
    writeln('Нет подматриц соответствующих данному условию');
End.
