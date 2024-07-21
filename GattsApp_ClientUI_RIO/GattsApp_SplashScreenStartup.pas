unit GattsApp_SplashScreenStartup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TSplashScreenStartup = class(TForm)
    Image1: TImage;
    TimerHide: TTimer;
    procedure TimerHideTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var    SplashScreenStartup: TSplashScreenStartup;

implementation

{$R *.dfm}

procedure TSplashScreenStartup.TimerHideTimer(Sender: TObject);
begin
  Self.Close;
end;

end.
