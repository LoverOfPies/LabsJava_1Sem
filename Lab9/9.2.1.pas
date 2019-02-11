Program Lab9_1_1;
const simb : array [1..26] of char = ('U','F','Q','B','M','X','I','T','E','P','A','L','W','H','S','D','O',
                                    'Z','K','V','G','R','C','N','Y','J');
var mas: array [1..100] of char;
    nums: array [1..26] of integer;
    c: char;
    i, j, n: integer;
Begin
  Writeln('Введите количество символов:');
  Readln(n);
  for i:=1 to n do
    begin
    Writeln('Введите ',i,'-й символ:');
    Readln(c);
    c:=UpCase(c);
    mas[i]:=c;
    end;
  for j:=1 to 26 do
    nums[j]:=0;
  for j:=1 to 26 do
    for i:=1 to n do
      if (simb[j]=mas[i]) then
        nums[j]:=nums[j]+1;
  for j:=1 to 26 do
    Writeln(simb[j],'=',nums[j]);
End.