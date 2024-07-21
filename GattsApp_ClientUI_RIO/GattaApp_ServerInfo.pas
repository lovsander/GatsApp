unit GattaApp_ServerInfo;

interface

uses Registry;

type
  TServerInfo = class(TObject)
  private
  var
    RegFile: TRegIniFile;
    FAddress: string;
    FPort: integer;

  const
    RegSubKey: string = 'Software\GatsApp';
    RegServerAddrKey: string = 'ServerAddr';
    RegServerportKey: string = 'ServerPort';

    procedure SetAddress(value: string);
    procedure SetPort(value: integer);

  public
    constructor Create;
    destructor Destroy;
    property Address: string read FAddress write SetAddress;
    property Port: integer read FPort write SetPort;

  end;

implementation

{ TServerInfo }

constructor TServerInfo.Create;
var
  storedAddr: string;
 storedPort:integer;
begin
  inherited;
  RegFile := TRegIniFile.Create(RegSubKey);
  storedAddr := RegFile.ReadString(RegServerAddrKey, 'Value', '127.0.0.1');
  storedPort := RegFile.ReadInteger(RegServerportKey, 'Value', 8080);
  Address := storedAddr;
  Port   := storedPort ;
end;

destructor TServerInfo.Destroy;
begin
  RegFile.Free;
  inherited;
end;

procedure TServerInfo.SetAddress(value: string);
begin
  FAddress := value;
  RegFile.WriteString(RegServerAddrKey, 'Value', value);
end;

procedure TServerInfo.SetPort(value: integer);
begin
  FPort := value;
  RegFile.WriteInteger(RegServerportKey, 'Value', value);
end;

end.
