unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Menus;

type
  TForm1 = class(TForm)
    Bt_1: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Bt_2: TButton;
    Bt_3: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Memo2: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Memo3: TMemo;
    Memo4: TMemo;
    procedure StringGrid1Click(Sender: TObject);
    procedure Bt_1Click(Sender: TObject);
//    procedure StringGrid2ColumnMoved(Sender: TObject; FromIndex,
 //     ToIndex: Integer);
    procedure StringGrid2Click(Sender: TObject);
    procedure Bt_2Click(Sender: TObject);
    procedure Bt_3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ScrollBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type MAS = array of array of integer;
       OD_MAS = array of integer;
var
  Form1: TForm1;
  a: array[0..6] of integer;
  // a : OD_MAS;
   b : OD_MAS;
   c : OD_MAS;
   c1 : OD_MAS;
   leng,  stroka, st : integer;
  //b: array[0..6] of integer;
  //c: array[0..6] of integer;
  //c1: array[0..6] of integer;
   ma : array [0..35,0..2] of integer;
   res : array [0..35,0..35] of integer ;
   mass : array[0..35, 0..35] of integer;

   lef,rig, cen, row_mas, stroka2, iteracia, razdel, rrr, po, iteracia1, koif: integer;
   len: integer;
implementation

{$R *.dfm}

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
  // Caption := С¬ыделена клетка (С + IntToStr(Acol) + С:Т + IntToStr(Arow) + С) С;

  end;
     procedure swap(var x,y:integer);
   var t: Integer;
 begin
    t := x;
    x := y;
    y := t;
 end;

   procedure quickSort(var arr: array of integer; i, j, k, indef: Integer);
var
  r, l, m,t, p, q, e: Integer;
begin

  l := i;
  r := j;
  // if (arr[i] > arr[i+1]) then
   // m := Max(arr[i], arr[i + 1]);
  // m:=arr[i]
  // else
  //   m:=arr[i+1];

    m:=arr[(l+r) div 2];
  repeat
    while (arr[l] < m) do
      Inc(l);
    while (arr[r] > m) do
      Dec(r);
    if l <= r then
    begin
        //printArray(arr);
        // writeln('=========');
        lef:=l;rig:=r;cen:=m;
       if ( indef = 0 ) then
        begin
        for p:=0 to high(arr) do
          Form1.StringGrid1.Cells[p+1,k]:=IntToStr(arr[p]);
        end;
        //else
         // inc(k);

        // for p:=0 to high(arr) do
         //res[koif,p]:=arr[p];

         Swap(arr[l], arr[r]);
        if ( indef <> 0 ) then
          begin
         for p:=0 to high(arr) do
         res[koif,p]:=arr[p];
          inc(koif);

          //inc(k);
         // q:=high(arr)+1;
         // for p:=0 to high(arr) do
        // res[k,q]:=l;inc(q);
        // res[k,q]:=r;inc(q);
         //res[k,q]:=m;
        end;

           inc(k);

      ma[stroka,0] := l;
      ma[stroka,1] := r;
      ma[stroka,2] := m;
      inc(stroka);
      Inc(l);
      Dec(r);
    end;
  until l > r;
  if (i < r) then
   begin
   for e:=i to r do
     mass[st,e]:=arr[e];
    inc(st);
   quickSort(arr, i, r, k, indef);
   //    printArray(arr);
  // writeln('=========');

   end;
  if (l < j) then
   begin
      for e:=l to j do
     mass[st,e]:=arr[e];
        inc(st);
    quickSort(arr, l, j, k, indef);
    // printArray(arr);
    //writeln('=========');


   end;
end;



   procedure quick(var arr: array of integer; i, j, k: Integer);
var
  r, l, m,t, p, x, e: Integer;
  s: string;
