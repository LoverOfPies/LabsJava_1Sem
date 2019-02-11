Program Var21;
// ���� ���������� ����������.
var a:array[1..10,1..10] of integer;
    m,n:byte; //���������� ��� ������� ����������� �������
    k: integer; //����� ��� ������� ������� ������
    i,j: byte; //���������� ��� ������� �������� �������
    num: integer; //���������� ���������
    
//����� ���������� �� �����
procedure Print_matrix(q, e: integer);
var i2, j2: integer; //���������� ��� ������� �������� ����������
begin
  for i2:=i to q do
  begin
    for j2:=j to e do
      write(a[i2,j2]+' ');
    writeln(' ');
  end; 
end;

//������� ����� ��������� ����������
procedure Summa_matrix(q, e: integer; var sum: integer);
var i2, j2: integer; //���������� ��� ������� �������� ����������
begin
  sum:=0;
  for i2:=i to q do
  begin
    for j2:=j to e do
      sum:=sum+a[i2, j2];
  end;
end;

//��������� ��������� ������ ����������
procedure Search_matrix();
var sum: integer; //���������� ����� ��������� ����������
    q, e: integer; //���������� ��� ������� ������ � ������� ����������
    f: byte; //���������� �����
begin
  //������� ����������� ����������� 2 �� 2 � ��������� �����
  q:=i+1; 
  e:=j+1;
  f:=0;
  
  for q:=i+1 to n do //���� �� �������
  begin
    while (f=0) and (e<=m) do //���� �� ��������
    begin
      Summa_matrix(q, e, sum); //������� �����
      f:=1;
      if (sum<k) then
      begin
        Print_matrix(q, e); //����� ���������� ��������������� �������
        writeln(' ');
        f:=0;
        num:=num+1;
      end;
      e:=e+1;
      sum:=0;
    end;
    e:=j+1;
  end;
end;

//����� ���������
Begin
  randomize;
  
  //���� �������� ������� ��������������� �������
  while (n>10) and (m> 10) or (n<=1) and (m <= 1) do
  begin 
    try 
      writeln('������� ����������� �������');readln(n,m);
    except
      writeln('�������� ����������� ������ ���� ������ ���� � � ��������� �� 2 �� 10');
      n:=1;
      m:=1;
    end;
  end;

  k:=-1;
  
  //���� �������� ��� ���������� ������ 
  while (k<=1) or (k>=100) do
  begin 
    try 
      write('������� ����� �� 1 �� 100 k='); readln(k);
    except
      writeln('�������� ����� ������ ���� ������ ���� � � ��������� �� 1 �� 100');
      k:=-1;
    end;
  end;
  
  //��������� � ����� ��������� �������� �������.
  for i:=1 to n do
  begin
    for j:=1 to m do
    begin
      a[i,j]:= random(10);
      write(a[i,j]+' ');
    end;
    writeln('');
  end;
  
  writeln('');
  num:=0;
  
  //���� �� ������� �������� �������
  for i:=1 to n-1 do
    for j:=1 to m-1 do
      Search_matrix();
  
  if (num<=0) then
    writeln('��� ��������� ��������������� ������� �������');
End.
