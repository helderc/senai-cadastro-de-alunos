unit Unit1;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls,
  StdCtrls, DBCtrls, DB, DBTables, Mask, ExtCtrls, ExtDlgs,
  DBNav97, Grids, DBGrids, BDE, SysUtils, TB97, RXDBCtrl, RXCtrls, RXHints,
  ToolEdit, DBLookup;

type
  Tform1 = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    DBNavigator971: TDBNavigator97;
    PageControl1: TPageControl;
    Formulario: TTabSheet;
    TabSheet2: TTabSheet;
    ToolbarButton971: TToolbarButton97;
    Label12: TLabel;
    Label3: TLabel;
    EditSemestre: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    EditNascimento: TDBEdit;
    EditNome: TDBEdit;
    Label1: TLabel;
    ImageFoto: TDBImage;
    EditNmero: TDBEdit;
    Label6: TLabel;
    EditEndereco: TDBEdit;
    Label5: TLabel;
    EditCidade: TDBEdit;
    Label7: TLabel;
    EditFone: TDBEdit;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    MemoOcorrncias: TDBMemo;
    StatusBar1: TStatusBar;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    RxDBGrid1: TRxDBGrid;
    DBLookupCombo1: TDBLookupCombo;
    DBLookupCombo2: TDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditSemestreEnter(Sender: TObject);
    procedure EditSemestreExit(Sender: TObject);
    procedure MemoOcorrnciasEnter(Sender: TObject);
    procedure MemoOcorrnciasExit(Sender: TObject);
    procedure ImageFotoEnter(Sender: TObject);
    procedure ImageFotoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure Table1AfterInsert(DataSet: TDataSet);
    procedure Table1BeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBLookupCombo1DblClick(Sender: TObject);
    procedure DBLookupCombo2DblClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  form1: Tform1;

implementation

{$R *.DFM}

uses Unit4, DM, Ocupacao, Turmas;

procedure Tform1.FormCreate(Sender: TObject);
begin
   DM1.Table1.open;
   Statusbar1.Panels[0].text:='Total de Registros: '+inttostr(DM1.Table1.RecordCount);
   RxHints.SetHintStyle(hsRoundRect, 0, true, taleftJustify);
end;

procedure Tform1.Button1Click(Sender: TObject);
begin
DBNavigator971.BtnClick(nbEdit);
if OPenPictureDialog1.Execute then ImageFoto.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure Tform1.Button2Click(Sender: TObject);
begin
DBNavigator971.BtnClick(nbEdit);
ImageFoto.Picture.Bitmap.Assign(nil);
end;

procedure Tform1.EditSemestreEnter(Sender: TObject);
begin
if (Sender is TDBEdit) then TDBEdit(Sender).Color:=$00FFFF80;
end;

procedure Tform1.EditSemestreExit(Sender: TObject);
begin
if (Sender is TDBEdit) then TDBEdit(Sender).Color:=ClWindow;
end;

procedure Tform1.MemoOcorrnciasEnter(Sender: TObject);
begin
if (Sender is TDBMemo) then TDBMemo(Sender).Color:=$00FFFF80;
end;

procedure Tform1.MemoOcorrnciasExit(Sender: TObject);
begin
if (Sender is TDBMemo) then TDBMemo(Sender).Color:=ClWindow;
end;

procedure Tform1.ImageFotoEnter(Sender: TObject);
begin
if (Sender is TDBImage) then TDBImage(Sender).Color:=$00FFFF80;
end;

procedure Tform1.ImageFotoExit(Sender: TObject);
begin
if (Sender is TDBImage) then TDBImage(Sender).Color:=ClWindow;
end;

procedure Tform1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Table1.Filtered:=false;
end;

procedure Tform1.ToolbarButton971Click(Sender: TObject);
begin
DM1.Table1.filter:= 'Auto = ' + QuotedStr(Dm1.Table1.FieldValues['Auto']);
Dm1.Table1.Filtered:=true;
QR.Preview
end;

procedure Tform1.Table1AfterInsert(DataSet: TDataSet);
begin
EditSemestre.SetFocus;
end;

procedure Tform1.Table1BeforeInsert(DataSet: TDataSet);
begin
PageControl1.ActivePage:=Formulario;
end;

procedure Tform1.FormShow(Sender: TObject);
begin
DBLookupCombo1.Update;
end;

procedure Tform1.DBLookupCombo1DblClick(Sender: TObject);
begin
Ocupa.Show;
end;

procedure Tform1.DBLookupCombo2DblClick(Sender: TObject);
begin
Turma.show;
end;

end.
