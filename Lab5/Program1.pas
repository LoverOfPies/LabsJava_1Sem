program p5_1;
type 
 voz=1..99;
var x:integer;
      k:voz;
begin
 write('Ââåäèòå âîçğàñò: '); readln(k);
 if (k>10) and (k<15) then writeln ('Ìíå ',k,' ëåò')
  else 
   begin
    x:=k mod 10;
   case (k mod 10) of
   1 : writeln ('Ìíå ',k,' ãîä');
   2, 3, 4 : writeln ('Ìíå ',k,' ãîäà');
   0, 5, 6, 7, 8, 9 : writeln ('Ìíå ',k,' ëåò'); 
 end;
 end;
end.