begin

  l := i;
  r := j;
  // if (arr[i] > arr[i+1]) then
   // m := Max(arr[i], arr[i + 1]);
  // m:=arr[i]
  // else
  //   m:=arr[i+1];

    m:=arr[(l+r) div 2];
  repeat
    while (arr[l] < m) do
      Inc(l);
    while (arr[r] > m) do
      Dec(r);
    if l <= r then
    begin


       k:=0;
         while ( k <> 1 ) do
           begin


            for x:=0 to 6 do
             if(c[x] = arr[x]) then
              c1[x]:=0
             else
              c1[x]:=1;

           s:='';
        for x:=0 to 6 do
         if (c1[x] = 1) then
        s:=s+ ' ' +IntToStr( x );
        if (s='') then
         begin
       // Form1.Edit3.Text :='все правильно';
         Form1.Memo4.Lines.Text :='все правильно';
         k:=1;
         end
            else
        //Form1.Edit3.Text := s;
          Form1.Memo4.Lines.Text :=s;


           end;

          inc(k);
      Swap(arr[l], arr[r]);
      Inc(l);
      Dec(r);
    end;
  until l > r;
  if (i < r) then
   begin
   quick(arr, i, r, k);
   //    printArray(arr);
  // writeln('=========');
    end;
  if (l < j) then
   begin
   // for e:=l to j do
   //  mass[st,e]:=arr[e];

    quick(arr, l, j, k);
    // printArray(arr);
    //writeln('=========');
   // inc(st);
   end;
end;




procedure TForm1.Bt_1Click(Sender: TObject);
//begin
   var i,j:byte;
   n,m: integer;
begin
Form1.StringGrid1.Visible:=true;
Form1.Memo1.Visible:=true;
//Form1.Edit1.Visible:=true;
//n:=3;
m:=6;
//StringGrid1.ColCount:=n+1;
//StringGrid1.RowCount:=m+2;


//StringGrid2.ColCount:=n+1;
//StringGrid2.RowCount:=m+1;
//StringGrid1.Cells[0,1]:='P(Hi)';

//for i:=2 to n do
//StringGrid1.Cells[i,0]:=IntToStr(i);
  for j:=0 to m do
   StringGrid1.Cells[0,j]:=IntToStr(j);

   //setlength(a,6);
   a[0]:=4;a[1]:=9;a[2]:=7;a[3]:=6;a[4]:=2;a[5]:=3;a[6]:=8;
  quickSort(a,low(a), high(a), 0, 0);
    StringGrid1.Selection := TGridRect(rect(0, 0, 0, 5));
    //StringGrid1.Selection := TGridRect(rect(2, 2, 2, 2));
 // StringGrid1.Selection := TGridRect(rect(0, 0, 0, 0));
end;




//procedure TForm1.StringGrid2ColumnMoved(Sender: TObject; FromIndex,
 // ToIndex: Integer);
 //var j: integer;
 // begin
   //for j:=0 to 6 do
  // StringGrid2.Cells[0,j]:=IntToStr(j);

//end;

 ///procedure TForm1.StringGrid2Click(Sender: TObject);
//begin
  // Caption := С¬ыделена клетка (С + IntToStr(Acol) + С:Т + IntToStr(Arow) + С) С;
  //  for j:=0 to 6 do
  // StringGrid2.Cells[0,j]:=IntToStr(j);

  //end;


procedure TForm1.StringGrid2Click(Sender: TObject);
 var j: integer;
begin
 //   for j:=0 to 6 do
//   Form1.StringGrid2.Cells[j,0]:=IntToStr(j);

end;

procedure TForm1.Bt_2Click(Sender: TObject);
var j, i, p, code: integer;
    s, ss: string;
