program file4;
var nums : array[1..100, 1..100] of integer;
    f:text;
    a, fl, n, i, j:integer;
    max, max_i, max_j: integer;
Begin
  assign(f,'chisla.txt');
  reset(f);
  fl:=0;
  i:=0;
  max:=0;
  max_i:=0;
  max_j:=0;
  while not eof(f) do
    begin
    j:=1;
    while not eoln(f) do
      begin
      read(f,a);
      Write(a, ' ');
      if (fl=1) then
        begin
        nums[i,j]:=a;
        if (max<a) then
          begin
          max:=a;
          max_i:=i;
          max_j:=j;
          end;
        j:=j+1;
        end;
      if (fl=0) then
        begin
        fl:=1;
        n:=a;
        end;    
      end;
    i:=i+1;
    Writeln('');
    readln(f);
    end;
  close(f);
  Writeln('');
  for i:=1 to n do
    for j:=1 to n do
      begin
      if (j=max_j) then
        begin
        a:=nums[i,j];
        nums[i,j]:=nums[j,i];
        nums[j,i]:=a;
        end;
      end;
  for i:=1 to n do
    begin
    for j:=1 to n do
      Write(' '+nums[i,j]);
    Writeln('');
    end;     
End.