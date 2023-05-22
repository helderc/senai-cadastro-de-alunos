unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, RxLookup;

type
  TForm3 = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    cmbOcupa: TRxDBLookupCombo;
    cmbTurma: TRxDBLookupCombo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
   opcao: string;
implementation

{$R *.DFM}

uses unit1, DM;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
if opcao = 'Cidade' then DM1.Table1.filter:= opcao+' = ' + QuotedStr(Edit1.Text);
if opcao = 'Nome' then DM1.Table1.filter:= opcao+' = ' + QuotedStr(Edit1.Text);
if opcao = 'Ocupacao' then DM1.Table1.filter:=opcao+' = '+ QuotedStr(cmbOcupa.text);
if opcao = 'Turma' then DM1.Table1.filter:=opcao+' = '+ QuotedStr(cmbTurma.text);
DM1.Table1.Filtered:=true;
form1.show;
close;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
if combobox1.items[combobox1.itemindex] = 'Ocupação' then
   begin
   opcao:='Ocupacao';
   cmbOcupa.Visible:=True;
   edit1.Visible:=false;
   cmbTurma.visible:=false;
   end;
if combobox1.items[combobox1.itemindex] = 'Nome' then
   begin
   opcao:='Nome';
   Edit1.Visible:=true;
   cmbOcupa.visible:=false;
   cmbTurma.Visible:=false;
   end;
if combobox1.items[combobox1.itemindex] = 'Cidade' then
   begin
   opcao:='Cidade';
   Edit1.Visible:=true;
   cmbOcupa.visible:=false;
   cmbTurma.visible:=false;
   end;
if combobox1.items[combobox1.itemindex] = 'Turma' then
   begin
   opcao:='Turma';
   cmbTurma.Visible:=True;
   edit1.Visible:=false;
   cmbOcupa.visible:=false;
   end;
end;


end.
