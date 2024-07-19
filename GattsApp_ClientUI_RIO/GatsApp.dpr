program GatsApp;

uses
  Vcl.Forms,
  GattsAppClient_MainForm in 'GattsAppClient_MainForm.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  GattsAppClient_Styles in 'GattsAppClient_Styles.pas',
  GattsApp_dm in 'GattsApp_dm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

