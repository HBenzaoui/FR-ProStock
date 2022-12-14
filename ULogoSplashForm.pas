unit ULogoSplashForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxActivityIndicator, acImage, dxGDIPlusClasses,
  Vcl.ComCtrls, acPNG;

type
  TLogoSplashF = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    dxActivityIndicator1: TdxActivityIndicator;
    ImageCompanyOptionImg: TsImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer3: TTimer;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Timer4: TTimer;
    Label2: TLabel;
    sImage2: TsImage;
    Label7: TLabel;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateFlatRoundRgn;
  public
    { Public declarations }

    protected
  procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  LogoSplashF: TLogoSplashF;
//  Scores [0..10] : array of integer;
  Sum: Integer;
     mseconds, starttime: integer;
implementation

{$R *.dfm}

  uses math, UMainF,System.IniFiles,ShellAPI, UDataModule, ULoginUser,TlHelp32;
  
procedure ExcludeRectRgn(var Rgn: HRGN; LeftRect, TopRect, RightRect, BottomRect: Integer);
var
  RgnEx: HRGN;
begin
  RgnEx := CreateRectRgn(LeftRect, TopRect, RightRect, BottomRect);
  CombineRgn(Rgn, Rgn, RgnEx, RGN_OR);
  DeleteObject(RgnEx);
end;


function processExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;



procedure TLogoSplashF.Button1Click(Sender: TObject);
begin
  ProgressBar1.Min := 0;
  ProgressBar1.Max := 100;
  ProgressBar1.Position := 0;
  timer4.Enabled := True;
  Label2.Caption := 'Working...';
end;

procedure TLogoSplashF.CreateFlatRoundRgn;
const
  CORNER_SIZE = 6;
var
  Rgn: HRGN;
begin
  with BoundsRect do
  begin
    Rgn := CreateRoundRectRgn(0, 0, Right - Left + 1, Bottom - Top + 1, CORNER_SIZE, CORNER_SIZE);
    // exclude left-bottom corner
    ExcludeRectRgn(Rgn, 0, Bottom - Top - CORNER_SIZE div 2, CORNER_SIZE div 2, Bottom - Top + 1);
    // exclude right-bottom corner
    ExcludeRectRgn(Rgn, Right - Left - CORNER_SIZE div 2, Bottom - Top - CORNER_SIZE div 2, Right - Left , Bottom - Top);
  end;
  // the operating system owns the region, delete the Rgn only SetWindowRgn fails
  if SetWindowRgn(Handle, Rgn, True) = 0 then
    DeleteObject(Rgn);
end;

procedure TLogoSplashF.CreateParams(var Params: TCreateParams);
const
  CS_DROPSHADOW =  $00022223; //$00EFE9E8
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := WS_POPUP;
    WindowClass.Style := WindowClass.Style or CS_DROPSHADOW;
  end;
end;


procedure TLogoSplashF.FormCreate(Sender: TObject);
var
  rgn: HRGN;
  sCmd: string;
begin

  Application.UpdateFormatSettings := false;
//  FormatSettings.DecimalSeparator := ',';
//  FormatSettings.ThousandSeparator := ' ';
//  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
  FormatSettings.ShortDateFormat:= 'dd/mm/yyyy';
//  FormatSettings.CurrencyString:= ' ';   //This is responsible for currncy symbole
//  FormatSettings.CurrencyFormat:= 1;     //This is responsible for currncy format



//  MainForm.KillTask('postgres.exe');                                    // Eable this is only for releasing
//  MainForm.KillTask('cmd.exe');                                         // Eable this is only for releasing


     if NOT processExists('postgres.exe') then
     begin
//        sCmd := Pwidechar(GetCurrentDir+ '\bin\pg_s.bat' );                // Eable this is only for releasing   before version 5.1.6

        if FileExists(GetCurrentDir+ '\bin\pg_s.exe') then
        begin
          sCmd := Pwidechar(GetCurrentDir+ '\bin\pg_s.exe' );            // Eable this is only for releasing
        end else
            begin
              sCmd := Pwidechar(GetCurrentDir+ '\bin\pg_s.bat' );           //For releasing  before version 5.1.6
            end;
        ShellExecute(0, 'open', PChar(sCmd) , PChar(sCmd), nil, SW_HIDE);  // Eable this is only for releasing 1 OR 2
     end;



  Borderstyle := bsNone;
  rgn := CreateRoundRectRgn(0,// x-coordinate of the region's upper-left corner
    0,            // y-coordinate of the region's upper-left corner
    ClientWidth,  // x-coordinate of the region's lower-right corner
    ClientHeight, // y-coordinate of the region's lower-right corner
    9,           // height of ellipse for rounded corners
    9);          // width of ellipse for rounded corners
  SetWindowRgn(Handle, rgn, True);
//  BorderStyle := bsNone;
//  CreateFlatRoundRgn;


Top:=  (Screen.Width-Width)  div 2;
Left:= (Screen.Height-Height) div 2;




  starttime := GetTickCount();
  mseconds := 0;
  Timer4.Enabled := false;
  Label2.Caption := '';
  ProgressBar1.Position := 0;
  Label2.Caption := 'Waiting...';

 


end;

procedure TLogoSplashF.FormShow(Sender: TObject);
begin



        
 Timer3.Enabled:= True;


//  Label1.Caption := IntToStr(Scores[0]);
  //...
//  Label11.Caption := IntToStr(Scores[10]);
//  Labe5.Caption := IntToStr(Sum);

// I:=0;
// for i := 1 to 100 do
// begin
//
//  Label5.Caption:= IntToStr(i) ;
////  i:= i+1;
// end;

//i := StrToInt(Label5.Caption);
// while i < 100 do
// begin
//  Label5.Caption:=  IntToStr( i +i )
// end;
   
  Button1Click(Sender); 
                                                                  
end;

procedure TLogoSplashF.Label1Click(Sender: TObject);
begin
Timer2.Enabled := True;
end;

procedure TLogoSplashF.Timer1Timer(Sender: TObject);
begin
if LogoSplashF.AlphaBlendValue >= 255 then
Timer1.Enabled := false
else
LogoSplashF.AlphaBlendValue := LogoSplashF.AlphaBlendValue + 5;
end;

procedure TLogoSplashF.Timer2Timer(Sender: TObject);
begin
  if LogoSplashF.AlphaBlendValue <= 0 then
  begin
    Timer2.Enabled := false;
      close;
    DataModuleF := TDataModuleF.Create(Application);
    LoginUserF := TLoginUserF.Create(Application);
    LoginUserF.Show
  end
  else
  LogoSplashF.AlphaBlendValue := LogoSplashF.AlphaBlendValue - 5;
//  if LogoSplashF.AlphaBlendValue <= 0 then
//  begin
//
//     
//
//  end;

end;

procedure TLogoSplashF.Timer4Timer(Sender: TObject);
begin
  mseconds := GetTickCount() - starttime;
  if (mseconds < 4000) then
  begin
  dxActivityIndicator1.Active:= True;
    ProgressBar1.Position := Trunc(mseconds / 40);
    if (StrToInt(Label5.Caption) < 90)  then
    Label5.Caption:= IntToStr(2 + Random(3) + ProgressBar1.Position ) else Label5.Caption:= '100';
  end
  else begin
  dxActivityIndicator1.Active:= False;
    ProgressBar1.Position := 100;
    Label4.Caption := 'Termin?!';
    Timer4.Enabled := false;
    Label5.Caption:= '100';
    Label5.Left:=62;
    Label6.Left:=83;
//    Sleep(500);
   Label1Click(Sender);

  end;

end;

end.