begin
  po:=1;
    stroka:=0;
    iteracia:=0;
    razdel:=0;
    for i:=0 to high(ma) do
    for j:=0 to high(ma[j]) do
      ma[i,j] :=0;

    for i:=0 to high(mass) do
    for j:=0 to high(mass[j]) do
      mass[i,j] :=0;
     koif:=0;
   st:=0;




   //Form1.Edit2.Text := '';
   //Form1.Edit4.Text := '';
   //Form1.Edit5.Text := '';
   //Form1.Edit6.Text := '';
        s:='';
    s :=Edit1.Text;
    s := concat (s, #32);
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,leng,code);
       delete(s,1,p);
     end;
     if (leng = 0 ) then
        begin
          Memo2.Lines.Text :='';
          Memo2.Lines.Text := ' оличество элементов, не может равн€тс€ нулю';
        end
     else if (leng < 0) then
        begin
         Memo2.Lines.Text :='';
         Memo2.Lines.Text := ' оличество элементов, должно быть положительным числом';
        end
    else if (leng = 1) then
       begin
        Memo2.Lines.Text :='';
        Memo2.Lines.Text := 'ќдин элемент массива ненуждаетс€ в сортировке, задайте больше количество';
       end
   else
       begin


   Form1.StringGrid2.Visible:=true;
  // Form1.Edit2.Visible:=true;
   Form1.Edit4.Visible:=true;
   Form1.Edit5.Visible:=true;
   //Form1.Bt_2.Visible:=true;
   Form1.Edit6.Visible:=true;
   //Form1.Edit3.Visible:=true;
   Form1.Button2.Visible:=true;
   Form1.Button1.Visible:=true;
   Form1.Label3.Visible:=true;
   Form1.Label4.Visible:=true;
   Form1.Label5.Visible:=true;
  //Form1.Bt_3.Visible:=true;
   Form1.Edit1.Visible:=false;
   Form1.Memo2.Visible:=false;
   Form1.Memo4.Visible:=true;
    randomize;
    //  StringGrid2.ColCount:=n+1;
    //  StringGrid2.RowCount:=10;
       setlength(b,leng);

       Form1.StringGrid2.ColCount:=leng;
       Form1.StringGrid2.Width:= Form1.StringGrid2.ColCount*25 +5;
          row_mas:=0;

    for j:=0 to high(b) do
       begin
        Form1.StringGrid2.Cells[j,0]:=IntToStr(j);
       end;

      inc(row_mas);



     // b[0]:=10;b[1]:=5;b[2]:=14;b[3]:=12;b[4]:=11;b[5]:=8;b[6]:=6;
      for j:=0 to high(b) do
       begin
        b[j]:=random(20)+1;
        Form1.StringGrid2.Cells[j,1]:=IntToStr(b[j]);
       end;
       quickSort(b,low(b), high(b), 0, 1);

     //Form1.StringGrid2.RowCount:=10;

       //for i:=0 to 10 do
       //for j:=0 to 7 do
       //begin
       // Form1.StringGrid1.Cells[j,i]:=IntToStr(res[i,j]);
         //Form1.StringGrid1.Cells[j,i]:=IntToStr(mass[i,j]);
      //end;


     end;
     //StringGrid1.Selection := TGridRect(rect(3, 3, 3, 3));

  end;
procedure TForm1.Bt_3Click(Sender: TObject);
var s, ss: string;
    i, p, k, code, j, x, l, r, center: integer;
begin
  s:='';
    //s :=Edit2.Text;
    s := concat (s, #32);
    i := 0;
    setlength(c,leng);
    while Length(s) > 0 do
     begin
      //i := i+1;
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,k,code);
        c[i] := k;
        inc(i);
       delete(s,1,p);
     end;
      //quick(b,low(b), high(b), 0);
    s:='';
    s :=Edit4.Text;
    s := concat (s, #32);
    i := 0;
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,l,code);
       delete(s,1,p);
     end;
         s:='';
    s :=Edit5.Text;
    s := concat (s, #32);
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,r,code);
       delete(s,1,p);
     end;
         s:='';
    s :=Edit6.Text;
    s := concat (s, #32);
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,center,code);
       delete(s,1,p);
     end;
      // s:=Edit4.Text;
      // Val (s,r,code);
      // s:='';
       //s:=Edit5.Text;
       //Val (s,center,code);
            setlength(c1, leng);
            for i:=0 to leng do
             if(c[i] = res[row_mas,i]) then
              c1[i]:=0
             else
              c1[i]:=1;

           s:='';
        for x:=0 to leng-1 do
         if (c1[x] = 1) then
         s:=s+ ' ' +IntToStr( x );
       //   inc(x);
          if (l <>  res[row_mas,x])  then
            s:=s+' неправильно лево'+IntToStr( l )+IntToStr( res[row_mas,x]);
          inc(x);
          if (r <>  res[row_mas,x])  then
            s:=s+' неправильно право'+IntToStr( r )+IntToStr( res[row_mas,x]);
          inc(x);
          if (center <>  res[row_mas,x])  then
            s:=s+' неправильно center '+IntToStr( center )+IntToStr( res[row_mas,x] );

        if (s='') then
         begin
         Form1.Memo4.Lines.Text :='все правильно';
       // Form1.Edit3.Text :='все правильно';
         k:=1;  inc(row_mas);
         Form1.StringGrid2.RowCount:=row_mas+1;
          for p:=0 to high(c) do
         Form1.StringGrid2.Cells[p,row_mas]:=IntToStr(c[p]);
         end
            else
         //begin
       // Form1.Edit3.Text := s;
        Form1.Memo4.Lines.Text :=s;
  //   for j:=0 to 6 do
  //     begin
       // b[j]:=random(10)+1;
    //    Form1.StringGrid2.Cells[j,0]:=IntToStr(c[j]);
    //   end;


  //     for i:=0 to 6 do
   //    for j:=0 to 6 do
   //    begin
    //    Form1.StringGrid1.Cells[j,i]:=IntToStr(res[i,j]);
    //  end;

