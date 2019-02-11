Program lab11_1;
var s, str: string;
    p, i, j, l, f, k: integer;
Begin
  Writeln('Введите строку s=');
  Readln(s);
  p:= pos('.',s);
  delete(s,p,length(s)-p+1);
  for i:=1 to length(s) do
    begin 
    p:=0;
    p:= pos(',',s);
    if p>0 then
      begin
      delete(s,p,1);
      insert(' ',s,p);
      end;
    end;
  for i:=1 to length(s) do
    begin
    p:=0;
    p:= pos(' ',s);
    s:=s+' ';
    str:=copy(s,1,p);
    l:=length(str);
    delete(str,l,1);
    if (str<>' ')and (str<>'') then
      begin
      f:=1;
      j:=1;
      while(j<=l-j+1) do
        begin
          if (str[j]=str[l-j]) and (f=1) then
            f:=1
          else
            f:=0;
          inc(j);
        end;
      if (f=1) then
        inc(k);
      end;
    delete(s,1,p);
    end;
  Writeln('Количество зеркальных слов: ',k);
End.