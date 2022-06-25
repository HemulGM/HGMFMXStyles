unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Layouts, FMX.Effects, FMX.Filter.Effects;

type
  TForm2 = class(TForm)
    Layout1: TLayout;
    Circle1: TCircle;
    FloatAnimation1: TFloatAnimation;
    Ellipse1: TEllipse;
    FloatAnimation2: TFloatAnimation;
    Ellipse2: TEllipse;
    Ellipse3: TEllipse;
    Ellipse4: TEllipse;
    Layout2: TLayout;
    Layout3: TLayout;
    Ellipse6: TEllipse;
    Ellipse5: TEllipse;
    GlowEffect1: TGlowEffect;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    Ellipse7: TEllipse;
    Layout4: TLayout;
    ColorKeyAnimation1: TColorKeyAnimation;
    ColorKeyAnimation2: TColorKeyAnimation;
    ColorKeyAnimation3: TColorKeyAnimation;
    WaveEffect1: TWaveEffect;
    FloatAnimation5: TFloatAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

end.
