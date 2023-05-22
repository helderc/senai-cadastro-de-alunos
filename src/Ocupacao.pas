unit Ocupacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Mask, RxLookup, Grids, DBGrids, DBNav97;

type
  Tocupa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnSair: TButton;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator971: TDBNavigator97;
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ocupa: Tocupa;

implementation

{$R *.DFM}

uses DM;

procedure Tocupa.btnSairClick(Sender: TObject);
begin
close;
end;

procedure Tocupa.DBEdit1Exit(Sender: TObject);
begin
btnSair.SetFocus;
end;

end.
