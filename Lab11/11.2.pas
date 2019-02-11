program Lab11_2;
type str=string[100];
var st,st2:str;
    i,j,n,k:integer;
begin
writeln('¬ведите сроку: '); readln(st);
for i:=1 to length(st) do 
 if st[i] in ['0'..'9'] then 
  st[i]:='*';
j:=1;
readln(st2);
n:=length(st2);
while j<>0 do begin
 j:=pos(st2,st);  
  if j<>0 then begin
   Delete(st,j,n);
   insert('#',st,j);
  end;
end;
writeln(st);
end.