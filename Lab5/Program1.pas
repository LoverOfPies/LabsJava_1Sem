program p5_1;
type 
 voz=1..99;
var x:integer;
      k:voz;
begin
 write('������� �������: '); readln(k);
 if (k>10) and (k<15) then writeln ('��� ',k,' ���')
  else 
   begin
    x:=k mod 10;
   case (k mod 10) of
   1 : writeln ('��� ',k,' ���');
   2, 3, 4 : writeln ('��� ',k,' ����');
   0, 5, 6, 7, 8, 9 : writeln ('��� ',k,' ���'); 
 end;
 end;
end.