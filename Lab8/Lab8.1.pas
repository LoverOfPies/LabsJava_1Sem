program p1;
var c1,c2:char;
    f:boolean; 
begin
writeln('¬ведите последовательность: '); readln(c1);
f:=true;
while (c1<>'.') and (f=true) do begin readln(c2);
 if (c1<c2)or (c2='.')  then c1:=c2
  else f:=false;
end;
writeln(f);
end.