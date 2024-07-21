unit GattsApp_SettingsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  GattsAppClient_Styles, GattaApp_ServerInfo;

type
  TSettingsForm = class(TForm)
    GroupBox1: TGroupBox;
    meAddrSrv: TMaskEdit;
    mePortSrv: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    cbStyles: TComboBox;
    bApplyStyle: TButton;
    bClose: TButton;
    bApplyAddrSrv: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bApplyStyleClick(Sender: TObject);
    procedure bApplyAddrSrvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsForm: TSettingsForm;
  AppStyles: TAppStyles;
  ServerInfo: TServerInfo;

implementation

{$R *.dfm}

procedure TSettingsForm.bApplyAddrSrvClick(Sender: TObject);
var
s,cleared:string;
begin
  // need to remove spaces after editmask
  for s in meAddrSrv.Text do
  begin
        if s <> ' ' then
         cleared:=cleared+s;
  end;
  ServerInfo.Address := cleared;
  ServerInfo.Port := StrToInt(mePortSrv.Text);
end;

procedure TSettingsForm.bApplyStyleClick(Sender: TObject);
begin
  AppStyles.ApplyStyle(cbStyles.Text);
end;

procedure TSettingsForm.FormCreate(Sender: TObject);
var
  name: string;
begin
  AppStyles := TAppStyles.Create;
  cbStyles.Text := AppStyles.GetDefaultStyle;
  for name in AppStyles.GetStylesStrings do
    cbStyles.Items.add(name);

  ServerInfo := TServerInfo.Create;
  meAddrSrv.Text := ServerInfo.Address;
  mePortSrv.Text := IntToStr(ServerInfo.Port);
end;

procedure TSettingsForm.FormDestroy(Sender: TObject);
begin
  AppStyles.Free;
  ServerInfo.Free;
end;

end.
