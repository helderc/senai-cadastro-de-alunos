;Helder C. R. de Oliveira
;www.HillRock.cjb.net

[Setup]
AppName=Cadastro de Alunos v2.0
AppVerName=Cadastro de Alunos v2.0
;{sd} é o C:\
;{pf} é o C:\Arquivos de Programas
DefaultDirName={pf}\Cadastro de Alunos
DefaultGroupName=Cadastro de Alunos v2.0
UninstallDisplayIcon={app}\CadastroDeAlunos.exe

[Languages]
Name: "pt"; MessagesFile: "compiler:Languages\PortugueseStd.isl"

[Tasks]
Name: desktopicon; Description: "Criar Icone na Área de Trabalho";

[Files]
Source: "CadastroDeAlunos.exe"; DestDir: "{app}"
Source: "Senai.bmp"; DestDir: "{app}"
Source: "Cabarc.exe"; DestDir: "{app}"
Source: "BackUp.bat"; DestDir: "{app}";
Source: "DBAluno\DBAlunos.db"; DestDir: "{app}\DBAluno";
Source: "DBAluno\DBAlunos.px"; DestDir: "{app}\DBAluno";
Source: "DBAluno\DBAlunos.mb"; DestDir: "{app}\DBAluno";
Source: "DBAluno\DBOcupacao.db"; DestDir: "{app}\DBAluno";
Source: "DBAluno\DBOcupacao.px"; DestDir: "{app}\DBAluno";
Source: "DBAluno\DBTurma.db"; DestDir: "{app}\DBAluno";
Source: "DBAluno\DBTurma.px"; DestDir: "{app}\DBAluno";

[Icons]
Name: "{group}\Cadastro de Alunos"; Filename: "{app}\CadastroDeAlunos.exe"
;Name: "{group}\Criar Backup"; Filename: "{app}\Backup.bat"
Name: "{userdesktop}\Cadastro de Alunos v2.0"; FileName: "{app}\CadastroDeAlunos.exe"; Tasks: desktopicon
Name: "{group}\Desinstalar"; Filename: "{uninstallexe}"
