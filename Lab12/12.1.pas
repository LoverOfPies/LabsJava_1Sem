program file4;
Type anketa=record
   fam: string[45]; 
   year: string[4]; 
   point: string[5]; 
   end;
var students: array [1..100] of anketa;
    f:text;
    p, i, n: integer;
    s, str: string;

procedure students_year(year_in: string; var str: string);
var i, k : integer;
begin
  for i:=1 to n do
    if (students[i].year=year_in) and (students[i].point[1]='3') then
      k:=k+1;
  str:=' оличество студентов '+year_in+' года рождени€ и баллами от 3 до 4: '+k;
end;

procedure students_fams(var s: string);
var i, k : integer;
    str: string;
begin
  for i:=1 to n do
    begin
    str:=copy(students[i].fam,length(students[i].fam)-1,2);
    if (str='ов') then
      k:=k+1;    
    end;
  s:=' оличество студентов с фамили€ми оканчивающимис€ на -ов: '+k;
end;

function students_points(): integer;
var i, k : integer;
begin
  for i:=1 to n do
    if (students[i].point[1]='0') or (students[i].point[1]='1') or (students[i].point[1]='2') then
      k:=k+1;
  students_points:=k;
end;

function students_young_i(): integer;
var i, err, k : integer;
    years_min: integer;
begin
  years_min:=1;
  students_young_i:=1;
  for i:=1 to n do
    begin
    val(students[i].year, k, err);
    if (k>years_min) then
      begin
      years_min:=k;
      students_young_i:=i;
      end;
    end;
end;

Begin
  assign(f,'students.txt');
  reset(f);
  n:=1;
  while not eof(f) do
    begin
    while not eoln(f) do
      begin
      read(f,s);
      Write(s, ' ');
      s:=s+' ';
      for i:=1 to 3 do
        begin
        p:= pos(' ',s);
        str:=copy(s,1,p-1);
        delete(s,1,p);
          case i of
          1: students[n].fam:=str;
          2: students[n].year:=str;
          3: students[n].point:=str;
          end;
        end;
      n:=n+1;
      end;
    Writeln('');
    readln(f);
    end;
  close(f);
  n:=n-1;
  assign(f,'result.txt');
  rewrite(f);
  students_year('1997', str);
  Writeln(f, str);
  students_fams(str);
  Writeln(f, str);
  Writeln(f, ' оличество студентов с низким баллом: ',students_points());
  Writeln(f, '—амый молодой студент: ',students[students_young_i()].fam,' его баллы: ', students[students_young_i()].point);
  close(f);
End.