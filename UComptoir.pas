unit UComptoir;

interface

uses
  Winapi.Windows,MMSystem,Vcl.Imaging.jpeg, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, AdvToolBtn,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothTouchKeyBoard, AdvTouchKeyboard,
  Vcl.Touch.Keyboard, Vcl.Buttons, sSpeedButton, acImage, Vcl.ComCtrls, Data.DB,
  System.DateUtils, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, frxClass, frxDBSet, frxExportXLS, frxExportPDF, sPanel,
  acSlider, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TBonCtrGestionF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BonCtrTotalTTCLbl: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label6: TLabel;
    EnterAddProduitBonCtrGBtn: TAdvToolButton;
    ListAddProduitBonCtrGBtn: TAdvToolButton;
    NewAddProduitBonCtrGBtn: TAdvToolButton;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    ProduitsListDBGridEh: TDBGridEh;
    Panel12: TPanel;
    Panel16: TPanel;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    right: TPanel;
    Panel11: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label17: TLabel;
    Panel26: TPanel;
    Label18: TLabel;
    BonCTotalTTCNewLbl: TLabel;
    Labell20: TLabel;
    BonCtrRegleLbl: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    BonCtrRenduLbl: TLabel;
    Label25: TLabel;
    Panel27: TPanel;
    Panel28: TPanel;
    RemisePerctageBonCtrGEdt: TEdit;
    RemiseBonCtrGEdt: TEdit;
    Label9: TLabel;
    ClientBonCtrGCbx: TComboBox;
    Panel29: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    NumBonCtrGEdt: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    HourBonCtrGD: TLabel;
    Panel4: TPanel;
    Panel7: TPanel;
    AddClientBonCtrGBtn: TAdvToolButton;
    DateBonCtrGD: TDateTimePicker;
    Label20: TLabel;
    Label10: TLabel;
    BonCtrGOLDStock: TLabel;
    Label11: TLabel;
    BonCtrGNEWStock: TLabel;
    Timer1: TTimer;
    BonCtrPListDataS: TDataSource;
    Panel18: TPanel;
    ValiderBVCtrBonCtrGLbl: TLabel;
    ValiderBVCtrBonCtrGImg: TsImage;
    Panel19: TPanel;
    Panel22: TPanel;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    PrintTicketBVCtrBonCtrGBtn: TsSpeedButton;
    Panel15: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel17: TPanel;
    ClearProduitBonCtrGBtn: TsSpeedButton;
    ShowCalculaturBonCtrGBtn: TsSpeedButton;
    ShowKeyBoardBonCtrGBtn: TsSpeedButton;
    DeleteProduitBonCtrGBtn: TsSpeedButton;
    CtrTop10PRODUITDBGridEh: TDBGridEh;
    CloseBonCtrGBtn: TsSpeedButton;
    MinimizeBonCtrGBtn: TsSpeedButton;
    sImage3: TsImage;
    sImage2: TsImage;
    BonCRemiseHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    BonCTotalHTNewLbl: TLabel;
    BonCtrTotalHTLbl: TLabel;
    BonCtrTotalTVALbl: TLabel;
    BonCtrTop10produit: TDataSource;
    frxComptoirListPDB: TfrxDBDataset;
    frxComptoirDB: TfrxDBDataset;
    GridPanel1: TGridPanel;
    AddBVCtrBonCtrGBtn: TAdvToolButton;
    EditBVCtrBonCtrGBtn: TAdvToolButton;
    ValiderBVCtrBonCtrGBtn: TAdvToolButton;
    ExValiderBVCtrBonCtrGBtn: TAdvToolButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    RegleVersementSGLbl: TLabel;
    APrintBVCtrBonCtrGSlider: TsSlider;
    ComptoirTicketfrxRprt: TfrxReport;
    BonCTRTotalMargeLbl: TLabel;
    RequiredClientGlbl: TLabel;
    NameClientGErrorP: TPanel;
    sImage1: TsImage;
    ProduitBonCtrGCbx: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure RemiseBonCtrGEdtDblClick(Sender: TObject);
    procedure ShowKeyBoardBonCtrGBtnClick(Sender: TObject);
    procedure ShowCalculaturBonCtrGBtnClick(Sender: TObject);
    procedure ProduitBonCtrGCbxDropDown(Sender: TObject);
    procedure ProduitBonCtrGCbxExit(Sender: TObject);
    procedure CloseBonCtrGBtnClick(Sender: TObject);
    procedure MinimizeBonCtrGBtnClick(Sender: TObject);
    procedure NewAddProduitBonCtrGBtnClick(Sender: TObject);
    procedure AddBVCtrBonCtrGBtn1Click(Sender: TObject);
    procedure ProduitBonCtrGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ClientBonCtrGCbxDropDown(Sender: TObject);
    procedure ClientBonCtrGCbxChange(Sender: TObject);
    procedure ClientBonCtrGCbxExit(Sender: TObject);
    procedure EnterAddProduitBonCtrGBtnClick(Sender: TObject);
    procedure BonCtrPListDataSDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure DeleteProduitBonCtrGBtnClick(Sender: TObject);
    procedure ClearProduitBonCtrGBtnClick(Sender: TObject);
    procedure ListAddProduitBonCtrGBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure RemisePerctageBonCtrGEdtChange(Sender: TObject);
    procedure RemiseBonCtrGEdtChange(Sender: TObject);
    procedure ValiderBVCtrBonCtrGBtn1Click(Sender: TObject);
    procedure EditBVCtrBonCtrGBtn1Click(Sender: TObject);
    procedure ExValiderBVCtrBonCtrGBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RemisePerctageBonCtrGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrintTicketBVCtrBonCtrGBtnClick(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure AddBVCtrBonCtrGBtnClick(Sender: TObject);
    procedure EditBVCtrBonCtrGBtnClick(Sender: TObject);
    procedure ValiderBVCtrBonCtrGBtnClick(Sender: TObject);
    procedure ExValiderBVCtrBonCtrGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure CtrTop10PRODUITDBGridEhDblClick(Sender: TObject);
    procedure ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ProduitBonCtrGCbxMouseEnter(Sender: TObject);
    procedure RemiseBonCtrGEdtMouseEnter(Sender: TObject);
    procedure RemisePerctageBonCtrGEdtMouseEnter(Sender: TObject);
    procedure ProduitBonCtrGCbxDblClick(Sender: TObject);
    procedure RemisePerctageBonCtrGEdtDblClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure AddClientBonCtrGBtnClick(Sender: TObject);
    procedure ProduitBonCtrGCbxEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
    procedure EnableBonCtr;
  end;

var
  BonCtrGestionF: TBonCtrGestionF;

implementation

{$R *.dfm}
uses  Printers,StringTool,IniFiles,UDataModule,
 Winapi.ShellAPI, UMainF, UProduitsList, UBonCtr, USplashAddUnite,UProduitGestion,
  UFastProduitsList, USplashVersement, UOptions, UClientGestion, UClientsList;


procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin

   BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonCtrGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonCtrGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
//     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
//     EnableControls;
     end;


   BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

 procedure TBonCtrGestionF.EnableBonCtr;
 begin
          AddBVCtrBonCtrGBtn.Enabled:= False;
          AddBVCtrBonCtrGBtn.ImageIndex:=8;// 7 For D
//          PrintTicketBVCtrBonCtrGBtn.ImageIndex:=28;// 4 For D
          EditBVCtrBonCtrGBtn.Enabled:= False;
          EditBVCtrBonCtrGBtn.ImageIndex:=10;// 9 for D
          ValiderBVCtrBonCtrGBtn.Enabled:= True;
          ValiderBVCtrBonCtrGBtn.ImageIndex:=11;//12 for D
          ExValiderBVCtrBonCtrGBtn.Enabled:= True;
          ExValiderBVCtrBonCtrGBtn.ImageIndex:=13;//14 for D



          DateBonCtrGD.Enabled:= True;

          ClientBonCtrGCbx.Enabled:= True;
          AddClientBonCtrGBtn.Enabled:= True ; //
          AddClientBonCtrGBtn.ImageIndex:=10;//35 fo D


            ProduitBonCtrGCbx.Enabled:= True;
            EnterAddProduitBonCtrGBtn.Enabled:= True;
            EnterAddProduitBonCtrGBtn.ImageIndex:=15;// 40 fo D
            ListAddProduitBonCtrGBtn.Enabled:= True;
            ListAddProduitBonCtrGBtn.ImageIndex:=13;//41 fo D
            NewAddProduitBonCtrGBtn.Enabled:= True;
            NewAddProduitBonCtrGBtn.ImageIndex:=4;//28 fo D
            DeleteProduitBonCtrGBtn.Enabled:= True;
            DeleteProduitBonCtrGBtn.ImageIndex:=14;//36 fo D
            ClearProduitBonCtrGBtn.Enabled:= True;
            ClearProduitBonCtrGBtn.ImageIndex:=16;//39 fo A
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
            ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
            ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
            ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
            ProduitsListDBGridEh.Options:=
            ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
            ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
            ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
            ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
            RemisePerctageBonCtrGEdt.Enabled:=True;//False for D
            RemiseBonCtrGEdt.Enabled:=True;//False for D

            CtrTop10PRODUITDBGridEh.Enabled:=True;//False for D
            CtrTop10PRODUITDBGridEh.Color:= clWhite;// $00D9D7D3 for D
            CtrTop10PRODUITDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
            CtrTop10PRODUITDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D

          ValiderBVCtrBonCtrGImg.ImageIndex:=1;//0 fo D
          ValiderBVCtrBonCtrGLbl.Color:=$007374FF;// $004AC38B for D
          ValiderBVCtrBonCtrGLbl.Font.Color:= clWhite;// clBlack for D
          ValiderBVCtrBonCtrGLbl.Caption:='Ce bon n''est pas encore Validé';// 'Ce bon est Valid' for D
 end;

procedure TBonCtrGestionF.FormShow(Sender: TObject);
var
   CodeBL: Integer;
  Ini: TMemIniFile;
begin

    Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    APrintBVCtrBonCtrGSlider.SliderOn:=      Ini.ReadBool('', 'Auto Print',APrintBVCtrBonCtrGSlider.SliderOn);
    ini.UpdateFile;
    Ini.Free;

// APrintBVCtrBonCtrGSlider.SliderOn :=  FOptions.APrintOptionGSlider.SliderOn;

  begin

  // use this tage when i click AddBVCtrBonRecGBtn bon button
   if Tag=0 then
   begin
   DateBonCtrGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

  //-- use this code to make the montants look lake money values-------//

        BonCtrTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonCtrTotalTTCLbl.Caption),ffNumber,14,2) ;
        BonCTotalTTCNewLbl.Caption :=      FloatToStrF(StrToFloat(BonCTotalTTCNewLbl.Caption),ffNumber,14,2) ;
        BonCtrRenduLbl.Caption :=         FloatToStrF(StrToFloat(BonCtrRenduLbl.Caption),ffNumber,14,2) ;
        BonCtrRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonCtrRegleLbl.Caption),ffNumber,14,2) ;

   CodeBL:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr']   ;
   NumBonCtrGEdt.Caption := 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeBL]);
    if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> null)
   AND (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0)  then
   begin
     ClientBonCtrGCbx.Text:= MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
     ProduitBonCtrGCbx.SetFocus;
   end else
       begin
         ProduitBonCtrGCbx.SetFocus;
       end;
   end;
  // use this tage when i click on edit button for bon
   if Tag = 1 then
   begin
  //     BonCtrGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonCtrGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
  //     BonCtrGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonCtrGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
    end;
  end;

  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;

