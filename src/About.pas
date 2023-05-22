unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ShellAPI;

type
  TSobre = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure CommentsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sobre: TSobre;

implementation

{$R *.DFM}

procedure TSobre.OKButtonClick(Sender: TObject);
begin
close;
end;

procedure TSobre.CommentsClick(Sender: TObject);
begin
ShellExecute(GetDesktopWindow, 'open', 'www.heldersoft.cjb.net', nil, nil, 0);
end;

end.
 
