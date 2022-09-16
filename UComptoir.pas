unit UComptoir;

interface

uses
  Winapi.Windows, MMSystem, Vcl.Imaging.jpeg, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, AdvToolBtn, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  AdvSmoothTouchKeyBoard, AdvTouchKeyboard, Vcl.Touch.Keyboard, Vcl.Buttons,
  sSpeedButton, acImage, Vcl.ComCtrls, Data.DB, System.DateUtils, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, sPanel, acSlider, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.AppEvnts,
  CPort, sPageControl, ToolPanels, frxExportBaseDialog, System.Actions,
  Vcl.ActnList;

type
  TBonCtrGestionF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BonCtrTotalTTCLbl: TLabel;
    Panel3: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
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
    CtrTop10PRODUITDBGridEh: TDBGridEh;
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
    RequiredClientGlbl: TLabel;
    NameClientGErrorP: TPanel;
    sImage1: TsImage;
    Timer2: TTimer;
    ApplicationEvents1: TApplicationEvents;
    Label30: TLabel;
    ComPort1: TComPort;
    PoleDisplayerTimerimer: TTimer;
    Label12: TLabel;
    ComptoirTicket57frxRprt: TfrxReport;
    PrinterCaisseSizeBVCtrBonCtrLbl: TLabel;
    LeftTabP: TAdvToolPanelTab;
    LeftFavTabP: TAdvToolPanel;
    FavProduitCTRPgControl: TsPageControl;
    Fav1ListTB: TsTabSheet;
    LineP: TPanel;
    Fav2ListTB: TsTabSheet;
    Panel31: TPanel;
    Fav3ListTB: TsTabSheet;
    Panel32: TPanel;
    Fav4ListTB: TsTabSheet;
    Panel33: TPanel;
    Fav5ListTB: TsTabSheet;
    Panel34: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label6: TLabel;
    ListAddProduitBonCtrGBtn: TAdvToolButton;
    NewAddProduitBonCtrGBtn: TAdvToolButton;
    EnterAddProduitBonCtrGBtn: TAdvToolButton;
    Label20: TLabel;
    ClearProduitBonCtrGBtn: TsSpeedButton;
    ShowCalculaturBonCtrGBtn: TsSpeedButton;
    ShowKeyBoardBonCtrGBtn: TsSpeedButton;
    CloseBonCtrGBtn: TsSpeedButton;
    MinimizeBonCtrGBtn: TsSpeedButton;
    sImage3: TsImage;
    sImage2: TsImage;
    BonCRemiseHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    BonCTotalHTNewLbl: TLabel;
    BonCtrTotalHTLbl: TLabel;
    BonCtrTotalTVALbl: TLabel;
    BonCTRTotalMargeLbl: TLabel;
    Label3: TLabel;
    Label29: TLabel;
    Label5: TLabel;
    DeleteProduitBonCtrGBtn: TsSpeedButton;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CameraBonCtrGBtn: TsSpeedButton;
    Panel29: TPanel;
    ProduitBonCtrGCbx: TcxComboBox;
    ProduitsListDBGridEh: TDBGridEh;
    FavList1Grd: TGridPanel;
    Fav1sp: TsSpeedButton;
    Fav2sp: TsSpeedButton;
    Fav3sp: TsSpeedButton;
    Fav4sp: TsSpeedButton;
    Fav5sp: TsSpeedButton;
    Fav6sp: TsSpeedButton;
    Fav7sp: TsSpeedButton;
    Fav8sp: TsSpeedButton;
    Fav9sp: TsSpeedButton;
    Fav10sp: TsSpeedButton;
    Fav11sp: TsSpeedButton;
    Fav12sp: TsSpeedButton;
    FavList2Grd: TGridPanel;
    Fav13sp: TsSpeedButton;
    Fav14sp: TsSpeedButton;
    Fav15sp: TsSpeedButton;
    Fav16sp: TsSpeedButton;
    Fav17sp: TsSpeedButton;
    Fav18sp: TsSpeedButton;
    Fav19sp: TsSpeedButton;
    Fav20sp: TsSpeedButton;
    Fav21sp: TsSpeedButton;
    Fav22sp: TsSpeedButton;
    Fav23sp: TsSpeedButton;
    Fav24sp: TsSpeedButton;
    FavList3Grd: TGridPanel;
    Fav25sp: TsSpeedButton;
    Fav26sp: TsSpeedButton;
    Fav27sp: TsSpeedButton;
    Fav28sp: TsSpeedButton;
    Fav29sp: TsSpeedButton;
    Fav30sp: TsSpeedButton;
    Fav31sp: TsSpeedButton;
    Fav32sp: TsSpeedButton;
    Fav33sp: TsSpeedButton;
    Fav34sp: TsSpeedButton;
    Fav35sp: TsSpeedButton;
    Fav36sp: TsSpeedButton;
    FavList4Grd: TGridPanel;
    Fav37sp: TsSpeedButton;
    Fav38sp: TsSpeedButton;
    Fav39sp: TsSpeedButton;
    Fav40sp: TsSpeedButton;
    Fav41sp: TsSpeedButton;
    Fav42sp: TsSpeedButton;
    Fav43sp: TsSpeedButton;
    Fav44sp: TsSpeedButton;
    Fav45sp: TsSpeedButton;
    Fav46sp: TsSpeedButton;
    Fav47sp: TsSpeedButton;
    Fav48sp: TsSpeedButton;
    FavList5Grd: TGridPanel;
    Fav49sp: TsSpeedButton;
    Fav50sp: TsSpeedButton;
    Fav51sp: TsSpeedButton;
    Fav52sp: TsSpeedButton;
    Fav53sp: TsSpeedButton;
    Fav54sp: TsSpeedButton;
    Fav55sp: TsSpeedButton;
    Fav56sp: TsSpeedButton;
    Fav57sp: TsSpeedButton;
    Fav58sp: TsSpeedButton;
    Fav59sp: TsSpeedButton;
    Fav60sp: TsSpeedButton;
    ChangeQUTBonCtrGBtn: TsSpeedButton;
    ChangePRIXBonCtrGBtn: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    ListClientBonCtrGBtn: TAdvToolButton;
    BonCtrTotalAHTLbl: TLabel;
    ActionList1: TActionList;
    F3: TAction;
    F4: TAction;
    F5: TAction;
    F6: TAction;
    F7: TAction;
    F8: TAction;
    F9: TAction;
    F10: TAction;
    F11: TAction;
    F12: TAction;
    Label16: TLabel;
    Label24: TLabel;
    procedure FormShow(Sender: TObject);
    procedure RemiseBonCtrGEdtDblClick(Sender: TObject);
    procedure ShowKeyBoardBonCtrGBtnClick(Sender: TObject);
    procedure ShowCalculaturBonCtrGBtnClick(Sender: TObject);
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
    procedure ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ProduitBonCtrGCbxMouseEnter(Sender: TObject);
    procedure RemiseBonCtrGEdtMouseEnter(Sender: TObject);
    procedure RemisePerctageBonCtrGEdtMouseEnter(Sender: TObject);
    procedure ProduitBonCtrGCbxDblClick(Sender: TObject);
    procedure RemisePerctageBonCtrGEdtDblClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure AddClientBonCtrGBtnClick(Sender: TObject);
    procedure ProduitBonCtrGCbxEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer2Timer(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure PoleDisplayerTimerimerTimer(Sender: TObject);
    procedure RemiseBonCtrGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CameraBonCtrGBtnClick(Sender: TObject);
    procedure Fav1spClick(Sender: TObject);
    procedure LeftFavTabPLock(Sender: TObject);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure ChangeQUTBonCtrGBtnClick(Sender: TObject);
    procedure ProduitBonCtrGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChangePRIXBonCtrGBtnClick(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure ListClientBonCtrGBtnClick(Sender: TObject);
    procedure ClientBonCtrGCbxSelect(Sender: TObject);
    procedure RemiseBonCtrGEdtClick(Sender: TObject);
    procedure F3Execute(Sender: TObject);
    procedure F4Execute(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure F6Execute(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure F8Execute(Sender: TObject);
    procedure F9Execute(Sender: TObject);
    procedure F10Execute(Sender: TObject);
    procedure F11Execute(Sender: TObject);
    procedure F12Execute(Sender: TObject);
  private
    procedure GettingData;
    procedure addingState;
    procedure deletingState;
    procedure loadData;
    procedure GettingData57;
  public

    const BCLSQL=  'SELECT BCL.code_bvctr,BCL.code_bvctrl,BCL.qut_p,BCL.prixht_p,BCL.prixvd_p,BCL.cond_p,BCL.code_p,BCL.tva_p,BCL.code_barec,P.prixht_p,P.nom_p as nomp, P.refer_p as referp,  '
              +'   (((BCL.prixvd_p * BCL.tva_p)/100)+BCL.prixvd_p) AS PrixVTTC,  '
              +'   ((BCL.prixht_p * BCL.qut_p) * cond_p) AS MontantAHT,  '
              +'   ((BCL.prixvd_p * BCL.qut_p) * cond_p) AS MontantHT,  '
              +'   (((((BCL.prixvd_p * BCL.tva_p)/100)+BCL.prixvd_p) * BCL.qut_p)*cond_p) AS MontantTTC, '
              +'   (((((((BCL.prixvd_p * BCL.tva_p)/100)+BCL.prixvd_p) * BCL.qut_p)*cond_p) )-(((BCL.prixvd_p * BCL.qut_p) * cond_p))) AS MontantTVA, '
              +'   ((P.prixht_p * BCL.qut_p)* cond_p) AS MontantAHT,  '
              +'   L.nom_l AS Localisation,  '
              +'  CASE  '
              +'       WHEN BCL.prixvd_p <> ''0''  THEN   '
              +'     CASE WHEN ((P.prixht_p * BCL.qut_p)* cond_p) <> ''0''  '
              +'       THEN ( ( (((BCL.prixvd_p * BCL.qut_p) * cond_p) - ((P.prixht_p * BCL.qut_p)* cond_p)) / ((P.prixht_p * BCL.qut_p)* cond_p) ) *100) '
              +'       ELSE ''100''   '
              +'     END            '
              +'  END AS Marge,     '
              +'   (((BCL.prixvd_p * BCL.qut_p) * cond_p) - ((P.prixht_p * BCL.qut_p)* cond_p) ) AS MargeM   '
              +' FROM bonv_ctr_list as BCL   '
              +' LEFT JOIN produit as P    '
              +'   ON BCL.code_p = P.code_p '
              +' LEFT JOIN localisation as L '
              +'   ON P.code_l = L.code_l ';


    procedure EnableBonCtr;
    procedure showInPoleClient;
    procedure DisableFavBtns;
    procedure EnableFavBtns;
    function GetWindowsVersion: string;
  end;

var
  BonCtrGestionF: TBonCtrGestionF;

implementation

{$R *.dfm}
uses
  Printers, StringTool, IniFiles, UDataModule, Winapi.ShellAPI, UMainF,
  UProduitsList, UBonCtr, USplashAddUnite, UProduitGestion, UFastProduitsList,
  USplashVersement, UOptions, UClientGestion, UClientsList, UPerissableProduit,
  UCamera;

procedure Refresh_PreservePosition;
var
  rowDelta: Integer;
  row: integer;
  recNo: integer;
  ds: TDataSet;
begin

  BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

  ds := TDBGridEh(BonCtrGestionF.ProduitsListDBGridEh).DataSource.DataSet;
  rowDelta := -1 + TDBGridEh(BonCtrGestionF.ProduitsListDBGridEh).row;
  row := ds.RecNo;
  ds.Refresh;
  with ds do
  begin
//     DisableControls;
    recNo := row;
    MoveBy(-rowDelta);
    MoveBy(rowDelta);
//     EnableControls;
  end;

  BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
end;

procedure TBonCtrGestionF.EnableFavBtns();
begin

  Fav1sp.Enabled:=  True;
  Fav2sp.Enabled:=  True;
  Fav3sp.Enabled:=  True;
  Fav4sp.Enabled:=  True;
  Fav5sp.Enabled:=  True;
  Fav6sp.Enabled:=  True;
  Fav7sp.Enabled:=  True;
  Fav8sp.Enabled:=  True;
  Fav9sp.Enabled:=  True;
  Fav10sp.Enabled:= True;
  Fav11sp.Enabled:= True;
  Fav12sp.Enabled:= True;
  Fav13sp.Enabled:= True;
  Fav14sp.Enabled:= True;
  Fav15sp.Enabled:= True;
  Fav16sp.Enabled:= True;
  Fav17sp.Enabled:= True;
  Fav18sp.Enabled:= True;
  Fav19sp.Enabled:= True;
  Fav20sp.Enabled:= True;
  Fav21sp.Enabled:= True;
  Fav22sp.Enabled:= True;
  Fav23sp.Enabled:= True;
  Fav24sp.Enabled:= True;
  Fav25sp.Enabled:= True;
  Fav26sp.Enabled:= True;
  Fav27sp.Enabled:= True;
  Fav28sp.Enabled:= True;
  Fav29sp.Enabled:= True;
  Fav30sp.Enabled:= True;
  Fav31sp.Enabled:= True;
  Fav32sp.Enabled:= True;
  Fav33sp.Enabled:= True;
  Fav34sp.Enabled:= True;
  Fav35sp.Enabled:= True;
  Fav36sp.Enabled:= True;
  Fav37sp.Enabled:= True;
  Fav38sp.Enabled:= True;
  Fav39sp.Enabled:= True;
  Fav40sp.Enabled:= True;
  Fav41sp.Enabled:= True;
  Fav42sp.Enabled:= True;
  Fav43sp.Enabled:= True;
  Fav44sp.Enabled:= True;
  Fav45sp.Enabled:= True;
  Fav46sp.Enabled:= True;
  Fav47sp.Enabled:= True;
  Fav48sp.Enabled:= True;
  Fav49sp.Enabled:= True;
  Fav50sp.Enabled:= True;
  Fav51sp.Enabled:= True;
  Fav52sp.Enabled:= True;
  Fav53sp.Enabled:= True;
  Fav54sp.Enabled:= True;
  Fav55sp.Enabled:= True;
  Fav56sp.Enabled:= True;
  Fav57sp.Enabled:= True;
  Fav58sp.Enabled:= True;
  Fav59sp.Enabled:= True;
  Fav60sp.Enabled:= True;

end;

procedure TBonCtrGestionF.DisableFavBtns();
begin

  Fav1sp.Enabled:=  False;
  Fav2sp.Enabled:=  False;
  Fav3sp.Enabled:=  False;
  Fav4sp.Enabled:=  False;
  Fav5sp.Enabled:=  False;
  Fav6sp.Enabled:=  False;
  Fav7sp.Enabled:=  False;
  Fav8sp.Enabled:=  False;
  Fav9sp.Enabled:=  False;
  Fav10sp.Enabled:= False;
  Fav11sp.Enabled:= False;
  Fav12sp.Enabled:= False;
  Fav13sp.Enabled:= False;
  Fav14sp.Enabled:= False;
  Fav15sp.Enabled:= False;
  Fav16sp.Enabled:= False;
  Fav17sp.Enabled:= False;
  Fav18sp.Enabled:= False;
  Fav19sp.Enabled:= False;
  Fav20sp.Enabled:= False;
  Fav21sp.Enabled:= False;
  Fav22sp.Enabled:= False;
  Fav23sp.Enabled:= False;
  Fav24sp.Enabled:= False;
  Fav25sp.Enabled:= False;
  Fav26sp.Enabled:= False;
  Fav27sp.Enabled:= False;
  Fav28sp.Enabled:= False;
  Fav29sp.Enabled:= False;
  Fav30sp.Enabled:= False;
  Fav31sp.Enabled:= False;
  Fav32sp.Enabled:= False;
  Fav33sp.Enabled:= False;
  Fav34sp.Enabled:= False;
  Fav35sp.Enabled:= False;
  Fav36sp.Enabled:= False;
  Fav37sp.Enabled:= False;
  Fav38sp.Enabled:= False;
  Fav39sp.Enabled:= False;
  Fav40sp.Enabled:= False;
  Fav41sp.Enabled:= False;
  Fav42sp.Enabled:= False;
  Fav43sp.Enabled:= False;
  Fav44sp.Enabled:= False;
  Fav45sp.Enabled:= False;
  Fav46sp.Enabled:= False;
  Fav47sp.Enabled:= False;
  Fav48sp.Enabled:= False;
  Fav49sp.Enabled:= False;
  Fav50sp.Enabled:= False;
  Fav51sp.Enabled:= False;
  Fav52sp.Enabled:= False;
  Fav53sp.Enabled:= False;
  Fav54sp.Enabled:= False;
  Fav55sp.Enabled:= False;
  Fav56sp.Enabled:= False;
  Fav57sp.Enabled:= False;
  Fav58sp.Enabled:= False;
  Fav59sp.Enabled:= False;
  Fav60sp.Enabled:= False;



end;

procedure TBonCtrGestionF.EnableBonCtr;
begin
  AddBVCtrBonCtrGBtn.Enabled := False;
  AddBVCtrBonCtrGBtn.ImageIndex := 8; // 7 For D
//          PrintTicketBVCtrBonCtrGBtn.ImageIndex:=28;// 4 For D
  EditBVCtrBonCtrGBtn.Enabled := False;
  EditBVCtrBonCtrGBtn.ImageIndex := 10; // 9 for D
  ValiderBVCtrBonCtrGBtn.Enabled := True;
  ValiderBVCtrBonCtrGBtn.ImageIndex := 11; //12 for D
  ExValiderBVCtrBonCtrGBtn.Enabled := True;
  ExValiderBVCtrBonCtrGBtn.ImageIndex := 13; //14 for D


  DateBonCtrGD.Enabled := True;

  ClientBonCtrGCbx.Enabled := True;
  AddClientBonCtrGBtn.Enabled := True; //
  AddClientBonCtrGBtn.ImageIndex := 10; //35 fo D
  ListClientBonCtrGBtn.Enabled:= True;
  ListClientBonCtrGBtn.ImageIndex:= 58;


  ProduitBonCtrGCbx.Enabled := True;
  EnterAddProduitBonCtrGBtn.Enabled := True;
  EnterAddProduitBonCtrGBtn.ImageIndex := 15; // 40 fo D
  ListAddProduitBonCtrGBtn.Enabled := True;
  ListAddProduitBonCtrGBtn.ImageIndex := 13; //41 fo D
  NewAddProduitBonCtrGBtn.Enabled := True;
  NewAddProduitBonCtrGBtn.ImageIndex := 4; //28 fo D
  DeleteProduitBonCtrGBtn.Enabled := True;
  DeleteProduitBonCtrGBtn.ImageIndex := 14; //36 fo D
  ClearProduitBonCtrGBtn.Enabled := True;
  ClearProduitBonCtrGBtn.ImageIndex := 16; //39 fo A
//  ProduitsListDBGridEh.DataSource.DataSet.EnableControls; //DisableControls    For A
  ProduitsListDBGridEh.Columns[2].TextEditing := True; //False for D
  ProduitsListDBGridEh.Columns[3].TextEditing := True; //False for D
  ProduitsListDBGridEh.Columns[4].TextEditing := True; //False for D
  ProduitsListDBGridEh.Options := ProduitsListDBGridEh.Options + [dgEditing] + [dgAlwaysShowSelection] + [dgMultiSelect] - [dgRowSelect]; //flip + and -  for A
  ProduitsListDBGridEh.Color := clWhite; // $00D9D7D3 for D
  ProduitsListDBGridEh.FixedColor := clwindow; //$00D9D7D3 for D
  ProduitsListDBGridEh.EvenRowColor := clwindow; //$00EFE9E8 for D
  RemisePerctageBonCtrGEdt.Enabled := True; //False for D
  RemiseBonCtrGEdt.Enabled := True; //False for D

  CtrTop10PRODUITDBGridEh.Enabled := True; //False for D
  CtrTop10PRODUITDBGridEh.Color := clWhite; // $00D9D7D3 for D
  CtrTop10PRODUITDBGridEh.FixedColor := clwindow; //$00D9D7D3 for D
  CtrTop10PRODUITDBGridEh.EvenRowColor := clwindow; //$00EFE9E8 for D

  ValiderBVCtrBonCtrGImg.ImageIndex := 1; //0 fo D
  ValiderBVCtrBonCtrGLbl.Color := $007374FF; // $004AC38B for D
  ValiderBVCtrBonCtrGLbl.Font.Color := clWhite; // clBlack for D
  ValiderBVCtrBonCtrGLbl.Caption := 'Ce bon n''est pas encore Valid�'; // 'Ce bon est Valid' for D

  CameraBonCtrGBtn.Enabled:= True;

    // Enable Fav Panel
   FavList1Grd.Color:= clWhite;
   FavList2Grd.Color:= clWhite;
   FavList3Grd.Color:= clWhite;
   FavList4Grd.Color:= clWhite;
   FavList5Grd.Color:= clWhite;
   EnableFavBtns;
   FavProduitCTRPgControl.Enabled:= True;

  end;

procedure TBonCtrGestionF.FormShow(Sender: TObject);
var
  CodeBL: Integer;
  Ini: TMemIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg: string;

  I: Integer;
  FavBtn: TsSpeedButton;
begin

  Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  APrintBVCtrBonCtrGSlider.SliderOn := Ini.ReadBool('', 'Auto Print', APrintBVCtrBonCtrGSlider.SliderOn);
  PrinterCaisseSizeBVCtrBonCtrLbl.Caption := Ini.ReadString('', 'Printer Caisse Size', PrinterCaisseSizeBVCtrBonCtrLbl.Caption);
  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

  if PoleA = True then
  begin
    try
      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
      Msg := Ini.ReadString('', 'Afficheur client Msg', Msg);

      BonCtrGestionF.ComPort1.Port := PORT; // 'COM7';
      BonCtrGestionF.ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
      BonCtrGestionF.ComPort1.Open; // open port
//          BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
      BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
      BonCtrGestionF.ComPort1.WriteUnicodeString(Msg + #13#10); // send test command
      BonCtrGestionF.ComPort1.Close;
    except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
    end;
  end;

   // Read fav Btns
  for I := 1 to 60 do
  begin
   FavBtn := (FindComponent('Fav'+IntToStr(I)+'sp') as TsSpeedButton);
   FavBtn.Caption:= Ini.ReadString('','Fav '+IntToStr(I), FavBtn.Caption);
  end;

   //Read Locked
   if Ini.ReadBool(Caption,'Fav Locked', LeftFavTabP.Locked) = True then
   begin
   LeftTabP.RollOut(LeftFavTabP);
   LeftFavTabP.Locked := Ini.ReadBool(Caption,'Fav Locked', LeftFavTabP.Locked);
   end;

  Ini.UpdateFile;
  Ini.Free;

  PoleDisplayerTimerimer.Enabled := True;

// APrintBVCtrBonCtrGSlider.SliderOn :=  FOptions.APrintOptionGSlider.SliderOn;

  begin

  // use this tage when i click AddBVCtrBonRecGBtn bon button
    if Tag = 0 then
    begin
      DateBonCtrGD.Date := EncodeDate(YearOf(Now), MonthOf(Now), DayOf(Now));

  //-- use this code to make the montants look lake money values-------//

      BonCtrTotalTTCLbl.Caption := FloatToStrF(StrToFloat(BonCtrTotalTTCLbl.Caption), ffNumber, 14, 2);
      BonCTotalTTCNewLbl.Caption := FloatToStrF(StrToFloat(BonCTotalTTCNewLbl.Caption), ffNumber, 14, 2);
      BonCtrRenduLbl.Caption := FloatToStrF(StrToFloat(BonCtrRenduLbl.Caption), ffNumber, 14, 2);
      BonCtrRegleLbl.Caption := FloatToStrF(StrToFloat(BonCtrRegleLbl.Caption), ffNumber, 14, 2);

      CodeBL := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
      NumBonCtrGEdt.Caption := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeBL]);
      if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> null) and (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0) then
      begin
        if MainForm.Bonv_ctrTable.FieldByName('clientbvctr').AsWideString <> null then
        begin
          ClientBonCtrGCbx.Text := MainForm.Bonv_ctrTable.FieldByName('clientbvctr').AsWideString;
        end;
        ProduitBonCtrGCbx.SetFocus;
      end
      else
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

  sImage1.ImageIndex := MainForm.sImage1.ImageIndex;


  if MainForm.viewprixa_ur.Checked then
      begin

          ProduitsListDBGridEh.FieldColumns['prixht_p'].Visible:= true;
//          ProduitsListDBGridEh.FieldColumns['prixht_p'].MinWidth:= 170;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].Width:= 170;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MaxWidth:= 0;

      end else
      begin

          ProduitsListDBGridEh.FieldColumns['prixht_p'].Visible:= false;
//          ProduitsListDBGridEh.FieldColumns['prixht_p'].MinWidth:= 0;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].Width:= 0;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MaxWidth:= 1;

      end;

end;

function Wow64DisableWow64FsRedirection(var Wow64FsEnableRedirection: LongBool): LongBool; stdcall; external 'Kernel32.dll' name 'Wow64DisableWow64FsRedirection';

function Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection: LongBool): LongBool; stdcall; external 'Kernel32.dll' name 'Wow64EnableWow64FsRedirection';

procedure TBonCtrGestionF.RemiseBonCtrGEdtDblClick(Sender: TObject);
begin
  try
    ShowKeyBoardBonCtrGBtnClick(Sender);
  finally
    RemiseBonCtrGEdt.SetFocus
  end;

end;

procedure TBonCtrGestionF.RemiseBonCtrGEdtKeyPress(Sender: TObject; var Key: Char);
const
  N =['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', Char(VK_back)];
  F =['.'];
begin
//  if not (Key in N) then
//  begin
//    Key := #0;
//  end;
//
//  if (Key in F) then
//  begin
//    Key := #44;
//  end;
  if (Key = '.') and (Pos(Key, (RemiseBonCtrGEdt.Text)) > 0) then
  begin
    Key := #0;
  end;

end;

function TBonCtrGestionF.GetWindowsVersion: string;
begin
  result := 'Unknown (Windows ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + ')';
  case Win32MajorVersion of
    4:
      case Win32MinorVersion of
        0:
          result := 'Windows 95';
        10:
          result := 'Windows 98';
        90:
          result := 'Windows ME';
      end;
    5:
      case Win32MinorVersion of
        0:
          result := 'Windows 2000';
        1:
          result := 'Windows XP';
      end;
    6:
      case Win32MinorVersion of
        0:
          result := 'Windows Vista';
        1:
          result := 'Windows 7';
        2:
          result := 'Windows 8';
        3:
          result := 'Windows 8.1';
      end;
    10:
      case Win32MinorVersion of
        0:
          result := 'Windows 10';
      end;
  end;