end;

Function Wow64DisableWow64FsRedirection(Var Wow64FsEnableRedirection: LongBool): LongBool; StdCall;
  External 'Kernel32.dll' Name 'Wow64DisableWow64FsRedirection';
Function Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection: LongBool): LongBool; StdCall;
  External 'Kernel32.dll' Name 'Wow64EnableWow64FsRedirection';

procedure TBonCtrGestionF.RemiseBonCtrGEdtDblClick(Sender: TObject);
begin
try
  ShowKeyBoardBonCtrGBtnClick(Sender);
finally
 RemiseBonCtrGEdt.SetFocus
end;

end;


function GetWindowsVersion: string;
begin
  result := 'Unknown (Windows ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + ')';
  case Win32MajorVersion of
    4:
      case Win32MinorVersion of
        0: result := 'Windows 95';
        10: result := 'Windows 98';
        90: result := 'Windows ME';
      end;
    5:
      case Win32MinorVersion of
        0: result := 'Windows 2000';
        1: result := 'Windows XP';
      end;
    6:
      case Win32MinorVersion of
        0: result := 'Windows Vista';
        1: result := 'Windows 7';
        2: result := 'Windows 8';
        3: result := 'Windows 8.1';
      end;
    10:
      case Win32MinorVersion of
        0: result := 'Windows 10';
      end;
  end;
end;

procedure TBonCtrGestionF.ShowKeyBoardBonCtrGBtnClick(Sender: TObject);
var    SEInfo: TShellExecuteInfo;
    ExitCode: DWORD;
    ExecuteFile, ParamString, StartInString: string;
    Wow64FsEnableRedirection: LongBool;
 begin

  if NOT  (GetWindowsVersion = 'Windows XP' )then
   begin

    if Wow64DisableWow64FsRedirection(Wow64FsEnableRedirection) then
    begin
  ExecuteFile:='C:\Windows\System32\osk.exe';
  FillChar(SEInfo, SizeOf(SEInfo), 0) ;
  SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
  with SEInfo do
   begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;      lpFile := PChar(ExecuteFile) ;
    { ParamString can contain the application parameters. }
  //   lpParameters := PChar('/C pg_dump -U postgres -W -F t GSTOCKDC > d:\dd') ;
    { StartInString specifies the name of the working directory. If ommited, the current directory is used. }
    // lpDirectory := PChar(StartInString) ;
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@SEInfo) then
  begin
  repeat
  Application.ProcessMessages;
  GetExitCodeProcess(SEInfo.hProcess, ExitCode) ;
  until (ExitCode <> STILL_ACTIVE)
  or Application.Terminated;

//  ShowMessage('Calculator terminated') ;
  end
  else
  ShowMessage('Error starting Keyboard!') ;

          if not Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection) then
       RaiseLastOSError;
    end
    else
    RaiseLastOSError;

  end;
end;

procedure TBonCtrGestionF.ShowCalculaturBonCtrGBtnClick(Sender: TObject);
begin
 WinExec('C:\Windows\system32\Calc.exe' ,SW_SHOW) ;WinExec('c:\windows\calc.exe', sw_Normal);
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxDropDown(Sender: TObject);
var
I : Integer;
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonCtrGCbx.Refresh;
      ProduitBonCtrGCbx.Properties.Items.Clear;
      MainForm.ProduitTable.DisableControls;
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit ';
      MainForm.ProduitTable.Active := True;

      MainForm.ProduitTable.Refresh;


      MainForm.ProduitTable.first;

   //  if ResherchPARDesProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if ( MainForm.ProduitTable.FieldByName('nom_p').IsNull = False )  then
     begin
       ProduitBonCtrGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;

 {     if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonCtrGCbx.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;
      }
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonCtrGCbx.Refresh;
      ProduitBonCtrGCbx.Properties.Items.Clear;
      MainForm.ProduitTable.DisableControls;
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit ';
      MainForm.ProduitTable.Active := True;

      MainForm.ProduitTable.Refresh;


      MainForm.ProduitTable.first;

   //  if ResherchPARDesProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if ( MainForm.ProduitTable.FieldByName('nom_p').IsNull = False )  then
     begin
       ProduitBonCtrGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;

 {     if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonCtrGCbx.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;
      }

end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxExit(Sender: TObject);
begin
ProduitBonCtrGCbx.Text:='';
//ProduitBonCtrGCbx.AutoDropDown:=False;
end;

procedure TBonCtrGestionF.CloseBonCtrGBtnClick(Sender: TObject);
begin
Close;
//Free;
//FreeAndNil(BonCtrGestionF);
end;

procedure TBonCtrGestionF.MinimizeBonCtrGBtnClick(Sender: TObject);
var
  HTaskbar:HWND;
  OldVal:LongInt;
begin
  //Find handle of TASKBAR
  HTaskBar:=FindWindow('Shell_TrayWnd',nil);
  //Turn SYSTEM KEYS Back ON,Only Win 95/98/ME
  SystemParametersInfo(97,Word(False),@OldVal,0);
  //Enable the taskbar
  EnableWindow(HTaskBar,True);
  //Show the taskbar
  ShowWindow(HTaskbar,SW_SHOW);

  BorderStyle:= bsSizeable;

  WindowState:=wsMinimized;
end;

procedure TBonCtrGestionF.NewAddProduitBonCtrGBtnClick(Sender: TObject);
begin
  FormStyle:=fsNormal;


  ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonCtrGestionF.AddBVCtrBonCtrGBtn1Click(Sender: TObject);
var
  codeCT,CodeCB : integer;
begin
 Timer1.Enabled:=False;

      begin
     ClientBonCtrGCbx.Text:= 'Comptoir';
     Label17.Caption:=       'Comptoir';
//    ModePaieBonCtrGCbx.Clear;
//     CompteBonCtrGCbx.Clear;
//     NChequeBonCtrGCbx.Clear;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.ClientTable.Refresh;
   MainForm.Bonv_ctrTable.Refresh;
   MainForm.Bonv_ctr_listTable.Refresh;
//   MainForm.Mode_paiementTable.Refresh;
//   MainForm.CompteTable.Refresh;
   BonCtrPListDataS.DataSet.Refresh;
