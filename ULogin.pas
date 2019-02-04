unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, acPNG, Vcl.Buttons, cxTextEdit, Vcl.ExtCtrls, acImage,
  mxProtector, AdvToolBtn, Vcl.StdCtrls, AdvSmoothProgressBar;

type
  TLoginF = class(TForm)
    LoginFmx: TmxProtector;
    sImageA: TsImage;
    cxTextEdit114: TcxTextEdit;
    cxTextEdit22: TcxTextEdit;
    sImage1: TsImage;
    sImage3: TsImage;
    sImage4: TsImage;
    sImage6: TsImage;
    sImage8: TsImage;
    sImage7: TsImage;
    CancelBtn: TAdvToolButton;
    LoginBtn: TAdvToolButton;
    Label1: TLabel;
    Button1: TButton;
    PassCheckEroorGLbl: TLabel;
    PassCheckGErrorP: TPanel;
    AdvToolButton1: TAdvToolButton;
    PrograssBar: TAdvSmoothProgressBar;
    Label2: TLabel;
    procedure sImage1Click(Sender: TObject);
    procedure sImage3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoginBtnClick(Sender: TObject);
    procedure sImage5Click(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxTextEdit22PropertiesChange(Sender: TObject);
    procedure LoginFmxGetSerialNumber(Sender: TObject; var UserName,
      SerialNumber: string);
    procedure LoginFmxInvalidSerialNumber(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure LoginFmxDayTrial(Sender: TObject; DaysRemained: Integer);
    procedure LoginFmxExpiration(Sender: TObject);
    procedure LoginFmxInvalidSystemTime(Sender: TObject);
    function  GetWMIstring(const WMIClass, WMIProperty:string): string;
  private
    procedure ProcessRights;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  LoginF: TLoginF;

implementation

{$R *.dfm}






  uses
      ActiveX,IdGlobal, IdHash, IdHashMessageDigest,
      ComObj, UMainF,System.Contnrs,Winapi.MMSystem, ULoginUser, USplash;
      
    var
      FSWbemLocator : OLEVariant;
      FWMIService   : OLEVariant;

      const CKEY1 = 53761;
            CKEY2 = 32618;
//------------------------------------------------------------------------

    function  TLoginF.GetWMIstring(const WMIClass, WMIProperty:string): string;
    const
      wbemFlagForwardOnly = $00000020;
    var
      FWbemObjectSet: OLEVariant;
      FWbemObject   : OLEVariant;
      oEnum         : IEnumvariant;
      iValue        : LongWord;
    begin;
      Result:='';
      FWbemObjectSet:= FWMIService.ExecQuery(Format('Select %s from %s',[WMIProperty, WMIClass]),'WQL',wbemFlagForwardOnly);
      oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
      if oEnum.Next(1, FWbemObject, iValue) = 0 then

   if not VarIsNull(FWbemObject.Properties_.Item(WMIProperty).Value) then

     Result:=FWbemObject.Properties_.Item(WMIProperty).Value;

    FWbemObject:=Unassigned;
    end;

    
var gGrayForms: TComponentList;

procedure GrayFormsL;
var
  loop: integer;
  wScrnFrm: TForm;
  wForm: TForm;
//  wPoint: TPoint;
  wScreens: TList;
begin
  if not assigned(gGrayForms) then
  begin
    gGrayForms := TComponentList.Create;
    gGrayForms.OwnsObjects := true;
    wScreens := TList.Create;
    try
      for loop := 0 to 0 do
        wScreens.Add(Screen.Forms[loop]);
      for loop := 0 to 0 do
      begin
        wScrnFrm := wScreens[loop];
        if wScrnFrm.Visible then
        begin
          wForm := TForm.Create(wScrnFrm);
       ///wForm.Align:= alClient;
          wForm.WindowState := wsMaximized;
          gGrayForms.Add(wForm);
          wForm.Position := poOwnerFormCenter;
          wForm.AlphaBlend := true;
          wForm.AlphaBlendValue := 140;
          wForm.Color := clBlack;
          wForm.BorderStyle := bsNone;
          wForm.StyleElements := [];
          wForm.Enabled := false;
          wForm.BoundsRect := wScrnFrm.BoundsRect;
          SetWindowLong(wForm.Handle, GWL_HWNDPARENT, wScrnFrm.Handle);
          SetWindowPos(wForm.Handle, wScrnFrm.Handle, 0, 0, 0, 0,
            SWP_NOSIZE or SWP_NOMOVE);
          wForm.Visible := true;
        end;
      end;
    finally
      wScreens.free;
    end;
  end;
end;

procedure NormalFormsL;
begin
  FreeAndNil(gGrayForms);
end;

procedure TLoginF.LoginBtnClick(Sender: TObject);
begin
LoginFmx.Registration;
ProcessRights;

  if label1.Caption = 'D' then
  begin
   MainForm.Caption:= MainForm.Caption + '[DEMO]'
  end
  else
  begin
   MainForm.Caption:= StringReplace(MainForm.Caption, '[DEMO]', '', [rfReplaceAll]);
   MainForm.Show;
   Close;
  end;
   
end;

procedure TLoginF.LoginFmxDayTrial(Sender: TObject; DaysRemained: Integer);
begin
     If DaysRemained = 1 Then
          Label2.Caption := 'Un seul jour autorisé a quitté'  Else
          Label2.Caption := Format( ' %d jours restants', [ DaysRemained ] );

//     btn_Reset.Enabled := FALSE;
     AdvToolButton1.Enabled := TRUE;
     PrograssBar.Maximum := LoginFmx.MaxDayNumber;
     PrograssBar.Position := DaysRemained;
end;

procedure TLoginF.LoginFmxExpiration(Sender: TObject);
begin
     Label2.Caption := '0 jours restants';
//     lbl_Message.Caption := 'This licence has expired';
//     btn_Reset.Enabled := TRUE;
     AdvToolButton1.Enabled := FALSE;
     PrograssBar.Maximum := 0;
     PrograssBar.Position := 0;
end;

procedure TLoginF.LoginFmxGetSerialNumber(Sender: TObject; var UserName,
  SerialNumber: string);
begin
     UserName :=  cxTextEdit114.Text;
     SerialNumber := cxTextEdit22.Text;
end;

procedure TLoginF.LoginFmxInvalidSerialNumber(Sender: TObject);
begin
//MessageDlg( 'Numéro de clé erroné!', mtError, [ mbOK ], 0 );

                cxTextEdit22.Style.BorderStyle := ebsNone;
//                PasswordEdt.StyleElements := [];
                PassCheckEroorGLbl.Visible:= True;
                PassCheckGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                cxTextEdit22.SetFocus;
                cxTextEdit22.SelectAll;

end;

procedure TLoginF.LoginFmxInvalidSystemTime(Sender: TObject);
begin
if NOT LoginFmx.IsRegistered Then
  Begin
 MessageDlg( 'L''heure ou la date de votre système est invalide.' + #13 + #10 + 'Configurez la date et l''heure appropriées pour continuer.', mtError, [ mbOK ], 0 );
  End;
end;

procedure TLoginF.ProcessRights;
begin


//     button3.Enabled := LoginFmx.IsRegistered;
//     groupbox1.Enabled := Not LoginFmx.IsRegistered;
      CancelBtn.Enabled := Not LoginFmx.IsRegistered;
      LoginBtn.Enabled := Not LoginFmx.IsRegistered;
//     button4.Enabled := LoginFmx.IsRegistered;
     cxTextEdit114.Enabled := Not LoginFmx.IsRegistered;
     cxTextEdit22.Enabled := Not LoginFmx.IsRegistered;
     LoginBtn.Enabled := ( cxTextEdit114.Text <> '' ) And ( cxTextEdit22.Text <> '' ) And ( Not LoginFmx.IsRegistered );

     If LoginFmx.IsRegistered Then
     Begin
          label1.Caption := 'R';
     End
     Else
     Begin
          label1.Caption := 'D';
     End;
end;

procedure TLoginF.AdvToolButton1Click(Sender: TObject);
begin
  if label1.Caption = 'D' then
  begin
   MainForm.Caption:= MainForm.Caption  ;
   MainForm.Show;
   Close;
  end
  else
  begin
   MainForm.Caption:= StringReplace(MainForm.Caption, '[DEMO]', '', [rfReplaceAll]);
   MainForm.Show;
   Close;
  end;
end;

procedure TLoginF.Button1Click(Sender: TObject);
begin
     LoginFmx.Reset;
     MessageDlg( 'Date removed!', mtInformation, [ mbOK ], 0 );
     ProcessRights;
     cxTextEdit114.Text:='';
     cxTextEdit22.Text:='';
if label1.Caption = 'D' then
begin
MainForm.Caption:= MainForm.Caption + '[DEMO]';
end;
end;

procedure TLoginF.CancelBtnClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TLoginF.cxTextEdit22PropertiesChange(Sender: TObject);
begin
LoginBtn.Enabled := ( cxTextEdit114.Text <> '' ) And ( cxTextEdit22.Text <> '' );

                cxTextEdit22.Style.BorderStyle := ebsUltraFlat;
                PassCheckEroorGLbl.Visible:= False;
                PassCheckGErrorP.Visible:= False;
                
end;

procedure TLoginF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalFormsL;
if MainForm.Visible =  False then
begin
Application.Terminate ;
end;
end;

function MD5String(str: String): String;
begin
  with TIdHashMessageDigest5.Create do
    try
      Result := HashStringAsHex(str);
    finally
      Free;
    end;
end;

procedure TLoginF.FormCreate(Sender: TObject);
 var
      x:string;
      Y:string;
      HashedeSrial:string;
    begin
      FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
      FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');
      X:=GetWMIstring('Win32_BIOS','SerialNumber');
      Y:=GetWMIstring('Win32_PhysicalMedia','SerialNumber');

     HashedeSrial:= StringReplace(( X+'-PS-57-'+Y ), #32 , '', [rfReplaceAll]);
     HashedeSrial:= MD5String(HashedeSrial); 
     Insert('-',HashedeSrial,6);
     Insert('-',HashedeSrial,12);
     Insert('-',HashedeSrial,18);
     Insert('-',HashedeSrial,24);
     Insert('-',HashedeSrial,30);
     Insert('-',HashedeSrial,36);

   cxTextEdit114.Text:= HashedeSrial;
   
  ProcessRights;
  if label1.Caption = 'R' then
  begin
   cxTextEdit114.Text:=LoginFmx.UserName;
   cxTextEdit22.Text:=LoginFmx.GenerateSerialNumber( cxTextEdit114.Text );
  end;

  if label1.Caption = 'D' then
  begin
   MainForm.Caption:= MainForm.Caption + '[DEMO]';
  end;

end;

procedure TLoginF.FormShow(Sender: TObject);
begin
//GrayFormsL;
end;

procedure TLoginF.sImage1Click(Sender: TObject);
begin
cxTextEdit114.SelectAll;
cxTextEdit114.CopyToClipboard;

          FSplash := TFSplash.Create(nil);
           try
              FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
              FSplash.Top := 0;
              FSplash.Label1.Font.Height:=24;
              FSplash.Label1.Caption:='Copié dans le presse-papier';
              FSplash.Color:= $0077D90E;
              AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR  AW_ACTIVATE);
              sleep(400);
              AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
           finally
             FSplash.free;
           end;

//showhi
end;

procedure TLoginF.sImage3Click(Sender: TObject);
begin
cxTextEdit22.SelectAll;
cxTextEdit22.PasteFromClipboard;
end;

procedure TLoginF.sImage5Click(Sender: TObject);
begin
     LoginFmx.Reset;
     MessageDlg( 'Date removed!', mtInformation, [ mbOK ], 0 );
     ProcessRights;
     cxTextEdit114.Text:='';
     cxTextEdit22.Text:='';
if label1.Caption = 'D' then
begin
MainForm.Caption:= MainForm.Caption + '[DEMO]';
end;
end;

end.
