program CadastroDeAlunos;

uses
  Forms,
  Splash in 'Splash.pas' {SplashForm},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {QR: TQuickRep},
  About in 'About.pas' {Sobre},
  Unit1 in 'Unit1.pas' {form1},
  DM in 'DM.pas' {DM1: TDataModule},
  Ocupacao in 'Ocupacao.pas' {ocupa},
  Turmas in 'Turmas.pas' {Turma};

{$R *.RES}

begin
  SplashForm:=tSplashForm.create(application);
  SplashForm.show;
  SplashForm.update;
  Application.Title := 'Cadastro de Alunos v2.0 - www.HelderSoft.cjb.net';
  Application.CreateForm(TForm2, Form2);
  SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(Tocupa, ocupa);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(TTurma, Turma);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(TDM1, DM1);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(TForm3, Form3);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(TQR, QR);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(TSobre, Sobre);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  Application.CreateForm(Tform1, form1);
SplashForm.Gauge1.Progress:=SplashForm.Gauge1.Progress + 10;
SplashForm.Update;
  SplashForm.hide;
  SplashForm.free;
Application.Run;
end.
