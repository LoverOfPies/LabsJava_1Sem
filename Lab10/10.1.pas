program Lab10_1;
const  
 glasn=['e','y','u','i','o','a']; 
 soglas=['q','w','r','t','p','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m'];
var st: string;
    a, i, g: integer;
Begin
  write('������� ������ s=');
  readln(st);
  g:=0; a:=0; 
  for i:= 1 to length(st) do
  begin
    if st[i] in glasn then 
      inc(g) 
    else if st[i] in soglas then  
      inc(a); 
  end;
  if g > a then writeln('������� ������') 
  else if g < a then writeln('��������� ������') 
  else writeln('��������� ������� �� ������� �������');  
end.