unit GattsAppClient_Styles;

interface

uses Registry, Vcl.Themes;

type
  TAppStyles = class(TObject)
  private
var
    RegFile: TRegIniFile;
    fdefaultStyleName: String;

  const
    RegSubKey: string = 'Software\GatsApp';
    RegStyleKey: string = 'Style';

  public
    constructor Create;
    destructor Destroy;
    function GetStylesStrings: TArray<string>;
    function GetDefaultStyle: string;
    function ApplyStyle(const Name: string): Boolean;

  end;



implementation

{ AppStyles }

constructor TAppStyles.Create;
var
  storedStyle: string;
begin
  inherited;
  RegFile := TRegIniFile.Create(RegSubKey);
  storedStyle := RegFile.ReadString(RegStyleKey, 'Value', '');
    if storedStyle <> '' then
  begin
    fdefaultStyleName := storedStyle;
    TStyleManager.TrySetStyle(fdefaultStyleName);
  end
  else if Assigned(TStyleManager.ActiveStyle) then
    fdefaultStyleName := TStyleManager.ActiveStyle.Name;
end;

destructor TAppStyles.Destroy;
begin
    RegFile.Free;
  inherited;
end;

function TAppStyles.GetDefaultStyle: string;
begin
     Result:=fdefaultStyleName;
end;

function TAppStyles.GetStylesStrings:TArray<string>;
begin
 Result:= TStyleManager.StyleNames;
end;

function TAppStyles.ApplyStyle(const Name: string): Boolean;
begin
  if Assigned(TStyleManager.ActiveStyle) and
    (TStyleManager.ActiveStyle.Name <> Name) then
  begin
    TStyleManager.TrySetStyle(Name);
    RegFile.WriteString(RegStyleKey, 'Value', Name);
  end
  else
  begin
    TStyleManager.TrySetStyle(fdefaultStyleName);
    RegFile.WriteString(RegStyleKey, 'Value', fdefaultStyleName);
  end;
end;

end.