end;

procedure TBonCtrGestionF.ShowKeyBoardBonCtrGBtnClick(Sender: TObject);
var
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile, ParamString, StartInString: string;
  Wow64FsEnableRedirection: LongBool;
begin

  if not (GetWindowsVersion = 'Windows XP') then
  begin

    if Wow64DisableWow64FsRedirection(Wow64FsEnableRedirection) then
    begin
      ExecuteFile := 'C:\Windows\System32\osk.exe';
      FillChar(SEInfo, SizeOf(SEInfo), 0);
      SEInfo.cbSize := SizeOf(TShellExecuteInfo);
      with SEInfo do
      begin
        fMask := SEE_MASK_NOCLOSEPROCESS;
        Wnd := Application.Handle;
        lpFile := PChar(ExecuteFile);
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
          GetExitCodeProcess(SEInfo.hProcess, ExitCode);
        until (ExitCode <> STILL_ACTIVE) or Application.Terminated;

//  ShowMessage('Calculator terminated') ;
      end
      else
        ShowMessage('Error starting Keyboard!');

      if not Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection) then
        RaiseLastOSError;
    end
    else
      RaiseLastOSError;

  end;
end;

procedure TBonCtrGestionF.ShowCalculaturBonCtrGBtnClick(Sender: TObject);
begin
  WinExec('C:\Windows\system32\Calc.exe', SW_SHOW);
  WinExec('c:\windows\calc.exe', sw_Normal);
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxEnter(Sender: TObject);
//var
//I : Integer;

var
  KeyState: TKeyboardState;
begin
  //turn on CapsLock when enter edit to make sure codebare read well
  GetKeyboardState(KeyState);
  if (KeyState[VK_CAPITAL]=0) then
  begin
    // Simulate a "CAPS LOCK" key release
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
    // Simulate a "CAPS LOCK" key press
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;

//  Cursor := crDefault;
//      ProduitBonCtrGCbx.Properties.Items.Clear;
//
//      MainForm.SQLQuery.Active:=False;
//      MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p FROM produit ';
//      MainForm.SQLQuery.Active := True;
//
//      MainForm.SQLQuery.first;
//
//     begin
//
//     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
//     if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
//     begin
//       ProduitBonCtrGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
//       MainForm.SQLQuery.Next;
//      end;
//     end;
//
//     MainForm.SQLQuery.Active:=False;
//      MainForm.SQLQuery.SQL.Clear;



end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxExit(Sender: TObject);
begin
  ProduitBonCtrGCbx.Text := '';
//ProduitBonCtrGCbx.AutoDropDown:=False;
end;

procedure TBonCtrGestionF.CloseBonCtrGBtnClick(Sender: TObject);
var
  caFree: TCloseAction;
begin
  BonCtrGestionF.Close;
//BonCtrGestionF.FormClose(Sender, caFree);

//SendMessage(Handle, WM_CLOSE, 0, 0);
//Free;
//FreeAndNil(BonCtrGestionF);


end;

procedure TBonCtrGestionF.MinimizeBonCtrGBtnClick(Sender: TObject);
var
  HTaskbar: HWND;
  OldVal: LongInt;
begin
  //Find handle of TASKBAR
  HTaskbar := FindWindow('Shell_TrayWnd', nil);
  //Turn SYSTEM KEYS Back ON,Only Win 95/98/ME
  SystemParametersInfo(97, Word(False), @OldVal, 0);
  //Enable the taskbar
  EnableWindow(HTaskbar, True);
  //Show the taskbar
  ShowWindow(HTaskbar, SW_SHOW);

  BorderStyle := bsSizeable;

  WindowState := wsMinimized;
end;

procedure TBonCtrGestionF.NewAddProduitBonCtrGBtnClick(Sender: TObject);
begin
  FormStyle := fsNormal;

  ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonCtrGestionF.AddBVCtrBonCtrGBtn1Click(Sender: TObject);
var
  codeCT, CodeCB: integer;
begin
  Timer1.Enabled := False;

  begin
    ClientBonCtrGCbx.Text := 'Comptoir';
    Label17.Caption := 'Comptoir';
//    ModePaieBonCtrGCbx.Clear;
//     CompteBonCtrGCbx.Clear;
//     NChequeBonCtrGCbx.Clear;
  end;

//  MainForm.ProduitTable.Refresh;
//  MainForm.ClientTable.Refresh;
//  MainForm.Bonv_ctrTable.Refresh;
//  MainForm.Bonv_ctr_listTable.Refresh;
//   MainForm.Mode_paiementTable.Refresh;
//   MainForm.CompteTable.Refresh;
  BonCtrPListDataS.DataSet.Refresh;
//   BonCtrF.BonCtrListDataS.DataSet.Refresh;
  MainForm.Bonv_ctrTable.Refresh;
//  Refresh;

  begin
    EnableBonCtr;
  end;

  codeCT := 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
  if MainForm.Bonv_ctrTable.RecordCount <= 0 then
  begin

    MainForm.Bonv_ctrTable.Insert;
    MainForm.Bonv_ctrTable.FieldValues['code_bvctr'] := 1;
    MainForm.Bonv_ctrTable.FieldValues['num_bvctr'] := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
    MainForm.Bonv_ctrTable.FieldValues['date_bvctr'] := DateOf(Today);
    MainForm.Bonv_ctrTable.FieldValues['time_bvctr'] := TimeOf(Now);
    MainForm.Bonv_ctrTable.Post;
    codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
  end
  else
  begin
    MainForm.Bonv_ctrTable.Last;
    codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
    MainForm.SQLQuery4.Active := False;
    MainForm.SQLQuery4.SQL.Clear;
    MainForm.SQLQuery4.SQL.Text := BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(codeCT));
    MainForm.SQLQuery4.Active := True;

    if MainForm.SQLQuery4.RecordCount <= 0 then
    begin
        //   MainForm.Bonv_ctrTable.Last;
      codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
    end
    else
    begin

      MainForm.Bonv_ctrTable.Insert;
      MainForm.Bonv_ctrTable.FieldValues['code_bvctr'] := codeCT + 1;
      MainForm.Bonv_ctrTable.FieldValues['num_bvctr'] := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, (codeCT + 1)]);
      MainForm.Bonv_ctrTable.FieldValues['date_bvctr'] := DateOf(Today);
      MainForm.Bonv_ctrTable.FieldValues['time_bvctr'] := TimeOf(Now);
      MainForm.Bonv_ctrTable.Post;

    end;
//    ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
  end;



//-- use this code to make the montants look lake money values-------//
 //   BonCtrTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
 //   BonCtrTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
  BonCtrTotalTTCLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  BonCtrRenduLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  BonCtrRegleLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
 //   BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
 //   BonCtrGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

  CodeCB := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
  NumBonCtrGEdt.Caption := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

  ProduitBonCtrGCbx.SetFocus;

  Tag := 0;

  MainForm.Bonv_ctr_listTable.Refresh;
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then
  begin
//   key := #0;
    MainForm.Bonv_ctr_listTable.Next;
  end;

  if Key = VK_UP then
  begin
//   key := #0;
    MainForm.Bonv_ctr_listTable.Prior;
  end;

  if Key = VK_DELETE then
  begin
//      key := #0;
    DeleteProduitBonCtrGBtnClick(Sender);
  end;
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxKeyPress(Sender: TObject; var Key: Char);

const
  N = ['&', '"', '(', ')', '_',',','.'];

var
  CodeCT, CodeCB, CodeP: Integer;
  lookupResultRefP: Variant;
  NomP: string;
  Ini: TIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg2, PRIXTTC: string;
  Total,Numcheck: Integer;

  isBalCode,isBalDIGI100,isBalRLS1000 : Boolean;
  BalQut : Double;

begin

  if Key = #13 then
  begin
    Key := #0;
    if (ProduitBonCtrGCbx.Text <> '') AND NOT (ProduitBonCtrGCbx.Text[1] in N ) then
    begin

       if  (Copy(ProduitBonCtrGCbx.Text,1,2) = '55') OR (Copy(ProduitBonCtrGCbx.Text,1,2) = '25') then
       begin
         isBalCode:= True;
       end;


      if ClientBonCtrGCbx.Text <> '' then
      begin
//        MainForm.SQLQuery3.DisableControls;
        MainForm.SQLQuery3.Active := false;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text := 'Select * FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
        MainForm.SQLQuery3.Active := True;

      end;
  //      if ResherchPARDesProduitsRdioBtn.Checked then
      begin
       if NOT isBalCode then   //Check it not a Balance CodeBare
       begin

          MainForm.SQLQuery.Active := False;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text := 'SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' + '' + QuotedStr(ProduitBonCtrGCbx.Text) + ')';
          MainForm.SQLQuery.Active := True;
          if MainForm.SQLQuery.FieldValues['code_p'] <> null then
          begin
            CodeCB := MainForm.SQLQuery.FieldValues['code_p'];
          end;
                MainForm.FDQuery2.Active := False;
                MainForm.FDQuery2.SQL.Clear;
                MainForm.FDQuery2.SQL.Text := 'SELECT code_p,nom_p,codebar_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = ' + QuotedStr(IntToStr(CodeCB)) + 'OR' + ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonCtrGCbx.Text) + ')';
                MainForm.FDQuery2.Active := True;

                if NOT MainForm.FDQuery2.IsEmpty then
                begin
                CodeP := MainForm.FDQuery2.FieldByName('code_p').AsInteger;
                end else
                 begin
                      MainForm.FDQuery2.Active := False;
                      MainForm.FDQuery2.SQL.Clear;
                      MainForm.FDQuery2.SQL.Text := 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER(' + QuotedStr(ProduitBonCtrGCbx.Text) + ')';
                      MainForm.FDQuery2.Active := True;

                    if not (MainForm.FDQuery2.IsEmpty) then
                    begin
                      CodeP := MainForm.FDQuery2.FieldByName('code_p').AsInteger;

                    end else
                      begin //This is For Divers XXXX
                        CodeP:= 0;
                      end;
                 end



        end else
          begin

           if Copy(ProduitBonCtrGCbx.Text,1,2) = '55' then
           begin
            isBalDIGI100:= True;
            CodeP := StrToInt( Copy(ProduitBonCtrGCbx.Text,3,5) );
//             BalQut:= (StrToFloat( Copy(ProduitBonCtrGCbx.Text,8,5 )) /100)/MainForm.FDQuery2.FieldByName('prixvd_p').AsFloat;  // divid by 1000 cuz in codebare qut = AAAAA

             BalQut:= (StrToFloat( Copy(ProduitBonCtrGCbx.Text,8,5 )) /1000)  //becouse i managed to do qut in rightdata in codebar by using balance config
           end else
           if Copy(ProduitBonCtrGCbx.Text,1,2) = '25' then
           begin
            isBalRLS1000:= True;
            CodeP := StrToInt( Copy(ProduitBonCtrGCbx.Text,4,5) );
            BalQut:= (StrToFloat( Copy(ProduitBonCtrGCbx.Text,9,4 )) / 1000 )  //becouse i managed to do qut in rightdata in codebar by using balance config
           end;


//           CodeP := StrToInt( Copy(ProduitBonCtrGCbx.Text,3,5) );

           MainForm.FDQuery2.Active := False;
           MainForm.FDQuery2.SQL.Clear;
           MainForm.FDQuery2.SQL.Text := 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = ' + QuotedStr(IntToStr(CodeP));
           MainForm.FDQuery2.Active := True;


          end;

        DataModuleF.PerissBona_recTable.Active := False;
        DataModuleF.PerissBona_recTable.SQL.Clear;
        DataModuleF.PerissBona_recTable.SQL.Text := '  SELECT bona_rec_list.code_barec, code_p,qutinstock_p,dateperiss_p,(dateperiss_p - CURRENT_DATE) AS daysleft  ' + '  FROM bona_rec_list  ' + '  JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec ' + '  WHERE bona_rec.valider_barec = TRUE ' + '  AND dateperiss_p is NOT NULL ' + '  AND dateperiss_p > CURRENT_DATE ' + '  AND qutinstock_p > 0  ' + '  AND code_p = ' + IntToStr(CodeP) + '  ORDER BY dateperiss_p ';
        ;
        DataModuleF.PerissBona_recTable.Active := True;

        if  NOT(MainForm.FDQuery2.IsEmpty) AND (MainForm.FDQuery2.FieldByName('perissable_p').AsBoolean = True) and not (DataModuleF.PerissBona_recTable.IsEmpty) and (DataModuleF.PerissBona_recTable.RecordCount > 1) then
        begin

          PerissableProduitF := TPerissableProduitF.Create(BonCtrGestionF);
          PerissableProduitF.Tag := 2;
          PerissableProduitF.Left := (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
          PerissableProduitF.Top := MainForm.Top + 5;
          AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE or AW_SLIDE or AW_ACTIVATE);

          PerissableProduitF.Show;

        end
        else
        begin

          lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p', (CodeP), 'code_p');
          if (VarIsnull(lookupResultRefP)) and (Panel1.Tag <> 1) then
          begin

            if MainForm.FDQuery2.RecordCount > 0 then
            begin

//              MainForm.Bonv_ctr_listTable.DisableControls;
//              MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
              MainForm.SQLQuery4.Active := False;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text := BCLSQL +' ORDER by code_bvctrl DESC LIMIT 1';
              MainForm.SQLQuery4.Active := True;

//              MainForm.SQLQuery4.Last;
              if MainForm.SQLQuery4.IsEmpty then
              begin
                MainForm.SQLQuery4.Last;
                CodeCT := 1;
              end
              else
              begin
                MainForm.SQLQuery4.Last;
                CodeCT := MainForm.SQLQuery4.FieldValues['code_bvctrl'] + 1;
              end;



//              MainForm.SQLQuery4.Last;
              MainForm.SQLQuery4.Append;
              MainForm.SQLQuery4.FieldValues['code_bvctrl'] := CodeCT;
              MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
              MainForm.SQLQuery4.FieldValues['code_p'] := MainForm.FDQuery2.FieldValues['code_p'];
              if NOT isBalCode then
              begin
              MainForm.SQLQuery4.FieldValues['qut_p'] := 01;
              end else
                   begin
                    MainForm.SQLQuery4.FieldValues['qut_p']:= BalQut;
                   end;
              MainForm.SQLQuery4.FieldValues['cond_p'] := 01;
              MainForm.SQLQuery4.FieldValues['tva_p'] := MainForm.FDQuery2.FieldValues['tva_p'];
              MainForm.SQLQuery4.FieldValues['prixht_p'] := MainForm.FDQuery2.FieldValues['prixht_p'];

              if DataModuleF.PerissBona_recTable.RecordCount = 1 then
              begin
                MainForm.SQLQuery4.FieldValues['code_barec'] := DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
              end;

              if not (MainForm.SQLQuery3.IsEmpty) and (ClientBonCtrGCbx.Text <> '') then
              begin

                if MainForm.SQLQuery3.FieldByName('tarification_c').AsInteger = 0 then
                begin
                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvd_p'];
                end;
                if MainForm.SQLQuery3.FieldByName('tarification_c').AsInteger = 1 then
                begin
                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvr_p'];
                end;
                if MainForm.SQLQuery3.FieldByName('tarification_c').AsInteger = 2 then
                begin
                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvg_p'];
                end;
                if MainForm.SQLQuery3.FieldByName('tarification_c').AsInteger = 3 then
                begin
                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixva_p'];
                end;
                if MainForm.SQLQuery3.FieldByName('tarification_c').AsInteger = 4 then
                begin
                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixva2_p'];
                end;
              end
              else
              begin
                MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvd_p'];
              end;

              MainForm.SQLQuery4.Post;
//              MainForm.Bonv_ctr_listTable.IndexFieldNames := 'code_bvctr';

              MainForm.SQLQuery4.Active := False;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text := BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
              MainForm.SQLQuery4.Active := True;

              ProduitBonCtrGCbx.Text := '';
//            ProduitsListDBGridEh.SetFocus;

//           ProduitsListDBGridEh.SelectedIndex:=2;
              ProduitsListDBGridEh.EditorMode := True;

