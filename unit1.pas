unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  k,startx, starty,przesx,przesy,x,y, krok: integer;
begin
  krok:=1;
  Canvas.Brush.Color:=clWhite;
  Canvas.Rectangle(0,0,Width,Height);
  startx:=round(Width/2);
  starty:=round(Height/2);
  przesx:=startx;
  przesy:=starty;
  if(Canvas.Pixels[startx,starty]=clWhite) then
  begin
       Canvas.Brush.Color:=clBlack;
       Canvas.Rectangle(startx,starty,startx+10,starty+10);
       startx:=startx+10;
  end;
  if(Canvas.Pixels[startx,starty]=clBlack) then
  begin
       Canvas.Brush.Color:=clWhite;
       Canvas.Rectangle(startx,starty,startx+10,starty+10);
       startx:=startx-10;
  end;
  for k:=0 to 1000000 do
  begin
  end;
  while((startx>=0) and (startx<=(Width-10)) and (starty>=0)and(starty<=(Height-10))) do
       begin
            if((przesx-startx)=0) then     //jesli poszla w gore lub w dol
                begin
                if((przesy-starty)<=0) then    //jesli poszla w dol
                    begin
                    przesx:=startx;
                    przesy:=starty;
                    x:=round((2*startx+10)/2);
                    y:=round((2*starty+10)/2);
                    if(Canvas.Pixels[x,y]=clWhite) then
                        begin
                        Canvas.Brush.Color:=clBlack;
                        Canvas.Rectangle(startx,starty,startx+10,starty+10);
                        startx:=startx-10;
                        end
                    else
                    if(Canvas.Pixels[x,y]=clBlack) then
                        begin
                        Canvas.Brush.Color:=clWhite;
                        Canvas.Rectangle(startx,starty,startx+10,starty+10);
                        startx:=startx+10;
                        end
                    else
                    end
                else
                if((przesy-starty)>0) then//jesli poszla w gore
                    begin
                    przesx:=startx;
                    przesy:=starty;
                    x:=round((2*startx+10)/2);
                    y:=round((2*starty+10)/2);
                    if(Canvas.Pixels[x,y]=clWhite) then
                       begin
                       Canvas.Brush.Color:=clBlack;
                       Canvas.Rectangle(startx,starty,startx+10,starty+10);
                       startx:=startx+10;
                       end
                    else
                    if(Canvas.Pixels[x,y]=clBlack) then
                       begin
                       Canvas.Brush.Color:=clWhite;
                       Canvas.Rectangle(startx,starty,startx+10,starty+10);
                       startx:=startx-10;
                       end
                    else
                    end
                else
  end
  else   //jesli poszla w prawo lub lewo
  begin
     if((przesx-startx)<=0) then       //jesli poszla w prawo
     begin
              przesx:=startx;
              przesy:=starty;
              x:=round((2*startx+10)/2);
              y:=round((2*starty+10)/2);
              if(Canvas.Pixels[x,y]=clWhite) then
                 begin
                 Canvas.Brush.Color:=clBlack;
                 Canvas.Rectangle(startx,starty,startx+10,starty+10);
                 starty:=starty+10;
                 end
              else
              if(Canvas.Pixels[x,y]=clBlack) then
                 begin
                 Canvas.Brush.Color:=clWhite;
                 Canvas.Rectangle(startx,starty,startx+10,starty+10);
                 starty:=starty-10;
                 end
              else
     end
     else                    //jesli poszla w lewo
        begin
              przesx:=startx;
              przesy:=starty;
              x:=round((2*startx+10)/2);
              y:=round((2*starty+10)/2);
              if(Canvas.Pixels[x,y]=clWhite) then
                 begin
                 Canvas.Brush.Color:=clBlack;
                 Canvas.Rectangle(startx,starty,startx+10,starty+10);
                 starty:=starty-10;
                 end
              else
              if(Canvas.Pixels[x,y]=clBlack) then
                 begin
                 Canvas.Brush.Color:=clWhite;
                 Canvas.Rectangle(startx,starty,startx+10,starty+10);
                 starty:=starty+10;
                 end
              else
        end
  end;
  for k:=0 to 1000000 do
  begin
  end;
  krok:=krok+1;
end;
end;

end.

