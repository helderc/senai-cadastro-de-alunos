unit Turmas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBNav97, Grids, DBGrids, Mask, DBCtrls;

type
  TTurma = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator971: TDBNavigator97;
    btnSair: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Turma: TTurma;

implementation

{$R *.DFM}

uses DM;

procedure TTurma.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TTurma.DBEdit1Exit(Sender: TObject);
begin
btnSair.SetFocus;
end;

end.
