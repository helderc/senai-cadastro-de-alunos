unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Gauges;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    Label2: TLabel;
    Label4: TLabel;
    Gauge1: TGauge;
    Label1: TLabel;
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}

end.
