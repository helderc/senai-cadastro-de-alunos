unit DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM1 = class(TDataModule)
    DataSource1: TDataSource;
    Table1: TTable;
    DataSource2: TDataSource;
    Ocupacao: TTable;
    DataSource3: TDataSource;
    Turma: TTable;
    OcupacaoOcupao: TStringField;
    TurmaTurma: TStringField;
    Table1Nome: TStringField;
    Table1Auto: TAutoIncField;
    Table1Bairro: TStringField;
    Table1Foto: TGraphicField;
    Table1Semestre: TStringField;
    Table1Nascimento: TDateField;
    Table1Endereco: TStringField;
    Table1Nmero: TFloatField;
    Table1Cidade: TStringField;
    Table1Fone: TStringField;
    Table1Ocupacao: TStringField;
    Table1Turma: TStringField;
    Table1Ocorrncias: TMemoField;
    procedure DM1Create(Sender: TObject);
    procedure Table1BeforeCancel(DataSet: TDataSet);
    procedure Table1BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.DFM}
 
procedure TDM1.DM1Create(Sender: TObject);
begin
Table1.open;
Ocupacao.Open;
Turma.open;
end;

procedure TDM1.Table1BeforeCancel(DataSet: TDataSet);
begin
if MessageBox(Application.Handle, Pchar ('Deseja desfazer as alterações?'), 'Alterações', MB_YESNO+MB_ICONEXCLAMATION) = 7 then Abort;
end;

procedure TDM1.Table1BeforeDelete(DataSet: TDataSet);
begin
if MessageBox(Application.Handle, Pchar ('Excluir o registro atual?'), 'Excluir', MB_YESNO+MB_ICONEXCLAMATION) = 7 then Abort;
end;

end.