//              MainForm.Bonv_ctr_listTable.EnableControls;
//              MainForm.Bonv_ctr_listTable.Last;
              if ClientBonCtrGCbx.Text <> '' then
              begin
                ValiderBVCtrBonCtrGBtn.Enabled := True;
                ValiderBVCtrBonCtrGBtn.ImageIndex := 12;
              end;

              sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

              Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
              PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

              if PoleA = True then
              begin

                PRIXTTC := CurrToStrF(((((MainForm.FDQuery2.FieldValues['prixvd_p'] * MainForm.FDQuery2.FieldValues['tva_p']) / 100) + (MainForm.FDQuery2.FieldValues['prixvd_p']))), ffNumber, 2);

                try
                  PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//                 Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

                  ComPort1.Port := PORT; // 'COM7';
                  ComPort1.Events := [];
                  ComPort1.FlowControl.ControlDTR := dtrEnable;
                  ComPort1.FlowControl.ControlRTS := rtsEnable;
                  ComPort1.Open; // open port
                  ComPort1.WriteUnicodeString('                                        '#13#10);
                  ComPort1.WriteUnicodeString('                                        '#13#10);
                  ComPort1.WriteUnicodeString(copy(MainForm.FDQuery2.FieldByName('nom_p').AsString, 0, 16) + '...' + #13#10); // send test command

                  ComPort1.WriteUnicodeString('Prix: ' + PRIXTTC + ' DA'#13#10);

                  PoleDisplayerTimerimer.Interval := 1500;
                  PoleDisplayerTimerimer.Enabled := True;

                  ComPort1.Close;
                except
//                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
                end;
              end;

              Ini.Free;

            end   else
                 //XXXXXX This is for adding DIVERS XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                if  (Copy(ProduitBonCtrGCbx.Text,1,1) = '+') AND  TryStrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)),Numcheck)   then
                begin

//                  MainForm.Bonv_ctr_listTable.DisableControls;
//                  MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' ORDER by code_bvctrl DESC LIMIT 1';
                  MainForm.SQLQuery4.Active := True;

//                  MainForm.SQLQuery4.Last;
                  if MainForm.SQLQuery4.IsEmpty then
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := 1;
                  end
                  else
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := MainForm.SQLQuery4.FieldValues['code_bvctrl'] + 1;
                  end;



//                  MainForm.Bonv_ctr_listTable.Last;
                  MainForm.SQLQuery4.Append;
                  MainForm.SQLQuery4.FieldValues['code_bvctrl'] := CodeCT;
                  MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.SQLQuery4.FieldValues['code_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['qut_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['cond_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['tva_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['prixht_p'] := 0;

                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)-1);

                  MainForm.SQLQuery4.Post;
                  MainForm.SQLQuery4.IndexFieldNames := 'code_bvctr';

                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text :=  BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
                  MainForm.SQLQuery4.Active := True;

                  ProduitBonCtrGCbx.Text := '';
                  ProduitsListDBGridEh.EditorMode := True;

//                  MainForm.Bonv_ctr_listTable.EnableControls;
//                  MainForm.Bonv_ctr_listTable.Last;
                  if ClientBonCtrGCbx.Text <> '' then
                  begin
                    ValiderBVCtrBonCtrGBtn.Enabled := True;
                    ValiderBVCtrBonCtrGBtn.ImageIndex := 12;
                  end;

                  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

                  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
                  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

                  if PoleA = True then
                  begin

                    PRIXTTC := MainForm.SQLQuery4.FieldValues['prixvd_p'];

                    try
                      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
    //                 Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

                      ComPort1.Port := PORT; // 'COM7';
                      ComPort1.Events := [];
                      ComPort1.FlowControl.ControlDTR := dtrEnable;
                      ComPort1.FlowControl.ControlRTS := rtsEnable;
                      ComPort1.Open; // open port
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('Divers' + #13#10); // send test command

                      ComPort1.WriteUnicodeString('      ' + PRIXTTC + ' DA'#13#10);

                      PoleDisplayerTimerimer.Interval := 1500;
                      PoleDisplayerTimerimer.Enabled := True;

                      ComPort1.Close;
                    except
    //                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
                    end;
                  end;

                  Ini.Free;

                end else

                if  (Copy(ProduitBonCtrGCbx.Text,1,1) = '-') AND  TryStrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)),Numcheck)  then
                begin

//                  MainForm.Bonv_ctr_listTable.DisableControls;
//                  MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' ORDER by code_bvctrl DESC LIMIT 1';
                  MainForm.SQLQuery4.Active := True;

//                  MainForm.SQLQuery4.Last;
                  if MainForm.SQLQuery4.IsEmpty then
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := 1;
                  end
                  else
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := MainForm.SQLQuery4.FieldValues['code_bvctrl'] + 1;
                  end;



//                  MainForm.Bonv_ctr_listTable.Last;
                  MainForm.SQLQuery4.Append;
                  MainForm.SQLQuery4.FieldValues['code_bvctrl'] := CodeCT;
                  MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.SQLQuery4.FieldValues['code_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['qut_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['cond_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['tva_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['prixht_p'] := 0;

                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := -1 * StrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)-1));

                  MainForm.SQLQuery4.Post;
//                  MainForm.SQLQuery4.IndexFieldNames := 'code_bvctr';

                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
                  MainForm.SQLQuery4.Active := True;

                  ProduitBonCtrGCbx.Text := '';
                  ProduitsListDBGridEh.EditorMode := True;

//                  MainForm.Bonv_ctr_listTable.EnableControls;
//                  MainForm.Bonv_ctr_listTable.Last;
                  if ClientBonCtrGCbx.Text <> '' then
                  begin
                    ValiderBVCtrBonCtrGBtn.Enabled := True;
                    ValiderBVCtrBonCtrGBtn.ImageIndex := 12;
                  end;

                  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

                  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
                  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

                  if PoleA = True then
                  begin

                    PRIXTTC := MainForm.SQLQuery4.FieldValues['prixvd_p'];

                    try
                      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);

                      ComPort1.Port := PORT; // 'COM7';
                      ComPort1.Events := [];
                      ComPort1.FlowControl.ControlDTR := dtrEnable;
                      ComPort1.FlowControl.ControlRTS := rtsEnable;
                      ComPort1.Open; // open port
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('Divers' + #13#10); // send test command

                      ComPort1.WriteUnicodeString('      ' + PRIXTTC + ' DA'#13#10);

                      PoleDisplayerTimerimer.Interval := 1500;
                      PoleDisplayerTimerimer.Enabled := True;

                      ComPort1.Close;
                    except
    //                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
                    end;
                  end;

                  Ini.Free;
                    //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                end else
                begin

                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
                end;

//********************************************************************************************/////////////////////
          end
          else
          begin
            //This is for adding qut if it the same produit
            if (Panel1.Tag = 0) AND NOT(Copy(ProduitBonCtrGCbx.Text,1,1) = '-') AND NOT(Copy(ProduitBonCtrGCbx.Text,1,1) = '+')
            //AND NOT TryStrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)),Numcheck)
            then
            begin
              MainForm.SQLQuery4.First;
              while not MainForm.SQLQuery4.Eof do
              begin

                if MainForm.SQLQuery4.FieldByName('code_p').AsInteger = CodeP then
                begin
                  MainForm.SQLQuery4.Edit;
                  if NOT isBalCode then
                  begin
                  MainForm.SQLQuery4.FieldByName('qut_p').AsFloat := MainForm.SQLQuery4.FieldByName('qut_p').AsFloat + 1;
                  end else
                      begin
                      MainForm.SQLQuery4.FieldByName('qut_p').AsFloat := MainForm.SQLQuery4.FieldByName('qut_p').AsFloat + BalQut;
                      end;
                  MainForm.SQLQuery4.Post;
                  Refresh_PreservePosition;
                  ProduitBonCtrGCbx.Clear;
                  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

                  showInPoleClient;
                  Exit;

                end;
                MainForm.SQLQuery4.Next;
              end;

            end   //This is for deleting when it supression mode
            else if (Panel1.Tag = 1) and (MainForm.SQLQuery4.IsEmpty = False) AND NOT(Copy(ProduitBonCtrGCbx.Text,1,1) = '-') AND NOT(Copy(ProduitBonCtrGCbx.Text,1,1) = '+')
            //AND NOT TryStrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)),Numcheck)
            then
            begin
              MainForm.SQLQuery4.First;
              while not MainForm.SQLQuery4.Eof do
              begin

                if MainForm.SQLQuery4.FieldByName('code_p').AsInteger = CodeP then
                begin
                  if MainForm.SQLQuery4.FieldByName('qut_p').AsFloat > 1 then
                  begin
                    MainForm.SQLQuery4.Edit;
                    if NOT isBalCode then
                    begin
                    MainForm.SQLQuery4.FieldByName('qut_p').AsFloat := MainForm.SQLQuery4.FieldByName('qut_p').AsFloat - 1;
                    end else
                        begin
                         MainForm.SQLQuery4.FieldByName('qut_p').AsFloat := MainForm.SQLQuery4.FieldByName('qut_p').AsFloat - BalQut;
                        end;
                    MainForm.SQLQuery4.Post;
                  end
                  else
                  begin
                    MainForm.SQLQuery4.Delete;
                  end;
                  Refresh_PreservePosition;
                  ProduitBonCtrGCbx.Clear;
                  sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

                  showInPoleClient;
                  Exit;

                end;
                MainForm.SQLQuery4.Next;
              end;

            end else //This is for adding DIVERS
            begin
                //XXXXXX This is for adding DIVERS XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                if  (Copy(ProduitBonCtrGCbx.Text,1,1) = '+') AND  TryStrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)),Numcheck)   then
                begin

//                  MainForm.Bonv_ctr_listTable.DisableControls;
//                  MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' ORDER by code_bvctrl DESC LIMIT 1';
                  MainForm.SQLQuery4.Active := True;

//                  MainForm.SQLQuery4.Last;
                  if MainForm.SQLQuery4.IsEmpty then
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := 1;
                  end
                  else
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := MainForm.SQLQuery4.FieldValues['code_bvctrl'] + 1;
                  end;

//                  MainForm.Bonv_ctr_listTable.Last;
                  MainForm.SQLQuery4.Append;
                  MainForm.SQLQuery4.FieldValues['code_bvctrl'] := CodeCT;
                  MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.SQLQuery4.FieldValues['code_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['qut_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['cond_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['tva_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['prixht_p'] := 0;

                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)-1);

                  MainForm.SQLQuery4.Post;
                  MainForm.SQLQuery4.IndexFieldNames := 'code_bvctr';

                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
                  MainForm.SQLQuery4.Active := True;

                  ProduitBonCtrGCbx.Text := '';
                  ProduitsListDBGridEh.EditorMode := True;

//                  MainForm.Bonv_ctr_listTable.EnableControls;
//                  MainForm.Bonv_ctr_listTable.Last;
                  if ClientBonCtrGCbx.Text <> '' then
                  begin
                    ValiderBVCtrBonCtrGBtn.Enabled := True;
                    ValiderBVCtrBonCtrGBtn.ImageIndex := 12;
                  end;

                  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

                  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
                  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

                  if PoleA = True then
                  begin

                    PRIXTTC := MainForm.SQLQuery4.FieldValues['prixvd_p'];

                    try
                      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
    //                 Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

                      ComPort1.Port := PORT; // 'COM7';
                      ComPort1.Events := [];
                      ComPort1.FlowControl.ControlDTR := dtrEnable;
                      ComPort1.FlowControl.ControlRTS := rtsEnable;
                      ComPort1.Open; // open port
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('Divers' + #13#10); // send test command

                      ComPort1.WriteUnicodeString('      ' + PRIXTTC + ' DA'#13#10);

                      PoleDisplayerTimerimer.Interval := 1500;
                      PoleDisplayerTimerimer.Enabled := True;

                      ComPort1.Close;
                    except
    //                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
                    end;
                  end;

                  Ini.Free;


                end else

                if  (Copy(ProduitBonCtrGCbx.Text,1,1) = '-') AND  TryStrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)),Numcheck)  then
                begin
//                  MainForm.Bonv_ctr_listTable.DisableControls;
//                  MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' ORDER by code_bvctrl DESC LIMIT 1';
                  MainForm.SQLQuery4.Active := True;

//                  MainForm.SQLQuery4.Last;
                  if MainForm.SQLQuery4.IsEmpty then
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := 1;
                  end
                  else
                  begin
                    MainForm.SQLQuery4.Last;
                    CodeCT := MainForm.SQLQuery4.FieldValues['code_bvctrl'] + 1;
                  end;

//                  MainForm.Bonv_ctr_listTable.Last;
                  MainForm.SQLQuery4.Append;
                  MainForm.SQLQuery4.FieldValues['code_bvctrl'] := CodeCT;
                  MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.SQLQuery4.FieldValues['code_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['qut_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['cond_p'] := 01;
                  MainForm.SQLQuery4.FieldValues['tva_p'] := 0;
                  MainForm.SQLQuery4.FieldValues['prixht_p'] := 0;

                  MainForm.SQLQuery4.FieldValues['prixvd_p'] := -1 * StrToInt(Copy(ProduitBonCtrGCbx.Text,2,Length(ProduitBonCtrGCbx.Text)-1));

                  MainForm.SQLQuery4.Post;
                  MainForm.SQLQuery4.IndexFieldNames := 'code_bvctr';

                  MainForm.SQLQuery4.Active := False;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text := BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
                  MainForm.SQLQuery4.Active := True;

                  ProduitBonCtrGCbx.Text := '';
                  ProduitsListDBGridEh.EditorMode := True;

//                  MainForm.Bonv_ctr_listTable.EnableControls;
//                  MainForm.Bonv_ctr_listTable.Last;
                  if ClientBonCtrGCbx.Text <> '' then
                  begin
                    ValiderBVCtrBonCtrGBtn.Enabled := True;
                    ValiderBVCtrBonCtrGBtn.ImageIndex := 12;
                  end;

                  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

                  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
                  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

                  if PoleA = True then
                  begin

                    PRIXTTC := MainForm.SQLQuery4.FieldValues['prixvd_p'];
                    try
                      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
    //                 Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

                      ComPort1.Port := PORT; // 'COM7';
                      ComPort1.Events := [];
                      ComPort1.FlowControl.ControlDTR := dtrEnable;
                      ComPort1.FlowControl.ControlRTS := rtsEnable;
                      ComPort1.Open; // open port
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('                                        '#13#10);
                      ComPort1.WriteUnicodeString('Divers' + #13#10); // send test command

                      ComPort1.WriteUnicodeString('      ' + PRIXTTC + ' DA'#13#10);

                      PoleDisplayerTimerimer.Interval := 1500;
                      PoleDisplayerTimerimer.Enabled := True;

                      ComPort1.Close;
                    except
    //                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
                    end;
                  end;

                  Ini.Free;


                    //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                end else
                begin

                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
                end;
            end;

          end;
        end;

        MainForm.SQLQuery3.Active := false;
        MainForm.SQLQuery3.SQL.Clear;
//        MainForm.ClientTable.SQL.Text := 'Select * FROM client';
//        MainForm.ClientTable.Active := True;
//        MainForm.ClientTable.EnableControls;

      end;
//--------------------------------------------------------------------------------------------------------------------
      MainForm.FDQuery2.Active := False;
      MainForm.FDQuery2.SQL.Clear;

      MainForm.Bonv_ctr_listTable.Refresh;
      MainForm.Bonv_ctr_listTable.Last;
      DataModuleF.Top5produit.Refresh;
//        ProduitBonCtrGCbx.AutoDropDown:=False;
      ProduitBonCtrGCbx.SelectAll;

    end else
        begin
          ProduitBonCtrGCbx.Text:= '';
        end;
//    MainForm.Bonv_ctr_listTable.Last;

//     MainForm.BonCTRListTRefresh();
  end;

end;

procedure TBonCtrGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
//var
//HTaskbar:HWND;
//OldVal:LongInt;
var
  Ini: TMemIniFile;
  PoleA, CaisseA: Boolean;
  PORT: string;
begin
  MainForm.SaveGridLayout(ProduitsListDBGridEh, GetCurrentDir + '\bin\gc_ctr');

  Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

  if PoleA = True then
  begin
    try
      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//           Msg:= Ini.ReadString('',  'Afficheur client Msg', Msg);

      BonCtrGestionF.ComPort1.Port := PORT; // 'COM7';
      BonCtrGestionF.ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
      BonCtrGestionF.ComPort1.Open; // open port
      BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
      BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
//          BonCtrGestionF. ComPort1.WriteUnicodeString(Msg+#13#10); // send test command
      BonCtrGestionF.ComPort1.Close;
    except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
    end;
  end;

  Ini.UpdateFile;
  Ini.Free;

//Find handle of TASKBAR
//HTaskBar:=FindWindow('Shell_TrayWnd',nil);
//Turn SYSTEM KEYS Back ON,Only Win 95/98/ME
//SystemParametersInfo(97,Word(False),@OldVal,0);
//Enable the taskbar
//EnableWindow(HTaskBar,True);
//Show the taskbar
//ShowWindow(HTaskbar,SW_SHOW);

  if ValiderBVCTRBonCtrGImg.ImageIndex = 1 then
  begin

    MainForm.Bonv_ctrTable.Refresh;

    MainForm.Bonv_ctr_listTable.Refresh;
  end;

  MainForm.ClientTable.Active := false;
  MainForm.ClientTable.SQL.Clear;
  MainForm.ClientTable.SQL.Text := 'Select * FROM client';
  MainForm.ClientTable.Active := True;
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


//  if Assigned(BonCtrF) then          //This code is to filter list whene clos bon by selected date //Comnted it cuz it was keep moveing the corsur up
//  begin
//    MainForm.Bonv_ctrTable.DisableControls;
//    MainForm.Bonv_CtrTable.Active:= False;
//    MainForm.Bonv_CtrTable.SQL.clear;
//    mainform.Bonv_CtrTable.sql.Text:= BonCtrF.BCSQL +' WHERE date_bvctr BETWEEN '''+(DateToStr(BonCtrF.DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(BonCtrF.DateEndBVCtrD.Date))+'''';
//    MainForm.Bonv_CtrTable.Active:= True;
//    MainForm.Bonv_ctrTable.EnableControls;
//  end;


    MainForm.Bonv_ctr_listTable.Active := false;
    MainForm.Bonv_ctr_listTable.SQL.Clear;
    MainForm.Bonv_ctr_listTable.SQL.Text := BCLSQL ;
    MainForm.Bonv_ctr_listTable.Active := True;
    MainForm.Bonv_ctr_listTable.EnableControls;



  MainForm.Bonv_ctr_listTable.IndexFieldNames := 'code_bvctr';



//  FormatSettings.DecimalSeparator := '.';

  Action := caFree;
end;

procedure TBonCtrGestionF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  CodeCTR: Integer;
begin
  CodeCTR := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
  if not ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonCtrGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
      ClientBonCtrGCbx.StyleElements := [];

      ClientBonCtrGCbx.SetFocus;
      CanClose := false;
    end
    else
    begin
      if RequiredClientGlbl.Visible <> True then
      begin

        if (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = false) then
        begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text := 'Select * FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
          MainForm.ClientTable.Active := True;

          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime:= DateBonCtrGD.DateTime;
          MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime:=TimeOf(Now);
          MainForm.Bonv_ctrTable.FieldByName('montaht_bvctr').Value := StrToFloat(StringReplace(BonCtrTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').Value := StrToFloat(StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonCtrGEdt.Text <> '' then
          begin
            MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').Value := StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').Value := 0;
          end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').Value := StrToFloat(StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').Value := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_ctrTable.Post;
          MainForm.Bonv_ctrTable.EnableControls;

          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text := 'Select * FROM client';
          MainForm.ClientTable.Active := True;
          MainForm.ClientTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
//          if (CodeCTR <> 0) and (CodeCTR <> null) then
//          begin
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(CodeCTR));
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(CodeCTR));
//            MainForm.RegclientTable.Refresh;
//            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
//          end;

        end;
      end
      else
      begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
        ClientBonCtrGCbx.StyleElements := [];
        RequiredClientGlbl.Caption := 'Ce Client est bloqu�';
        RequiredClientGlbl.Visible := True;
        NameClientGErrorP.Visible := True;
        ClientBonCtrGCbx.SetFocus;
        CanClose := False;
      end;

    end;
  end
  else
  begin

    if (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = false) then
    begin
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active := false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text := 'Select * FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
      MainForm.ClientTable.Active := True;

      MainForm.Bonv_ctrTable.DisableControls;
      MainForm.Bonv_ctrTable.Edit;
      MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := MainForm.ClientTable.FieldByName('code_c').AsInteger;
      MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime:= DateBonCtrGD.DateTime;
      MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime:=TimeOf(Now);

      if RemiseBonCtrGEdt.Text <> '' then
      begin
        MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').Value := StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
      end
      else
      begin
        MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').Value := 0;
      end;

      MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').Value := StrToFloat(StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]));
      MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').Value := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

      MainForm.Bonv_ctrTable.Post;
      MainForm.Bonv_ctrTable.EnableControls;

      MainForm.ClientTable.Active := false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text := 'Select * FROM client';
      MainForm.ClientTable.Active := True;
      MainForm.ClientTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
      if (CodeCTR <> 0) and (CodeCTR <> null) then
      begin
        MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(CodeCTR));
        MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(CodeCTR));
        MainForm.RegclientTable.Refresh;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
      end;

    end;

    CanClose := True;
  end;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxDropDown(Sender: TObject);
var
  I: Integer;
begin

  ClientBonCtrGCbx.Items.Clear;
//          MainForm.SQLQuery.DisableControls;
  MainForm.SQLQuery.Active := false;
  MainForm.SQLQuery.SQL.Clear;
  MainForm.SQLQuery.SQL.Text := 'Select nom_c FROM client ORDER by code_c';
  MainForm.SQLQuery.Active := True;

  MainForm.SQLQuery.first;

  for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
    if MainForm.SQLQuery.FieldByName('nom_c').IsNull = False then
    begin
      ClientBonCtrGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_c').AsString);
      MainForm.SQLQuery.Next;
    end;

  MainForm.SQLQuery.Active := false;
  MainForm.SQLQuery.SQL.Clear;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxChange(Sender: TObject);
begin
  if RequiredClientGlbl.Visible <> True then
  begin
    Label17.Caption := ClientBonCtrGCbx.Text;
  end;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxExit(Sender: TObject);
//var CodeC: Integer;
//OLDCreditC : Double;
begin

  if ClientBonCtrGCbx.Text <> '' then
  begin
   //  ClientBonCtrGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active := false;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text := 'Select code_c,oldcredit_c ,activ_c FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
    MainForm.SQLQuery.Active := True;
    if not MainForm.SQLQuery.IsEmpty then
    begin
      if MainForm.SQLQuery.FieldByName('activ_c').AsBoolean <> False then
      begin

        if (MainForm.SQLQuery.IsEmpty) then
        begin
          ClientBonCtrGCbx.Text := 'Comptoir';
          Label17.Caption := ClientBonCtrGCbx.Text;
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
        MainForm.SQLQuery.Active := false;
        MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//      MainForm.SQLQuery.Active:=True;
//      MainForm.SQLQuery.EnableControls;

//      if NOT (BonCtrPListDataS.DataSet.IsEmpty) then
//      begin
//      ValiderBVlivBonCtrGBtn.Enabled:= True;
//      ValiderBVlivBonCtrGBtn.ImageIndex:=12;
//      end;


        ClientBonCtrGCbx.StyleElements := [seFont, seBorder, seBorder];
        RequiredClientGlbl.Visible := False;
        NameClientGErrorP.Visible := False;
      end
      else
      begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
        ClientBonCtrGCbx.StyleElements := [];
        RequiredClientGlbl.Caption := 'Ce Client est bloqu�';
        RequiredClientGlbl.Visible := True;
        NameClientGErrorP.Visible := True;
        ClientBonCtrGCbx.SetFocus;
      end;
    end
    else
    begin
      ClientBonCtrGCbx.Text := 'Comptoir';
      MainForm.SQLQuery.Active := false;
      MainForm.SQLQuery.SQL.Clear;
//                MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//                MainForm.SQLQuery.Active:=True;
//                MainForm.SQLQuery.EnableControls;
    end;
  end
  else
  begin
    ClientBonCtrGCbx.Text := 'Comptoir';
    Label17.Caption := ClientBonCtrGCbx.Text;
//     ClientBonCtrGCbxEnter(Sender) ;
//    CompteBonCtrGCbxEnter(Sender);
//     ModePaieBonCtrGCbxDropDown(Sender);
//     ModePaieBonCtrGCbx.ItemIndex:=0;
//     CompteBonCtrGCbx.ItemIndex:=0;

//     BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
//     BonCtrGClientNEWCredit.Caption:=BonCtrGClientOLDCredit.Caption;
  end;
end;

procedure TBonCtrGestionF.ClientBonCtrGCbxSelect(Sender: TObject);
var CodeC: Integer;
begin

      if ClientBonCtrGCbx.Text <> '' then
    begin
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonCtrGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

      CodeC:= MainForm.SQLQuery.FieldByName('code_c').AsInteger ;

        //Here we pot code_f in bonrec table
        MainForm.Bonv_ctrTable.Edit;
        MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := CodeC;
        MainForm.Bonv_ctrTable.Post;

      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
     end;

end;

procedure TBonCtrGestionF.EnterAddProduitBonCtrGBtnClick(Sender: TObject);
var
  key: char;
begin
  key := #13;
  ProduitBonCtrGCbxKeyPress(Sender, key);
end;

procedure TBonCtrGestionF.BonCtrPListDataSDataChange(Sender: TObject; Field: TField);
var
  codePCTR :Integer;
  prixVPCTR,prixHPCTR,qutPCTR :Double;
  condPCTR :Integer;
begin
  if not BonCtrPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonCtrGBtn.Visible := True;
    Label13.Visible := True;
    ClearProduitBonCtrGBtn.Visible := True;
    Label14.Visible := True;

    if (ClientBonCtrGCbx.Text <> '') and (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean <> True) then
    begin
      ValiderBVCtrBonCtrGBtn.Enabled := True;
      ValiderBVCtrBonCtrGBtn.ImageIndex := 11;
      ExValiderBVCtrBonCtrGBtn.Enabled := True;
      ExValiderBVCtrBonCtrGBtn.ImageIndex := 13;
      AddBVCtrBonCtrGBtn.Enabled := True;
      AddBVCtrBonCtrGBtn.ImageIndex := 7;
    end;

   //--- this is to NOT let  NULL data-----------------
    if (MainForm.Bonv_ctr_listTablequt_p.IsNull) then
    begin
      MainForm.Bonv_ctr_listTablequt_p.Value := 0;
    end;
    if (MainForm.Bonv_ctr_listTableprixvd_p.IsNull) then
    begin
      MainForm.Bonv_ctr_listTableprixvd_p.Value := 0;
    end;
    if (MainForm.Bonv_ctr_listTablecond_p.IsNull) then
    begin
      MainForm.Bonv_ctr_listTablecond_p.Value := 0;
    end;
    if (MainForm.Bonv_ctr_listTabletva_p.IsNull) then
    begin
      MainForm.Bonv_ctr_listTabletva_p.Value := 0;
    end;
   //-----------------------------------------------

    //RemiseTypeBonCtrGCbx.Enabled:= True;

    if MainForm.Bonv_ctrTable.FieldValues['valider_bvctr'] <> True then
    begin

      codePCTR:=MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger;
      prixVPCTR:=MainForm.Bonv_ctr_listTable.FieldByName('prixvd_p').AsFloat;
      prixHPCTR:=MainForm.Bonv_ctr_listTable.FieldByName('prixht_p').AsFloat;
      qutPCTR:=MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat;
      condPCTR:=MainForm.Bonv_ctr_listTable.FieldByName('cond_p').AsInteger;

//    MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active := False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text := 'SELECT code_p,qut_p,qutini_p,prixht_p FROM produit WHERE code_p = ' + IntToStr(codePCTR);
      MainForm.SQLQuery.Active := True;

     if NOT MainForm.SQLQuery.IsEmpty then
     begin

      BonCtrGOLDStock.Caption := floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])), ffNumber, 14, 2);
      BonCtrGNEWStock.Caption := floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])) - (qutPCTR * condPCTR)), ffNumber, 14, 2);

      if (StrToFloat(StringReplace(BonCtrGNEWStock.Caption, #32, '', [rfReplaceAll]))) < 0 then
      begin
        Timer1.Enabled := true;
      end
      else
      begin
        Timer1.Enabled := False;
        Label20.Visible := false;
      end;


          //------------ this will show notification if the price is lower the the achat price------------
      if prixVPCTR < MainForm.SQLQuery.FieldByName('prixht_p').AsFloat then
      begin
        Label3.Caption := 'Alerte !! Le prix de vente est inf�rieur au prix d''achat';
        Timer2.Enabled := true;
      end
      else if prixVPCTR = MainForm.SQLQuery.FieldByName('prixht_p').AsFloat then
      begin
        Label3.Caption := 'Alerte !! Le prix de vente est �gal au prix d''achat';
        Timer2.Enabled := true;
      end
      else
      begin
        Timer2.Enabled := False;
        Label3.Visible := false;
      end;

     end else  //This is if the entry is a Diver XXXX
      begin
            BonCtrGOLDStock.Caption := floatTostrF((qutPCTR * condPCTR), ffNumber, 14, 2);
            BonCtrGNEWStock.Caption :=  BonCtrGOLDStock.Caption;
            Timer1.Enabled := False;
            Timer2.Enabled := False;
            Labell20.Visible := False;
            Label3.Visible := False;
      end;

      MainForm.SQLQuery.Active := False;
      MainForm.SQLQuery.SQL.Clear;
//    MainForm.SQLQuery.SQL.Text:='SELECT * FROM produit ';
//    MainForm.SQLQuery.Active:=True;
//    MainForm.SQLQuery.EnableControls;

      RemisePerctageBonCtrGEdt.Enabled := True;
      RemiseBonCtrGEdt.Enabled := True;

    end;
    ProduitsListDBGridEh.ReadOnly := False;

  end
  else
  begin
    DeleteProduitBonCtrGBtn.Visible := False;
    Label13.Visible := False;
    ClearProduitBonCtrGBtn.Visible := False;
    Label14.Visible := False;

    Timer1.Enabled := False;
    Timer2.Enabled := False;
    Labell20.Visible := False;
    Label3.Visible := False;

    ValiderBVCtrBonCtrGBtn.Enabled := False;
    ValiderBVCtrBonCtrGBtn.ImageIndex := 12;
    ExValiderBVCtrBonCtrGBtn.Enabled := False;
    ExValiderBVCtrBonCtrGBtn.ImageIndex := 14;

    AddBVCtrBonCtrGBtn.Enabled := False;
    AddBVCtrBonCtrGBtn.ImageIndex := 8;

    RemisePerctageBonCtrGEdt.Enabled := False;
    RemiseBonCtrGEdt.Enabled := False;
    //RemiseTypeBonCtrGCbx.Enabled:= False;

    RemisePerctageBonCtrGEdt.Text := '';
    RemiseBonCtrGEdt.Text := '';
    //RemiseTypeBonCtrGCbx.Text:='';
    BonCtrGOLDStock.Caption := floatTostrF((0), ffNumber, 14, 2);
    BonCtrGNEWStock.Caption := floatTostrF((0), ffNumber, 14, 2);

    ProduitsListDBGridEh.ReadOnly := True;
  end;
end;

procedure TBonCtrGestionF.F3Execute(Sender: TObject);
begin
   //--- this is to focus in produit --------------------------
  if  AddBVCtrBonCtrGBtn.Enabled = False then
  begin
     ProduitBonCtrGCbx.SetFocus;
  end;
end;

procedure TBonCtrGestionF.F4Execute(Sender: TObject);
begin
  if AddBVCtrBonCtrGBtn.Enabled = True then
  begin
     AddBVCtrBonCtrGBtnClick(Screen);
  end;
end;

procedure TBonCtrGestionF.F5Execute(Sender: TObject);
begin
  if EditBVCtrBonCtrGBtn.Enabled = True then
  begin
     EditBVCtrBonCtrGBtnClick(Screen);
  end;
end;

procedure TBonCtrGestionF.F6Execute(Sender: TObject);
Var I :Integer;
begin
  //--- this is to switch between produits and quntity--------------------------
  if EditBVCtrBonCtrGBtn.Enabled = False then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'qut_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='qut_p' then
          begin
            ProduitsListDBGridEh.SelectedIndex:= i - 1;
            Break    ;
          end else
              begin
               ProduitsListDBGridEh.SelectedIndex:=i;
              end;
        end;
       end;
  end;
end;

procedure TBonCtrGestionF.F7Execute(Sender: TObject);
Var I: Integer;
begin
  //--- this is to switch between produits and prix----------------------------
  if EditBVCtrBonCtrGBtn.Enabled = False then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixvd_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='prixvd_p' then
          begin
            ProduitsListDBGridEh.SelectedIndex:= i - 1;
            Break    ;
          end else
              begin
               ProduitsListDBGridEh.SelectedIndex:=i;
              end;
        end;
       end;
  end;
end;

procedure TBonCtrGestionF.F8Execute(Sender: TObject);
begin
  if EditBVCtrBonCtrGBtn.Enabled = False then
  begin
     ListAddProduitBonCtrGBtnClick(Screen);
  end;
end;

procedure TBonCtrGestionF.F9Execute(Sender: TObject);
begin
  if ValiderBVCtrBonCtrGBtn.Enabled = True then
  begin
    ValiderBVCtrBonCtrGBtn1Click(Screen);
  end;
end;

procedure TBonCtrGestionF.F10Execute(Sender: TObject);
begin
  //For CTR  F10 is used for ExValider Decide later Where to do ClientList maybe F2
//  if EditBVCtrBonCtrGBtn.Enabled = False then
//  begin
//     ListClientBonCtrGBtnClick(Screen);
//  end;

  if ExValiderBVCtrBonCtrGBtn.Enabled = True then
  begin
    ExValiderBVCtrBonCtrGBtnClick(Screen);
  end;

end;

procedure TBonCtrGestionF.F11Execute(Sender: TObject);
begin
  if NewAddProduitBonCtrGBtn.Enabled = True then
  begin
     NewAddProduitBonCtrGBtnClick(Screen);
  end;
end;

procedure TBonCtrGestionF.F12Execute(Sender: TObject);
var
Ini: TIniFile;
indexP: Integer;
begin
  if ValiderBVCtrBonCtrGImg.ImageIndex <> 1 then
  begin

    PrintTicketBVCtrBonCtrGBtnClick(Screen);

//    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
//    indexP:= Ini.ReadInteger('', 'Format FV',0);
//    if (indexP = 0) or (indexP = -1) then
//    begin
//      B1Click(Screen);
//    end;
//    if indexP = 1 then
//    begin
//      BondeCaisseSimple2Click(Screen);
//    end;
//
//    Ini.Free;
  end;
end;

procedure TBonCtrGestionF.Fav1spClick(Sender: TObject);
var
  CodeBR, CodeP: Integer;
  lookupResultRefP: Variant;
  NomP: string;
  Ini: TIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg2, PRIXTTC: string;
  Total: Integer;

  FavBtn : TsSpeedButton;

begin

    FavBtn := Sender as TsSpeedButton;
    NomP := FavBtn.Caption;

  if NomP <> '' then
  Begin

    MainForm.FDQuery2.Active := false;
    MainForm.FDQuery2.SQL.Clear;
    MainForm.FDQuery2.SQL.Text := 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit Where LOWER(nom_p) LIKE LOWER(' + QuotedStr(NomP) + ')';
    MainForm.FDQuery2.Active := True;

    if NOT MainForm.FDQuery2.isEmpty then
    begin

    CodeP := MainForm.FDQuery2.FieldByName('code_p').AsInteger;

    lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p', (CodeP), 'code_p');
    if VarIsnull(lookupResultRefP) and (Panel1.Tag <> 1) then
    begin

      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
      MainForm.SQLQuery.Active := False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text := BCLSQL +' ORDER by code_bvctrl DESC LIMIT 1';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.Last;
      if MainForm.SQLQuery.IsEmpty then
      begin
        MainForm.SQLQuery.Last;
        CodeBR := 1;
      end
      else
      begin
        MainForm.SQLQuery.Last;
        CodeBR := MainForm.SQLQuery.FieldValues['code_bvctrl'] + 1;
      end;
      MainForm.Bonv_ctr_listTable.Last;
      MainForm.Bonv_ctr_listTable.Append;
      MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] := CodeBR;
      MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
      MainForm.Bonv_ctr_listTable.FieldValues['code_p'] := MainForm.FDQuery2.FieldValues['code_p'];
      MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] := 01;
      MainForm.Bonv_ctr_listTable.FieldValues['cond_p'] := 01;
      MainForm.Bonv_ctr_listTable.FieldValues['tva_p'] := MainForm.FDQuery2.FieldValues['tva_p'];
      MainForm.Bonv_ctr_listTable.FieldValues['prixht_p'] := MainForm.FDQuery2.FieldValues['prixht_p'];

      if not (MainForm.ClientTable.IsEmpty) and (ClientBonCtrGCbx.Text <> '') then
      begin

        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvd_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvr_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvg_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixva_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixva2_p'];
        end;
      end
      else
      begin
        MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvd_p'];
      end;

      MainForm.Bonv_ctr_listTable.Post;
      Refresh_PreservePosition;

      sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
      PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

      if PoleA = True then
      begin

        PRIXTTC := CurrToStrF(((((MainForm.FDQuery2.FieldValues['prixvd_p'] * MainForm.FDQuery2.FieldValues['tva_p']) / 100) + (MainForm.FDQuery2.FieldValues['prixvd_p']))), ffNumber, 2);

        try
          PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//                 Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

          ComPort1.Port := PORT; // 'COM7';
          ComPort1.Events := [];
          ComPort1.FlowControl.ControlDTR := dtrEnable;
          ComPort1.FlowControl.ControlRTS := rtsEnable;
          ComPort1.Open; // open port
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString(copy(MainForm.FDQuery2.FieldByName('nom_p').AsString, 0, 16) + '...' + #13#10); // send test command

          ComPort1.WriteUnicodeString('Prix: ' + PRIXTTC + ' DA'#13#10);

          PoleDisplayerTimerimer.Interval := 1500;
          PoleDisplayerTimerimer.Enabled := True;

          ComPort1.Close;
        except
//                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
        end;
      end;

      Ini.Free;

      MainForm.Bonv_ctr_listTable.IndexFieldNames := 'code_bvctr';
      MainForm.Bonv_ctr_listTable.Last;
      MainForm.Bonv_ctr_listTable.EnableControls;
      MainForm.Bonv_ctr_listTable.Refresh;

      MainForm.SQLQuery.Active := False;
      MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
//          MainForm.SQLQuery.Active:=True;


    end
    else
    begin

      if Panel1.Tag = 0 then
      begin
        MainForm.Bonv_ctr_listTable.First;
        while not MainForm.Bonv_ctr_listTable.Eof do
        begin

          if MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger = CodeP then
          begin
            MainForm.Bonv_ctr_listTable.Edit;
            MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat := MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat + 1;
            MainForm.Bonv_ctr_listTable.Post;
            Refresh_PreservePosition;
            ProduitBonCtrGCbx.Clear;
            sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

            showInPoleClient;
            Exit;

          end;
          MainForm.Bonv_ctr_listTable.Next;
        end;

      end
      else if (Panel1.Tag = 1) and (MainForm.Bonv_ctr_listTable.IsEmpty = False) then
      begin
        MainForm.Bonv_ctr_listTable.First;
        while not MainForm.Bonv_ctr_listTable.Eof do
        begin

          if MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger = CodeP then
          begin
            if MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat > 1 then
            begin
              MainForm.Bonv_ctr_listTable.Edit;
              MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat := MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat - 1;
              MainForm.Bonv_ctr_listTable.Post;
            end
            else
            begin
              MainForm.Bonv_ctr_listTable.Delete;
            end;
            Refresh_PreservePosition;
            ProduitBonCtrGCbx.Clear;
            sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

            showInPoleClient;
            Exit;

          end;
          MainForm.Bonv_ctr_listTable.Next;
        end;

      end;

    end;

    MainForm.FDQuery2.Active := false;
    MainForm.FDQuery2.SQL.Clear;


  end;

 End;
end;

procedure TBonCtrGestionF.FormActivate(Sender: TObject);
//Var
//
//HTaskbar:HWND;
//OldVal:LongInt;
begin
  try
  //Find handle of TASKBAR
//  HTaskBar:=FindWindow('Shell_TrayWnd',nil);
  //Turn SYSTEM KEYS off, Only Win 95/98/ME
//  SystemParametersInfo(97,Word(True),@OldVal,0);
  //Disable the taskbar
//  EnableWindow(HTaskBar,False);
  //Hide the taskbar
//  ShowWindow(HTaskbar,SW_HIDE);
  finally
    with BonCtrGestionF do
    begin
      BorderStyle := bsNone;
      FormStyle := fsStayOnTop;
      Left := 0;
      Top := 0;
      Height := Screen.Height;
      Width := Screen.Width;
    end;
  end

end;

procedure TBonCtrGestionF.showInPoleClient();
var
  Ini: TMemIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg2: string;
  Total: Integer;
begin
  Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

  if PoleA = True then
  begin
    try
      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//           Msg:= Ini.ReadString('',  'Afficheur client Msg', Msg);

      ComPort1.Port := PORT; // 'COM7';
      ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;       admin
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
      ComPort1.Open; // open port
      ComPort1.WriteUnicodeString('                                        '#13#10);
      ComPort1.WriteUnicodeString('                                        '#13#10);
      ComPort1.WriteUnicodeString('Subtotal: ' + #13#10); // send test command
      ComPort1.WriteUnicodeString(' ' + StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]) + ' DA'#13#10);
      ComPort1.Close;
    except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
    end;
  end;

  Ini.UpdateFile;
  Ini.Free;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if not ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if Key = VK_DELETE then
    begin
      DeleteProduitBonCtrGBtnClick(Sender);
    end;

     //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
    if (key = VK_DOWN) AND (MainForm.Bonv_ctr_listTable.RecNo=MainForm.Bonv_ctr_listTable.RecordCount)then
    begin

      key := VK_RETURN;

    end;

  end
  else
  begin
    exit
  end;


end;

procedure TBonCtrGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #9) then
  begin
    DataModuleF.Top5produit.Refresh;
    Refresh_PreservePosition;
    with TDBGridEh(Sender) do
    begin
      if SelectedIndex < (FieldCount - 1) then
        SelectedIndex := SelectedIndex + 1
      else
        SelectedIndex := 0;
    end;

    showInPoleClient;

  end;
end;

procedure TBonCtrGestionF.DeleteProduitBonCtrGBtnClick(Sender: TObject);
var
  Ini: TMemIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg2: string;
  Total: Integer;
begin
  if MainForm.Bonv_ctr_listTable.RecordCount = 1 then
  begin
    DataModuleF.Top5produit.Refresh;

//    MainForm.Bonv_ctr_listTable.DisableControls;
   // MainForm.Bonv_ctr_listTable.Refresh;
    MainForm.Bonv_ctr_listTable.Delete;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
//    MainForm.Bonv_ctr_listTable.Refresh;
//    ProduitsListDBGridEh.Refresh;
//    MainForm.Bonv_ctr_listTable.EnableControls;
    ClientBonCtrGCbx.StyleElements := [];
 //   RequiredClientGlbl.Visible:= False;
//    NameClientGErrorP.Visible:= False;
//     BonCtrTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonCtrTotalTTCLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
    BonCTotalTTCNewLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
    BonCtrRegleLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
    BonCtrRenduLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);

//    BonCtrGClientNEWCredit.Caption:= BonCtrTotalTTCLbl.Caption;
  end
  else if MainForm.Bonv_ctr_listTable.RecordCount <= 0 then
  begin
    exit;
  end
  else
  begin
//      MainForm.Bonv_ctr_listTable.DisableControls;
    MainForm.Bonv_ctr_listTable.Delete;
//      ProduitsListDBGridEh.Refresh;
    MainForm.Bonv_ctr_listTable.Refresh;
//      MainForm.Bonv_ctr_listTable.EnableControls;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

    Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
    PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

    if PoleA = True then
    begin
      try
        PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//           Msg:= Ini.ReadString('',  'Afficheur client Msg', Msg);

        ComPort1.Port := PORT; // 'COM7';
        ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;       admin
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
        ComPort1.Open; // open port
        ComPort1.WriteUnicodeString('                                        '#13#10);
        ComPort1.WriteUnicodeString('                                        '#13#10);
        ComPort1.WriteUnicodeString('Subtotal: ' + #13#10); // send test command
        ComPort1.WriteUnicodeString(' ' + StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]) + ' DA'#13#10);
        ComPort1.Close;
      except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
      end;
    end;

    Ini.UpdateFile;
    Ini.Free;
  end;
end;

procedure TBonCtrGestionF.CameraBonCtrGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonCtrGCbx.Text := '';
  MainForm.ProduitTable.Filtered := False;
  CameraF := TCameraF.Create(Application);

//-------- Show the splash screan for the produit familly to add new one---------//
  CameraF.Left := (Screen.Width div 2) - (CameraF.Width div 2);
  CameraF.Top := (Screen.Height div 2) - (CameraF.Height div 2);
  FormStyle := fsStayOnTop;
  CameraF.ShowModal;

end;

procedure TBonCtrGestionF.ChangePRIXBonCtrGBtnClick(Sender: TObject);
begin
  if not (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin

  //------- Show the splash screan for the adding comptes ---------//
      FSplashVersement := TFSplashVersement.Create(Application);

      FSplashVersement.Width := 304;
//      FSplashVersement.Height:=446;
//      FSplashVersement.OKVersementSBtn.Enabled:= True;
      FSplashVersement.AdvSmoothTouchKeyBoard1.Left:=0;
      FSplashVersement.AdvSmoothTouchKeyBoard1.Width:=304;
      FSplashVersement.AdvSmoothTouchKeyBoard1.BringToFront;

      FSplashVersement.Left := (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
      FSplashVersement.Top := (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

      FSplashVersement.Label1.Caption:= 'Prix V HT:';

      FSplashVersement.Tag := 5;
      FSplashVersement.OKVersementSBtn.Tag := 5;
//  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
      FormStyle := fsNormal;
      FSplashVersement.Show;

  end;
end;

procedure TBonCtrGestionF.ChangeQUTBonCtrGBtnClick(Sender: TObject);
begin
  if not (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin

  //------- Show the splash screan for the adding comptes ---------//
      FSplashVersement := TFSplashVersement.Create(Application);

      FSplashVersement.Width := 304;
//      FSplashVersement.Height:=446;
//      FSplashVersement.OKVersementSBtn.Enabled:= True;
      FSplashVersement.AdvSmoothTouchKeyBoard1.Left:=0;
      FSplashVersement.AdvSmoothTouchKeyBoard1.Width:=304;
      FSplashVersement.AdvSmoothTouchKeyBoard1.BringToFront;

      FSplashVersement.Left := (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
      FSplashVersement.Top := (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

      FSplashVersement.Label1.Caption:= 'Quantite:';

      FSplashVersement.Tag := 4;
      FSplashVersement.OKVersementSBtn.Tag := 4;
//  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
      FormStyle := fsNormal;
      FSplashVersement.Show;

  end;

end;

procedure TBonCtrGestionF.ClearProduitBonCtrGBtnClick(Sender: TObject);
begin

  if MainForm.Bonv_ctr_listTable.RecordCount > 0 then
  begin
    FSplashAddUnite := TFSplashAddUnite.Create(Application);
    FSplashAddUnite.Width := 350;
    FSplashAddUnite.Height := 160;
    FSplashAddUnite.Panel1.Color := $004735F9;
    FSplashAddUnite.LineP.Top := (FSplashAddUnite.Height) - 44;
    FSplashAddUnite.OKAddUniteSBtn.Top := (FSplashAddUnite.Height) - 36;
    FSplashAddUnite.OKAddUniteSBtn.ImageIndex := 17;
    FSplashAddUnite.CancelAddUniteSBtn.Top := (FSplashAddUnite.Height) - 36;
    FSplashAddUnite.OKAddUniteSBtn.Left := (FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
    FSplashAddUnite.CancelAddUniteSBtn.Left := ((FSplashAddUnite.Width div 2) + ((FSplashAddUnite.Width div 2) div 2)) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;

    FSplashAddUnite.NameAddUniteSLbl.Caption := 'Voulez-vous vraiment supprimer tous  ' + sLineBreak + sLineBreak + 'les produits de ce Bon ?';
    FSplashAddUnite.NameAddUniteSLbl.Top := (FSplashAddUnite.Panel1.Height) + 10;
    FSplashAddUnite.NameAddUniteSLbl.Font.Height := 16;
    FSplashAddUnite.Image1.Visible := True;
    FSplashAddUnite.Image1.Top := (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2);
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption := 'Suppression des Produits!!';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color := clWhite;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left := (FSplashAddUnite.Width div 2) - (FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.NameAddUniteSEdt.Visible := False;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Visible := False;
    FSplashAddUnite.NameAddUniteSLbl.Left := (FSplashAddUnite.Width div 2) - (FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
    FSplashAddUnite.Left := (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top := (MainForm.Top + MainForm.Height div 2) - (FSplashAddUnite.Height div 2);
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE or AW_BLEND or AW_ACTIVATE);
    FormStyle := fsNormal;
  //  FormStyle:= fsNormal;
    FSplashAddUnite.Show;
    FSplashAddUnite.OKAddUniteSBtn.Enabled := True;
    FSplashAddUnite.OKAddUniteSBtn.Tag := 22;
  end;

end;

procedure TBonCtrGestionF.LeftFavTabPLock(Sender: TObject);
var
  Ini: TMemIniFile;
begin

   Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
   Ini.WriteBool(Caption,'Fav Locked', LeftFavTabP.Locked);

   Ini.UpdateFile;
   Ini.Free;

end;

procedure TBonCtrGestionF.ListAddProduitBonCtrGBtnClick(Sender: TObject);
begin

  if Panel1.Tag = 1 then
  begin
    addingState;
  end;

//-------- use this code to start creating th form-----//
  ProduitBonCtrGCbx.Text := '';
  MainForm.ProduitTable.Filtered := False;
  FastProduitsListF := TFastProduitsListF.Create(Application);
  FastProduitsListF.Tag := 4;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FormStyle := fsNormal;
  FastProduitsListF.ShowModal;

end;

procedure TBonCtrGestionF.ListClientBonCtrGBtnClick(Sender: TObject);
Var I:Integer;
begin
//-------- use this code to start creating th form-----//
  FastProduitsListF := TFastProduitsListF.Create(Application);

  MainForm.FDQuery2.Active:=False;
  MainForm.FDQuery2.SQL.Clear;
  MainForm.FDQuery2.SQL.TExt:= 'SELECT code_c,nom_c,activite_c,fix_c,mob_c,adr_c,credit_c FROM client';
  MainForm.FDQuery2.IndexFieldNames:='code_c';
  MainForm.FDQuery2.Active:=True;

  for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
  begin
    FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
  end;

  //Change the dataSet
  FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N�';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

  FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Client';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activit�';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='fix_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='T�l�phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='mob_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='T�l�phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='adr_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[6].FieldName:='credit_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Title.Caption:='Cr�dit';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Width:= 130;;


  FastProduitsListF.ProduitsListDBGridEh.Refresh;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

  FastProduitsListF.Caption:= 'Liste des Clients';
  FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
  FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
  FastProduitsListF.ResearchProduitsEdt.Width:= 431;

  FastProduitsListF.Tag := 3;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonCtrGestionF.Timer1Timer(Sender: TObject);
begin
  if label20.Visible = True then
    label20.Visible := False
  else
    label20.Visible := True;
end;

procedure TBonCtrGestionF.Timer2Timer(Sender: TObject);
begin
  if Label3.Visible = True then
    Label3.Visible := False
  else
    Label3.Visible := True;
end;

procedure TBonCtrGestionF.loadData();
begin

    ///========Here we make sure the opend bon is the picked in bon list table----
         MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';
         MainForm.Bonv_ctr_listTable.Active:=false;
         MainForm.Bonv_ctr_listTable.SQL.Clear;
         MainForm.Bonv_ctr_listTable.SQL.Text:=BonCtrGestionF.BCLSQL +' ORDER BY code_bvctrl ' ;
         MainForm.Bonv_ctr_listTable.Active:=True;
  ///========Here we make sure the opend bon is the picked in bon list table---

//  MainForm.Bonv_ctrTable.Refresh;
  MainForm.Bonv_ctr_listTable.Refresh;

  if MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = True then
  begin
    FSplashVersement.DisableBonCtr;
  end;
  if MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = False then
  begin
    EnableBonCtr;
  end;

  if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0) and (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> null) then
  begin
    ClientBonCtrGCbx.Text := MainForm.Bonv_ctrTable.FieldByName('clientbvctr').AsWideString;
  end;
//  if (MainForm.Bonv_ctrTable.FieldByName('code_mdpai']<> 0) AND (MainForm.Bonv_ctrTable.FieldByName('code_mdpai']<>null)  then
//  begin
//  ModePaieBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldByName('ModePaie'];
//  end;
//  if (MainForm.Bonv_ctrTable.FieldByName('code_cmpt']<> 0) AND (MainForm.Bonv_ctrTable.FieldByName('code_cmpt']<>null)  then
//  begin
//  CompteBonCtrGCbx.Text:=MainForm.Bonv_ctrTable.FieldByName('Compte'];
//  end;

  if (MainForm.Bonv_ctrTable.FieldByName('num_bvctr').AsString <> '') AND (MainForm.Bonv_ctrTable.FieldByName('num_bvctr').AsString <> null) then
  begin
    NumBonCtrGEdt.Caption := MainForm.Bonv_ctrTable.FieldByName('num_bvctr').AsString;

  end;

  if (MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime <> null) then
  begin
    DateBonCtrGD.Date := MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime;
  end;

  if (MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime <> null) then
  begin
    HourBonCtrGD.Caption := TimeToStr(MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime);
  end;

  if (MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsFloat<> null) then
  begin
    BonCtrTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsFloat, ffNumber, 2);
    BonCTotalTTCNewLbl.Caption :=  CurrToStrF(MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsFloat, ffNumber, 2);
  end else
      begin
        BonCtrTotalTTCLbl.Caption :=   CurrToStrF(0, ffNumber, 2);
        BonCTotalTTCNewLbl.Caption :=  CurrToStrF(0, ffNumber, 2);
      end;

  if (MainForm.Bonv_ctrTable.FieldByName('MontantRen').AsFloat <> null) then
  begin
    BonCtrRenduLbl.Caption := CurrToStrF(((MainForm.Bonv_ctrTable.FieldByName('MontantRen').AsFloat)), ffNumber, 2);
  end;


//  ProduitsListDBGridEh.Refresh;
  if MainForm.Bonv_ctr_listTable.ControlsDisabled then
  begin
    MainForm.Bonv_ctr_listTable.EnableControls;
  end;
end;

procedure TBonCtrGestionF.sSpeedButton7Click(Sender: TObject);
begin
  if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0)
     and (MainForm.Bonv_ctrTable.FieldValues['code_c'] <> Null )  then

    begin
     MainForm.Bonv_ctrTable.First;
     loadData;
  end else
    begin
      MainForm.Bonv_ctrTable.Edit;
      MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := 1;
      MainForm.Bonv_ctrTable.Post;

      MainForm.Bonv_ctrTable.First;
      loadData;
    end
end;

procedure TBonCtrGestionF.sSpeedButton6Click(Sender: TObject);
begin
  if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0)
     and (MainForm.Bonv_ctrTable.FieldValues['code_c'] <> Null )  then

    begin
     MainForm.Bonv_ctrTable.Prior;
     loadData;
  end else
    begin
      MainForm.Bonv_ctrTable.Edit;
      MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := 1;
      MainForm.Bonv_ctrTable.Post;

      MainForm.Bonv_ctrTable.Prior;
      loadData;
    end
end;

procedure TBonCtrGestionF.sSpeedButton5Click(Sender: TObject);
begin
  if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0)
     and (MainForm.Bonv_ctrTable.FieldValues['code_c'] <> Null )  then

    begin
     MainForm.Bonv_ctrTable.Next;
     loadData;
  end else
    begin
      MainForm.Bonv_ctrTable.Edit;
      MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := 1;
      MainForm.Bonv_ctrTable.Post;

      MainForm.Bonv_ctrTable.Next;
      loadData;
    end
end;

procedure TBonCtrGestionF.sSpeedButton4Click(Sender: TObject);
begin
  if (MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger <> 0)
     and (MainForm.Bonv_ctrTable.FieldValues['code_c'] <> Null )  then

    begin
     MainForm.Bonv_ctrTable.Last;
     loadData;
  end else
    begin
      MainForm.Bonv_ctrTable.Edit;
      MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := 1;
      MainForm.Bonv_ctrTable.Post;

      MainForm.Bonv_ctrTable.Last;
      loadData;
    end
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtChange(Sender: TObject);
var
  BonLTotalHT, RemisePerctageBonCtr, TotalTVANet, NewHT, NewTVA, NewTTC, Remise, OldTTC, OldClientCredit: Double;
begin
  if RemisePerctageBonCtrGEdt.Text <> '' then
  begin
    if RemisePerctageBonCtrGEdt.Text <> '' then
    begin
      RemisePerctageBonCtr := StrToFloat(StringReplace(RemisePerctageBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
    end;
    if BonCTotalTTCNewLbl.Caption <> '' then
    begin
      NewTTC := StrToFloat(StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));  //TTC
    end;

    BonCtrTotalTTCLbl.Caption := FloatToStrF(Round(NewTTC - ((NewTTC * RemisePerctageBonCtr) / 100)), ffNumber, 14, 2);

    if BonCTotalTTCNewLbl.Caption <> '' then
    begin
      OldTTC := StrToFloat(StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));  //TTC
    end;
    if BonCtrTotalTTCLbl.Caption <> '' then
    begin
      NewTTC := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));  //TTC
    end;
    if RemisePerctageBonCtrGEdt.Focused then
    begin
      RemiseBonCtrGEdt.Text := FloatToStrF((OldTTC - NewTTC), ffNumber, 14, 2); //RemiseAMount
    end;


//         BonCtrRenduLbl.Caption:=BonCtrTotalTTCLbl.Caption;

//           if BonCtrTotalHTLbl.Caption <>'' then
//            begin
//            BonLTotalHT:=StrToFloat (StringReplace(BonCtrTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
//            end;

    NewHT := StrToFloat(StringReplace(BonCTotalHTNewLbl.Caption, #32, '', [rfReplaceAll]));  //

    BonCRemiseHTNewLbl.Caption := FloatToStrF((BonLTotalHT - NewHT), ffNumber, 14, 2);

//            if BonCtrGClientOLDCredit.Caption <>'' then
//            begin
//            OldClientCredit:=StrToFloat (StringReplace(BonCtrGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
//            end;

//        BonCtrGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
  end
  else
  begin
    RemiseBonCtrGEdt.Text := '';
    BonCRemiseHTNewLbl.Caption := '0';
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
var
  RemiseBonCtrG, BonLTotalHT, BonLTotalTVA, OLDTTC: Double;
begin
  if RemiseBonCtrGEdt.Focused then
  begin
    if RemiseBonCtrGEdt.Text <> '' then
    begin
      RemiseBonCtrG := StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
    end;
    if (RemiseBonCtrGEdt.Text <> '') and (RemiseBonCtrG <> 0) then
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
      if BonCTotalTTCNewLbl.Caption <> '' then
      begin
        OLDTTC := StrToFloat(StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
      end;
      RemisePerctageBonCtrGEdt.Text := FloatToStrF(((RemiseBonCtrG / OLDTTC) * 100), ffNumber, 14, 2);
//        end;
    end
    else
    begin
      BonCRemiseHTNewLbl.Caption := '0';
      RemisePerctageBonCtrGEdt.Text := '';
   //       BonCTotalHTNewLbl.Caption:=BonCtrTotalHTLbl.Caption;
    end;
  end;
end;

procedure TBonCtrGestionF.RemiseBonCtrGEdtClick(Sender: TObject);
begin
RemiseBonCtrGEdt.Text := StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonCtrGEdt.SelectAll;
end;

procedure TBonCtrGestionF.ValiderBVCtrBonCtrGBtn1Click(Sender: TObject);
begin
//    if ClientBonCtrGCbx.Text <> '' then
//    begin
           //-------- Show the splash screan for the adding comptes ---------//
  FSplashVersement := TFSplashVersement.Create(Application);
  FSplashVersement.Width := 561;
  FSplashVersement.Label3.Caption := 'Remise:';
  FSplashVersement.Label8.Caption := 'Montant:';
  FSplashVersement.Label10.Caption := 'Rendu:';

  FSplashVersement.Left := (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
  FSplashVersement.Top := (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

  if RemiseBonCtrGEdt.Text <> '' then
  begin
    FSplashVersement.OldCreditVersementSLbl.Caption := FloatToStrF(((StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll])))), ffNumber, 14, 2);

  end
  else
  begin
    FSplashVersement.OldCreditVersementSLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  end;

  FSplashVersement.MontantTTCVersementSLbl.Caption := FloatToStrF(((StrToFloat(StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
    ), ffNumber, 14, 2);

//        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((
//
//             (StrToFloat (StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll])))
//             ),ffNumber,14,2);


  FSplashVersement.Tag := 3;
  FSplashVersement.OKVersementSBtn.Tag := 3;

    //  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );

  FormStyle := fsNormal;
  FSplashVersement.Show;

  Timer1.Enabled := False;

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
    MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean := False;
    MainForm.Bonv_ctrTable.Post;
  end;


// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
//  BonCtrGClientOLDCredit.Caption:=
//  CurrToStrF((((MainForm.ClientTable.FieldValues['oldcredit_c'])-(StringReplace(BonCtrResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

  BonCtrRegleLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  BonCtrRenduLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);



//      MainForm.ClientTable.Active:=false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
//      MainForm.ClientTable.Active:=True;
//      MainForm.ClientTable.EnableControls ;

 //----------------------------------------

  begin
    MainForm.SQLQuery4.Active := False;
    MainForm.SQLQuery4.SQL.Clear;
    MainForm.SQLQuery4.SQL.Text := 'SELECT *, '
    +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
    +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
    +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
    +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
    +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
    +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
    +' (qut_p + qutini_p ) AS QutDispo, '
    +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
    +' FROM produit ';
    MainForm.SQLQuery4.Active := True;
    Mainform.Sqlquery.Active := False;
    Mainform.Sqlquery.Sql.Clear;
    Mainform.Sqlquery.Sql.Text := 'SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p FROM bonv_ctr_list WHERE code_bvctr =  '+
      IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p ';
    MainForm.SQLQuery.Active := True;
    MainForm.SQLQuery.First;
    while not (MainForm.SQLQuery.Eof) do
    begin
//      MainForm.ProduitTable.DisableControls;
      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
      MainForm.SQLQuery4.SQL.Text := 'SELECT *, '
      +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
      +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
      +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
      +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
      +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
      +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
      +' (qut_p + qutini_p ) AS QutDispo, '
      +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
      +' FROM produit WHERE code_p = ' + QuotedStr(MainForm.SQLQuery.FieldValues['code_p']);
      MainForm.SQLQuery4.Active := True;
      MainForm.SQLQuery4.Edit;
      MainForm.SQLQuery4.FieldValues['qut_p'] := (MainForm.SQLQuery4.FieldValues['qut_p'] + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
      MainForm.SQLQuery4.FieldValues['prixvd_p'] := MainForm.SQLQuery.FieldValues['prixvd_p'];
      MainForm.SQLQuery4.Post;
      MainForm.SQLQuery.Next;
    end;

    MainForm.SQLQuery4.Active := False;
    MainForm.SQLQuery4.SQL.Clear;
//    MainForm.ProduitTable.SQL.Text := 'SELECT * FROM produit ';
//    MainForm.ProduitTable.Active := True;
//    MainForm.ProduitTable.EnableControls;
    MainForm.SQLQuery.Active := False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.Bonv_ctrTable.Refresh;
    MainForm.ProduitTable.Refresh;

  end;

end;

procedure TBonCtrGestionF.ExValiderBVCtrBonCtrGBtn1Click(Sender: TObject);
var
  CodeOCB, CodeRF: Integer;
begin


//     BonCtrRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);

//     BonCtrRenduLbl.Caption:=  FloatToStrF((
//              (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
//             -
//              (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
//             ),ffNumber,14,2);

//     BonCtrGClientNEWCredit.Caption := ResteVersementSLbl.Caption;

  FSplashVersement.DisableBonCtr;

  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

//--- this is for adding to the priduit
  begin
    MainForm.SQLQuery3.Active := False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.SQLQuery3.SQL.Text := 'SELECT *, '
    +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
    +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
    +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
    +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
    +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
    +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
    +' (qut_p + qutini_p ) AS QutDispo, '
    +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
    +' FROM produit ';
    MainForm.SQLQuery3.Active := True;
    Mainform.Sqlquery.Active := False;
    Mainform.Sqlquery.Sql.Clear;
    Mainform.Sqlquery.Sql.Text := 'SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p FROM bonv_ctr_list WHERE code_bvctr =  ' + IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p ';
    MainForm.SQLQuery.Active := True;
    MainForm.SQLQuery.First;
    while not (MainForm.SQLQuery.Eof) do
    begin
//      MainForm.ProduitTable.DisableControls;
      MainForm.SQLQuery3.Active := False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text := 'SELECT *, '
      +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
      +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
      +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
      +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
      +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
      +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
      +' (qut_p + qutini_p ) AS QutDispo, '
      +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
      +' FROM produit WHERE code_p = ' + QuotedStr(MainForm.SQLQuery.FieldValues['code_p']);
      MainForm.SQLQuery3.Active := True;
      MainForm.SQLQuery3.Edit;
      MainForm.SQLQuery3.FieldValues['qut_p'] := (MainForm.SQLQuery3.FieldValues['qut_p'] - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
      MainForm.SQLQuery3.FieldValues['prixvd_p'] := MainForm.SQLQuery.FieldValues['prixvd_p'];
      MainForm.SQLQuery3.Post;
      MainForm.SQLQuery.Next;
    end;

    MainForm.SQLQuery3.Active := False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.ProduitTable.Refresh;
//    MainForm.ProduitTable.SQL.Text := 'SELECT * FROM produit ';
//    MainForm.ProduitTable.Active := True;
//    MainForm.ProduitTable.EnableControls;
    MainForm.SQLQuery.Active := False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.Bonv_ctrTable.Refresh;

  end;
//--- this is to set the bon ctrration fileds
  begin
    MainForm.ClientTable.DisableControls;
    MainForm.ClientTable.Active := false;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text := 'Select * FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
    MainForm.ClientTable.Active := True;

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
    MainForm.Bonv_ctrTable.FieldValues['code_c'] := MainForm.ClientTable.FieldByName('code_c').AsInteger;
    MainForm.Bonv_ctrTable.FieldValues['code_ur'] := StrToInt(MainForm.UserIDLbl.Caption);
//          MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bonv_ctrTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
//          MainForm.Bonv_ctrTable.FieldValues['obser_bvctr']:= ObserBonCtrGMem.Text;
//          MainForm.Bonv_ctrTable.FieldValues['num_cheque_bvctr']:= NChequeBonCtrGCbx.Text;
    MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
    if RemiseBonCtrGEdt.Text <> '' then
    begin
      MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsFloat := StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
    end
    else
    begin
      MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsFloat := 0;
    end;

    MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
    MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
    MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean := True;
    MainForm.Bonv_ctrTable.FieldValues['code_ur'] := StrToInt(MainForm.UserIDLbl.Caption);

//          if (LowerCase(ModePaieBonCtrGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
//          begin
//           MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:=1 ;
//          end;
//           if (LowerCase(ModePaieBonCtrGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
//          begin
//           MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:=2 ;
//          end;
//          if (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
//             OR (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) then
//          begin
//           MainForm.Bonv_ctrTable.FieldValues['code_mdpai']:=3 ;
//          end;

    MainForm.Bonv_ctrTable.Post;

  //------------------------------------------------------------------------------------------------------------------------------------------------------

    begin
      if Tag = 0 then
      begin

        MainForm.SQLQuery4.Active:=false;
        MainForm.SQLQuery4.SQL.Clear;
        MainForm.SQLQuery4.SQL.Text:='Select * from regclient ORDER BY code_rc DESC LIMIT 1'  ;
        MainForm.SQLQuery4.Active:=True;


        if not (MainForm.SQLQuery4.IsEmpty) then
        begin
          MainForm.SQLQuery4.Last;
          CodeRF := MainForm.SQLQuery4.FieldValues['code_rc'] + 1;
        end
        else
        begin
          CodeRF := 1;
        end;

        MainForm.SQLQuery4.Append;
        MainForm.SQLQuery4.FieldValues['code_rc'] := CodeRF;
        MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
        MainForm.SQLQuery4.FieldValues['nom_rc'] := NumBonCtrGEdt.Caption;
        MainForm.SQLQuery4.FieldValues['code_c'] := MainForm.ClientTable.FieldByName('code_c').AsInteger;
        MainForm.SQLQuery4.FieldValues['date_rc'] := DateOf(Today);
        MainForm.SQLQuery4.FieldValues['time_rc'] := TimeOf(Now);
        MainForm.SQLQuery4.FieldValues['code_mdpai'] := MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
        MainForm.SQLQuery4.FieldValues['code_cmpt'] := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
//            MainForm.RegclientTable.FieldValues['obser_rc']:= ObserBonCtrGMem.Text;
//            MainForm.RegclientTable.FieldValues['num_cheque_rc']:= NChequeBonCtrGCbx.Text;
        MainForm.SQLQuery4.FieldValues['bon_or_no_rc'] := 4;

        MainForm.SQLQuery4.FieldByName('montver_rc').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

//            if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
//            begin
//             MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
//            end;
//             if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='ch�que') OR (LowerCase(BonCtrGestionFodePaieBonCtrGCbx.Text)='cheque') then
//            begin
//             MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
//            end;
//            if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='� terme' ) OR (LowerCase(BonCtrGestionFModePaieBonCtrGCbx.Text)='a terme' )
//               OR (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='� terme' ) then
//            begin
//             MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
//            end;

        MainForm.SQLQuery4.Post;
        MainForm.RegclientTable.Refresh;

      end
      else
      begin

//        MainForm.SQLQuery4.DisableControls;
        MainForm.SQLQuery4.Active := false;
        MainForm.SQLQuery4.SQL.Clear;
        MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM regclient WHERE code_bvctr =' + IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']);
        MainForm.SQLQuery4.Active := True;

        MainForm.SQLQuery4.Edit;
        MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
        MainForm.SQLQuery4.FieldValues['nom_rc'] := NumBonCtrGEdt.Caption;
        MainForm.SQLQuery4.FieldValues['code_c'] := MainForm.ClientTable.FieldByName('code_c').AsInteger;
        MainForm.SQLQuery4.FieldValues['date_rc'] := DateOf(Today);
        MainForm.SQLQuery4.FieldValues['time_rc'] := TimeOf(Now);
        MainForm.SQLQuery4.FieldValues['code_mdpai'] := MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
        MainForm.SQLQuery4.FieldValues['code_cmpt'] := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
//                  MainForm.RegclientTable.FieldValues['obser_rc']:= ObserBonLivGMem.Text;
//                  MainForm.RegclientTable.FieldValues['num_cheque_rc']:= NChequeBonLivGCbx.Text;
        MainForm.SQLQuery4.FieldValues['bon_or_no_rc'] := 4;

        MainForm.SQLQuery4.FieldByName('montver_rc').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

//                  if (LowerCase(ModePaieBonCtrGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
//                  begin
//                   MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
//                  end;
//                   if (LowerCase(BonCtrGestionF.ModePaieBonCtrGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
//                  begin
//                   MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
//                  end;
//                  if (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
//                     OR (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) then
//                  begin
//                   MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
//                  end;

        MainForm.SQLQuery4.Post;
        MainForm.RegclientTable.Refresh;

        MainForm.SQLQuery4.Active := false;
        MainForm.SQLQuery4.SQL.Clear;
//        MainForm.RegclientTable.SQL.Text := 'SELECT * FROM regclient ';
//        MainForm.RegclientTable.Active := True;
//        MainForm.RegclientTable.EnableControls;

      end;

    end;

 //-----------------------------------------------------------------------------------------------------------------------------------------------------------

     //     MainForm.Bona_recTable.EnableControls;

//          MainForm.ClientTable.Edit;
//          MainForm.ClientTable.FieldByName('oldcredit_c').AsFloat:=
//          ((StrToFloat(StringReplace(BonCtrGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
//          MainForm.ClientTable.Post;

    MainForm.ClientTable.Active := false;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text := 'Select * FROM client';
    MainForm.ClientTable.Active := True;
    MainForm.ClientTable.EnableControls;

                                        //--- this is for adding the money to the caisse----
    begin

      if Tag = 0 then
      begin
//        MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
        MainForm.SQLQuery4.Active := false;
        MainForm.SQLQuery4.SQL.Clear;
        MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM opt_cas_bnk';
        MainForm.SQLQuery4.Active := True;

        if not (MainForm.SQLQuery4.IsEmpty) then
        begin
          MainForm.SQLQuery4.Last;
          CodeOCB := MainForm.SQLQuery4.FieldValues['code_ocb'] + 1;
        end
        else
        begin
          CodeOCB := 1;
        end;

        MainForm.SQLQuery4.Append;
        MainForm.SQLQuery4.FieldValues['code_ocb'] := CodeOCB;
        MainForm.SQLQuery4.FieldValues['date_ocb'] := DateOf(Today);
        MainForm.SQLQuery4.FieldValues['time_ocb'] := TimeOf(Now);
        ;
        MainForm.SQLQuery4.FieldValues['nom_ocb'] := 'Vente au Comptoir N� ' + NumBonCtrGEdt.Caption;
        MainForm.SQLQuery4.FieldValues['third_ocb'] := ClientBonCtrGCbx.Text;
        MainForm.SQLQuery4.FieldValues['encaiss_ocb'] := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
            //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
        //            begin
        MainForm.SQLQuery4.FieldValues['code_mdpai'] := 1;
        //            end;
        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
        //            end;
        //            if (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
        //               OR (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
        //            end;

        MainForm.SQLQuery4.FieldValues['code_cmpt'] := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
        MainForm.SQLQuery4.FieldValues['nature_ocb'] := MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
        MainForm.SQLQuery4.FieldValues['code_ur'] := StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

        MainForm.SQLQuery4.Post;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
        MainForm.Opt_cas_bnk_BankTable.Refresh;

        MainForm.SQLQuery4.Active := false;
        MainForm.SQLQuery4.SQL.Clear;
//        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text := 'SELECT * FROM opt_cas_bnk where nature_ocb = false';
//        MainForm.Opt_cas_bnk_CaisseTable.Active := True;
//        MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

      end
      else
      begin
//        MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
        MainForm.SQLQuery4.Active := false;
        MainForm.SQLQuery4.SQL.Clear;
        MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM opt_cas_bnk WHERE code_bvctr =' + IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']);
        MainForm.SQLQuery4.Active := True;

        MainForm.SQLQuery4.Edit;
        MainForm.SQLQuery4.FieldValues['date_ocb'] := DateOf(Today);
        MainForm.SQLQuery4.FieldValues['time_ocb'] := TimeOf(Now);
        ;
        MainForm.SQLQuery4.FieldValues['nom_ocb'] := 'Vente au Comptoir N� ' + NumBonCtrGEdt.Caption;
        MainForm.SQLQuery4.FieldValues['third_ocb'] := ClientBonCtrGCbx.Text;
        MainForm.SQLQuery4.FieldValues['encaiss_ocb'] := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
            //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonCtrGCbx.Text)='espece') then
        //            begin
        MainForm.SQLQuery4.FieldValues['code_mdpai'] := 1;
        //            end;
        //             if (LowerCase(ModePaieBonCtrGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonCtrGCbx.Text)='cheque') then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
        //            end;
        //            if (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonCtrGCbx.Text)='a terme' )
        //               OR (LowerCase(ModePaieBonCtrGCbx.Text)='� terme' ) then
        //            begin
        //             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
        //            end;

        MainForm.SQLQuery4.FieldValues['code_cmpt'] := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
        MainForm.SQLQuery4.FieldValues['nature_ocb'] := MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
        MainForm.SQLQuery4.FieldValues['code_ur'] := StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.SQLQuery4.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

        MainForm.SQLQuery4.Post;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
        MainForm.Opt_cas_bnk_BankTable.Refresh;

        MainForm.SQLQuery4.Active := false;
        MainForm.SQLQuery4.SQL.Clear;
//        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text := 'SELECT * FROM opt_cas_bnk where nature_ocb = false';
//        MainForm.Opt_cas_bnk_CaisseTable.Active := True;
//        MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
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
  if FileExists(GetCurrentDir + '\bin\gc_ctr') then
  begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh, GetCurrentDir + '\bin\gc_ctr');
  end;

  MainForm.Bonv_ctr_listTable.Active := True;
  if Assigned(ProduitsListF) then
  begin
    ProduitsListF.ResearchProduitsEdt.Text := '';
    MainForm.ProduitTable.Filtered := False;
  end;
end;

procedure TBonCtrGestionF.FormDestroy(Sender: TObject);
begin
  BonCtrGestionF := nil
end;

procedure TBonCtrGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #27 then
  begin
    Key := #0;

    CloseBonCtrGBtnClick(Sender);
//  Close;

  end;
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtKeyPress(Sender: TObject; var Key: Char);
const
  N =['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', Char(VK_back)];
  F =['.'];
begin
  if not (Key in N) then
  begin
    Key := #0;
  end;

  if (Key in F) then
  begin
    Key := #44;
  end;
  if (Key = '.') and (Pos(Key, (RemisePerctageBonCtrGEdt.Text)) > 0) then
  begin
    Key := #0;
  end;
end;

procedure TBonCtrGestionF.GettingData;
var
  Name, Tel, Mob, Adr, MoneyWordRX: TfrxMemoView;
  str1: string;
  Logo: TfrxPictureView;
  S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if not (MainForm.CompanyTable.IsEmpty) then
  begin

    Name := ComptoirTicketfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text := MainForm.CompanyTable.FieldByName('nom_comp').AsString;
    Name.Visible := True;

    Tel := ComptoirTicketfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text := MainForm.CompanyTable.FieldByName('fix_comp').AsString;
    Tel.Visible := True;

    Mob := ComptoirTicketfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text := MainForm.CompanyTable.FieldByName('mob_comp').AsString;
    Mob.Visible := True;

    Adr := ComptoirTicketfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text := MainForm.CompanyTable.FieldByName('adr_comp').AsString;
    Adr.Visible := True;

    Logo := ComptoirTicketfrxRprt.FindObject('Logo') as TfrxPictureView;
    Logo.Visible := True;

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

  str1 := '';
  str1 := MontantEnToutesLettres(StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := ComptoirTicketfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text := '';
  MoneyWordRX.Text := str1; // StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

end;

procedure TBonCtrGestionF.GettingData57;
var
  Name, Tel, Mob, Adr, MoneyWordRX: TfrxMemoView;
  str1: string;
  Logo: TfrxPictureView;
  S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if not (MainForm.CompanyTable.IsEmpty) then
  begin

    Name := ComptoirTicket57frxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text := MainForm.CompanyTable.FieldByName('nom_comp').AsString;
    Name.Visible := True;

    Tel := ComptoirTicket57frxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text := MainForm.CompanyTable.FieldByName('fix_comp').AsString;
    Tel.Visible := True;

    Mob := ComptoirTicket57frxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text := MainForm.CompanyTable.FieldByName('mob_comp').AsString;
    Mob.Visible := True;

    Adr := ComptoirTicket57frxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text := MainForm.CompanyTable.FieldByName('adr_comp').AsString;
    Adr.Visible := True;

    Logo := ComptoirTicket57frxRprt.FindObject('Logo') as TfrxPictureView;
    Logo.Visible := True;

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

  str1 := '';
  str1 := MontantEnToutesLettres(StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := ComptoirTicket57frxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text := '';
  MoneyWordRX.Text := str1; // StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);


end;

procedure TBonCtrGestionF.PoleDisplayerTimerimerTimer(Sender: TObject);
var
  Ini: TMemIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg: string;
begin
  if BonCtrPListDataS.DataSet.IsEmpty then
  begin
    Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
    PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

    if PoleA = True then
    begin
      try
        PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//           Msg:= Ini.ReadString('',  'Afficheur client Msg', Msg);

        BonCtrGestionF.ComPort1.Port := PORT; // 'COM7';
        BonCtrGestionF.ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
        BonCtrGestionF.ComPort1.Open; // open port
        BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
        BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
//          BonCtrGestionF. ComPort1.WriteUnicodeString(Msg+#13#10); // send test command
        BonCtrGestionF.ComPort1.Close;
      except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
      end;
    end;

    Ini.UpdateFile;
    Ini.Free;

    PoleDisplayerTimerimer.Enabled := False;
  end
  else
  begin
    if PoleDisplayerTimerimer.Interval = 1500 then
    begin

      showInPoleClient;

      PoleDisplayerTimerimer.Enabled := False;

    end;
    if PoleDisplayerTimerimer.Interval = 10000 then
    begin
      Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
      PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

      if PoleA = True then
      begin
        try
          PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
          Msg := Ini.ReadString('', 'Afficheur client Msg', Msg);

          ComPort1.Port := PORT; // 'COM7';
          ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
          ComPort1.Open; // open port
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString(Msg + #13#10); // send test command
          ComPort1.Close;
        except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
        end;
      end;

//        ini.UpdateFile;
      Ini.Free;

      PoleDisplayerTimerimer.Enabled := False;
    end;

  end;

end;

procedure TBonCtrGestionF.PrintTicketBVCtrBonCtrGBtnClick(Sender: TObject);
var
Ini: TIniFile;
begin

  if PrinterCaisseSizeBVCtrBonCtrLbl.Caption = '80mm' then
  begin

    if ValiderBVCtrBonCtrGImg.ImageIndex <> 1 then
    begin
      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
      MainForm.Bonv_ctr_listTable.DisableControls;
//      ComptoirTicketfrxRprt.PrepareReport;
      GettingData;
//      ComptoirTicketfrxRprt.PrintOptions.Printer := FOptions.PrintersListFOptionCaisseCbx.Text;
      ComptoirTicketfrxRprt.PrintOptions.Printer := Ini.ReadString('', 'Printer Caisse Text',ComptoirTicketfrxRprt.PrintOptions.Printer);
      ComptoirTicketfrxRprt.PrintOptions.ShowDialog := False;
      ComptoirTicketfrxRprt.PrepareReport;
      ComptoirTicketfrxRprt.Print;
      MainForm.Bonv_ctr_listTable.EnableControls;
      Ini.Free;
    end;
  end;

  if PrinterCaisseSizeBVCtrBonCtrLbl.Caption = '57mm' then
  begin

    if ValiderBVCtrBonCtrGImg.ImageIndex <> 1 then
    begin
      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
      MainForm.Bonv_ctr_listTable.DisableControls;
//      ComptoirTicket57frxRprt.PrepareReport;
      GettingData57;
//      ComptoirTicketfrxRprt.PrintOptions.Printer := FOptions.PrintersListFOptionCaisseCbx.Text;
      ComptoirTicketfrxRprt.PrintOptions.Printer := Ini.ReadString('', 'Printer Caisse Text',ComptoirTicketfrxRprt.PrintOptions.Printer);
      ComptoirTicket57frxRprt.PrintOptions.ShowDialog := False;
      ComptoirTicket57frxRprt.PrepareReport;
      ComptoirTicket57frxRprt.Print;
      MainForm.Bonv_ctr_listTable.EnableControls;
      Ini.Free;
    end;
  end;

end;

procedure TBonCtrGestionF.sSpeedButton1Click(Sender: TObject);
begin
  GettingData;
  MainForm.Bonv_ctr_listTable.DisableControls;
  ComptoirTicketfrxRprt.PrepareReport;
  frxXLSExport1.FileName := 'Ticket De Caisse N� ' + IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5, (MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger)]);
  ComptoirTicketfrxRprt.Export(frxXLSExport1);
  MainForm.Bonv_ctr_listTable.EnableControls;
end;

procedure TBonCtrGestionF.sSpeedButton2Click(Sender: TObject);
begin
  GettingData;
  MainForm.Bonv_ctr_listTable.DisableControls;
  ComptoirTicketfrxRprt.PrepareReport;

  frxPDFExport1.FileName := 'Ticket De Caisse N� ' + IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5, (MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger)]);

  frxPDFExport1.EmbeddedFonts := True;

  ComptoirTicketfrxRprt.Export(frxPDFExport1);
  MainForm.Bonv_ctr_listTable.EnableControls;
end;

procedure TBonCtrGestionF.sSpeedButton3Click(Sender: TObject);
begin

  //------- Show the splash screan for the adding comptes ---------//
      FSplashVersement := TFSplashVersement.Create(Application);

      FSplashVersement.Width := 304;
//      FSplashVersement.Height:=446;
//      FSplashVersement.OKVersementSBtn.Enabled:= True;
      FSplashVersement.AdvSmoothTouchKeyBoard1.Left:=0;
      FSplashVersement.AdvSmoothTouchKeyBoard1.Width:=304;
      FSplashVersement.AdvSmoothTouchKeyBoard1.BringToFront;

      FSplashVersement.Left := (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
      FSplashVersement.Top := (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

      FSplashVersement.Label1.Caption:= 'Divers:';

      FSplashVersement.Tag := 6;
      FSplashVersement.OKVersementSBtn.Tag := 6;
//  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
      FormStyle := fsNormal;
      FSplashVersement.Show;

end;

procedure TBonCtrGestionF.AddBVCtrBonCtrGBtnClick(Sender: TObject);
var
  codeCT, CodeCB: integer;
  Ini: TMemIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg: string;
begin

  Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  APrintBVCtrBonCtrGSlider.SliderOn := Ini.ReadBool('', 'Auto Print', APrintBVCtrBonCtrGSlider.SliderOn);
  PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

  if PoleA = True then
  begin
    try
      PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
      Msg := Ini.ReadString('', 'Afficheur client Msg', Msg);

      BonCtrGestionF.ComPort1.Port := PORT; // 'COM7';
      BonCtrGestionF.ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
      BonCtrGestionF.ComPort1.Open; // open port
//          BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
      BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
      BonCtrGestionF.ComPort1.WriteUnicodeString(Msg + #13#10); // send test command
      BonCtrGestionF.ComPort1.Close;
    except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
    end;
  end;
  Ini.UpdateFile;
  Ini.Free;

  PoleDisplayerTimerimer.Enabled := True;

  Timer1.Enabled := False;



     CodeCT := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
    if RequiredClientGlbl.Visible <> True then
      begin

        if (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = false) then
        begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text := 'Select * FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
          MainForm.ClientTable.Active := True;

          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldValues['code_c'] := MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonCtrGEdt.Text <> '' then
          begin
            MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsFloat := StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsFloat := 0;
          end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_ctrTable.Post;
          MainForm.Bonv_ctrTable.EnableControls;

          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text := 'Select * FROM client';
          MainForm.ClientTable.Active := True;
          MainForm.ClientTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
          if (CodeCT <> 0) and (CodeCT <> null) then
          begin
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(CodeCT));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(CodeCT));
            MainForm.RegclientTable.Refresh;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
          end;

        end;
      end
      else
      begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
        ClientBonCtrGCbx.StyleElements := [];
        RequiredClientGlbl.Caption := 'Ce Client est bloqu�';
        RequiredClientGlbl.Visible := True;
        NameClientGErrorP.Visible := True;
        ClientBonCtrGCbx.SetFocus;
      end;

  begin
    ClientBonCtrGCbx.Text := 'Comptoir';
    Label17.Caption := 'Comptoir';
//    ModePaieBonCtrGCbx.Clear;
//     CompteBonCtrGCbx.Clear;
//     NChequeBonCtrGCbx.Clear;
  end;

  MainForm.ProduitTable.Refresh;
  MainForm.ClientTable.Refresh;
  MainForm.Bonv_ctrTable.Refresh;
//  MainForm.Bonv_ctr_listTable.Refresh;
//   MainForm.Mode_paiementTable.Refresh;
//   MainForm.CompteTable.Refresh;
  BonCtrPListDataS.DataSet.Refresh;
//   BonCtrF.BonCtrListDataS.DataSet.Refresh;
  Refresh;

  begin
    EnableBonCtr;
  end;



  codeCT := 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
  if MainForm.Bonv_ctrTable.RecordCount <= 0 then
  begin

    MainForm.Bonv_ctrTable.Insert;
    MainForm.Bonv_ctrTable.FieldValues['code_bvctr'] := 1;
    MainForm.Bonv_ctrTable.FieldValues['num_bvctr'] := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
    MainForm.Bonv_ctrTable.FieldValues['date_bvctr'] := DateOf(Today);
    MainForm.Bonv_ctrTable.FieldValues['time_bvctr'] := TimeOf(Now);
    MainForm.Bonv_ctrTable.Post;
    codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
  end
  else
  begin
    MainForm.Bonv_ctrTable.Last;
    codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
    MainForm.SQLQuery.Active := False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text := BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(codeCT));
    MainForm.SQLQuery.Active := True;

//    if MainForm.SQLQuery.RecordCount <= 0 then
//    begin
//        //   MainForm.Bonv_ctrTable.Last;
//      codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
//    end
//    else
    begin

      MainForm.Bonv_ctrTable.Insert;
      MainForm.Bonv_ctrTable.FieldValues['code_bvctr'] := codeCT + 1;
      MainForm.Bonv_ctrTable.FieldValues['num_bvctr'] := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, (codeCT + 1)]);
      MainForm.Bonv_ctrTable.FieldValues['date_bvctr'] := DateOf(Today);
      MainForm.Bonv_ctrTable.FieldValues['time_bvctr'] := TimeOf(Now);
      MainForm.Bonv_ctrTable.Post;

    end;
//    ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
  end;


//-- use this code to make the montants look lake money values-------//
 //   BonCtrTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
 //   BonCtrTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
  BonCtrTotalTTCLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  BonCtrRenduLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  BonCtrRegleLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
 //   BonCtrGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
 //   BonCtrGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

  CodeCB := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
  NumBonCtrGEdt.Caption := 'CT' + IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

  HourBonCtrGD.Caption := '';

  ProduitBonCtrGCbx.SetFocus;

  Tag := 0;

  MainForm.SQLQuery.Active := False;
  MainForm.SQLQuery.SQL.Clear;

  ///========Here we make sure the opend bon is the picked in bon list table----
         MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';
         MainForm.Bonv_ctr_listTable.Active:=false;
         MainForm.Bonv_ctr_listTable.SQL.Clear;
         MainForm.Bonv_ctr_listTable.SQL.Text:=BonCtrGestionF.BCLSQL +' ORDER BY code_bvctrl ' ;
         MainForm.Bonv_ctr_listTable.Active:=True;
  ///========Here we make sure the opend bon is the picked in bon list table----

  MainForm.Bonv_ctr_listTable.Refresh;
  BonCtrTotalTTCLbl.Caption :=    CurrToStrF(0, ffNumber, 2);
  BonCTotalTTCNewLbl.Caption :=   CurrToStrF(0, ffNumber, 2);

  addingState;



end;

procedure TBonCtrGestionF.AddClientBonCtrGBtnClick(Sender: TObject);
begin
  FormStyle := fsNormal;
  ClientListF.AddClientsBtnClick(Sender);
  ClientGestionF.OKClientGBtn.Tag := 6;
  ClientBonCtrGCbx.StyleElements := [seFont, seBorder, seBorder];
  RequiredClientGlbl.Visible := False;
  NameClientGErrorP.Visible := False;
end;

procedure TBonCtrGestionF.addingState();
begin

  Panel1.Color := $0040332D;  //Black
//  Panel2.Color := $0040332D;  //Black
//  Panel26.Color := $0040332D; //Black

  BonCtrTotalTTCLbl.Font.Color := $0077D90E; //Green

  Label1.Font.Color := $001ABCFF;  //Orange
  Label17.Font.Color := $001ABCFF; //Orange
  Label10.Font.Color := $001ABCFF; //Orange
  Label11.Font.Color := $001ABCFF; //Orange

//  Label2.Font.Color := $001ABCFF; //Orange
//  Label7.Font.Color := $001ABCFF; //Orange
//  Label4.Font.Color := $001ABCFF; //Orange

//  Label18.Font.Color := clWhite; //White
//  Label22.Font.Color := clWhite; //White
//  Label20.Font.Color := clWhite; //White
//  Label23.Font.Color := clWhite; //White

  Label12.Visible := False;

//  NumBonCtrGEdt.Font.Color := $00E5E5E5;  //BlueClear

//  HourBonCtrGD.Font.Color := $00E5E5E5;  //BlueClear

  BonCtrGOLDStock.Font.Color := $00FFE8CD;  //BlueClear

//  BonCTotalTTCNewLbl.Font.Color := $00FFE8CD;  //BlueClear


  Panel1.Tag := 0;

end;

procedure TBonCtrGestionF.deletingState();
begin

  Panel1.Color := $00ECECEC;   //white
//  Panel2.Color := $00ECECEC;   //white
//  Panel26.Color := $00ECECEC;  //white

  BonCtrTotalTTCLbl.Font.Color := $004735F9; //Red


  Label1.Font.Color := $004735F9;  //Red
  Label17.Font.Color := $004735F9; //Red
  Label10.Font.Color := $004735F9; //Red
  Label11.Font.Color := $004735F9; //Red

//  Label2.Font.Color := $004735F9; //Red
//  Label7.Font.Color := $004735F9; //Red
//  Label4.Font.Color := $004735F9; //Red

//  Label18.Font.Color := $0040332D; //Black
//  Label22.Font.Color := $0040332D; //Black
//  Label20.Font.Color := $0040332D; //Black
//  Label23.Font.Color := $0040332D; //Black

  Label12.Visible := True;

//  NumBonCtrGEdt.Font.Color := $0040332D;  //Black

//  HourBonCtrGD.Font.Color := $0040332D;  //Black

  BonCtrGOLDStock.Font.Color := $0040332D;  //Black

//  BonCTotalTTCNewLbl.Font.Color := $0040332D;  //Black


  Panel1.Tag := 1;
end;

procedure TBonCtrGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
//var
//  I: Integer;
begin

//  if (Showing) and ((WindowState = wsMaximized) or (WindowState = wsNormal)) then
//  begin
//
//
//
//   //--- this is to clear the bon --------------------------
//    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_DELETE) < 0) and (AddBVCtrBonCtrGBtn.Enabled = True) then
//    begin
//      ClearProduitBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end;
//
//
//    //--- this is to focus in produit --------------------------
//    if (GetKeyState(VK_F1) < 0) then
//    begin
//
//      if Panel1.Tag = 0 then
//      begin
//        sndPlaySound('C:\Windows\Media\change_statut_ctr.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
//        deletingState;
//      end
//      else if Panel1.Tag = 1 then
//      begin
//        sndPlaySound('C:\Windows\Media\change_statut_ctr.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
//        addingState;
//
//      end;
//      Handled := true;
//    end;
//
//   //--- this is to focus in produit --------------------------
//    if (GetKeyState(VK_F3) < 0) and (AddBVCtrBonCtrGBtn.Enabled = False) then
//    begin
//      ProduitBonCtrGCbx.SetFocus;
//      Handled := true;
//    end;
//
//
// //--- this is to add new bon --------------------------
//    if (GetKeyState(VK_F4) < 0) and (AddBVCtrBonCtrGBtn.Enabled = True) then
//    begin
//      SetFocus;
//      AddBVCtrBonCtrGBtnClick(Screen);
//
//        ProduitBonCtrGCbx.SetFocus;
//
//      Handled := true;
//    end;
//
// //--- this is to edit the bon--------------------------
//    if (GetKeyState(VK_F5) < 0) and (EditBVCtrBonCtrGBtn.Enabled = True) then
//    begin
//      EditBVCtrBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end;
//
// //--- this is to switch between produits and quntity--------------------------
//    if (GetKeyState(VK_F6) < 0) and (EditBVCtrBonCtrGBtn.Enabled = False) then
//    begin
//      ProduitsListDBGridEh.SetFocus;
//      if ProduitsListDBGridEh.SelectedField.FieldName <> 'qut_p' then
//      begin
//        for I := 0 to ProduitsListDBGridEh.FieldCount do
//        begin
//          if ProduitsListDBGridEh.SelectedField.FieldName = 'qut_p' then
//          begin
//            ProduitsListDBGridEh.SelectedIndex := I - 1;
//            Handled := true;
//            Break;
//          end
//          else
//          begin
//            ProduitsListDBGridEh.SelectedIndex := I;
//          end;
//        end;
//      end;
//      Handled := true;
//    end;
//  //--- this is to switch between produits and prix----------------------------
//    if (GetKeyState(VK_F7) < 0) and (EditBVCtrBonCtrGBtn.Enabled = False) then
//    begin
//      ProduitsListDBGridEh.SetFocus;
//      if ProduitsListDBGridEh.SelectedField.FieldName <> 'prixvd_p' then
//      begin
//        for I := 0 to ProduitsListDBGridEh.FieldCount do
//        begin
//          if ProduitsListDBGridEh.SelectedField.FieldName = 'prixvd_p' then
//          begin
//            ProduitsListDBGridEh.SelectedIndex := I - 1;
//            Handled := true;
//            Break;
//          end
//          else
//          begin
//            ProduitsListDBGridEh.SelectedIndex := I;
//          end;
//        end;
//      end;
//      Handled := true;
//    end;
//
// //--- this is to show the list produits -------------------------
//    if (GetKeyState(VK_F8) < 0) and (EditBVCtrBonCtrGBtn.Enabled = False) then
//    begin
//      ListAddProduitBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end;
// //--- this is to validate the bon--------------------------
//
//    if (GetKeyState(VK_F9) < 0) AND (ValiderBVCtrBonCtrGBtn.Enabled = True)
//        AND NOT (Assigned(FSplashVersement)) then
//    begin
//      ValiderBVCtrBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end else
//    if  (GetKeyState(VK_F9) < 0) AND (ValiderBVCtrBonCtrGBtn.Enabled = True)
//         AND NOT (FSplashVersement.Showing) then
//        begin
//          ValiderBVCtrBonCtrGBtnClick(Screen);
//
//          Handled := true;
//        end;
//
// //--- this is for fast validate--------------------------
//    if (GetKeyState(VK_F10) < 0) then
//    begin
//
//      ExValiderBVCtrBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end;
//
//
//   //--- this is for new produit--------------------------
//    if (GetKeyState(VK_F11) < 0) then
//    begin
//
//      NewAddProduitBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end;
//
// //--- this is print the bon--------------------------
//    if (GetKeyState(VK_F12) < 0) then
//    begin
//
//      PrintTicketBVCtrBonCtrGBtnClick(Screen);
//
//      Handled := true;
//    end;
//  end;

end;

procedure TBonCtrGestionF.EditBVCtrBonCtrGBtnClick(Sender: TObject);
var
  CodeCTR: Integer;
begin
  CodeCTR := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
          if (CodeCTR <> 0) and (CodeCTR <> null) then
          begin
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(CodeCTR));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(CodeCTR));
            MainForm.RegclientTable.Refresh;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
          end;

 // this is to enable the componets to edit the bon

  EnableBonCtr;

 // this is to unvalider the bon
  begin
    MainForm.Bonv_ctrTable.Edit;
    MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean := False;
    MainForm.Bonv_ctrTable.Post;
  end;

  if ClientBonCtrGCbx.Text <> 'Comptoir' then
  begin
//    MainForm.ClientTable.DisableControls;
    MainForm.SQLQuery4.Active := false;
    MainForm.SQLQuery4.SQL.Clear;
    MainForm.SQLQuery4.SQL.Text := 'Select credit_c FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
    MainForm.SQLQuery4.Active := True;

// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
//  BonCtrGClientOLDCredit.Caption:=
//  CurrToStrF((((MainForm.ClientTable.FieldValues['oldcredit_c'])-(StringReplace(BonCtrResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

//      if (MainForm.ClientTable.FieldByName('code_c').AsInteger <> 1) then
//      begin
    MainForm.SQLQuery4.Edit;
    MainForm.SQLQuery4.FieldByName('credit_c').AsFloat := (MainForm.SQLQuery4.FieldByName('credit_c').AsFloat) - ((-1) * MainForm.Bonv_ctrTable.FieldByName('MontantRen').AsFloat);
    MainForm.SQLQuery4.Post;
//      end;

    MainForm.SQLQuery4.Active := false;
    MainForm.SQLQuery4.SQL.Clear;
//    MainForm.ClientTable.SQL.Text := 'Select * FROM client ';
//    MainForm.ClientTable.Active := True;
//    MainForm.ClientTable.EnableControls;
    MainForm.ClientTable.Refresh
  end;

  BonCtrRegleLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
  BonCtrRenduLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);





 //----------------------------------------

  begin
//           MainForm.ProduitTable.DisableControls;
//           MainForm.ProduitTable.Active:=False;
//           MainForm.ProduitTable.SQL.Clear;
//           MainForm.ProduitTable.SQL.Text:='SELECT *, '
//            +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
//            +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
//            +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
//            +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
//            +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
//            +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
//            +' (qut_p + qutini_p ) AS QutDispo, '
//            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
//            +' FROM produit ' ;
//           MainForm.ProduitTable.Active:=True;
    Mainform.Sqlquery.Active := False;
    Mainform.Sqlquery.Sql.Clear;
    Mainform.Sqlquery.Sql.Text := 'SELECT code_bvctrl,code_p,  qut_p, cond_p,code_barec  FROM bonv_ctr_list WHERE code_bvctr =  ' + IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,code_barec ';
    MainForm.SQLQuery.Active := True;
    MainForm.SQLQuery.First;
    while not (MainForm.SQLQuery.Eof) do
    begin
      MainForm.SQLQuery3.Active := False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text := 'SELECT * FROM produit WHERE code_p = ' + QuotedStr(MainForm.SQLQuery.FieldValues['code_p']);
      MainForm.SQLQuery3.Active := True;

      if NOT MainForm.SQLQuery3.IsEmpty then
      begin
      MainForm.SQLQuery3.Edit;
      MainForm.SQLQuery3.FieldValues['qut_p'] := (MainForm.SQLQuery3.FieldValues['qut_p'] + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
//            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
      MainForm.SQLQuery3.Post;
      end;

      Mainform.FDQuery2.Active := False;
      Mainform.FDQuery2.Sql.Clear;
      Mainform.FDQuery2.Sql.Text := 'SELECT code_barec, code_p,qutinstock_p FROM bona_rec_list  WHERE code_barec =' + QuotedStr(MainForm.SQLQuery.FieldValues['code_barec']);
      MainForm.FDQuery2.Active := True;

      if not MainForm.FDQuery2.IsEmpty then
      begin

        MainForm.FDQuery2.Edit;
        MainForm.FDQuery2.FieldValues['qutinstock_p'] := (MainForm.FDQuery2.FieldValues['qutinstock_p'] + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
        MainForm.FDQuery2.Post;
      end;

      MainForm.SQLQuery.Next;
    end;

//           MainForm.ProduitTable.Active:=False;
//           MainForm.ProduitTable.SQL.Clear;
//           MainForm.ProduitTable.SQL.Text:='SELECT *, '
//            +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
//            +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
//            +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
//            +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
//            +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
//            +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
//            +' (qut_p + qutini_p ) AS QutDispo, '
//            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
//            +' FROM produit ' ;
//           MainForm.ProduitTable.Active:=True;
//           MainForm.ProduitTable.EnableControls;
    MainForm.FDQuery2.Active := False;
    MainForm.FDQuery2.SQL.Clear;

    MainForm.SQLQuery3.Active := False;
    MainForm.SQLQuery3.SQL.Clear;

    MainForm.SQLQuery.Active := False;
    MainForm.SQLQuery.SQL.Clear;

    MainForm.Bonv_ctrTable.Refresh;

  end;

  showInPoleClient;
end;

procedure TBonCtrGestionF.ValiderBVCtrBonCtrGBtnClick(Sender: TObject);
begin
  if not (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin

    if RequiredClientGlbl.Visible <> True then
    begin
       //-------- Show the splash screan for the adding comptes ---------//
      FSplashVersement := TFSplashVersement.Create(Application);
      FSplashVersement.Width := 561;
      FSplashVersement.Label3.Caption := 'Remise:';
      FSplashVersement.Label8.Caption := 'Montant:';
      FSplashVersement.Label10.Caption := 'Rendu:';

      FSplashVersement.Left := (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
      FSplashVersement.Top := (MainForm.Top + MainForm.Height div 2) - (FSplashVersement.Height div 2);

      if RemiseBonCtrGEdt.Text <> '' then
      begin
        FSplashVersement.OldCreditVersementSLbl.Caption := FloatToStrF(((StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll])))), ffNumber, 14, 2);
      end
      else
      begin
        FSplashVersement.OldCreditVersementSLbl.Caption := FloatToStrF(0, ffNumber, 14, 2);
      end;
      FSplashVersement.MontantTTCVersementSLbl.Caption := FloatToStrF(((StrToFloat(StringReplace(BonCTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll])))
         //  -
      //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
        ), ffNumber, 14, 2);
      FSplashVersement.Tag := 3;
      FSplashVersement.OKVersementSBtn.Tag := 3;
//  AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_BLEND OR AW_ACTIVATE );
      FormStyle := fsNormal;
      FSplashVersement.Show;

    end
    else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
      ClientBonCtrGCbx.StyleElements := [];
      RequiredClientGlbl.Visible := True;
      NameClientGErrorP.Visible := True;
      ClientBonCtrGCbx.SetFocus;
    end;

  end;
end;

procedure TBonCtrGestionF.ExValiderBVCtrBonCtrGBtnClick(Sender: TObject);
var
  CodeOCB, CodeRF: Integer;
  Ini: TIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg2: string;
  Total: Integer;
begin
  if not (MainForm.Bonv_ctr_listTable.IsEmpty) then
  begin

    if RequiredClientGlbl.Visible <> True then
    begin
      addingState;
      FSplashVersement.DisableBonCtr;

      Timer1.Enabled := False;
      Label20.Visible := False;

      sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
      PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

      if PoleA = True then
      begin
        try
          PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
          Msg2 := Ini.ReadString('', 'Afficheur client Msg2', Msg2);

          ComPort1.Port := PORT; // 'COM7';
          ComPort1.Events := [];
          ComPort1.FlowControl.ControlDTR := dtrEnable;
          ComPort1.FlowControl.ControlRTS := rtsEnable;
          ComPort1.Open; // open port
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString(Msg2 + #13#10); // send test command

          Total := Ini.ReadInteger('', 'Afficheur client Fin msg', Total);
          if Total = 0 then
          begin
            ComPort1.WriteUnicodeString('Total: ' + StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]) + ' DA'#13#10);
          end
          else if Total = 1 then
          begin
            ComPort1.WriteUnicodeString('Rendu: ' + StringReplace(BonCtrRenduLbl.Caption, #32, '', [rfReplaceAll]) + ' DA'#13#10);
          end
          else
          begin
            ComPort1.WriteUnicodeString('Total: ' + StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]) + ' DA'#13#10);
          end;

          ComPort1.Close;
        except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
        end;
      end;

      Ini.Free;

      PoleDisplayerTimerimer.Interval := 10000;
      PoleDisplayerTimerimer.Enabled := True;

//--- this is for adding to the priduit
      begin
        Mainform.Sqlquery.Active := False;
        Mainform.Sqlquery.Sql.Clear;
        Mainform.Sqlquery.Sql.Text := 'SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p,tva_p,code_barec FROM bonv_ctr_list WHERE code_bvctr =  '+
          IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger) + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p,tva_p,code_barec ';
        MainForm.SQLQuery.Active := True;
        MainForm.SQLQuery.First;

        while not (MainForm.SQLQuery.Eof) do
        begin
          MainForm.SQLQuery3.Active := False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text := 'SELECT code_p, qut_p, tva_p FROM produit WHERE code_p = ' + IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger);
          MainForm.SQLQuery3.Active := True;

          if not MainForm.SQLQuery3.IsEmpty then
          begin
          MainForm.SQLQuery3.Edit;
          MainForm.SQLQuery3.FieldByName('qut_p').AsFloat := (MainForm.SQLQuery3.FieldByName('qut_p').AsFloat - ((MainForm.SQLQuery.FieldByName('qut_p').AsFloat) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger))));
          MainForm.SQLQuery3.FieldByName('tva_p').AsFloat := MainForm.SQLQuery.FieldByName('tva_p').AsFloat;
          MainForm.SQLQuery3.Post;
          end;

          Mainform.FDQuery2.Active := False;
          Mainform.FDQuery2.Sql.Clear;
          Mainform.FDQuery2.Sql.Text := 'SELECT code_barec, code_p,qutinstock_p FROM bona_rec_list  WHERE code_barec ='+
            IntToStr(MainForm.SQLQuery.FieldByName('code_barec').AsInteger);
          MainForm.FDQuery2.Active := True;
          if not (MainForm.FDQuery2.IsEmpty) then
          begin
            MainForm.FDQuery2.Edit;
            MainForm.FDQuery2.FieldByName('qutinstock_p').AsFloat :=
              (MainForm.FDQuery2.FieldByName('qutinstock_p').AsFloat - ((MainForm.SQLQuery.FieldByName('qut_p').AsFloat) * ((MainForm.SQLQuery.FieldByName('cond_p').AsFloat))));
            MainForm.FDQuery2.Post;

          end;

          MainForm.SQLQuery.Next;
        end;

        MainForm.SQLQuery.Active := False;
        MainForm.SQLQuery.SQL.Clear;

        MainForm.SQLQuery3.Active := False;
        MainForm.SQLQuery3.SQL.Clear;

        MainForm.FDQuery2.Active := False;
        MainForm.FDQuery2.SQL.Clear;

        MainForm.Bonv_ctrTable.Refresh;
        DataModuleF.Top5produit.Refresh;
      end;
