unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo;

type
  TForm1 = class(TForm)
    StyleBook1: TStyleBook;
    Panel1: TPanel;
    Timer1: TTimer;
    Button1: TButton;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure RunScan(StartIP: integer);
    procedure ProcIP(IP: string);
    { Private declarations }
  public    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses
  System.Threading;

{$R *.fmx}

procedure TForm1.ProcIP(IP: string);
begin
  TTask.Run(
    procedure
    var
      curIP: string;
    begin
      curIP := IP;
      sleep(1000);
      if true then
        TThread.Synchronize(nil,
          procedure
          begin
            Memo1.Lines.Add(curIP);
          end);
    end);    
end;

procedure TForm1.RunScan(StartIP: integer);
var
  i: integer;
  IP: string;
begin
  for i := 0 to 254 do
  begin
    IP := i.ToString;
    ProcIP(IP);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  RunScan(40);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Panel1.StylesData['hour.RotationAngle'] := Panel1.StylesData['hour.RotationAngle'].AsExtended + 0.2;
  Panel1.StylesData['min.RotationAngle'] := Panel1.StylesData['min.RotationAngle'].AsExtended + 0.4;
  Panel1.StylesData['sec.RotationAngle'] := Panel1.StylesData['sec.RotationAngle'].AsExtended + 2;

  Panel1.StylesData['hour_text'] := Round(Panel1.StylesData['hour.RotationAngle'].AsExtended / 30).ToString.PadLeft(2, '0') + ':';
  Panel1.StylesData['min_text'] := Round(Panel1.StylesData['min.RotationAngle'].AsExtended / 6).ToString.PadLeft(2, '0') + ':';
  Panel1.StylesData['sec_text'] := Round(Panel1.StylesData['sec.RotationAngle'].AsExtended / 6).ToString.PadLeft(2, '0');
end;

end.

