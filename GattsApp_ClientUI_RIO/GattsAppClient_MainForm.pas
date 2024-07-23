unit GattsAppClient_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  SplashScreen;

type
  TGattsAppMainForm = class(TForm)
    userPanel: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    Panel9: TPanel;
    BitBtn5: TBitBtn;
    Memo1: TMemo;
    Panel10: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    bSend: TButton;
    bConn: TButton;
    bSettings: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bConnClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bSettingsClick(Sender: TObject);
  private
    splash: TSplash;
  public
    StrMessage: String;
  end;

var
  GattsAppMainForm: TGattsAppMainForm;

implementation

uses
  GattsApp_dm, JSON, GattsApp_SplashScreenStartup, GattsApp_SettingsForm;

{$R *.dfm}

procedure TGattsAppMainForm.FormCreate(Sender: TObject);
begin
  Self.Caption := 'Чат собраний для судебных работников';
  splash := TSplash.Create;
  splash.Image.LoadFromFile('./res/gatChat.png');
  splash.Show(false);
  Sleep(2000);
end;

procedure TGattsAppMainForm.FormDestroy(Sender: TObject);
begin
  splash.Free;
end;

procedure TGattsAppMainForm.FormShow(Sender: TObject);
begin
  splash.Close;
  bConn.SetFocus;
end;

procedure TGattsAppMainForm.bConnClick(Sender: TObject);
begin
  // 127.0.0.1 is the standard IP address to loop back to your own machine
  Memo1.Text := '';
  if (dm.ClientSocket1.Socket.Connected = false) then
  begin
    Memo1.Text := ServerInfo.Address + ':' + IntToStr(ServerInfo.Port)
      + #13#10;;
    dm.ClientSocket1.Address := ServerInfo.Address;
    dm.ClientSocket1.Port := ServerInfo.Port;
    dm.ClientSocket1.Open;
  end
  else
  begin
    dm.ClientSocket1.Active := false;
  end;
end;

procedure TGattsAppMainForm.bSendClick(Sender: TObject);
var
  JsonObject: TJSONObject;
begin
  JsonObject := TJSONObject.Create;
  try
    JsonObject.AddPair('user', userPanel.Caption);
    JsonObject.AddPair('message', Edit1.Text);
    StrMessage := JsonObject.ToString;
    // Memo1.Text := Memo1.Text + 'Client: ' + StrMessage + #13#10;
    dm.ClientSocket1.Socket.SendText(AnsiToUtf8(StrMessage));
  finally
    JsonObject.Free;
    Edit1.Text := '';
  end;
end;

procedure TGattsAppMainForm.bSettingsClick(Sender: TObject);
begin
  SettingsForm.ShowModal;
end;

procedure TGattsAppMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    bSend.Click;
end;

end.