//--- this is to set the bon ctrration fileds
      begin
        MainForm.SQLQuery.Active := false;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text := 'Select * FROM client WHERE LOWER(nom_c) LIKE LOWER(' + QuotedStr(ClientBonCtrGCbx.Text) + ')';
        MainForm.SQLQuery.Active := True;

        MainForm.Bonv_ctrTable.Edit;
        MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger := MainForm.SQLQuery.FieldByName('code_c').AsInteger;
        MainForm.Bonv_ctrTable.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bonv_ctrTable.FieldByName('montaht_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));
        MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
        if RemiseBonCtrGEdt.Text <> '' then
        begin
          MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsFloat := StrToFloat(StringReplace(RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
        end
        else
        begin
          MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsFloat := 0;
        end;

        MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
        MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
        MainForm.Bonv_ctrTable.FieldByName('marge_bvctr').AsFloat := StrToFloat(StringReplace(BonCTRTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
        MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean := True;
        MainForm.Bonv_ctrTable.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);
        if Tag = 0 then
        begin
          MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime := DateBonCtrGD.DateTime;
          MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime := TimeOf(Now);
        end;

        MainForm.Bonv_ctrTable.Post;

        HourBonCtrGD.Caption := TimeToStr(MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime);
  //------------------------------------------------------------------------------------------------------------------------------------------------------
        begin
          if Tag = 0 then
          begin

              MainForm.SQLQuery4.Active := false;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM regclient ORDER BY code_rc DESC LIMIT 1';
              MainForm.SQLQuery4.Active := True;

            if not (MainForm.SQLQuery4.IsEmpty) then
            begin
              MainForm.SQLQuery4.Last;
              CodeRF := MainForm.SQLQuery4.FieldByName('code_rc').AsInteger + 1;
            end
            else
            begin
              CodeRF := 1;
            end;

            MainForm.SQLQuery4.Append;
            MainForm.SQLQuery4.FieldByName('code_rc').AsInteger := CodeRF;
            MainForm.SQLQuery4.FieldByName('code_bvctr').AsInteger := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
            MainForm.SQLQuery4.FieldByName('nom_rc').AsString := NumBonCtrGEdt.Caption;
            MainForm.SQLQuery4.FieldByName('code_c').AsInteger := MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.SQLQuery4.FieldByName('date_rc').AsDateTime := DateBonCtrGD.DateTime;
            MainForm.SQLQuery4.FieldByName('time_rc').AsDateTime := TimeOf(Now);
            MainForm.SQLQuery4.FieldByName('code_mdpai').AsInteger := MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.SQLQuery4.FieldByName('code_cmpt').AsInteger := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.SQLQuery4.FieldByName('bon_or_no_rc').AsInteger := 4;
            MainForm.SQLQuery4.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.SQLQuery4.FieldByName('montver_rc').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

            MainForm.SQLQuery4.Post;
            MainForm.RegclientTable.Refresh;

          end
          else
          begin

//            MainForm.RegclientTable.DisableControls;
            MainForm.SQLQuery4.Active := false;
            MainForm.SQLQuery4.SQL.Clear;
            MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM regclient WHERE code_bvctr =' + IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger);
            MainForm.SQLQuery4.Active := True;

            if not (MainForm.SQLQuery4.IsEmpty) then
            begin

              MainForm.SQLQuery4.Edit;
              MainForm.SQLQuery4.FieldByName('code_bvctr').AsInteger := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
              MainForm.SQLQuery4.FieldByName('nom_rc').AsString := NumBonCtrGEdt.Caption;
              MainForm.SQLQuery4.FieldByName('code_c').AsInteger := MainForm.SQLQuery.FieldByName('code_c').AsInteger;
              MainForm.SQLQuery4.FieldByName('date_rc').AsDateTime := DateBonCtrGD.DateTime;
              MainForm.SQLQuery4.FieldByName('time_rc').AsDateTime := TimeOf(Now);
              MainForm.SQLQuery4.FieldByName('code_mdpai').AsInteger := MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              MainForm.SQLQuery4.FieldByName('code_cmpt').AsInteger := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.SQLQuery4.FieldByName('bon_or_no_rc').AsInteger := 4;
              MainForm.SQLQuery4.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);

              MainForm.SQLQuery4.FieldByName('montver_rc').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              MainForm.SQLQuery4.Post;
              MainForm.RegclientTable.Refresh;

            end
            else
            begin

              MainForm.SQLQuery4.Active := false;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM regclient ORDER BY code_rc DESC LIMIT 1';
              MainForm.SQLQuery4.Active := True;

              if not (MainForm.SQLQuery4.IsEmpty) then
              begin
                MainForm.SQLQuery4.Last;
                CodeRF := MainForm.SQLQuery4.FieldByName('code_rc').AsInteger + 1;
              end
              else
              begin
                CodeRF := 1;
              end;

              MainForm.SQLQuery4.Append;
              MainForm.SQLQuery4.FieldByName('code_rc').AsInteger := CodeRF;
              MainForm.SQLQuery4.FieldByName('code_bvctr').AsInteger := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
              MainForm.SQLQuery4.FieldByName('nom_rc').AsString := NumBonCtrGEdt.Caption;
              MainForm.SQLQuery4.FieldByName('code_c').AsInteger := MainForm.SQLQuery.FieldByName('code_c').AsInteger;
              MainForm.SQLQuery4.FieldByName('date_rc').AsDateTime := DateBonCtrGD.DateTime;
              MainForm.SQLQuery4.FieldByName('time_rc').AsDateTime := TimeOf(Now);
              MainForm.SQLQuery4.FieldByName('code_mdpai').AsInteger := MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              MainForm.SQLQuery4.FieldByName('code_cmpt').AsInteger := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.SQLQuery4.FieldByName('bon_or_no_rc').AsInteger := 4;
              MainForm.SQLQuery4.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);

              MainForm.SQLQuery4.FieldByName('montver_rc').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              MainForm.SQLQuery4.Post;
              MainForm.RegclientTable.Refresh;

            end;

            MainForm.SQLQuery4.Active := false;
            MainForm.SQLQuery4.SQL.Clear;
//            MainForm.RegclientTable.SQL.Text := 'SELECT * FROM regclient ';
//            MainForm.RegclientTable.Active := True;
//            MainForm.RegclientTable.EnableControls;
          end;
        end;
    //-----------------------------------------------------------------------------------------------------------------------------------------------------------

        MainForm.SQLQuery.Active := false;
        MainForm.SQLQuery.SQL.Clear;

          //--- this is for adding the money to the caisse----
        begin

          if Tag = 0 then
          begin
//            MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
            MainForm.SQLQuery4.Filtered := false;
            MainForm.SQLQuery4.Active := false;
            MainForm.SQLQuery4.SQL.Clear;
            MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM opt_cas_bnk ORDER BY code_ocb DESC LIMIT 1';
            MainForm.SQLQuery4.Active := True;

            if not (MainForm.SQLQuery4.IsEmpty) then
            begin
              MainForm.SQLQuery4.Last;
              CodeOCB := MainForm.SQLQuery4.FieldByName('code_ocb').AsInteger + 1;
            end
            else
            begin
              CodeOCB := 1;
            end;

            MainForm.SQLQuery4.Append;
            MainForm.SQLQuery4.FieldByName('code_ocb').AsInteger := CodeOCB;
            MainForm.SQLQuery4.FieldByName('date_ocb').AsDateTime := DateBonCtrGD.DateTime;
            MainForm.SQLQuery4.FieldByName('time_ocb').AsDateTime := TimeOf(Now);
            ;
            MainForm.SQLQuery4.FieldByName('nom_ocb').AsString := 'Vente au Comptoir N� ' + NumBonCtrGEdt.Caption;
            MainForm.SQLQuery4.FieldByName('third_ocb').AsString := ClientBonCtrGCbx.Text;
            MainForm.SQLQuery4.FieldByName('encaiss_ocb').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

            MainForm.SQLQuery4.FieldByName('code_mdpai').AsInteger := 1;

            MainForm.SQLQuery4.FieldByName('code_cmpt').AsInteger := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.SQLQuery4.FieldByName('nature_ocb').AsBoolean := MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
            MainForm.SQLQuery4.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);
            MainForm.SQLQuery4.FieldByName('code_bvctr').AsInteger := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;

            MainForm.SQLQuery4.Post;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
            MainForm.Opt_cas_bnk_BankTable.Refresh;

            MainForm.SQLQuery4.Active := false;
            MainForm.SQLQuery4.SQL.Clear;
//            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text := 'SELECT * FROM opt_cas_bnk where nature_ocb = false';
//            MainForm.Opt_cas_bnk_CaisseTable.Active := True;
//            MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

          end
          else
          begin
//            MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
            MainForm.SQLQuery4.Filtered := false;
            MainForm.SQLQuery4.Active := false;
            MainForm.SQLQuery4.SQL.Clear;
            MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM opt_cas_bnk WHERE code_bvctr =' + IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger);
            MainForm.SQLQuery4.Active := True;

            if not (MainForm.SQLQuery4.IsEmpty) then
            begin
              MainForm.SQLQuery4.Edit;
              MainForm.SQLQuery4.FieldByName('date_ocb').AsDateTime := DateBonCtrGD.DateTime;
              MainForm.SQLQuery4.FieldByName('time_ocb').AsDateTime := TimeOf(Now);
              ;
              MainForm.SQLQuery4.FieldByName('nom_ocb').AsString := 'Vente au Comptoir N� ' + NumBonCtrGEdt.Caption;
              MainForm.SQLQuery4.FieldByName('third_ocb').AsString := ClientBonCtrGCbx.Text;
              MainForm.SQLQuery4.FieldByName('encaiss_ocb').AsFloat := StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              MainForm.SQLQuery4.FieldByName('code_mdpai').AsInteger := 1;

              MainForm.SQLQuery4.FieldByName('code_cmpt').AsInteger := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.SQLQuery4.FieldByName('nature_ocb').AsBoolean := MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
              MainForm.SQLQuery4.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);
              MainForm.SQLQuery4.FieldByName('code_bvctr').AsInteger := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;

              MainForm.SQLQuery4.Post;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh;
              MainForm.Opt_cas_bnk_BankTable.Refresh;

            end
            else
            begin

              MainForm.SQLQuery4.Active := false;
              MainForm.SQLQuery4.Filtered := false;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text := 'SELECT * FROM opt_cas_bnk ORDER BY code_ocb DESC LIMIT 1';
              MainForm.SQLQuery4.Active := True;

              if not (MainForm.SQLQuery4.IsEmpty) then
              begin
                MainForm.SQLQuery4.Last;
                CodeOCB := MainForm.SQLQuery4.FieldByName('code_ocb').AsInteger + 1;
              end
              else
              begin
                CodeOCB := 1;
              end;

              MainForm.SQLQuery4.Append;
              MainForm.SQLQuery4.FieldByName('code_ocb').AsInteger := CodeOCB;
              MainForm.SQLQuery4.FieldByName('date_ocb').AsDateTime := DateBonCtrGD.DateTime;
              MainForm.SQLQuery4.FieldByName('time_ocb').AsDateTime := TimeOf(Now);
              ;
              MainForm.SQLQuery4.FieldByName('nom_ocb').AsString := 'Vente au Comptoir N� ' + NumBonCtrGEdt.Caption;
              MainForm.SQLQuery4.FieldByName('third_ocb').AsString := ClientBonCtrGCbx.Text;
              MainForm.SQLQuery4.FieldByName('encaiss_ocb').AsFloat:= StrToFloat(StringReplace(BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              MainForm.SQLQuery4.FieldByName('code_mdpai').AsInteger := 1;

              MainForm.SQLQuery4.FieldByName('code_cmpt').AsInteger := MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.SQLQuery4.FieldByName('nature_ocb').AsBoolean := MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
              MainForm.SQLQuery4.FieldByName('code_ur').AsInteger := StrToInt(MainForm.UserIDLbl.Caption);
              MainForm.SQLQuery4.FieldByName('code_bvctr').AsInteger := MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;

              MainForm.SQLQuery4.Post;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh;
              MainForm.Opt_cas_bnk_BankTable.Refresh;

              MainForm.SQLQuery4.Active := false;
              MainForm.SQLQuery4.SQL.Clear;
//              MainForm.Opt_cas_bnk_CaisseTable.SQL.Text := 'SELECT * FROM opt_cas_bnk where nature_ocb = false';
//              MainForm.Opt_cas_bnk_CaisseTable.Active := True;
            end;

            MainForm.SQLQuery4.Active := false;
            MainForm.SQLQuery4.Filtered := false;
            MainForm.SQLQuery4.SQL.Clear;
//            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text := 'SELECT * FROM opt_cas_bnk where nature_ocb = false';
//            MainForm.Opt_cas_bnk_CaisseTable.Active := True;
//            MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
          end;
        end;
      end;

      if APrintBVCtrBonCtrGSlider.SliderOn = True then
      begin
        PrintTicketBVCtrBonCtrGBtnClick(Sender);
      end;

      // Here we create new empty bon
      AddBVCtrBonCtrGBtnClick(Sender);

    end
    else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
      ClientBonCtrGCbx.StyleElements := [];
      RequiredClientGlbl.Visible := True;
      NameClientGErrorP.Visible := True;
      ClientBonCtrGCbx.SetFocus;
    end;




  end;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
  Refresh_PreservePosition;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);

var
  grid : TDBGridEh;
  NomP,XXXX : String;
  aRect : TRect;
begin

  NomP := ' Divers';
  XXXX := ' ####';
  aRect := Rect;
  grid := sender as TDBGridEh;

 if ((MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger ) = 0)
  and NOT(MainForm.Bonv_ctr_listTable.IsEmpty) then
 begin

    if (MainForm.Bonv_ctr_listTable.FieldByName('prixvd_p').AsFloat ) > 0  then
    begin
      ProduitsListDBGridEh.Canvas.Font.Color:=$00519509;//   Brush.Color:=green;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

    if (MainForm.Bonv_ctr_listTable.FieldByName('prixvd_p').AsFloat ) < 0  then
    begin
      ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=green;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

    if column.FieldName = 'nomp' then
    begin
      grid.Canvas.FillRect(Rect);
      DrawText(grid.Canvas.Handle, PChar(NomP), Length(NomP), aRect,
      DT_SINGLELINE or DT_LEFT or DT_VCENTER);
    end;
    if column.FieldName = 'referp' then
    begin
      grid.Canvas.FillRect(Rect);
      DrawText(grid.Canvas.Handle, PChar(XXXX), Length(XXXX), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end;

    if column.FieldName = 'tva_p' then
    begin
      grid.Canvas.FillRect(Rect);
      DrawText(grid.Canvas.Handle, PChar(XXXX), Length(XXXX), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end;

    if column.FieldName = 'MontantTVA' then
    begin
      grid.Canvas.FillRect(Rect);
      DrawText(grid.Canvas.Handle, PChar(XXXX), Length(XXXX), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end;

    if column.FieldName = 'MargeM' then
    begin
      grid.Canvas.FillRect(Rect);
      DrawText(grid.Canvas.Handle, PChar(XXXX), Length(XXXX), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end;

    if column.FieldName = 'Marge' then
    begin
      grid.Canvas.FillRect(Rect);
      DrawText(grid.Canvas.Handle, PChar(XXXX), Length(XXXX), aRect,
      DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    end;

  end;

end;

procedure TBonCtrGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
  Refresh_PreservePosition;
end;

procedure TBonCtrGestionF.CtrTop10PRODUITDBGridEhDblClick(Sender: TObject);
var
  CodeBR, CodeP: Integer;
  lookupResultRefP: Variant;
  NomP: string;
  Ini: TIniFile;
  PoleA, CaisseA: Boolean;
  PORT, Msg2, PRIXTTC: string;
  Total: Integer;
begin
  if CtrTop10PRODUITDBGridEh.ScreenToClient(Mouse.CursorPos).Y > 25 then
  begin

    CodeP := DataModuleF.Top5produit.FieldByName('code_p').AsInteger;

    if ( CodeP <> 0 ) AND (CodeP <> Null) then
   begin

    MainForm.FDQuery2.Active := false;
    MainForm.FDQuery2.SQL.Clear;
    MainForm.FDQuery2.SQL.Text :=
     'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit Where code_p = ' + IntToStr(CodeP);
    MainForm.FDQuery2.Active := True;

    lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p', (CodeP), 'code_p');
    if VarIsnull(lookupResultRefP) and (Panel1.Tag <> 1) then
    begin

      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.IndexFieldNames := '';
      MainForm.SQLQuery.Active := False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text := 'SELECT code_bvctrl FROM bonv_ctr_list ORDER by code_bvctrl DESC LIMIT 1';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.Last;
      if MainForm.SQLQuery.IsEmpty then
      begin
        MainForm.SQLQuery.Last;
        CodeBR := 1;
      end
      else
      begin
        MainForm.SQLQuery.Last;
        CodeBR := MainForm.SQLQuery.FieldValues['code_bvctrl'] + 1;
      end;
      MainForm.Bonv_ctr_listTable.Last;
      MainForm.Bonv_ctr_listTable.Append;
      MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] := CodeBR;
      MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr'] := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
      MainForm.Bonv_ctr_listTable.FieldValues['code_p'] := MainForm.FDQuery2.FieldValues['code_p'];
      MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] := 01;
      MainForm.Bonv_ctr_listTable.FieldValues['cond_p'] := 01;
      MainForm.Bonv_ctr_listTable.FieldValues['tva_p'] := MainForm.FDQuery2.FieldValues['tva_p'];
      MainForm.Bonv_ctr_listTable.FieldValues['prixht_p'] := MainForm.FDQuery2.FieldValues['prixht_p'];

      if not (MainForm.ClientTable.IsEmpty) and (ClientBonCtrGCbx.Text <> '') then
      begin

        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvd_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvr_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvg_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixva_p'];
        end;
        if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
        begin
          MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixva2_p'];
        end;
      end
      else
      begin
        MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p'] := MainForm.FDQuery2.FieldValues['prixvd_p'];
      end;

      MainForm.Bonv_ctr_listTable.Post;
      Refresh_PreservePosition;

      sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
      PoleA := Ini.ReadBool('', 'Afficheur client Active', PoleA);

      if PoleA = True then
      begin

        PRIXTTC := CurrToStrF(((((MainForm.FDQuery2.FieldValues['prixvd_p'] * MainForm.FDQuery2.FieldValues['tva_p']) / 100) + (MainForm.FDQuery2.FieldValues['prixvd_p']))), ffNumber, 2);

        try
          PORT := Ini.ReadString('', 'Afficheur client PORT', PORT);
//                 Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

          ComPort1.Port := PORT; // 'COM7';
          ComPort1.Events := [];
          ComPort1.FlowControl.ControlDTR := dtrEnable;
          ComPort1.FlowControl.ControlRTS := rtsEnable;
          ComPort1.Open; // open port
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString('                                        '#13#10);
          ComPort1.WriteUnicodeString(copy(MainForm.FDQuery2.FieldByName('nom_p').AsString, 0, 16) + '...' + #13#10); // send test command

          ComPort1.WriteUnicodeString('Prix: ' + PRIXTTC + ' DA'#13#10);

          PoleDisplayerTimerimer.Interval := 1500;
          PoleDisplayerTimerimer.Enabled := True;

          ComPort1.Close;
        except
//                 ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
        end;
      end;

      Ini.Free;

      MainForm.Bonv_ctr_listTable.IndexFieldNames := 'code_bvctr';
      MainForm.Bonv_ctr_listTable.Last;
      MainForm.Bonv_ctr_listTable.EnableControls;
      MainForm.Bonv_ctr_listTable.Refresh;

      MainForm.SQLQuery.Active := False;
      MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
//          MainForm.SQLQuery.Active:=True;


    end
    else
    begin

      if Panel1.Tag = 0 then
      begin
        MainForm.Bonv_ctr_listTable.First;
        while not MainForm.Bonv_ctr_listTable.Eof do
        begin

          if MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger = CodeP then
          begin
            MainForm.Bonv_ctr_listTable.Edit;
            MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat := MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat + 1;
            MainForm.Bonv_ctr_listTable.Post;
            Refresh_PreservePosition;
            ProduitBonCtrGCbx.Clear;
            sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

            showInPoleClient;
            Exit;

          end;
          MainForm.Bonv_ctr_listTable.Next;
        end;

      end
      else if (Panel1.Tag = 1) and (MainForm.Bonv_ctr_listTable.IsEmpty = False) then
      begin
        MainForm.Bonv_ctr_listTable.First;
        while not MainForm.Bonv_ctr_listTable.Eof do
        begin

          if MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger = CodeP then
          begin
            if MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat > 1 then
            begin
              MainForm.Bonv_ctr_listTable.Edit;
              MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat := MainForm.Bonv_ctr_listTable.FieldByName('qut_p').AsFloat - 1;
              MainForm.Bonv_ctr_listTable.Post;
            end
            else
            begin
              MainForm.Bonv_ctr_listTable.Delete;
            end;
            Refresh_PreservePosition;
            ProduitBonCtrGCbx.Clear;
            sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

            showInPoleClient;
            Exit;

          end;
          MainForm.Bonv_ctr_listTable.Next;
        end;

      end;

    end;

   end;

    MainForm.FDQuery2.Active := false;
    MainForm.FDQuery2.SQL.Clear;

  end;
end;

// use this procedure to show hin when mouse move on the grid ------------------
procedure ChangeHint(C: TControl; const Hint: string; p: TPoint);
var
  OldHint: string;
begin
  OldHint := C.Hint;
  if Hint <> OldHint then
  begin
    C.Hint := Hint;
    Application.ActivateHint(p);
  end;
end;

procedure TBonCtrGestionF.ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
//  if not (MainForm.Bonv_ctr_listTable.IsEmpty) then
//  begin
//
//
//    //ProduitsListDBGridEh.hint:= ('Prix seuil de vente: '+MainForm.ProduitTable.FieldByName('prixht_p').AsString+FormatSettings.DecimalSeparator+'00'  )     ;
//
//    { ****Need to be fixed error prdouced //TODO
//       Application.HintPause := 3000;      // 250 mSec before hint is shown
//     Application.HintHidePause := 5000;
//   ProduitsListDBGridEh.ShowHint:= True;
//
//     ChangeHint(TDBGridEh(Sender),
//      ( 'D�s: '+ (MainForm.Bonv_ctr_listTable.FieldValues['nomp'])
//       + sLineBreak +
//         'Prix HT= '+ CurrToStrF((MainForm.Bonv_ctr_listTable.FieldValues['prixht_p']),ffNumber,2)
//       + sLineBreak +
//         'Prix TTC= '+ CurrToStrF(((((MainForm.Bonv_ctr_listTable.FieldValues['prixht_p'] * MainForm.Bonv_ctr_listTable.FieldValues['tva_p'])/100) + (MainForm.Bonv_ctr_listTable.FieldValues['prixht_p']))),ffNumber,2)
//       ),
//       TDBGridEh(Sender).ClientToScreen(Point(X, Y)));
//    }
//
//  end;
end;

procedure TBonCtrGestionF.ProduitBonCtrGCbxMouseEnter(Sender: TObject);
begin
  Application.HintPause := 500;      // 250 mSec before hint is shown
  Application.HintHidePause := 5000;
  ProduitBonCtrGCbx.ShowHint := True;
  ProduitBonCtrGCbx.Hint := 'Double-cliquez ici pour afficher le clavier';
end;

procedure TBonCtrGestionF.RemiseBonCtrGEdtMouseEnter(Sender: TObject);
begin
  Application.HintPause := 500;      // 250 mSec before hint is shown
  Application.HintHidePause := 5000;
  RemiseBonCtrGEdt.ShowHint := True;
  RemiseBonCtrGEdt.Hint := 'Double-cliquez ici pour afficher le clavier';
end;

procedure TBonCtrGestionF.RemisePerctageBonCtrGEdtMouseEnter(Sender: TObject);
begin
  Application.HintPause := 500;      // 250 mSec before hint is shown
  Application.HintHidePause := 5000;
  RemisePerctageBonCtrGEdt.ShowHint := True;
  RemisePerctageBonCtrGEdt.Hint := 'Double-cliquez ici pour afficher le clavier';
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
//  OnActivate(Sender);
//  DataModuleF.Top5produit.Refresh;


end;

end.

