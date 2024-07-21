unit GattsAppClient_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, GattsAppClient_Styles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  SplashScreen, pngimage;

type
  TGattsAppMainForm = class(TForm)
    userPanel: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cbStyles: TComboBox;
    bApplyStyle: TButton;
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
    procedure FormCreate(Sender: TObject);
    procedure bApplyStyleClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bConnClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private

    splash: TSplash;
  public
    StrMessage: String;
  end;

var
  GattsAppMainForm: TGattsAppMainForm;
  AppStyles: TAppStyles;

implementation

uses
  GattsApp_dm, JSON, GattsApp_SplashScreenStartup;

{$R *.dfm}

procedure TGattsAppMainForm.FormCreate(Sender: TObject);
var
  name: string;
  png: TPNGImage;
begin
  png := TPNGImage.Create;
  try
    png.LoadFromFile('./res/gatChat.png');
    splash := TSplash.Create(png);
    splash.Show(false);
    Sleep(2000);
    splash.Close;
  finally
    png.Free;
  end;

  AppStyles := TAppStyles.Create;
  cbStyles.Text := AppStyles.GetDefaultStyle;
  for name in AppStyles.GetStylesStrings do
    cbStyles.Items.add(name);

  Self.Caption := '��� �������� ��� �������� ����������';
end;

procedure TGattsAppMainForm.FormDestroy(Sender: TObject);
begin
  splash.Free;
  AppStyles.Free;
end;

procedure TGattsAppMainForm.FormShow(Sender: TObject);
begin
  bConn.SetFocus;
end;

procedure TGattsAppMainForm.bConnClick(Sender: TObject);
begin
  // 127.0.0.1 is the standard IP address to loop back to your own machine
  Memo1.Text := '';
  if (dm.ClientSocket1.Socket.Connected = false) then
  begin
    dm.ClientSocket1.Address := '127.0.0.1';
    dm.ClientSocket1.Port := 8080;
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

procedure TGattsAppMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    bSend.Click;
end;

procedure TGattsAppMainForm.bApplyStyleClick(Sender: TObject);
begin
  AppStyles.ApplyStyle(cbStyles.Text);
end;

end.
