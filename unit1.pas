unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
var
  input, inputr, input_initial: string;
  input_length: integer;
begin
  input_length:=0;
  input:='bob growns up at his mom';
  input_initial:=input;
  inputr:='';
  input_length:=length(input);
  showmessage(IntToStr(input_length));
  while  input_length > 0 do
  begin
  inputr:=inputr+copy(input, input_length, 1);
  input:=copy(input, 1, input_length-1);
  input_length:=input_length-1;
  end;
  //label2.caption:=inputr;
  //label3.caption:=input;
  //Label1.Caption:=IntToStr(input_length);
  //Label4.Caption:=input_initial;
  if inputr=input_initial then
  begin
  showmessage('yes, this word is a polindrom');
  end;

  if inputr<>input_initial then
  begin
    showmessage('not , this word is not a polindrom');
  end;
end;

end.