//   BonCtrF.BonCtrListDataS.DataSet.Refresh;
   MainForm.Bonv_ctrTable.Refresh;
   Refresh;


  begin
    EnableBonCtr;
     end;


 codeCT:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bonv_ctrTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_ctrTable.Insert;
        MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:=1;
        MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:= 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
        MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:=TimeOf(Now);
        MainForm.Bonv_ctrTable.Post;
        codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
      end else
          begin
            MainForm.Bonv_ctrTable.Last;
            codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
            MainForm.Bonv_ctr_listTable.Active:=False;
            MainForm.Bonv_ctr_listTable.SQL.Clear;
            MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(codeCT));
            MainForm.Bonv_ctr_listTable.Active:=True;

           if MainForm.Bonv_ctr_listTable.RecordCount <= 0 then
           begin
        //   MainForm.Bonv_ctrTable.Last;
           codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
           end else
           begin

           MainForm.Bonv_ctrTable.Insert;
           MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:= codeCT + 1;
           MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:=  'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeCT + 1)]);
           MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
           MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:= TimeOf(Now);
           MainForm.Bonv_ctrTable.Post;

           end;
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
 //   BonCtrTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
 //   BonCtrTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonCtrTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonCtrRenduLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
      BonCtrRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
 //   BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
 //   BonCtrGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr']   ;
 NumBonCtrGEdt.Caption := 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     ProduitBonCtrGCbx.SetFocus;

     Tag := 0;

     MainForm.Bonv_ctr_listTable.Refresh;
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxKeyPress(Sender: TObject;
  var Key: Char);
  var CodeCT,CodeCB,CodeP : Integer;
      lookupResultRefP : Variant;
      NomP: String;

begin

   if key = #13 then
 begin
 if ProduitBonCtrGCbx.Text <>'' then
 begin
  key := #0;


  if ClientBonCtrGCbx.Text<> '' then
   begin
     MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;

   end;
  //      if ResherchPARDesProduitsRdioBtn.Checked then
      begin
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonCtrGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
        if Not (MainForm.ProduitTable.IsEmpty) then
        begin
        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

        end else
        begin
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonCtrGCbx.Text )+')' ;
          MainForm.SQLQuery.Active:=True;
          if MainForm.SQLQuery.FieldValues['code_p'] <> null then
         begin
          CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
         end;

          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonCtrGCbx.Text)+')';
          MainForm.ProduitTable.Active:=True;
          CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
        end;

         lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonv_ctr_listTable.DisableControls;
            MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
            MainForm.Bonv_ctr_listTable.Active:=False;
            MainForm.Bonv_ctr_listTable.SQL.Clear;
            MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list ORDER by code_bvctrl' ;
            MainForm.Bonv_ctr_listTable.Active:=True;

            MainForm.Bonv_ctr_listTable.Last;
             if  MainForm.Bonv_ctr_listTable.IsEmpty then
             begin
               MainForm.Bonv_ctr_listTable.Last;
               CodeCT := 1;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.Last;
                  CodeCT:= MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] + 1 ;
                 end;

             MainForm.Bonv_ctr_listTable.Last;
             MainForm.Bonv_ctr_listTable.Append;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl']:= CodeCT ;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
             MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_ctr_listTable.FieldValues['tva_p']:=  MainForm.ProduitTable.FieldValues['tva_p'] ;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonCtrGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonv_ctr_listTable.Post ;
             MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

            MainForm.Bonv_ctr_listTable.Active:=False;
            MainForm.Bonv_ctr_listTable.SQL.Clear;
            MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
            MainForm.Bonv_ctr_listTable.Active:=True;

            ProduitBonCtrGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_ctr_listTable.EnableControls;
           MainForm.Bonv_ctr_listTable.Last;
           if ClientBonCtrGCbx.Text<>'' then
            begin
            ValiderBVCtrBonCtrGBtn.Enabled:= True;
            ValiderBVCtrBonCtrGBtn.ImageIndex:=12;
            end;

            end;


                 sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

     end else
     begin

      FSplashAddUnite:=TFSplashAddUnite.Create(Application);
      FSplashAddUnite.Image1.ImageIndex:=3;
      FSplashAddUnite.Width:=300;
      FSplashAddUnite.Height:=160;
      FSplashAddUnite.Panel1.Color:= $0028CAFE;
      FSplashAddUnite.Color:= $00EFE9E8;
      FSplashAddUnite.LineP.Color:=$0028CAFE;
      FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
      FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
      FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
      FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
      if  MainForm.Bonv_ctr_listTable.FieldValues['code_p'] <> NULL then
      begin
      NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
      end else begin
        NomP:='';
      end;
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
      FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
      FSplashAddUnite.Top:=   (MainForm.Top + MainForm.Height div 2) - (FSplashAddUnite.Height div 2);

      FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 23 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
      FormStyle:=fsNormal;
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=5;
     end;


      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;

     end;
//--------------------------------------------------------------------------------------------------------------------
          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
          MainForm.ProduitTable.Active := True;

         MainForm.Bonv_ctr_listTable.Refresh;
        DataModuleF.Top5produit.Refresh;
//        ProduitBonCtrGCbx.AutoDropDown:=False;
         ProduitBonCtrGCbx.SelectAll;

     end;
     MainForm.Bonv_ctr_listTable.Last;
 end;
end;

procedure TBonCtrGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
var
HTaskbar:HWND;
OldVal:LongInt;
begin
//Find handle of TASKBAR
HTaskBar:=FindWindow('Shell_TrayWnd',nil);
//Turn SYSTEM KEYS Back ON,Only Win 95/98/ME
SystemParametersInfo(97,Word(False),@OldVal,0);
//Enable the taskbar
EnableWindow(HTaskBar,True);
//Show the taskbar
ShowWindow(HTaskbar,SW_SHOW);

 if ValiderBVCTRBonCtrGImg.ImageIndex = 1 then
  begin

    MainForm.Bonv_ctrTable.Refresh;

    MainForm.Bonv_ctr_listTable.Refresh;
  end;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

   {       MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
          MainForm.Mode_paiementTable.Active:=True;
          MainForm.Mode_paiementTable.EnableControls;

          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
          MainForm.CompteTable.Active:=True;
          MainForm.CompteTable.EnableControls;
        }

          MainForm.Bonv_ctr_listTable.Active:=false;
          MainForm.Bonv_ctr_listTable.SQL.Clear;
          MainForm.Bonv_ctr_listTable.SQL.Text:='Select * FROM bonv_ctr_list' ;
          MainForm.Bonv_ctr_listTable.Active:=True;
          MainForm.Bonv_ctr_listTable.EnableControls;

  MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';



//  FormatSettings.DecimalSeparator := '.';
end;

procedure TBonCtrGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

Var   CodeCTR : Integer;
begin
CodeCTR := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonCtrGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonCtrGCbx.StyleElements:= [];

      ClientBonCtrGCbx.SetFocus;
      CanClose := false;
    end else
    begin
      if  RequiredClientGlbl.Visible <> True then
     begin

         if  (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = false)  then
         begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;



          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;

          if RemiseBonCtrGEdt.Text<>'' then
          begin
             MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=StrToCurr(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=0;
                   end;


          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_ctrTable.Post;
          MainForm.Bonv_ctrTable.EnableControls;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(CodeCTR));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(CodeCTR));
            MainForm.RegclientTable.Refresh ;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;
           end else
               begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  ClientBonCtrGCbx.StyleElements:= [];
                  RequiredClientGlbl.Caption:= 'Ce Client est bloqué' ;
                  RequiredClientGlbl.Visible:= True;
                  NameClientGErrorP.Visible:= True;
                  ClientBonCtrGCbx.SetFocus;
                  CanClose:= False;
               end;

        end;
  end  else
  begin

       if  (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = false)  then
         begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;

          if RemiseBonCtrGEdt.Text<>'' then
          begin
             MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=StrToCurr(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=0;
                   end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_ctrTable.Post;
          MainForm.Bonv_ctrTable.EnableControls;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(CodeCTR));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(CodeCTR));
            MainForm.RegclientTable.Refresh ;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;


     CanClose:= True;
  end;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxDropDown(Sender: TObject);
var
I : Integer;
  begin

          ClientBonCtrGCbx.Items.Clear;
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
          MainForm.ClientTable.Active:=True;

       MainForm.ClientTable.first;

     for I := 0 to MainForm.ClientTable.RecordCount - 1 do
     if MainForm.ClientTable.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonCtrGCbx.Items.Add(MainForm.ClientTable.FieldByName('nom_c').AsString);
       MainForm.ClientTable.Next;
      end;

     MainForm.ClientTable.EnableControls;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxChange(Sender: TObject);
begin    
 if RequiredClientGlbl.Visible <> True then
 begin
  Label17.Caption:=ClientBonCtrGCbx.Text;
 end;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxExit(Sender: TObject);
