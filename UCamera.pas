unit UCamera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
   dxCameraControl, Vcl.ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Buttons, sSpeedButton, Vcl.StdCtrls;

type
  TCameraF = class(TForm)
    LeftP: TPanel;
    ScanCameraFBtn: TsSpeedButton;
    CameraCtrlCameraF: TdxCameraControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    TimerCamerafFTmr: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure ScanCameraFBtnClick(Sender: TObject);
    procedure TimerCamerafFTmrTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure showScanArea;
    procedure hideScanArea;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CameraF: TCameraF;

implementation

uses
     vcl.imaging.pngImage,
     vcl.imaging.jpeg,
     ZXing.ReadResult,
     ZXing.BarCodeFormat,
     ZXing.ScanManager,
  UComptoir;

{$R *.dfm}

procedure TCameraF.showScanArea();
begin
Panel1.Visible:= True;
Panel2.Visible:= True;
Panel3.Visible:= True;
Panel4.Visible:= True;
end;

procedure TCameraF.TimerCamerafFTmrTimer(Sender: TObject);
var  ReadResult: TReadResult;
     ScanManager: TScanManager;
     bmp:VCL.Graphics.TBitmap; // just to be sure we are really using VCL bitmaps
  key: char;
begin



  CameraCtrlCameraF.Capture;
//  image.Picture.Bitmap := dxCameraControl1.CapturedBitmap;
  ReadResult := nil;
  ScanManager := nil;
  bmp := nil;
  if CameraCtrlCameraF.IsLoading = False then


  try
    bmp:= TcxBitmap.Create;
//    bmp.SetSize(32,32);
    bmp.assign (CameraCtrlCameraF.CapturedBitmap);
    ScanManager := TScanManager.Create(TBarcodeFormat.Auto, nil);
    ReadResult := ScanManager.Scan(bmp);
    if ReadResult<>nil then
      begin
           BonCtrGestionF.ProduitBonCtrGCbx.Text := ReadResult.text ;
           TimerCamerafFTmr.Enabled:= False;

           hideScanArea;

            key := #13;
            BonCtrGestionF.ProduitBonCtrGCbxKeyPress(Sender, key);
            BonCtrGestionF.ProduitBonCtrGCbx.Text := '';

      Exit
      end
    else
//      ProduitBonCtrGCbx.Text := '';
  finally
    ScanManager.Free;
    ReadResult.Free;
  end;


end;

procedure TCameraF.Button1Click(Sender: TObject);
begin
Label1.Caption:= IntToStr(CameraCtrlCameraF.ResolutionCount);

end;

procedure TCameraF.Button2Click(Sender: TObject);
begin
CameraCtrlCameraF.ResolutionIndex:=1;
end;

procedure TCameraF.Button3Click(Sender: TObject);
begin
CameraCtrlCameraF.ResolutionIndex:=1;
end;

procedure TCameraF.Button4Click(Sender: TObject);
begin
CameraCtrlCameraF.ResolutionIndex:=2;
end;

procedure TCameraF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
hideScanArea;
TimerCamerafFTmr.Enabled:= False;
CameraCtrlCameraF.Active:= False;

end;

procedure TCameraF.FormShow(Sender: TObject);
begin


  CameraCtrlCameraF.Active:= True;

//  CameraCtrlCameraF


end;

procedure TCameraF.hideScanArea();
begin
Panel1.Visible:= False;
Panel2.Visible:= False;
Panel3.Visible:= False;
Panel4.Visible:= False;
end;

procedure TCameraF.ScanCameraFBtnClick(Sender: TObject);
begin

   if   CameraCtrlCameraF.State =  ccsRunning  then
   begin
     showScanArea;
     TimerCamerafFTmr.Enabled:= True;
   end;

end;

end.
