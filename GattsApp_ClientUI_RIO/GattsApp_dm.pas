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
    procedure ClientSocket1Lookup(Sender: TObject; Socket: TCustomWinSocket);
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
  with Form1 do
  begin
    bSend.Enabled := true;
    Edit1.Enabled := true;
    bConn.Caption := 'DisConnect';
  end;
end;

procedure TDM.ClientSocket1Connecting(Sender: TObject; Socket: TCustomWinSocket);
begin
  with Form1 do
  begin
    Memo1.Text := Memo1.Text + 'Connecting...' + #13#10;
  end;
end;

procedure TDM.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  with Form1 do
  begin
    Memo1.Text := Memo1.Text + 'Disconnect' + #13#10;
    Socket.SendText('Disconnected');
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
  with Form1 do
  begin
    // This can happen when no active server is started
    Memo1.Text := Memo1.Text + 'No connection found' + #13#10;
  end;
end;

procedure TDM.ClientSocket1Lookup(Sender: TObject; Socket: TCustomWinSocket);
begin
  with Form1 do
  begin
    Memo1.Text := Memo1.Text + 'Lookup...' + #13#10;
  end;
end;

procedure TDM.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
begin
  with Form1 do
  begin
    // Reads and displays the message received from the server;
    Memo1.Text := Memo1.Text + 'Server: ' + Socket.ReceiveText + #13#10;
  end;

end;

end.


package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println("Server started")
	listener, _ := net.Listen("tcp", "localhost:8080") // открываем слушающий сокет
	for {
		conn, err := listener.Accept() // принимаем TCP-соединение от клиента и создаем новый сокет
		if err != nil {
			continue
		}
		go handleClient(conn) // обрабатываем запросы клиента в отдельной го-рутине
	}
	fmt.Println("Server stop")
}

func handleClient(conn net.Conn) {
	defer conn.Close() // закрываем сокет при выходе из функции

	buf := make([]byte, 32) // буфер для чтения клиентских данных
	for {
		conn.Write([]byte("Hello, what's your name?\n")) // пишем в сокет

		readLen, err := conn.Read(buf) // читаем из сокета
		if err != nil {
			fmt.Println(err)
			break
		}
		fmt.Println("got",conn.RemoteAddr().String(), string(buf[:readLen]))
		ans:=append([]byte("Goodbye, "), buf[:readLen]...)
		ans=append(ans, "\r\n"...)
		conn.Write(ans) // пишем в сокет

	}
}
