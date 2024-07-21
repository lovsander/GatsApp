program GatsApp;

uses
  Vcl.Forms,
  GattsAppClient_MainForm in 'GattsAppClient_MainForm.pas' {GattsAppMainForm},
  Vcl.Themes,
  Vcl.Styles,
  GattsAppClient_Styles in 'GattsAppClient_Styles.pas',
  GattsApp_dm in 'GattsApp_dm.pas' {DM: TDataModule},
  GattsApp_SplashScreenStartup in 'GattsApp_SplashScreenStartup.pas' {SplashScreenStartup},
  dxGDIPlusClasses in 'dxGDIPlusClasses.pas',
  SplashScreen in 'SplashScreen.pas',
  GattsApp_SettingsForm in 'GattsApp_SettingsForm.pas' {SettingsForm},
  GattaApp_ServerInfo in 'GattaApp_ServerInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TGattsAppMainForm, GattsAppMainForm);
  Application.CreateForm(TSettingsForm, SettingsForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

