unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Grid, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Calendar, Vcl.ComCtrls, Winapi.Windows,
  Fmx.Platform.Win, fmx.Calendar.Style, FMX.Layouts, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    StyleBook1: TStyleBook;
    Calendar2: TCalendar;
    Calendar1: TCalendar;
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  Form2: TForm2;


implementation

{$R *.fmx}

end.

