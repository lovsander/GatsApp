unit GattsApp_dm;

interface

uses
  System.SysUtils, System.Classes, OverbyteIcsWndControl, OverbyteIcsWSocket,
  System.Win.ScktComp, Vcl.ExtCtrls;

type
  TDM = class(TDataModule)
    ClientSocket1: TClientSocket;
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Connecting(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses GattsAppClient_MainForm;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM.ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  with GattsAppMainForm do
  begin
    bSend.Enabled := true;
    Edit1.Enabled := true;
    bConn.Caption := 'Disconnect';
    Edit1.Text:='';
    bSend.Click;
  end;
end;

procedure TDM.ClientSocket1Connecting(Sender: TObject; Socket: TCustomWinSocket);
begin
  with GattsAppMainForm do
  begin
    Memo1.Text := Memo1.Text + 'Connecting...' + #13#10;
  end;
end;

procedure TDM.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  with GattsAppMainForm do
  begin
    Memo1.Text := Memo1.Text + 'Disconnected' + #13#10;
    Socket.SendText('Client disconnected');
    bSend.Enabled := False;
    Edit1.Enabled := False;
    bConn.Caption := 'Connect';
  end;
end;

procedure TDM.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  ErrorCode := 0;
  ClientSocket1.Close;
  with GattsAppMainForm do
  begin
    // This can happen when no active server is started
    Memo1.Text := Memo1.Text + 'No connection found' + #13#10;
  end;
end;

procedure TDM.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
begin
  with GattsAppMainForm do
  begin
    // Reads and displays the message received from the server;
    Memo1.Text := Memo1.Text + 'Server: ' + Utf8ToAnsi(Socket.ReceiveText) + #13#10;
  end;

end;

end.
