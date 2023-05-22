{ QuickReport master detail template }

unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQR = class(TQuickRep)
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    procedure QRAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR: TQR;

implementation

{$R *.DFM}

uses Unit1, DM;

procedure TQR.QRAfterPreview(Sender: TObject);
begin
DM1.Table1.Filtered:=false;
end;

end.
