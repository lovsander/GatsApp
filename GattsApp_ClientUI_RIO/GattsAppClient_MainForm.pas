unit GattsAppClient_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, GattsAppClient_Styles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cbStyles: TComboBox;
    bApplyStyle: TButton;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    Panel7: TPanel;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    Panel9: TPanel;
    BitBtn5: TBitBtn;
    Memo1: TMemo;
    Panel10: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    bConn: TButton;
    bSend: TButton;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure bApplyStyleClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bConnClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
  private

  public
    StrMessage: String;
  end;

var
  Form1: TForm1;
  AppStyles: TAppStyles;

implementation

uses
  GattsApp_dm;

{$R *.dfm}

procedure TForm1.bConnClick(Sender: TObject);
begin
  // 127.0.0.1 is the standard IP address to loop back to your own machine

  if (dm.ClientSocket1.Socket.Connected = False) then
  begin
    dm.ClientSocket1.Address := '127.0.0.1';
    dm.ClientSocket1.Port:=8080;
    //dm.ClientSocket1.Active := True; // Activates the client
    dm.ClientSocket1.Open;
  end
  else
  begin
    dm.ClientSocket1.Active := False; // Disconnects the client
  end;
end;

procedure TForm1.bSendClick(Sender: TObject);
begin
  StrMessage := Edit1.Text;
  Memo1.Text := Memo1.Text + 'me: ' + StrMessage + #13#10;
  Edit1.Text := ''; // Clears the edit box
  dm.ClientSocket1.Socket.SendText(StrMessage);
  // Send the messages to the server
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  name: string;
begin
  AppStyles := TAppStyles.Create;
  cbStyles.Text := AppStyles.GetDefaultStyle;
  for name in AppStyles.GetStylesStrings do
    cbStyles.Items.add(name);
end;

procedure TForm1.bApplyStyleClick(Sender: TObject);
begin
  AppStyles.ApplyStyle(cbStyles.Text);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  AppStyles.Free;
end;

end.
