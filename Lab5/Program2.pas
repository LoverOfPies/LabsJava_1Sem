program p5_2;
type
  падеж=(им,род,дат,вин,твор,предл);
  слово=(степь,дверь);
var w:слово;
       p:падеж;
       s:string;
       n:1..6;
begin
  writeln('¬ведите номер слова');
  write('1-степь,2-дверь: '); read(n);
  case n of
  1:w:=степь;
  2:w:=дверь
  end;
  s:=w.ToString;
  writeln('¬ведите номер падежа');
  write('1-им, 2-род, 3дат, 4-вин, 5-твор, 6-предл: '); read(n);
  case n of
  1:p:=им;
  2:p:=род;
  3:p:=дат;
  4:p:=вин;
  5:p:=твор;
  6:p:=предл
  end;
  case p of
  им,вин: writeln(s);
  род,дат: writeln(Copy(s,1,Length(s)-1)+'и');
  твор:writeln(s+'ю');
  предл:writeln('о '+Copy(s,1,Length(s)-1)+'и')
  end
end.