program p61;
var k, j: integer;
       i: char;
begin
  j := 1;
  for i := 'a' to 'z' do begin
    if odd(ord(i)) then writeln(i)
    else begin 
      inc(j);
      for k := 1 to j do 
      write(i);
      writeln;
    end;
  end;  
end.