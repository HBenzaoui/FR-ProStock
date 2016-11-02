unit UWorkingSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxActivityIndicator;

type
  TFWorkingSplash = class(TForm)
    dxActivityIndicator1: TdxActivityIndicator;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FWorkingSplash: TFWorkingSplash;

implementation

{$R *.dfm}


procedure TFWorkingSplash.CreateParams(var Params: TCreateParams);
begin
//  inherited;

//  Params.WindowClass.ExStyle := Params.WindowClass.ExStyle or WS_EX_NOACTIVATE;   xczxcz
end;

procedure TFWorkingSplash.FormActivate(Sender: TObject);
begin
//  SetWindowPos(FWorkingSplash.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TFWorkingSplash.FormCreate(Sender: TObject);
var
  rgn: HRGN;
begin
//  FWorkingSplash.Borderstyle := bsNone;
  rgn := CreateRoundRectRgn(0,// x-coordinate of the region's upper-left corner
    0,            // y-coordinate of the region's upper-left corner
    ClientWidth,  // x-coordinate of the region's lower-right corner
    ClientHeight, // y-coordinate of the region's lower-right corner
    9,           // height of ellipse for rounded corners
    9);          // width of ellipse for rounded corners
  SetWindowRgn(Handle, rgn, True);


//    BorderStyle := bsNone;
//  Position := poScreenCenter;
//
//  DoubleBuffered := True;


//  Top:=  (Screen.Width-Width)  div 2;
//  Left:= (Screen.Height-Height) div 2;
end;

end.