//var CodeC: Integer;
//OLDCreditC : Currency;
begin

  if ClientBonCtrGCbx.Text <> '' then
    begin
   //  ClientBonCtrGCbxChange(Sender);
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
          if NOT MainForm.ClientTable.IsEmpty then
     begin
            if MainForm.ClientTable.FieldByName('activ_c').AsBoolean <> False then
      begin

      if (MainForm.ClientTable.IsEmpty) then
      begin
       ClientBonCtrGCbx.Text := 'Comptoir';
       Label17.Caption:=ClientBonCtrGCbx.Text;
   //    BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     //  BonCtrGClientNEWCredit.Caption:=BonCtrGClientOLDCredit.Caption;
       exit;
      end;
      {CodeC:= MainForm.ClientTable.FieldValues['code_c'] ;

      MainForm.Bonv_livTableCredit.DisableControls;
      MainForm.Bonv_livTableCredit.Active:=false;
      MainForm.Bonv_livTableCredit.SQL.Clear;
      MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv WHERE valider_bvliv = true AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_bvliv '  ;
      MainForm.Bonv_livTableCredit.Active:=True;

      while NOT (MainForm.Bonv_livTableCredit.Eof) do
     begin
     OLDCreditC := OLDCreditC + MainForm.Bonv_livTableCredit.FieldValues['MontantRes'];
     MainForm.Bonv_livTableCredit.Next;
     end;
      MainForm.Bonv_livTableCredit.EnableControls;
      if NOT (MainForm.Bonv_livTableCredit.IsEmpty )then
      begin
       MainForm.Bonv_livTableCredit.last;
       BonCtrGClientOLDCredit.Caption:= CurrToStrF(OLDCreditC,ffNumber,2) ;

       if NOT (BonCtrPListDataS.DataSet.IsEmpty) then
        begin
         BonCtrGClientNEWCredit.Caption:=
         CurrToStrF((MainForm.Bonv_livTableCredit.FieldValues['MontantRes'])+(StringReplace(BonCtrResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
        end;
        end else
        begin
         BonCtrGClientOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
        end;

      MainForm.Bonv_livTableCredit.DisableControls;
      MainForm.Bonv_livTableCredit.Active:=false;
      MainForm.Bonv_livTableCredit.SQL.Clear;
      MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv '  ;
      MainForm.Bonv_livTableCredit.Active:=True;
      MainForm.Bonv_livTableCredit.last;
      MainForm.Bonv_livTableCredit.EnableControls;
      }
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;
//      if NOT (BonCtrPListDataS.DataSet.IsEmpty) then
//      begin
//      ValiderBVlivBonCtrGBtn.Enabled:= True;
//      ValiderBVlivBonCtrGBtn.ImageIndex:=12;
//      end;



            ClientBonCtrGCbx.StyleElements:= [seFont,seBorder,seBorder];
            RequiredClientGlbl.Visible:= False;
            NameClientGErrorP.Visible:= False;
         end else
             begin
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              ClientBonCtrGCbx.StyleElements:= [];
              RequiredClientGlbl.Caption:='Ce Client est bloqué';
              RequiredClientGlbl.Visible:= True;
              NameClientGErrorP.Visible:= True;
              ClientBonCtrGCbx.SetFocus;
             end;
         end else
              begin
                ClientBonCtrGCbx.Text:= 'Comptoir';
                MainForm.ClientTable.Active:=false;
                MainForm.ClientTable.SQL.Clear;
                MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
                MainForm.ClientTable.Active:=True;
                MainForm.ClientTable.EnableControls;
              end;
    end else
    begin
     ClientBonCtrGCbx.Text:= 'Comptoir';
     Label17.Caption:=ClientBonCtrGCbx.Text;
//     ClientBonCtrGCbxEnter(Sender) ;
//    CompteBonCtrGCbxEnter(Sender);
//     ModePaieBonCtrGCbxDropDown(Sender);
//     ModePaieBonCtrGCbx.ItemIndex:=0;
//     CompteBonCtrGCbx.ItemIndex:=0;

//     BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
//     BonCtrGClientNEWCredit.Caption:=BonCtrGClientOLDCredit.Caption;
     end;
end;

procedure TBonCtrGestionF.EnterAddProduitBonCtrGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonCtrGCbxKeyPress(Sender, key);
end;

procedure TBonCtrGestionF.BonCtrPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonCtrPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonCtrGBtn.Visible:= True;
    ClearProduitBonCtrGBtn.Visible:= True;

    if (ClientBonCtrGCbx.Text<>'') AND (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean <> True)  then
    begin
    ValiderBVCtrBonCtrGBtn.Enabled:= True;
    ValiderBVCtrBonCtrGBtn.ImageIndex:=11;
    ExValiderBVCtrBonCtrGBtn.Enabled:= True;
    ExValiderBVCtrBonCtrGBtn.ImageIndex:=13;
    end;


    //RemiseTypeBonCtrGCbx.Enabled:= True;

   if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] <> True then
   begin

    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_ctr_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;

    BonCtrGOLDStock.Caption:=  floatTostrF((MainForm.ProduitTable.FieldValues['QutDispo']),ffNumber,14,2);
    BonCtrGNEWStock.Caption:=  floatTostrF(((MainForm.ProduitTable.FieldValues['QutDispo'])-(MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] * MainForm.Bonv_ctr_listTable.FieldValues['cond_p'] )),ffNumber,14,2);

    if(StrToFloat (StringReplace(BonCtrGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
    begin
     Timer1.Enabled:= true;
    end else
        begin
        Timer1.Enabled:= False;
        Label20.Visible:=false;
        end;

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ';
    MainForm.ProduitTable.Active:=True;
    MainForm.ProduitTable.EnableControls;

    RemisePerctageBonCtrGEdt.Enabled:=True;
    RemiseBonCtrGEdt.Enabled:=True;

   end;
     ProduitsListDBGridEh.ReadOnly:=False;

    end else
    begin
    DeleteProduitBonCtrGBtn.Visible:= False;
    ClearProduitBonCtrGBtn.Visible:= False;
    Timer1.Enabled:=False;
    Labell20.Visible:= False;

    ValiderBVCtrBonCtrGBtn.Enabled:= False;
    ValiderBVCtrBonCtrGBtn.ImageIndex:=12;
    ExValiderBVCtrBonCtrGBtn.Enabled:= False;
    ExValiderBVCtrBonCtrGBtn.ImageIndex:=14;

    RemisePerctageBonCtrGEdt.Enabled:=False;
    RemiseBonCtrGEdt.Enabled:=False;
    //RemiseTypeBonCtrGCbx.Enabled:= False;

    RemisePerctageBonCtrGEdt.Text:='';
    RemiseBonCtrGEdt.Text:='';
    //RemiseTypeBonCtrGCbx.Text:='';
    BonCtrGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonCtrGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

     ProduitsListDBGridEh.ReadOnly:=True;
  end;
end;

procedure TBonCtrGestionF.FormActivate(Sender: TObject);
Var

HTaskbar:HWND;
OldVal:LongInt;
begin
 try
  //Find handle of TASKBAR
  HTaskBar:=FindWindow('Shell_TrayWnd',nil);
  //Turn SYSTEM KEYS off, Only Win 95/98/ME
  SystemParametersInfo(97,Word(True),@OldVal,0);
  //Disable the taskbar
  EnableWindow(HTaskBar,False);
  //Hide the taskbar
  ShowWindow(HTaskbar,SW_HIDE);
 finally
  with BonCtrGestionF do
  begin
    BorderStyle:=bsNone;
    FormStyle:=fsStayOnTop;
    Left:=0;
    Top:=0;
    Height:=Screen.Height;
    Width:=Screen.Width;
  end;
 end

end;

procedure TBonCtrGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key=#13 ) OR (Key=#9) then
  begin
         DataModuleF.Top5produit.Refresh;
         Refresh_PreservePosition;
   with TDBGridEh(Sender) do
      begin
     if SelectedIndex < (FieldCount-1) then
     SelectedIndex := SelectedIndex+1
     else
     SelectedIndex := 0;
    end;
   end;
end;

procedure TBonCtrGestionF.DeleteProduitBonCtrGBtnClick(Sender: TObject);
begin
 if  MainForm.Bonv_ctr_listTable.RecordCount = 1 then
 begin
    DataModuleF.Top5produit.Refresh;

    MainForm.Bonv_ctr_listTable.DisableControls;
   // MainForm.Bonv_ctr_listTable.Refresh;
    MainForm.Bonv_ctr_listTable.Delete;
    MainForm.Bonv_ctr_listTable.Refresh;
    ProduitsListDBGridEh.Refresh;
    MainForm.Bonv_ctr_listTable.EnableControls;
    ClientBonCtrGCbx.StyleElements:= [];
 //   RequiredClientGlbl.Visible:= False;
//    NameClientGErrorP.Visible:= False;
//     BonCtrTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonCtrTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonCTotalTTCNewLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonCtrRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonCtrRenduLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);

//    BonCtrGClientNEWCredit.Caption:= BonCtrTotalTTCLbl.Caption;
 end else
 if MainForm.Bonv_ctr_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      MainForm.Bonv_ctr_listTable.Refresh;
      MainForm.Bonv_ctr_listTable.EnableControls;
     end;
end;

procedure TBonCtrGestionF.ClearProduitBonCtrGBtnClick(Sender: TObject);
begin
  FSplashAddUnite:=TFSplashAddUnite.Create(Application);
  FSplashAddUnite.Width:=350;
  FSplashAddUnite.Height:=160;
  FSplashAddUnite.Panel1.Color:=  $004735F9;
  FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
  FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
  FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
  FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;

  FSplashAddUnite.NameAddUniteSLbl.Caption:='Voulez-vous vraiment supprimer tous  '+ sLineBreak +  sLineBreak +'les produits de ce Bon ?' ;
  FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  FSplashAddUnite.Image1.Visible:=True;
  FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression des Produits!!';
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
  FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
  FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
  FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   (MainForm.Top + MainForm.Height div 2) - (FSplashAddUnite.Height div 2);
  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
  FormStyle:=fsNormal;
//  FormStyle:= fsNormal;
  FSplashAddUnite.Show;
  FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 22 ;
end;

procedure TBonCtrGestionF.ListAddProduitBonCtrGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonCtrGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);
  FastProduitsListF.Tag := 4;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FormStyle:=fsNormal;
  FastProduitsListF.ShowModal;

end;

procedure TBonCtrGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
end;

procedure TBonCtrGestionF.sSpeedButton7Click(Sender: TObject);
begin
  MainForm.Bonv_ctrTable.First;
  MainForm.Bonv_ctrTable.Refresh;
  MainForm.Bonv_ctr_listTable.Refresh;

  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = True then
  begin
       FSplashVersement.DisableBonCtr;
  end;
  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = False then
   begin
     EnableBonCtr;
    end;


  if (MainForm.Bonv_ctrTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_c']<> null) then
  begin
  ClientBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
  end;


  if  (MainForm.Bonv_ctrTable.FieldValues['MontantRen']<>null)  then
  begin
  BonCtrRenduLbl.Caption:=CurrToStrF(((MainForm.Bonv_ctrTable.FieldValues['MontantRen'])),ffNumber,2) ;
  end;
end;

procedure TBonCtrGestionF.sSpeedButton6Click(Sender: TObject);
begin
  MainForm.Bonv_ctrTable.Prior;
  MainForm.Bonv_ctrTable.Refresh;
  MainForm.Bonv_ctr_listTable.Refresh;

  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = True then
  begin
       FSplashVersement.DisableBonCtr;
  end;
  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = False then
   begin
     EnableBonCtr;
    end;


  if (MainForm.Bonv_ctrTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_c']<> null) then
  begin
  ClientBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
  end;
//  if (MainForm.Bonv_ctrTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonv_ctrTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['Compte'];
//  end;


  if  (MainForm.Bonv_ctrTable.FieldValues['MontantRen']<>null)  then
  begin
  BonCtrRenduLbl.Caption:=CurrToStrF(((MainForm.Bonv_ctrTable.FieldValues['MontantRen'])),ffNumber,2) ;
  end;
end;

procedure TBonCtrGestionF.sSpeedButton5Click(Sender: TObject);
begin
  MainForm.Bonv_ctrTable.Next;
  MainForm.Bonv_ctrTable.Refresh;
  MainForm.Bonv_ctr_listTable.Refresh;

  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = True then
  begin
       FSplashVersement.DisableBonCtr;
  end;
  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = False then
   begin
     EnableBonCtr;
    end;


  if (MainForm.Bonv_ctrTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_c']<> null) then
  begin
  ClientBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
  end;
//  if (MainForm.Bonv_ctrTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonv_ctrTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['Compte'];
//  end;

  if  (MainForm.Bonv_ctrTable.FieldValues['MontantRen']<>null)  then
  begin
  BonCtrRenduLbl.Caption:=CurrToStrF(((MainForm.Bonv_ctrTable.FieldValues['MontantRen'])),ffNumber,2) ;
  end;
end;

procedure TBonCtrGestionF.sSpeedButton4Click(Sender: TObject);
begin
  MainForm.Bonv_ctrTable.Last;
  MainForm.Bonv_ctrTable.Refresh;
  MainForm.Bonv_ctr_listTable.Refresh;

  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = True then
  begin
       FSplashVersement.DisableBonCtr;
  end;
  if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] = False then
   begin
     EnableBonCtr;
    end;


  if (MainForm.Bonv_ctrTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_c']<> null) then
  begin
  ClientBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
  end;
//  if (MainForm.Bonv_ctrTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonv_ctrTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_ctrTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldValues['Compte'];
//  end;

  if  (MainForm.Bonv_ctrTable.FieldValues['MontantRen']<>null)  then
  begin
  BonCtrRenduLbl.Caption:=CurrToStrF(((MainForm.Bonv_ctrTable.FieldValues['MontantRen'])),ffNumber,2) ;
  end;
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtChange(Sender: TObject);
var BonLTotalHT,RemisePerctageBonCtr,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldClientCredit : Currency;
begin
        if RemisePerctageBonCtrGEdt.Text<>'' then
        begin
             if RemisePerctageBonCtrGEdt.Text <> '' then
            begin
            RemisePerctageBonCtr:=StrToFloat(StringReplace(RemisePerctageBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonCTotalTTCNewLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonCTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;

    BonCtrTotalTTCLbl.Caption:= FloatToStrF(( NewTTC - ((NewTTC * RemisePerctageBonCtr)/100)),ffNumber,14,2);

            if BonCTotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonCTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonCtrTotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonCtrTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonCtrGEdt.Focused then
         begin
         RemiseBonCtrGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


//         BonCtrRenduLbl.Caption:=BonCtrTotalTTCLbl.Caption;

//           if BonCtrTotalHTLbl.Caption <>'' then
//            begin
//            BonLTotalHT:=StrToFloat (StringReplace(BonCtrTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
//            end;

         NewHT:=StrToFloat (StringReplace(BonCTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonCRemiseHTNewLbl.Caption:= FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);

//            if BonCtrGClientOLDCredit.Caption <>'' then
//            begin
//            OldClientCredit:=StrToFloat (StringReplace(BonCtrGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
//            end;

//        BonCtrGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonCtrGEdt.Text:='';
             BonCRemiseHTNewLbl.Caption:='0';
             BonCtrTotalTTCLbl.Caption := BonCTotalTTCNewLbl.Caption;
//             BonCtrRenduLbl.Caption:=BonCtrTotalTTCLbl.Caption;
    //         BonCtrTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
//             BonCTotalHTNewLbl.Caption:=BonCtrTotalHTLbl.Caption;
//             BonCtrGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);

//              if BonCtrGClientOLDCredit.Caption <>'' then
//              begin
//              OldClientCredit:=StrToFloat (StringReplace(BonCtrGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
//             end;
//              if BonCtrGClientOLDCredit.Caption <>'' then
//              begin
//              NewTTC:=StrToFloat (StringReplace(BonCtrTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
//              end;
//           BonCtrGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
            end;
end;

procedure TBonCtrGestionF.RemiseBonCtrGEdtChange(Sender: TObject);
var RemiseBonCtrG,BonLTotalHT,BonLTotalTVA,OLDTTC : Currency;
begin
if RemiseBonCtrGEdt.Focused then
 begin
      if RemiseBonCtrGEdt.Text<>'' then
     begin
     RemiseBonCtrG:=StrToFloat (StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
     end;
     if (RemiseBonCtrGEdt.Text<>'') AND (RemiseBonCtrG<>0) then
    begin
//       if RemiseTypeBonCtrGCbx.ItemIndex = 0 then
//       begin
//         if BonCtrTotalHTLbl.Caption<>'' then
//         begin
//         BonLTotalHT:=StrToFloat (StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
//         end;
//         if BonCtrTotalTVALbl.Caption<>'' then
//         begin
//          BonLTotalTVA:=StrToFloat (StringReplace(BonCtrTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
//         end;
//         RemisePerctageBonCtrGEdt.Text := FloatToStrF(((RemiseBonCtrG / BonLTotalHT) * 100),ffNumber,14,2) ;
//           end;

//      if RemiseTypeBonCtrGCbx.ItemIndex = 1 then
//        begin
         if BonCTotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonCtrGEdt.Text := FloatToStrF(((RemiseBonCtrG / OLDTTC) * 100),ffNumber,14,2) ;
//        end;
    end else
        begin
          BonCRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonCtrGEdt.Text:='';
   //       BonCTotalHTNewLbl.Caption:=BonCtrTotalHTLbl.Caption;
        end;
 end;
end;

procedure TBonCtrGestionF.ValiderBVCtrBonCtrGBtn1Click(Sender: TObject);
begin
//    if ClientBonCtrGCbx.Text <> '' then
//    begin
           //-------- Show the splash screan for the adding comptes ---------//
       FSplashVersement:=TFSplashVersement.Create(Application);
       FSplashVersement.Width:=561;
       FSplashVersement.Label3.Caption:='Remise:';
       FSplashVersement.Label8.Caption:='Montant:';
       FSplashVersement.Label10.Caption:='Rendu:';


       FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
       FSplashVersement.Top:=  (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

     if RemiseBonCtrGEdt.Text <> '' then
     begin
     FSplashVersement.OldCreditVersementSLbl.Caption:= FloatToStrF(((StrToFloat (StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll])))),ffNumber,14,2);

     end else
         begin
           FSplashVersement.OldCreditVersementSLbl.Caption:= FloatToStrF(0,ffNumber,14,2);
         end;


        FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
             (StrToFloat (StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

//        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((
//
//             (StrToFloat (StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll])))
//             ),ffNumber,14,2);





        FSplashVersement.Tag := 3 ;
        FSplashVersement.OKVersementSBtn.Tag:= 3 ;

    //  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );

       FormStyle:=fsNormal;
       FSplashVersement.Show;

        Timer1.Enabled:=False;

//    end else
//    begin
//      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
//      ClientBonCtrGCbx.StyleElements:= [];
//      RequiredClientGlbl.Visible:= True;
//      NameClientGErrorP.Visible:= True;
//
//      ClientBonCtrGCbx.SetFocus;
//    end;
end;

procedure TBonCtrGestionF.EditBVCtrBonCtrGBtn1Click(Sender: TObject);
begin

//      MainForm.ClientTable.DisableControls;
//      MainForm.ClientTable.Active:=false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
//      MainForm.ClientTable.Active:=True;
 // this is to enable the componets to edit the bon

  EnableBonCtr;

 // this is to unvalider the bon
  begin
  MainForm.Bonv_ctrTable.Edit;
  MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean:= False;
  MainForm.Bonv_ctrTable.Post;
  end;


// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
//  BonCtrGClientOLDCredit.Caption:=
//  CurrToStrF((((MainForm.ClientTable.FieldValues['oldcredit_c'])-(StringReplace(BonCtrResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

  BonCtrRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonCtrRenduLbl.Caption:= FloatToStrF(0,ffNumber,14,2);



//      MainForm.ClientTable.Active:=false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
//      MainForm.ClientTable.Active:=True;
//      MainForm.ClientTable.EnableControls ;

 //----------------------------------------

      begin
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p FROM bonv_ctr_list WHERE code_bvctr =  '
                                                 + IntToStr (MainForm.Bonv_ctrTable.FieldValues['code_bvctr'])
                                                 + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.DisableControls;
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

            MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
          MainForm.Bonv_ctrTable.Refresh;

     end;

end;

procedure TBonCtrGestionF.ExValiderBVCtrBonCtrGBtn1Click(Sender: TObject);
var CodeOCB,CodeRF : Integer;
 begin


//     BonCtrRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);

//     BonCtrRenduLbl.Caption:=  FloatToStrF((
//              (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
//             -
//              (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
//             ),ffNumber,14,2);

//     BonCtrGClientNEWCredit.Caption := ResteVersementSLbl.Caption;

       FSplashVersement.DisableBonCtr;



     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

//--- this is for adding to the priduit
      begin
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p FROM bonv_ctr_list WHERE code_bvctr =  '
                                                 + IntToStr (MainForm.Bonv_ctrTable.FieldValues['code_bvctr'])
                                                 + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.DisableControls;
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

            MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
          MainForm.Bonv_ctrTable.Refresh;

     end;
//--- this is to set the bon ctrration fileds
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(ClientBonCtrGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

//          MainForm.Mode_paiementTable.DisableControls;
//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ModePaieBonCtrGCbx.Text )+')'  ;
//          MainForm.Mode_paiementTable.Active:=True;
//
//          MainForm.CompteTable.DisableControls;
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(CompteBonCtrGCbx.Text )+')'  ;
//          MainForm.CompteTable.Active:=True;

          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
//          MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bonv_ctrTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
//          MainForm.Bonv_ctrTable.FieldValues['obser_bvctr']:= ObserBonCtrGMem.Text;
//          MainForm.Bonv_ctrTable.FieldValues['num_cheque_bvctr']:= NChequeBonCtrGCbx.Text;
          MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').AsCurrency:= StrToCurr(StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if RemiseBonCtrGEdt.Text<>'' then
          begin
          MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=StrToCurr(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=0;
                   end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean:= True;
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;

//          if (LowerCase(ModePaieBonCtrGCbx.Text)='espèce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
//          begin
//           MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:=1 ;
//          end;
//           if (LowerCase(ModePaieBonCtrGCbx.Text)='chèque') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
//          begin
//           MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:=2 ;
//          end;
//          if (LowerCase(ModePaieBonCtrGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
//             OR (LowerCase(ModePaieBonCtrGCbx.Text)='À terme' ) then
//          begin
//           MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:=3 ;
//          end;

          MainForm.Bonv_ctrTable.Post;

  //------------------------------------------------------------------------------------------------------------------------------------------------------

        begin
         if Tag = 0 then
           begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
             MainForm.RegclientTable.Last;
             CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
            end else
                begin
                 CodeRF:= 1;
              end;

            MainForm.RegclientTable.Append;
            MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
            MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
            MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonCtrGEdt.Caption;
            MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
            MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
            MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
//            MainForm.RegclientTable.FieldValues['obser_rc']:= ObserBonCtrGMem.Text;
//            MainForm.RegclientTable.FieldValues['num_cheque_rc']:= NChequeBonCtrGCbx.Text;
            MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;

            MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

//            if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='espèce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
//            begin
//             MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
//            end;
//             if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='chèque') OR (LowerCase(BonCtrGestionFodePaieBonCtrGCbx.Text)='cheque') then
//            begin
//             MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
//            end;
//            if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='à terme' ) OR (LowerCase(BonCtrGestionFModePaieBonCtrGCbx.Text)='a terme' )
//               OR (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='À terme' ) then
//            begin
//             MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
//            end;

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) ;
                MainForm.RegclientTable.Active:=True;


                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonCtrGEdt.Caption;
                  MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                  MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                  MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
//                  MainForm.RegclientTable.FieldValues['obser_rc']:= ObserBonLivGMem.Text;
//                  MainForm.RegclientTable.FieldValues['num_cheque_rc']:= NChequeBonLivGCbx.Text;
                  MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;

                  MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

//                  if (LowerCase(ModePaieBonCtrGCbx.Text)='espèce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
//                  begin
//                   MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
//                  end;
//                   if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='chèque') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
//                  begin
//                   MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
//                  end;
//                  if (LowerCase(ModePaieBonCtrGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
//                     OR (LowerCase(ModePaieBonCtrGCbx.Text)='À terme' ) then
//                  begin
//                   MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
//                  end;

                  MainForm.RegclientTable.Post;
                  MainForm.RegclientTable.Refresh;

                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ';
                MainForm.RegclientTable.Active:=True;
                MainForm.RegclientTable.EnableControls;

              end;

        end;

 //-----------------------------------------------------------------------------------------------------------------------------------------------------------





     //     MainForm.Bona_recTable.EnableControls;

//          MainForm.ClientTable.Edit;
//          MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency:=
//          ((StrToCurr(StringReplace(BonCtrGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
//          MainForm.ClientTable.Post;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

                                        //--- this is for adding the money to the caisse----
         begin

          if Tag = 0 then
            begin
                  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                  if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                  begin
                  MainForm.Opt_cas_bnk_CaisseTable.Last;
                  CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                  end else
                      begin
                       CodeOCB:= 1;
                      end;

                    MainForm.Opt_cas_bnk_CaisseTable.Append;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+NumBonCtrGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonCtrGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
            //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='espèce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
        //            begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
        //            end;
        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='chèque') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
        //            end;
        //            if (LowerCase(ModePaieBonCtrGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
        //               OR (LowerCase(ModePaieBonCtrGCbx.Text)='À terme' ) then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
        //            end;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;


                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                    MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

            end else
                begin
                  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                    MainForm.Opt_cas_bnk_CaisseTable.Edit;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+NumBonCtrGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonCtrGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
            //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='espèce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
        //            begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
        //            end;
        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='chèque') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
        //            end;
        //            if (LowerCase(ModePaieBonCtrGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
        //               OR (LowerCase(ModePaieBonCtrGCbx.Text)='À terme' ) then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
        //            end;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;


                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                    MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
                end;

         end;

//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
//          MainForm.Mode_paiementTable.Active:=True;
//          MainForm.Mode_paiementTable.EnableControls;
//
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
//          MainForm.CompteTable.Active:=True;
//          MainForm.CompteTable.EnableControls;
       end;

  end;

procedure TBonCtrGestionF.FormCreate(Sender: TObject);
begin
MainForm.Bonv_ctr_listTable.Active:=True;
if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;

procedure TBonCtrGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin


     if key = #27 then
 begin
  key := #0;

 CloseBonCtrGBtnClick(Sender);
//  Close;

 end;
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
  F = ['.'];
begin

  if not(Key in N) then
  begin
     key := #0;
  end;
  if (Key in F) then
  begin

    key :=  #44;

  end;
end;

procedure TBonCtrGestionF.GettingData;
var
  Name,Tel,Mob,Adr,MoneyWordRX : TfrxMemoView;
  str1 : string;

  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin



  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= ComptoirTicketfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= ComptoirTicketfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= ComptoirTicketfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= ComptoirTicketfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= ComptoirTicketfrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



      str1:='';
    str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
    str1[1] := Upcase(str1[1]);
    MoneyWordRX := ComptoirTicketfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
    MoneyWordRX.Text:='';
    MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

end;

procedure TBonCtrGestionF.PrintTicketBVCtrBonCtrGBtnClick(Sender: TObject);
begin
MainForm.Bonv_ctr_listTable.DisableControls;
    ComptoirTicketfrxRprt.PrepareReport;
    GettingData;
    ComptoirTicketfrxRprt.PrintOptions.ShowDialog := False;
    ComptoirTicketfrxRprt.PrepareReport;
//    ComptoirTicketfrxRprt.PrintOptions.Printer:= FOptions.PrintersListFOptionCaisseCbx.Text ;
    ComptoirTicketfrxRprt.Print;
MainForm.Bonv_ctr_listTable.EnableControls;
end;

procedure TBonCtrGestionF.sSpeedButton1Click(Sender: TObject);
begin
    GettingData;
MainForm.Bonv_ctr_listTable.DisableControls;
ComptoirTicketfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Ticket De Caisse N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger)]);
ComptoirTicketfrxRprt.Export(frxXLSExport1);
MainForm.Bonv_ctr_listTable.EnableControls;
end;

procedure TBonCtrGestionF.sSpeedButton2Click(Sender: TObject);
begin
 GettingData;
MainForm.Bonv_ctr_listTable.DisableControls;
ComptoirTicketfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Ticket De Caisse N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

ComptoirTicketfrxRprt.Export(frxPDFExport1);
MainForm.Bonv_ctr_listTable.EnableControls;
end;

procedure TBonCtrGestionF.AddBVCtrBonCtrGBtnClick(Sender: TObject);
var
  codeCT,CodeCB : integer;
begin
 Timer1.Enabled:=False;

      begin
     ClientBonCtrGCbx.Text:= 'Comptoir';
     Label17.Caption:=       'Comptoir';
//    ModePaieBonCtrGCbx.Clear;
//     CompteBonCtrGCbx.Clear;
//     NChequeBonCtrGCbx.Clear;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.ClientTable.Refresh;
   MainForm.Bonv_ctrTable.Refresh;
   MainForm.Bonv_ctr_listTable.Refresh;
//   MainForm.Mode_paiementTable.Refresh;
//   MainForm.CompteTable.Refresh;
   BonCtrPListDataS.DataSet.Refresh;
//   BonCtrF.BonCtrListDataS.DataSet.Refresh;
   MainForm.Bonv_ctrTable.Refresh;
   Refresh;


  begin
    EnableBonCtr;
     end;


 codeCT:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bonv_ctrTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_ctrTable.Insert;
        MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:=1;
        MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:= 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
        MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:=TimeOf(Now);
        MainForm.Bonv_ctrTable.Post;
        codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
      end else
          begin
            MainForm.Bonv_ctrTable.Last;
            codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
            MainForm.Bonv_ctr_listTable.Active:=False;
            MainForm.Bonv_ctr_listTable.SQL.Clear;
            MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(codeCT));
            MainForm.Bonv_ctr_listTable.Active:=True;

           if MainForm.Bonv_ctr_listTable.RecordCount <= 0 then
           begin
        //   MainForm.Bonv_ctrTable.Last;
           codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
           end else
           begin

           MainForm.Bonv_ctrTable.Insert;
           MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:= codeCT + 1;
           MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:=  'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeCT + 1)]);
           MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
           MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:= TimeOf(Now);
           MainForm.Bonv_ctrTable.Post;

           end;
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
 //   BonCtrTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
 //   BonCtrTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonCtrTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonCtrRenduLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
      BonCtrRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
 //   BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
 //   BonCtrGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr']   ;
 NumBonCtrGEdt.Caption := 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     ProduitBonCtrGCbx.SetFocus;

     Tag := 0;

     MainForm.Bonv_ctr_listTable.Refresh;

end;

procedure TBonCtrGestionF.AddClientBonCtrGBtnClick(Sender: TObject);
begin
FormStyle:=fsNormal;
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 5 ;
ClientBonCtrGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredClientGlbl.Visible:= False;
NameClientGErrorP.Visible:= False;
end;

procedure TBonCtrGestionF.EditBVCtrBonCtrGBtnClick(Sender: TObject);
begin


 // this is to enable the componets to edit the bon

  EnableBonCtr;

 // this is to unvalider the bon
  begin
  MainForm.Bonv_ctrTable.Edit;
  MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean:= False;
  MainForm.Bonv_ctrTable.Post;
  end;

  if ClientBonCtrGCbx.Text <> 'Comptoir' then
  begin
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;

// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
//  BonCtrGClientOLDCredit.Caption:=
//  CurrToStrF((((MainForm.ClientTable.FieldValues['oldcredit_c'])-(StringReplace(BonCtrResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

//      if (MainForm.ClientTable.FieldByName('code_c').AsInteger <> 1) then
//      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - ((-1)* MainForm.Bonv_ctrTable.FieldByName('MontantRen').AsCurrency);
      MainForm.ClientTable.Post;
//      end;

      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls ;
 end;

  BonCtrRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonCtrRenduLbl.Caption:= FloatToStrF(0,ffNumber,14,2);





 //----------------------------------------

      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvctrl,code_p,  qut_p, cond_p  FROM bonv_ctr_list WHERE code_bvctr =  '
                                                 + IntToStr (MainForm.Bonv_ctrTable.FieldValues['code_bvctr'])
                                                 + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
//            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_ctrTable.Refresh;

     end;
end;

procedure TBonCtrGestionF.ValiderBVCtrBonCtrGBtnClick(Sender: TObject);
begin
  if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin

       if  RequiredClientGlbl.Visible <> True then
  begin
       //-------- Show the splash screan for the adding comptes ---------//
   FSplashVersement:=TFSplashVersement.Create(Application);
   FSplashVersement.Width:=561;
   FSplashVersement.Label3.Caption:='Remise:';
   FSplashVersement.Label8.Caption:='Montant:';
   FSplashVersement.Label10.Caption:='Rendu:';

   FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
   FSplashVersement.Top:=  (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

   if RemiseBonCtrGEdt.Text <> '' then
   begin
   FSplashVersement.OldCreditVersementSLbl.Caption:= FloatToStrF(((StrToFloat (StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll])))),ffNumber,14,2);
   end else
       begin
         FSplashVersement.OldCreditVersementSLbl.Caption:= FloatToStrF(0,ffNumber,14,2);
       end;
      FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
           (StrToFloat (StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll])))
         //  -
      //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
         ),ffNumber,14,2);
    FSplashVersement.Tag := 3 ;
    FSplashVersement.OKVersementSBtn.Tag:= 3 ;
//  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
   FormStyle:=fsNormal;
   FSplashVersement.Show;

  end else
      begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          ClientBonCtrGCbx.StyleElements:= [];
          RequiredClientGlbl.Visible:= True;
          NameClientGErrorP.Visible:= True;
          ClientBonCtrGCbx.SetFocus;
      end;


  end;
end;

procedure TBonCtrGestionF.ExValiderBVCtrBonCtrGBtnClick(Sender: TObject);
var CodeOCB,CodeRF : Integer;
 begin
  if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin

        if RequiredClientGlbl.Visible <> True then
        begin

       FSplashVersement.DisableBonCtr;
       Timer1.Enabled:= False;
       Label20.Visible:= False;

     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

//--- this is for adding to the priduit
      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p,tva_p FROM bonv_ctr_list WHERE code_bvctr =  '
                                                 + IntToStr (MainForm.Bonv_ctrTable.FieldValues['code_bvctr'])
                                                 + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p,tva_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_ctrTable.Refresh;
           DataModuleF.Top5produit.Refresh;
     end;
//--- this is to set the bon ctrration fileds
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(ClientBonCtrGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

          MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').AsCurrency:= StrToCurr(StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if RemiseBonCtrGEdt.Text<>'' then
          begin
          MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=StrToCurr(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=0;
                   end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('marge_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCTRTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean:= True;
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
          if Tag = 0 then
          begin
           MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
           MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:=TimeOf(Now);
          end;

          MainForm.Bonv_ctrTable.Post;
  //------------------------------------------------------------------------------------------------------------------------------------------------------
        begin
         if Tag = 0 then
           begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
             MainForm.RegclientTable.Last;
             CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
            end else
                begin
                 CodeRF:= 1;
              end;

            MainForm.RegclientTable.Append;
            MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
            MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
            MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonCtrGEdt.Caption;
            MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
            MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
            MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;
            MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) ;
                MainForm.RegclientTable.Active:=True;

                if NOT (MainForm.RegclientTable.IsEmpty) then
                begin


                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonCtrGEdt.Caption;
                  MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                  MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                  MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;

                  MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));


                  MainForm.RegclientTable.Post;
                  MainForm.RegclientTable.Refresh;

                end else
                    begin

                        MainForm.RegclientTable.Active:=false;
                        MainForm.RegclientTable.SQL.Clear;
                        MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ';
                        MainForm.RegclientTable.Active:=True;

                         if NOT (MainForm.RegclientTable.IsEmpty) then
                        begin
                         MainForm.RegclientTable.Last;
                         CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
                        end else
                            begin
                             CodeRF:= 1;
                          end;

                        MainForm.RegclientTable.Append;
                        MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
                        MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                        MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonCtrGEdt.Caption;
                        MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
                        MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                        MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                        MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                        MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                        MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;

                        MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                        MainForm.RegclientTable.Post;
                        MainForm.RegclientTable.Refresh;

                    end;

                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ';
                MainForm.RegclientTable.Active:=True;
                MainForm.RegclientTable.EnableControls;
              end;
        end;
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

                                        //--- this is for adding the money to the caisse----
         begin

          if Tag = 0 then
            begin
                  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                  if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                  begin
                  MainForm.Opt_cas_bnk_CaisseTable.Last;
                  CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                  end else
                      begin
                       CodeOCB:= 1;
                      end;

                    MainForm.Opt_cas_bnk_CaisseTable.Append;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+NumBonCtrGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonCtrGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;


                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                    MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

            end else
                begin
                  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                  if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                  
                  begin
                    MainForm.Opt_cas_bnk_CaisseTable.Edit;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+NumBonCtrGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonCtrGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;


                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;
                  
                  end else
                      begin

                          MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                          MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                          MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                          MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                          if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                          begin
                          MainForm.Opt_cas_bnk_CaisseTable.Last;
                          CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                          end else
                              begin
                               CodeOCB:= 1;
                              end;

                            MainForm.Opt_cas_bnk_CaisseTable.Append;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+NumBonCtrGEdt.Caption;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonCtrGCbx.Text;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;

                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

                            MainForm.Opt_cas_bnk_CaisseTable.Post;
                            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                            MainForm.Opt_cas_bnk_BankTable.Refresh;


                            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                      end;

                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                    MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
                end;
         end;
       end;

           if APrintBVCtrBonCtrGSlider.SliderOn = True then
           begin
           PrintTicketBVCtrBonCtrGBtnClick(Sender);
           end;
        end  else
             begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  ClientBonCtrGCbx.StyleElements:= [];
                  RequiredClientGlbl.Visible:= True;
                  NameClientGErrorP.Visible:= True;
                  ClientBonCtrGCbx.SetFocus;
             end;

       end;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
Refresh_PreservePosition;
end;

procedure TBonCtrGestionF.CtrTop10PRODUITDBGridEhDblClick(Sender: TObject);
var CodeBR,CodeP : Integer;
lookupResultRefP : Variant;
NomP: string;
begin
     if CtrTop10PRODUITDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
        begin


        CodeP:= DataModuleF.Top5produit.FieldByName('code_p').AsInteger ;

        MainForm.ProduitTable.Active:=false;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit Where code_p = '+IntToStr(CodeP);
        MainForm.ProduitTable.Active:=True;

           lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
      MainForm.Bonv_ctr_listTable.Active:=False;
      MainForm.Bonv_ctr_listTable.SQL.Clear;
      MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list ORDER by code_bvctrl' ;
      MainForm.Bonv_ctr_listTable.Active:=True;
      MainForm.Bonv_ctr_listTable.Last;
           if  MainForm.Bonv_ctr_listTable.IsEmpty then
           begin
             MainForm.Bonv_ctr_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_ctr_listTable.Last;
                CodeBR:= MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] + 1 ;
               end;
             MainForm.Bonv_ctr_listTable.Last;
             MainForm.Bonv_ctr_listTable.Append;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl']:= CodeBR ;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
             MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_ctr_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];


           if  NOT (MainForm.ClientTable.IsEmpty) AND ( ClientBonCtrGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonv_ctr_listTable.Post ;

           MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';
           MainForm.Bonv_ctr_listTable.Last;
           MainForm.Bonv_ctr_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
          MainForm.Bonv_ctr_listTable.Active:=False;
          MainForm.Bonv_ctr_listTable.SQL.Clear;
          MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
          MainForm.Bonv_ctr_listTable.Active:=True;
          MainForm.ProduitTable.Filtered:=False;

           Refresh_PreservePosition;

   end else
       begin


        FSplashAddUnite:=TFSplashAddUnite.Create(Application);
        FSplashAddUnite.Image1.ImageIndex:=3;
        FSplashAddUnite.Width:=300;
        FSplashAddUnite.Height:=160;
        FSplashAddUnite.Panel1.Color:= $0028CAFE;
        FSplashAddUnite.Color:= $00EFE9E8;
        FSplashAddUnite.LineP.Color:=$0028CAFE;
        FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
        FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
        FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
        FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
        FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
        FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
        if  MainForm.Bonv_ctr_listTable.FieldValues['code_p'] <> NULL then
        begin
        NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
        end else begin
          NomP:='';
        end;
        FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
        FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
        FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
        FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
        FSplashAddUnite.Image1.Visible:=True;
        FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
        FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
        FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
        FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
        FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
        FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
        FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
        FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
        FSplashAddUnite.Top:=   (MainForm.Top + MainForm.Height div 2) - (FSplashAddUnite.Height div 2);

        FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
        FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
        FSplashAddUnite.OKAddUniteSBtn.Tag:= 23 ;
        AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
        FormStyle:=fsNormal;
         FSplashAddUnite.Show;
      //--- this tage = 0 is for multi name added by produit combobox----//
         FSplashAddUnite.Tag:=5;


          //---- this tag is for adding multiple rfom pupilaire table
          ProduitsListDBGridEh.Tag := 1;
       end;

        MainForm.ProduitTable.Active:=false;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ';
        MainForm.ProduitTable.Active:=True;

     end;
end;

// use this procedure to show hin when mouse move on the grid ------------------
Procedure ChangeHint(C: TControl; Const Hint: String; p: TPoint);
var
  OldHint: String;
begin
  OldHint := C.Hint;
  if Hint <> OldHint then
  begin
    C.Hint := Hint;
    Application.ActivateHint(p);
  end;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin
    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_ctr_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;


    //ProduitsListDBGridEh.hint:= ('Prix seuil de vente: '+MainForm.ProduitTable.FieldByName('prixht_p').AsString+FormatSettings.DecimalSeparator+'00'  )     ;
       Application.HintPause := 3000;      // 250 mSec before hint is shown
     Application.HintHidePause := 5000;
   ProduitsListDBGridEh.ShowHint:= True;

     ChangeHint(TDBGridEh(Sender),
      ( 'Dés: '+ (MainForm.ProduitTable.FieldValues['nom_p'])
       + sLineBreak +
         'Prix HT= '+ CurrToStrF((MainForm.ProduitTable.FieldValues['prixht_p']),ffNumber,2)
       + sLineBreak +
         'Prix TTC= '+ CurrToStrF((MainForm.ProduitTable.FieldValues['PrixATTC']),ffNumber,2)
       ),
       TDBGridEh(Sender).ClientToScreen(Point(X, Y)));


     MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit';
    MainForm.ProduitTable.Active:=True ;
    MainForm.ProduitTable.EnableControls;
  end;
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxMouseEnter(Sender: TObject);
begin
   Application.HintPause := 500;      // 250 mSec before hint is shown
   Application.HintHidePause := 5000;
   ProduitBonCtrGCbx.ShowHint:= True;
   ProduitBonCtrGCbx.Hint:='Double-cliquez ici pour afficher le clavier';
end;

procedure TBonCtrGestionF.RemiseBonCtrGEdtMouseEnter(Sender: TObject);
begin
   Application.HintPause := 500;      // 250 mSec before hint is shown
   Application.HintHidePause := 5000;
   RemiseBonCtrGEdt.ShowHint:= True;
   RemiseBonCtrGEdt.Hint:='Double-cliquez ici pour afficher le clavier';
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtMouseEnter(Sender: TObject);
begin
   Application.HintPause := 500;      // 250 mSec before hint is shown
   Application.HintHidePause := 5000;
   RemisePerctageBonCtrGEdt.ShowHint:= True;
   RemisePerctageBonCtrGEdt.Hint:='Double-cliquez ici pour afficher le clavier';
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxDblClick(Sender: TObject);
begin
try
  ShowKeyBoardBonCtrGBtnClick(Sender);
//  ProduitBonCtrGCbx.SetFocus
finally
 ProduitBonCtrGCbx.SetFocus
end;
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtDblClick(Sender: TObject);
begin
try
  ShowKeyBoardBonCtrGBtnClick(Sender);
//  RemisePerctageBonCtrGEdt.SetFocus
finally
 RemisePerctageBonCtrGEdt.SetFocus
end;
end;

procedure TBonCtrGestionF.FormPaint(Sender: TObject);
begin
DataModuleF.Top5produit.Refresh;
end;

end.
