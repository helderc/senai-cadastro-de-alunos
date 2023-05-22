unit Unit2;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, TeEngine, ExtCtrls, DBTables, CommCtrl, Buttons, StdCtrls, ToolWin, BDE, SysUtils,
  SpeedBar, AppEvent, Menus, RXCtrls;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ImageList1: TImageList;
    Panel1: TPanel;
    Image1: TImage;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SpeedItem1: TSpeedItem;
    SpeedItem2: TSpeedItem;
    SpeedItem3: TSpeedItem;
    SpeedItem4: TSpeedItem;
    AppEvents1: TAppEvents;
    PopupMenu1: TPopupMenu;
    Alunos1: TMenuItem;
    Turmas1: TMenuItem;
    Ocupaces1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedItem4Click(Sender: TObject);
    procedure SpeedItem2Click(Sender: TObject);
    procedure SpeedItem3Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure Ocupaces1Click(Sender: TObject);
    procedure Turmas1Click(Sender: TObject);
  private
    {}
  public
    { Public declarations }
  end;

var
    Form2: TForm2;

implementation

{$R *.DFM}

uses Unit1, Unit3, About, DM, Ocupacao, Turmas;

function DataExtenso(Data:TDateTime): String;
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  DIA, Mes, Ano : Word;
begin
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terça-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
  Meses [1] := 'Janeiro';
  Meses [2] := 'Fevereiro';
  Meses [3] := 'Março';
  Meses [4] := 'Abril';
  Meses [5] := 'Maio';
  Meses [6] := 'Junho';
  Meses [7] := 'Julho';
  Meses [8] := 'Agosto';
  Meses [9] := 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result := DiaDaSemana[NoDia] + ', ' + IntToStr(Dia) + ' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano);
end;

procedure CompactarTabela(Table:TTable);
var
  TableDesc: CRTblDesc;
  WasActive: Boolean;
  hDataBase: hDbiDB;
begin
  WasActive := Table.Active;
  Screen.Cursor := crHourglass;
try
  if not WasActive then
  begin
  Table.Open;
  hDataBase := Table.DBHandle;
  Table.Close;
  FillChar(TableDesc, SizeOf (CRTblDesc), 0);
  end;
with TableDesc do
begin
  StrPCopy(szTblName, Table.TableName);
  StrPCopy(szTblType, szParadox);
  bPack := True;
end;
if hdataBase<>nil then
  Check(DbiDoRestructure(hDataBase, 1, @TableDesc, nil, nil, nil, False))
//else
//  Application.MessageBox('A tabela não possui dados para compactação','Compactação',0+16);
finally
  Screen.Cursor := crDefault;
if WasActive then Table.Open;
end;
//messagedlg('Compactação finalizada!', mtinformation, [mbok], 0);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
windowstate:=wsMaximized;
Image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName)+'Senai.bmp');
timer1.Enabled:=true;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
Statusbar1.Panels[1].text:=DataExtenso(Date);
StatusBar1.Panels[2].text:=Timetostr(Time);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Table1.Close;
Dm1.Ocupacao.close;
DM1.Turma.close;
compactartabela(DM1.table1);
sleep(1);
compactartabela(DM1.Ocupacao);
sleep(1);
compactartabela(DM1.Turma);
sleep(1);
end;

procedure TForm2.SpeedItem4Click(Sender: TObject);
begin
close;
end;

procedure TForm2.SpeedItem2Click(Sender: TObject);
begin
DM1.Table1.Open;
form3.showmodal;
end;

procedure TForm2.SpeedItem3Click(Sender: TObject);
begin
sobre.showmodal;
end;

procedure TForm2.Alunos1Click(Sender: TObject);
begin
form1.show;
end;

procedure TForm2.Ocupaces1Click(Sender: TObject);
begin
ocupa.Show;
end;

procedure TForm2.Turmas1Click(Sender: TObject);
begin
Turma.Show;
end;

end.