end;

procedure TForm1.Edit1Change(Sender: TObject);
// s : string;
 begin
  //  s:='';
   // s :=Edit1.Text;
    //s := concat (s, #32);
    //while Length(s) > 0 do
   //  begin
    //   p := pos (#32,s);
    //   ss := copy (s,1,p-1);
    //   Val (ss,r,code);
    //   delete(s,1,p);
    /// end;

end;

procedure TForm1.Button1Click(Sender: TObject);
 var s, ss: string;
    i, p, k, code, j, x, l, r, center: integer;
begin

     s:='';
    s :=Edit4.Text;
    s := concat (s, #32);
    i := 0;
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,l,code);
       delete(s,1,p);
     end;
         s:='';
    s :=Edit5.Text;
    s := concat (s, #32);
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,r,code);
       delete(s,1,p);
     end;
         s:='';
    s :=Edit6.Text;
    s := concat (s, #32);
    while Length(s) > 0 do
     begin
       p := pos (#32,s);
       ss := copy (s,1,p-1);
       Val (ss,center,code);
       delete(s,1,p);
     end;


         // setlength(c1, leng);
          //  for i:=0 to leng do
          //   if(c[i] = res[row_mas,i]) then
           //   c1[i]:=0
           //  else
           //   c1[i]:=1;

          // s:='';
        //for x:=0 to leng do
        // if (c1[x] = 1) then
        //  s:=s+ ' ' +IntToStr( x );

          if (l <>  ma[stroka2,0])  then
            s:=s+' неправильно указана лева€ позици€ ¬аша позици€а: '+IntToStr( l )+' необходима€ позици€ = ' +IntToStr( ma[stroka2,0]);
          //inc(x);
          if (r <>  ma[stroka2,1])  then
            s:=s+' неправильно указана права€ позици€ ¬аше значение: '+IntToStr( r )+' необходима€ позици€ = ' +IntToStr( ma[stroka2,1]);
          //inc(x);
          if (center <>  ma[stroka2,2])  then
            s:=s+' неправильно указано значение опорного елемента ¬аше значение: '+IntToStr( center )+' необходима€ позици€ = ' +IntToStr( ma[stroka2,2] );
           //inc(stroka2);
        if (s='') then
         begin
         inc(stroka2);
       // Form1.Edit3.Text :='все правильно';
        Form1.Memo4.Lines.Text :='все правильно';
        Form1.Edit4.Text :='';
        Form1.Edit5.Text :='';
        Form1.Edit6.Text :='';
         k:=1;  inc(row_mas);
         Form1.StringGrid2.RowCount:=row_mas+1;

         if(rrr <> 1) then
          begin
          for p:=0 to high(res[iteracia]) do
            Form1.StringGrid2.Cells[p,row_mas]:=IntToStr(res[iteracia,p]);
            inc(iteracia);
            //inc(po);
            iteracia1:=iteracia-1;
           end
           else
            begin
                 for p:=0 to high(mass[razdel-1]) do
                  if(mass[razdel-1,p] <> 0) then
                   Form1.StringGrid2.Cells[p,row_mas]:=IntToStr(res[iteracia,p]);
                   //inc(razdel);
                   inc(iteracia);

            end;

         end
            else
         begin
       // Form1.Edit3.Text := s;
        Memo4.Lines.Text :='';
        Memo4.Lines.Text :=s;
         end;
 end;

procedure TForm1.Button2Click(Sender: TObject);
 var i,p, flag: integer;
begin


      flag:=0;
      for i:=0 to high(b) do
        if (mass[razdel, i] <> 0) then
        //res[0,4]
       if ( res[razdel+1, i] <> mass[razdel, i]) then
           flag:=1;
       if (flag<>1) then
        begin
       // iteracia1:=iteracia-1;
        rrr:=1;
        inc(row_mas);
         Form1.StringGrid2.RowCount:=row_mas+1;

         for p:=0 to high(mass[razdel]) do
          if(mass[razdel,p] <> 0) then
         Form1.StringGrid2.Cells[p,row_mas]:=IntToStr(mass[razdel, p]);

        //inc(iteracia);
         inc(razdel);
        // inc(po);
         end
        else
          begin
           Memo4.Lines.Text :='';
           Memo4.Lines.Text :='–ано';
          // Form1.Edit3.Text :='–ано';
          end;
      end;
procedure TForm1.ScrollBox1Click(Sender: TObject);
begin
      //Form1.ScrollBox1 :='111';
end;

end.
