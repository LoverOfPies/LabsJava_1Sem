program p5_2;
type
  �����=(��,���,���,���,����,�����);
  �����=(�����,�����);
var w:�����;
       p:�����;
       s:string;
       n:1..6;
begin
  writeln('������� ����� �����');
  write('1-�����,2-�����: '); read(n);
  case n of
  1:w:=�����;
  2:w:=�����
  end;
  s:=w.ToString;
  writeln('������� ����� ������');
  write('1-��, 2-���, 3���, 4-���, 5-����, 6-�����: '); read(n);
  case n of
  1:p:=��;
  2:p:=���;
  3:p:=���;
  4:p:=���;
  5:p:=����;
  6:p:=�����
  end;
  case p of
  ��,���: writeln(s);
  ���,���: writeln(Copy(s,1,Length(s)-1)+'�');
  ����:writeln(s+'�');
  �����:writeln('� '+Copy(s,1,Length(s)-1)+'�')
  end
end.