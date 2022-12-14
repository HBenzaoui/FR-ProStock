unit UOptions;

interface
uses  DigiSM_TLB,    Winapi.WinSock,
  Winapi.Windows,Data.DB,Vcl.Imaging.jpeg, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, sPanel,
  acSlider, AdvToolBtn, acImage, Vcl.ExtDlgs, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, sPageControl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxRadioGroup, cxGroupBox, sTrackBar, cxTrackBar,
  Vcl.Buttons, sSpeedButton, CPort,DBGridEh, Vcl.Menus;
type
  TFOptions = class(TForm)
    TopP: TPanel;
    OpenPictureDialogProduitG: TOpenPictureDialog;
    sAlphaImageList1: TsAlphaImageList;
    OKFPrintingBtn: TAdvToolButton;
    OptionsPgControl: TsPageControl;
    sTabSheet1: TsTabSheet;
    Panel1: TPanel;
    Label11: TLabel;
    Panel5: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label12: TLabel;
    PoleDisplayActiveSdr: TsSlider;
    PoleDisplayCOMListLbl: TLabel;
    PoleDisplayCOMListCbx: TComboBox;
    Label14: TLabel;
    TiroirCaisseActiveSdr: TsSlider;
    PoleDisplayMsgLbl: TLabel;
    PoleDisplayMsgEdt: TEdit;
    CaseCOMLbl: TLabel;
    TiroirCaisseCOMListCbx: TComboBox;
    TiroirCaisseCasePRINTRbtn: TcxRadioButton;
    CasePrinterLbl: TLabel;
    TiroirCaissePrinterListCbx: TComboBox;
    TiroirCaisseCaseCOMRbtn: TcxRadioButton;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    TiroirCaisseCasePasswordLbl: TLabel;
    TiroirCaisseCasePasswordSdr: TsSlider;
    PoleDisplayMsg2Lbl: TLabel;
    PoleDisplayMsg2Edt: TEdit;
    PoleDisplayTotalLbl: TLabel;
    PoleDisplayTotalEdt: TComboBox;
    TestPoleBtn: TsSpeedButton;
    TestPoleLbl: TLabel;
    TestTeroirBtn: TsSpeedButton;
    TestTeroirLbl: TLabel;
    ComPort1: TComPort;
    sTabSheet2: TsTabSheet;
    Panel11: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    ResetDBBtn: TsSpeedButton;
    Label21: TLabel;
    AllSdr0: TsSlider;
    Panel16: TPanel;
    Panel17: TPanel;
    Label16: TLabel;
    CtrSdr1: TsSlider;
    Label18: TLabel;
    BLSdr2: TsSlider;
    Label19: TLabel;
    FVSdr4: TsSlider;
    BRSdr3: TsSlider;
    Label20: TLabel;
    Label22: TLabel;
    RFSdr8: TsSlider;
    RCSdr7: TsSlider;
    Label23: TLabel;
    FPSdr6: TsSlider;
    Label24: TLabel;
    Label25: TLabel;
    FASdr5: TsSlider;
    BankSdr10: TsSlider;
    Label26: TLabel;
    Label27: TLabel;
    CaisseSdr9: TsSlider;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    ClientCreditSdr20: TsSlider;
    localSdr19: TsSlider;
    ClientSdr12: TsSlider;
    ChargeSdr14: TsSlider;
    FourSdr13: TsSlider;
    UniteSdr18: TsSlider;
    PSFamileSdr17: TsSlider;
    PFamileSdr16: TsSlider;
    PerteSdr15: TsSlider;
    ProduitSdr11: TsSlider;
    ResetDBPaswordGEdt: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    FourCreditSdr21: TsSlider;
    sTabSheet3: TsTabSheet;
    Label40: TLabel;
    FavProduitOptPgControl: TsPageControl;
    Fav1ListTB: TsTabSheet;
    Panel12: TPanel;
    GridPanel2: TGridPanel;
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
    Fav2ListTB: TsTabSheet;
    Panel31: TPanel;
    GridPanel3: TGridPanel;
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
    Fav3ListTB: TsTabSheet;
    Panel32: TPanel;
    GridPanel4: TGridPanel;
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
    Fav4ListTB: TsTabSheet;
    Panel33: TPanel;
    GridPanel5: TGridPanel;
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
    Fav5ListTB: TsTabSheet;
    Panel34: TPanel;
    GridPanel6: TGridPanel;
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
    EditFavOSp: TsSpeedButton;
    SaveFavOSp: TsSpeedButton;
    FavPopMenu: TPopupMenu;
    S2: TMenuItem;
    sTabSheet4: TsTabSheet;
    Panel13: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    BalanceIPListLbl: TLabel;
    BalanceIPAdressIPLbl: TLabel;
    BalanceIPBareCodeListLbl: TLabel;
    TestBalanceIPBtn: TsSpeedButton;
    TestBalanceIPLbl: TLabel;
    BalanceIPActiveSdr: TsSlider;
    BalanceIPListCbx: TComboBox;
    BalanceIPAdressIPEdt: TEdit;
    BalanceIPBareCodeListCbx: TComboBox;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Label46: TLabel;
    Panel14: TPanel;
    GridPanel1: TGridPanel;
    Bal1sp: TsSpeedButton;
    Bal2sp: TsSpeedButton;
    Bal3sp: TsSpeedButton;
    Bal4sp: TsSpeedButton;
    Bal5sp: TsSpeedButton;
    Bal6sp: TsSpeedButton;
    Bal7sp: TsSpeedButton;
    Bal8sp: TsSpeedButton;
    Bal9sp: TsSpeedButton;
    Bal10sp: TsSpeedButton;
    Bal11sp: TsSpeedButton;
    Bal12sp: TsSpeedButton;
    Bal13sp: TsSpeedButton;
    Bal14sp: TsSpeedButton;
    Bal15sp: TsSpeedButton;
    Bal16sp: TsSpeedButton;
    Bal17sp: TsSpeedButton;
    Bal18sp: TsSpeedButton;
    Bal19sp: TsSpeedButton;
    Bal20sp: TsSpeedButton;
    Bal21sp: TsSpeedButton;
    Bal22sp: TsSpeedButton;
    Bal23sp: TsSpeedButton;
    Bal24sp: TsSpeedButton;
    Bal25sp: TsSpeedButton;
    Bal26sp: TsSpeedButton;
    Bal27sp: TsSpeedButton;
    Bal28sp: TsSpeedButton;
    Bal29sp: TsSpeedButton;
    Bal30sp: TsSpeedButton;
    Bal31sp: TsSpeedButton;
    Bal32sp: TsSpeedButton;
    Bal33sp: TsSpeedButton;
    Bal34sp: TsSpeedButton;
    Bal35sp: TsSpeedButton;
    Bal36sp: TsSpeedButton;
    Bal37sp: TsSpeedButton;
    Bal38sp: TsSpeedButton;
    Bal39sp: TsSpeedButton;
    Bal40sp: TsSpeedButton;
    Bal41sp: TsSpeedButton;
    Bal42sp: TsSpeedButton;
    Bal43sp: TsSpeedButton;
    Bal44sp: TsSpeedButton;
    Bal45sp: TsSpeedButton;
    Bal46sp: TsSpeedButton;
    Bal47sp: TsSpeedButton;
    Bal48sp: TsSpeedButton;
    Bal49sp: TsSpeedButton;
    Bal50sp: TsSpeedButton;
    Bal51sp: TsSpeedButton;
    Bal52sp: TsSpeedButton;
    Bal53sp: TsSpeedButton;
    Bal54sp: TsSpeedButton;
    Bal55sp: TsSpeedButton;
    Bal56sp: TsSpeedButton;
    BalPopMenu: TPopupMenu;
    Viderlechamp1: TMenuItem;
    UploadToBalBtn: TsSpeedButton;
    UploadToBalLbl: TLabel;
    BalBtnLblDrawerTimer: TTimer;
    GeneralOptionGTB: TsTabSheet;
    sTabSheet7: TsTabSheet;
    AdrCompanyOptionEdt: TEdit;
    Label6: TLabel;
    TelCompanyOptionLbl: TLabel;
    FaxCompanyOptionLbl: TLabel;
    Label9: TLabel;
    FaxCompanyOptionEdt: TEdit;
    NameCompanyOptionEdt: TEdit;
    TelCompanyOptionEdt: TEdit;
    APrintOptionGSlider: TsSlider;
    AutoImL: TLabel;
    CaiseeLbl: TLabel;
    PrinterCaisse80mmOptionCaisseRdioBtn: TRadioButton;
    PrinterCaisse57mmOptionCaisseRdioBtn: TRadioButton;
    PrintersListFOptionCaisseCbx: TComboBox;
    LineP: TPanel;
    Label2: TLabel;
    PrintersListFOptionCodeBCbx: TComboBox;
    Label3: TLabel;
    FormatFOptionCodeBCbx: TComboBox;
    Label4: TLabel;
    PrixVenteListFOptionCodeBCbx: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    FormatBLOptionCbx: TComboBox;
    Label5: TLabel;
    FormatFPOptionCbx: TComboBox;
    Label43: TLabel;
    FormatFVOptionCbx: TComboBox;
    Label44: TLabel;
    FormatBROptionCbx: TComboBox;
    Label45: TLabel;
    FormatFAOptionCbx: TComboBox;
    edt1: TEdit;
    CtrNoValidBonSdr22: TsSlider;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    CtrSdrF23: TsSlider;
    BLSdrF24: TsSlider;
    BRSdrF25: TsSlider;
    FVSdrF26: TsSlider;
    FASdrF27: TsSlider;
    EmailCompanyOptionLbl: TLabel;
    EmailCompanyOptionEdt: TEdit;
    WebsiteCompanyOptionLbl: TLabel;
    WebsiteCompanyOptionEdt: TEdit;
    Label54: TLabel;
    Adr2CompanyOptionEdt: TEdit;
    RIBCompanyGEdt: TEdit;
    RIBCompanyGLbl: TLabel;
    NISCompanyGEdt: TEdit;
    NISCompanyGLbl: TLabel;
    NArtCompanyGEdt: TEdit;
    NArtCompanyGLbl: TLabel;
    NIFCompanyGEdt: TEdit;
    NIFCompanyGLbl: TLabel;
    RCCompanyGEdt: TEdit;
    RCCompanyGLbl: TLabel;
    Label55: TLabel;
    IsEUOptionGSlider: TsSlider;
    AcitiviteCompanyOptionLbl: TLabel;
    AcitiviteCompanyOptionEdt: TEdit;
    VilleCompanyOptionLbl: TLabel;
    CPostalCompanyOptionLbl: TLabel;
    MobCompanyOptionLbl: TLabel;
    MobCompanyOptionEdt: TEdit;
    Mob2CompanyOptionLbl: TLabel;
    Mob2CompanyOptionEdt: TEdit;
    CapitalCompanyOptionLbl: TLabel;
    CapitalCompanyOptionEdt: TEdit;
    WilayaCompanyOptionLbl: TLabel;
    Label58: TLabel;
    Panel15: TPanel;
    Panel18: TPanel;
    Shape1: TShape;
    ImageCompanyOptionImg: TsImage;
    ImageDeleteProduitGBtn: TAdvToolButton;
    ImageEditProduitGBtn: TAdvToolButton;
    Label10: TLabel;
    VilleCompanyOptionCbx: TComboBox;
    CPostalCompanyOptionCbx: TComboBox;
    WilayaCompanyOptionCbx: TComboBox;
    CountryCompanyOptionCbx: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure OKFPrintingBtnClick(Sender: TObject);
    procedure ImageCompanyOptionImgMouseEnter(Sender: TObject);
    procedure ImageCompanyOptionImgMouseLeave(Sender: TObject);
    procedure ImageCompanyOptionImgClick(Sender: TObject);
    procedure ImageDeleteProduitGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TiroirCaisseCaseCOMRbtnClick(Sender: TObject);
    procedure TiroirCaisseCasePRINTRbtnClick(Sender: TObject);
    procedure PoleDisplayActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure TiroirCaisseActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure TiroirCaisseCOMListCbxDropDown(Sender: TObject);
    procedure PoleDisplayCOMListCbxDropDown(Sender: TObject);
    procedure TestPoleBtnClick(Sender: TObject);
    procedure TestTeroirBtnClick(Sender: TObject);
    procedure AllSdr0Changing(Sender: TObject; var CanChange: Boolean);
    procedure ResetDBBtnClick(Sender: TObject);
    procedure ResetDBPaswordGEdtChange(Sender: TObject);
    procedure ProduitSdr11Changing(Sender: TObject; var CanChange: Boolean);
    procedure ClientSdr12Changing(Sender: TObject; var CanChange: Boolean);
    procedure FourSdr13Changing(Sender: TObject; var CanChange: Boolean);
    procedure ResetDBPaswordGEdtMouseEnter(Sender: TObject);
    procedure EditFavOSpClick(Sender: TObject);
    procedure SaveFavOSpClick(Sender: TObject);
    procedure Fav1spClick(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure Fav1spMouseEnter(Sender: TObject);
    procedure BalanceIPActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure Bal1spClick(Sender: TObject);
    procedure Bal1spMouseEnter(Sender: TObject);
    procedure Viderlechamp1Click(Sender: TObject);
    procedure TestBalanceIPBtnClick(Sender: TObject);
    procedure UploadToBalBtnClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BalBtnLblDrawerTimerTimer(Sender: TObject);
    procedure CapitalCompanyOptionEdtExit(Sender: TObject);
    procedure VilleCompanyOptionCbxEnter(Sender: TObject);
    procedure WilayaCompanyOptionCbxEnter(Sender: TObject);
    procedure CPostalCompanyOptionCbxEnter(Sender: TObject);
    procedure CountryCompanyOptionCbxEnter(Sender: TObject);
  private
    procedure EnableFavBtns;
    procedure DisableFavBtns;
    procedure DisableBalBtns;
    procedure EnableBalBtns;
  public
   FavBtn,BalBtn : TsSpeedButton;
  end;
var
  FOptions: TFOptions;
  ScaleLib:IScale;
implementation
uses      PLU,ScaleAPI,ShopName,
Printers,IniFiles, UClientGestion, UMainF, UWorkingSplash, UFastProduitsList,
  UDataModule;

{$R *.dfm}
procedure TFOptions.AllSdr0Changing(Sender: TObject; var CanChange: Boolean);
begin
 if AllSdr0.SliderOn = False then
  begin
    CtrSdr1.SliderOn:= True;
    BLSdr2.SliderOn:= True;
    BRSdr3.SliderOn:= True;
    FVSdr4.SliderOn:= True;
    FASdr5.SliderOn:= True;
    FPSdr6.SliderOn:= True;
    RCSdr7.SliderOn:= True;
    RFSdr8.SliderOn:= True;
    CaisseSdr9.SliderOn:= True;
    BankSdr10.SliderOn:= True;
    ProduitSdr11.SliderOn:= True;
    ClientSdr12.SliderOn:= True;
    FourSdr13.SliderOn:= True;
    ChargeSdr14.SliderOn:= True;
    PerteSdr15.SliderOn:= True;
    PFamileSdr16.SliderOn:= True;
    PSFamileSdr17.SliderOn:= True;
    UniteSdr18.SliderOn:= True;
    localSdr19.SliderOn:= True;
    ClientCreditSdr20.SliderOn:= True;
    FourCreditSdr21.SliderOn:= True;



    CtrSdr1.Enabled:= False;
    BLSdr2.Enabled:= False;
    BRSdr3.Enabled:= False;
    FVSdr4.Enabled:= False;
    FASdr5.Enabled:= False;
    FPSdr6.Enabled:= False;
    RCSdr7.Enabled:= False;
    RFSdr8.Enabled:= False;
    CaisseSdr9.Enabled:= False;
    BankSdr10.Enabled:= False;
    ProduitSdr11.Enabled:= False;
    ClientSdr12.Enabled:= False;
    FourSdr13.Enabled:= False;
    ChargeSdr14.Enabled:= False;
    PerteSdr15.Enabled:= False;
    PFamileSdr16.Enabled:= False;
    PSFamileSdr17.Enabled:= False;
    UniteSdr18.Enabled:= False;
    localSdr19.Enabled:= False;
    ClientCreditSdr20.Enabled:= False;
    FourCreditSdr21.Enabled:= False;

  end else
      begin
          CtrSdr1.SliderOn:= False;
          BLSdr2.SliderOn:= False;
          BRSdr3.SliderOn:= False;
          FVSdr4.SliderOn:= False;
          FASdr5.SliderOn:= False;
          FPSdr6.SliderOn:= False;
          RCSdr7.SliderOn:= False;
          RFSdr8.SliderOn:= False;
          CaisseSdr9.SliderOn:= False;
          BankSdr10.SliderOn:= False;
          ProduitSdr11.SliderOn:= False;
          ClientSdr12.SliderOn:= False;
          FourSdr13.SliderOn:= False;
          ChargeSdr14.SliderOn:= False;
          PerteSdr15.SliderOn:= False;
          PFamileSdr16.SliderOn:= False;
          PSFamileSdr17.SliderOn:= False;
          UniteSdr18.SliderOn:= False;
          localSdr19.SliderOn:= False;
          ClientCreditSdr20.SliderOn:= False;
          FourCreditSdr21.SliderOn:= False;


          CtrSdr1.Enabled:= True;
          BLSdr2.Enabled:= True;
          BRSdr3.Enabled:= True;
          FVSdr4.Enabled:= True;
          FASdr5.Enabled:= True;
          FPSdr6.Enabled:= True;
          RCSdr7.Enabled:= True;
          RFSdr8.Enabled:= True;
          CaisseSdr9.Enabled:= True;
          BankSdr10.Enabled:= True;
          ProduitSdr11.Enabled:= True;
          ClientSdr12.Enabled:= True;
          FourSdr13.Enabled:= True;
          ChargeSdr14.Enabled:= True;
          PerteSdr15.Enabled:= True;
          PFamileSdr16.Enabled:= True;
          PSFamileSdr17.Enabled:= True;
          UniteSdr18.Enabled:= True;
          localSdr19.Enabled:= True;
          ClientCreditSdr20.Enabled:= True;
          FourCreditSdr21.Enabled:= True;
      end;
end;

procedure TFOptions.Bal1spClick(Sender: TObject);
begin
  // Set the clicked btn sender
  BalBtn := Sender as TsSpeedButton;

  FastProduitsListF := TFastProduitsListF.Create(Application);
  FastProduitsListF.Tag := 8;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FormStyle := fsNormal;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
      FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ;

  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions :=
   FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions - [gioShowRowselCheckboxesEh];
  FastProduitsListF.ShowModal;
end;

procedure TFOptions.BalanceIPActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if BalanceIPActiveSdr.SliderOn = False then
  begin

    EnableBalBtns;

    BalanceIPListLbl.Enabled:=True;
    BalanceIPListCbx.Enabled:=True;

    BalanceIPAdressIPLbl.Enabled:=True;
    BalanceIPAdressIPEdt.Enabled:=True;

    BalanceIPBareCodeListLbl.Enabled:=True;
    BalanceIPBareCodeListCbx.Enabled:=True;

    TestBalanceIPLbl.Enabled:=True;
    TestBalanceIPBtn.Enabled:=True;

    UploadToBalBtn.Enabled:=True;
    UploadToBalLbl.Enabled:=True;

  end else
      begin

        DisableBalBtns;

        BalanceIPListLbl.Enabled:=False;
        BalanceIPListCbx.Enabled:=False;

        BalanceIPAdressIPLbl.Enabled:=False;
        BalanceIPAdressIPEdt.Enabled:=False;

        BalanceIPBareCodeListLbl.Enabled:=False;
        BalanceIPBareCodeListCbx.Enabled:=False;

        TestBalanceIPLbl.Enabled:=False;
        TestBalanceIPBtn.Enabled:=False;

        UploadToBalBtn.Enabled:=False;
        UploadToBalLbl.Enabled:=False;
      end;

end;

procedure TFOptions.Bal1spMouseEnter(Sender: TObject);
begin
BalBtn := Sender as TsSpeedButton;

end;

procedure TFOptions.CapitalCompanyOptionEdtExit(Sender: TObject);
var
CapitalCompanyOption: Double;
begin

  if CapitalCompanyOptionEdt.Text<>'' then
  begin
  CapitalCompanyOption:=StrToFloat(StringReplace(CapitalCompanyOptionEdt.Text, #32, '', [rfReplaceAll]));
  CapitalCompanyOptionEdt.Text := FloatToStrF(CapitalCompanyOption,ffNumber,14,2);
  end;

end;

procedure TFOptions.ClientSdr12Changing(Sender: TObject;
  var CanChange: Boolean);
begin
   if ClientSdr12.SliderOn = False then
  begin
    CtrSdr1.SliderOn:= True;
    BLSdr2.SliderOn:= True;
    FVSdr4.SliderOn:= True;
    FPSdr6.SliderOn:= True;
    RCSdr7.SliderOn:= True;

        CtrSdr1.Enabled:= False;
        BLSdr2.Enabled:= False;
        FVSdr4.Enabled:= False;
        FPSdr6.Enabled:= False;
        RCSdr7.Enabled:= False;

  end else
      begin

       if ProduitSdr11.SliderOn <> true then
       begin
          CtrSdr1.SliderOn:= False;
          BLSdr2.SliderOn:= False;
          FVSdr4.SliderOn:= False;
          FPSdr6.SliderOn:= False;

        CtrSdr1.Enabled:= True;
        BLSdr2.Enabled:= True;
        FVSdr4.Enabled:= True;
        FPSdr6.Enabled:= True;

       end;
          RCSdr7.SliderOn:= False;
          RCSdr7.Enabled:= True;

      end;
end;

procedure TFOptions.CountryCompanyOptionCbxEnter(Sender: TObject);
var
Ini: TIniFile;
begin
 Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
 if Ini.ReadBool('', 'Is EU',False) then
 begin
    //Here we add France data
    CountryCompanyOptionCbx.Items.Clear;
    CountryCompanyOptionCbx.Items.Add('France');
 end else
     begin
        CountryCompanyOptionCbx.Items.Clear;
        CountryCompanyOptionCbx.Items.Add('Alg?rie');
     end;
   Ini.Free;
end;

procedure TFOptions.CPostalCompanyOptionCbxEnter(Sender: TObject);
Var I,CodeW: Integer;
Ini: TIniFile;
begin
 Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
 if Ini.ReadBool('', 'Is EU',False) then
 begin
    //Here we add France data
 end else
     begin
       if WilayaCompanyOptionCbx.Text <> '' then
       begin
        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT code_w FROM wilayas WHERE LOWER(nom_w) LIKE LOWER('+QuotedStr(WilayaCompanyOptionCbx.Text)+')' ;
        DataModuleF.SQLQuery3.Active := True;

        CodeW:= DataModuleF.SQLQuery3.FieldByName('code_w').AsInteger;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT codepostal_cumm FROM communes WHERE code_w ='+ IntToStr(CodeW) + ' ORDER By code_cumm';
        DataModuleF.SQLQuery3.Active := True;

        DataModuleF.SQLQuery3.Refresh;
        CPostalCompanyOptionCbx.Items.Clear;

        DataModuleF.SQLQuery3.first;
        begin
         for I := 0 to DataModuleF.SQLQuery3.RecordCount - 1 do
         if ( DataModuleF.SQLQuery3.FieldByName('codepostal_cumm').IsNull = False )  then
         begin
           CPostalCompanyOptionCbx.Items.Add(DataModuleF.SQLQuery3.FieldByName('codepostal_cumm').AsString);
           DataModuleF.SQLQuery3.Next;
          end;
        end;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
       end;
     end;
   Ini.Free;
end;

procedure TFOptions.Fav1spClick(Sender: TObject);
begin

  // Set the clicked btn sender
  FavBtn := Sender as TsSpeedButton;

  FastProduitsListF := TFastProduitsListF.Create(Application);
  FastProduitsListF.Tag := 7;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FormStyle := fsNormal;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
      FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ;

  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions :=
   FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions - [gioShowRowselCheckboxesEh];
  FastProduitsListF.ShowModal;

end;

procedure TFOptions.Fav1spMouseEnter(Sender: TObject);
begin
FavBtn := Sender as TsSpeedButton;
end;

procedure TFOptions.FormClose(Sender: TObject; var Action: TCloseAction);
Var CanChange : Boolean;
begin
NormalForms;


  ResetDBPaswordGEdt.Text:='';
  ResetDBPaswordGEdtChange(Sender);

  AllSdr0.SliderOn:= False;
  CtrSdr1.SliderOn:= False;
  CtrSdrF23.SliderOn:= False;
  BLSdr2.SliderOn:= False;
  BLSdrF24.SliderOn:= False;
  BRSdr3.SliderOn:= False;
  BRSdrF25.SliderOn:= False;
  FVSdr4.SliderOn:= False;
  FVSdrF26.SliderOn:= False;
  FASdr5.SliderOn:= False;
  FASdrF27.SliderOn:= False;
  FPSdr6.SliderOn:= False;
  RCSdr7.SliderOn:= False;
  RFSdr8.SliderOn:= False;
  CaisseSdr9.SliderOn:= False;
  BankSdr10.SliderOn:= False;
  ProduitSdr11.SliderOn:= False;
  ClientSdr12.SliderOn:= False;
  FourSdr13.SliderOn:= False;
  ChargeSdr14.SliderOn:= False;
  PerteSdr15.SliderOn:= False;
  PFamileSdr16.SliderOn:= False;
  PSFamileSdr17.SliderOn:= False;
  UniteSdr18.SliderOn:= False;
  localSdr19.SliderOn:= False;
  ClientCreditSdr20.SliderOn:= False;
  FourCreditSdr21.SliderOn:= False;


  BalBtnLblDrawerTimer.Enabled:=False;

end;

procedure TFOptions.FormCreate(Sender: TObject);
begin
   PrintersListFOptionCaisseCbx.Items.Assign(Printer.Printers);
   PrintersListFOptionCodeBCbx.Items.Assign(Printer.Printers);
   TiroirCaissePrinterListCbx.Items.Assign(Printer.Printers);
//   OptionsPgControl.SkinData.SkinManager:= ;
end;

procedure TFOptions.FormShow(Sender: TObject);
var
  S: TMemoryStream;
  Jpg: TJPEGImage;
  Ini: TIniFile;
  CanChange : Boolean;
  PrinterCaisseSize : string;
  I: Integer;
begin
 GrayForms;
 OptionsPgControl.TabIndex:= 0;
//    inherited;

    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    APrintOptionGSlider.SliderOn:=           Ini.ReadBool('', 'Auto Print',APrintOptionGSlider.SliderOn);
    PrintersListFOptionCaisseCbx.ItemIndex:= Ini.ReadInteger('', 'Printer Caisse',PrintersListFOptionCaisseCbx.ItemIndex);
    PrinterCaisseSize:= Ini.ReadString('', 'Printer Caisse Size', PrinterCaisseSize);
    if PrinterCaisseSize = '80mm' then
    begin
      PrinterCaisse80mmOptionCaisseRdioBtn.Checked := True;
    end;
    if PrinterCaisseSize = '57mm' then
    begin
      PrinterCaisse57mmOptionCaisseRdioBtn.Checked := True;
    end;
    PrintersListFOptionCodeBCbx.ItemIndex := Ini.ReadInteger('', 'Printer Barcode',PrintersListFOptionCodeBCbx.ItemIndex);
    FormatFOptionCodeBCbx.ItemIndex :=       Ini.ReadInteger('', 'Format Barcode',FormatFOptionCodeBCbx.ItemIndex);
    PrixVenteListFOptionCodeBCbx.ItemIndex:= Ini.ReadInteger('', 'Prix de Vente',PrixVenteListFOptionCodeBCbx.ItemIndex);
    FormatBLOptionCbx.ItemIndex:= Ini.ReadInteger('', 'Format BL',FormatBLOptionCbx.ItemIndex);
    FormatFPOptionCbx.ItemIndex:= Ini.ReadInteger('', 'Format FP',FormatFPOptionCbx.ItemIndex);
    FormatFVOptionCbx.ItemIndex:= Ini.ReadInteger('', 'Format FV',FormatFVOptionCbx.ItemIndex);
    FormatBROptionCbx.ItemIndex:= Ini.ReadInteger('', 'Format BR',FormatBROptionCbx.ItemIndex);
    FormatFAOptionCbx.ItemIndex:= Ini.ReadInteger('', 'Format FA',FormatFAOptionCbx.ItemIndex);

    PoleDisplayActiveSdr.SliderOn:=          Ini.ReadBool('', 'Afficheur client Active',PoleDisplayActiveSdr.SliderOn);
     if PoleDisplayActiveSdr.SliderOn then
     begin

      PoleDisplayActiveSdr.SliderOn:=       Ini.ReadBool('',    'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
      PoleDisplayCOMListCbx.Text:=          Ini.ReadString('',  'Afficheur client PORT', PoleDisplayCOMListCbx.Text);
      PoleDisplayMsgEdt.Text:=              Ini.ReadString('',  'Afficheur client Msg', PoleDisplayMsgEdt.Text);
      PoleDisplayMsg2Edt.Text:=             Ini.ReadString('',  'Afficheur client Msg2', PoleDisplayMsg2Edt.Text);
      PoleDisplayTotalEdt.ItemIndex:=       Ini.ReadInteger('', 'Afficheur client Fin msg', PoleDisplayTotalEdt.ItemIndex);
     end else
         begin
          PoleDisplayActiveSdr.SliderOn:=       Ini.ReadBool('',    'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
          PoleDisplayCOMListCbx.Text:=          '';
          PoleDisplayMsgEdt.Text:=              'SOYEZ LES BIENVENUS';
          PoleDisplayMsg2Edt.Text:=             'MERCI ET A BIENTOT';
          PoleDisplayTotalEdt.ItemIndex:=       0;
         end;

    TiroirCaisseActiveSdr.SliderOn:=          Ini.ReadBool('', 'Tiroir caisse Active',TiroirCaisseActiveSdr.SliderOn);
     if TiroirCaisseActiveSdr.SliderOn then
     begin
      TiroirCaisseActiveSdr.SliderOn:=      Ini.ReadBool('', 'Tiroir caisse Active',TiroirCaisseActiveSdr.SliderOn);
        if Ini.ReadInteger('' ,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag) = 0 then
        begin
           TiroirCaisseCaseCOMRbtn.Checked:= True;
           TiroirCaisseCOMListCbx.Text:=          Ini.ReadString('' ,'Tiroir caisse COM', TiroirCaisseCOMListCbx.Text);
           TiroirCaissePrinterListCbx.ItemIndex:=   -1;
        end else
            begin
             if Ini.ReadInteger('' ,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag) = 1 then
             begin
               TiroirCaisseCasePRINTRbtn.Checked:= True;
               TiroirCaissePrinterListCbx.ItemIndex:=   Ini.ReadInteger(Caption,'Tiroir caisse PRINT', TiroirCaissePrinterListCbx.ItemIndex);
               TiroirCaisseCOMListCbx.Text:=         '';
             end;
            end;
      TiroirCaisseCasePasswordSdr.SliderOn:= Ini.ReadBool(Caption,'Tiroir caisse PASSWORD', TiroirCaisseCasePasswordSdr.SliderOn);
     end else
         begin

            TiroirCaisseCaseCOMRbtn.Enabled:=False;
            CaseCOMLbl.Enabled:=False;
            TiroirCaisseCOMListCbx.Enabled:=False;

            TiroirCaisseCasePRINTRbtn.Enabled:=False;
            CasePrinterLbl.Enabled:=False;
            TiroirCaissePrinterListCbx.Enabled:=False;

            TiroirCaisseCasePasswordLbl.Enabled:=False;
            TiroirCaisseCasePasswordSdr.Enabled:=False;

//          TiroirCaisseActiveSdrChanging(Sender,CanChange);
         end;


       // Read fav Btns
        for I := 1 to 60 do
        begin
         FavBtn := (FindComponent('Fav'+IntToStr(I)+'sp') as TsSpeedButton);
         FavBtn.Caption:= Ini.ReadString('','Fav '+IntToStr(I), FavBtn.Caption);
        end;


    // Balance IP******************************/
      BalanceIPActiveSdr.SliderOn:=  Ini.ReadBool('', 'Balance IP Active',BalanceIPActiveSdr.SliderOn);
     if BalanceIPActiveSdr.SliderOn then
     begin
      BalanceIPActiveSdr.SliderOn:=           Ini.ReadBool('', 'Balance IP Active',BalanceIPActiveSdr.SliderOn);
      BalanceIPListCbx.ItemIndex:=            Ini.ReadInteger('', 'Balance', BalanceIPListCbx.ItemIndex);
      BalanceIPAdressIPEdt.Text:=             Ini.ReadString('',  'Balance Adresse IP', BalanceIPAdressIPEdt.Text);
      BalanceIPBareCodeListCbx.ItemIndex:=    Ini.ReadInteger('', 'Type de Code a Barre', BalanceIPBareCodeListCbx.ItemIndex)
     end else
         begin

          BalanceIPActiveSdr.SliderOn:=        Ini.ReadBool('','Balance IP Active', BalanceIPActiveSdr.SliderOn);
          BalanceIPListCbx.ItemIndex:=         0;
          BalanceIPAdressIPEdt.Text:=          '192.168.1.16';
          BalanceIPBareCodeListCbx.ItemIndex:= 0;

         end;

        // Read Balance Btns
        for I := 1 to 56 do
        begin
         BalBtn := (FindComponent('Bal'+IntToStr(I)+'sp') as TsSpeedButton);
         BalBtn.Caption:= Ini.ReadString('','Bal '+IntToStr(I), BalBtn.Caption);
        end;

      //Here we check if is EU (FR) and change views and values
      IsEUOptionGSlider.SliderOn:= Ini.ReadBool('', 'Is EU',IsEUOptionGSlider.SliderOn);

      if Ini.ReadBool('', 'Is EU',False) then
      begin

       WilayaCompanyOptionLbl.Caption:='D?partement:';
       RCCompanyGLbl.Caption:='N? Siret:';
       NIFCompanyGLbl.Caption:='Code NAF/APE:';
       NArtCompanyGLbl.Caption:='N? TVA Intracom:';
       NISCompanyGLbl.Caption:='RCS:';


//       CapitalCompanyOptionLbl.Top:= 513;
//       CapitalCompanyOptionEdt.Top:= 530;


      end else
          begin
            WilayaCompanyOptionLbl.Caption:='Wilaya:';
            RCCompanyGLbl.Caption:='RC:';
            NIFCompanyGLbl.Caption:='NIF:';
            NArtCompanyGLbl.Caption:='N?Art:';
            NISCompanyGLbl.Caption:='NIS:';

//            CapitalCompanyOptionLbl.Top:= 558;
//            CapitalCompanyOptionEdt.Top:= 575;

          end;

      //Here we change the visibility of components depends on EU or NOT
//      NISCompanyGLbl.Visible:= NOT Ini.ReadBool('', 'Is EU',False);
//      NISCompanyGEdt.Visible:= NOT Ini.ReadBool('', 'Is EU',False);


      Ini.Free;

      ImageEditProduitGBtn.Visible:=false;
      ImageDeleteProduitGBtn.Visible:=false;
      ImageCompanyOptionImg.ImageIndex:=0;
      ImageCompanyOptionImg.Stretch:=False;
      ImageCompanyOptionImg.Grayed:=True;
      ImageCompanyOptionImg.Blend:=40;
      ImageCompanyOptionImg.Picture.Graphic:= nil;
      OpenPictureDialogProduitG.CleanupInstance;

 if not (MainForm.CompanyTable.IsEmpty) then
    begin
 //---------SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//
      with MainForm.CompanyTable do
      begin
        if (fieldbyname('nom_comp').AsWideString <> '') then
        begin
         NameCompanyOptionEdt.Text := fieldbyname('nom_comp').AsWideString;
        end;
        if (fieldbyname('activite_comp').AsWideString <> '') then
        begin
         AcitiviteCompanyOptionEdt.Text := fieldbyname('activite_comp').AsWideString;
        end;
        if (fieldbyname('fix_comp').AsString <> '') then
        begin
         TelCompanyOptionEdt.Text := fieldbyname('fix_comp').AsString;
        end;
        if (fieldbyname('fax_comp').AsString <> '') then
        begin
         FaxCompanyOptionEdt.Text := fieldbyname('fax_comp').AsString;
        end;
        if (fieldbyname('mob_comp').AsString <> '') then
        begin
         MobCompanyOptionEdt.Text := fieldbyname('mob_comp').AsString;
        end;
        if (fieldbyname('adr_comp').AsWideString <> '') then
        begin
         AdrCompanyOptionEdt.Text := fieldbyname('adr_comp').AsWideString;
        end;
        if (fieldbyname('adr2_comp').AsWideString <> '') then
        begin
         Adr2CompanyOptionEdt.Text := fieldbyname('adr2_comp').AsWideString;
        end;
        if (fieldbyname('ville_comp').AsWideString <> '') then
        begin
         VilleCompanyOptionCbx.Text := fieldbyname('ville_comp').AsWideString;
        end;
        if (fieldbyname('cpostal_comp').AsString <> '') then
        begin
         CPostalCompanyOptionCbx.Text := fieldbyname('cpostal_comp').AsString;
        end;
        if (fieldbyname('willaya_comp').AsWideString <> '') then
        begin
         WilayaCompanyOptionCbx.Text := fieldbyname('willaya_comp').AsWideString;
        end;
        if (fieldbyname('country_comp').AsWideString <> '') then
        begin
         CountryCompanyOptionCbx.Text := fieldbyname('country_comp').AsWideString;
        end;
        if (fieldbyname('email_comp').AsString <> '') then
        begin
         EmailCompanyOptionEdt.Text := fieldbyname('email_comp').AsString;
        end;
        if (fieldbyname('website_comp').AsString <> '') then
        begin
         WebsiteCompanyOptionEdt.Text := fieldbyname('website_comp').AsString;
        end;
        if (fieldbyname('rc_comp').AsString <> '') then
        begin
         RCCompanyGEdt.Text := fieldbyname('rc_comp').AsString;
        end;
        if (fieldbyname('nif_comp').AsString <> '') then
        begin
         NIFCompanyGEdt.Text := fieldbyname('nif_comp').AsString;
        end;
        if (fieldbyname('nart_comp').AsString <> '') then
        begin
         NArtCompanyGEdt.Text := fieldbyname('nart_comp').AsString;
        end;
        if (fieldbyname('nis_comp').AsString <> '') then
        begin
         NISCompanyGEdt.Text := fieldbyname('nis_comp').AsString;
        end;
        if (fieldbyname('rib_comp').AsString <> '') then
        begin
         RIBCompanyGEdt.Text := fieldbyname('rib_comp').AsString;
        end;
        if (fieldbyname('capital_comp').Value <> null) then
        begin
         CapitalCompanyOptionEdt.Text := FloatToStrF(FieldByName('capital_comp').Value, ffNumber,14, 2);
        end;

        if (fieldbyname('logo_comp').Value <> null) then
        begin
          S := TMemoryStream.Create;
          try
            TBlobField(FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
               ImageCompanyOptionImg.ImageIndex := -1;
               ImageCompanyOptionImg.Stretch := True;
               ImageEditProduitGBtn.Visible := true;
               ImageDeleteProduitGBtn.Visible := True;
               ImageCompanyOptionImg.Grayed := False;
               ImageCompanyOptionImg.Blend := 0;
               ImageCompanyOptionImg.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;
        end
      end;
    end;

//    NameCompanyOptionEdt.SetFocus;
    BalBtnLblDrawerTimer.Enabled:=True;
end;


procedure TFOptions.FourSdr13Changing(Sender: TObject; var CanChange: Boolean);
begin
 if FourSdr13.SliderOn = False then
  begin
    BRSdr3.SliderOn:= True;
    FASdr5.SliderOn:= True;
    RFSdr8.SliderOn:= True;

    BRSdr3.Enabled:= False;
    FASdr5.Enabled:= False;
    RFSdr8.Enabled:= False;

  end else
      begin
            if ProduitSdr11.SliderOn <> true then
       begin
          BRSdr3.SliderOn:= False;
          FASdr5.SliderOn:= False;

          BRSdr3.Enabled:= True;
          FASdr5.Enabled:= True;

       end;
         RFSdr8.SliderOn:= False;
         RFSdr8.Enabled:= True;
      end;
end;

procedure TFOptions.OKFPrintingBtnClick(Sender: TObject);
var  S : TStream;
Ini: TIniFile;
I : Integer;
begin
   if NameCompanyOptionEdt.Text <> '' then
    begin
     if MainForm.CompanyTable.IsEmpty then
      begin
           with MainForm.CompanyTable do  begin
            Insert;
            fieldbyname('code_comp').Value := 1;
            fieldbyname('nom_comp').AsWideString := NameCompanyOptionEdt.Text;
            fieldbyname('activite_comp').AsWideString := AcitiviteCompanyOptionEdt.Text;
            fieldbyname('fix_comp').AsString := TelCompanyOptionEdt.Text;
            fieldbyname('fax_comp').AsString := FaxCompanyOptionEdt.Text;
            fieldbyname('mob_comp').AsString := MobCompanyOptionEdt.Text;
            fieldbyname('mob2_comp').AsString := Mob2CompanyOptionEdt.Text;
            fieldbyname('adr_comp').AsWideString := AdrCompanyOptionEdt.Text;
            fieldbyname('adr2_comp').AsWideString := Adr2CompanyOptionEdt.Text;
            fieldbyname('ville_comp').AsWideString := VilleCompanyOptionCbx.Text;
            fieldbyname('cpostal_comp').AsString := CPostalCompanyOptionCbx.Text;
            fieldbyname('willaya_comp').AsWideString := WilayaCompanyOptionCbx.Text;
            fieldbyname('country_comp').AsWideString := CountryCompanyOptionCbx.Text;
            fieldbyname('email_comp').AsWideString := EmailCompanyOptionEdt.Text;
            fieldbyname('website_comp').AsWideString := WebsiteCompanyOptionEdt.Text;
            fieldbyname('rc_comp').AsWideString := RCCompanyGEdt.Text;
            fieldbyname('nif_comp').AsWideString := NIFCompanyGEdt.Text;
            fieldbyname('nart_comp').AsWideString := NArtCompanyGEdt.Text;
            fieldbyname('nis_comp').AsWideString := NISCompanyGEdt.Text;
            fieldbyname('rib_comp').AsWideString := RIBCompanyGEdt.Text;
            if CapitalCompanyOptionEdt.Text<>'' then
            begin
              fieldbyname('capital_comp').Value := StrToFloat(StringReplace(CapitalCompanyOptionEdt.Text, #32, '', [rfReplaceAll]));
            end else
                begin
                  fieldbyname('capital_comp').Value:=  StrToFloat('0')
                end;

              {Creat the stream using BlobStream is better the to the blob dictely }
              S :=CreateBlobStream(FieldByName('logo_comp'), bmWrite);
             try
              if NOt (ImageCompanyOptionImg.ImageIndex = 0) then
               begin
                ImageCompanyOptionImg.Picture.Graphic.SaveToStream(S);
                S.Position := 0 ;
               end
                 else
               begin
               ImageCompanyOptionImg.Picture.Graphic := nil;
               ImageCompanyOptionImg.ImageIndex:=0;
               ImageCompanyOptionImg.Grayed:=True;
                 end ;
             finally
              S.Free;
             end;
             post;
           end;
      end else
          begin
               with MainForm.CompanyTable do  begin
              Edit;
              fieldbyname('nom_comp').AsWideString := NameCompanyOptionEdt.Text;
              fieldbyname('activite_comp').AsWideString := AcitiviteCompanyOptionEdt.Text;
              fieldbyname('fix_comp').AsString := TelCompanyOptionEdt.Text;
              fieldbyname('fax_comp').AsString := FaxCompanyOptionEdt.Text;
              fieldbyname('mob_comp').AsString := MobCompanyOptionEdt.Text;
              fieldbyname('mob2_comp').AsString := Mob2CompanyOptionEdt.Text;
              fieldbyname('adr_comp').AsWideString := AdrCompanyOptionEdt.Text;
              fieldbyname('adr2_comp').AsWideString := Adr2CompanyOptionEdt.Text;
              fieldbyname('ville_comp').AsWideString := VilleCompanyOptionCbx.Text;
              fieldbyname('cpostal_comp').AsString := CPostalCompanyOptionCbx.Text;
              fieldbyname('willaya_comp').AsWideString := WilayaCompanyOptionCbx.Text;
              fieldbyname('country_comp').AsWideString := CountryCompanyOptionCbx.Text;
              fieldbyname('email_comp').AsWideString := EmailCompanyOptionEdt.Text;
              fieldbyname('website_comp').AsWideString := WebsiteCompanyOptionEdt.Text;
              fieldbyname('rc_comp').AsWideString := RCCompanyGEdt.Text;
              fieldbyname('nif_comp').AsWideString := NIFCompanyGEdt.Text;
              fieldbyname('nart_comp').AsWideString := NArtCompanyGEdt.Text;
              fieldbyname('nis_comp').AsWideString := NISCompanyGEdt.Text;
              fieldbyname('rib_comp').AsWideString := RIBCompanyGEdt.Text;
              if CapitalCompanyOptionEdt.Text<>'' then
              begin
                fieldbyname('capital_comp').Value := StrToFloat(StringReplace(CapitalCompanyOptionEdt.Text, #32, '', [rfReplaceAll]));
              end else
                  begin
                    fieldbyname('capital_comp').Value:=  StrToFloat('0')
                  end;
              {Creat the stream using BlobStream is better the to the blob dictely }
              S :=CreateBlobStream(FieldByName('logo_comp'), bmWrite);
             try
              if NOt (ImageCompanyOptionImg.ImageIndex = 0) then
               begin
                ImageCompanyOptionImg.Picture.Graphic.SaveToStream(S);
                S.Position := 0 ;
               end
                 else
               begin
               ImageCompanyOptionImg.Picture.Graphic := nil;
               ImageCompanyOptionImg.ImageIndex:=0;
               ImageCompanyOptionImg.Grayed:=True;
                 end ;
             finally
              S.Free;
             end;
              post;
            end;
          end;
    end;
  begin
    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    Ini.WriteBool(Caption,   'Auto Print', APrintOptionGSlider.SliderOn);
    Ini.WriteInteger(Caption, 'Printer Caisse', PrintersListFOptionCaisseCbx.ItemIndex);
    if PrinterCaisse80mmOptionCaisseRdioBtn.Checked then
    begin
    Ini.WriteString(Caption, 'Printer Caisse Size', '80mm');
    end;
    if PrinterCaisse57mmOptionCaisseRdioBtn.Checked then
    begin
    Ini.WriteString(Caption, 'Printer Caisse Size', '57mm');
    end;
    Ini.WriteInteger(Caption, 'Printer Barcode', PrintersListFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format Barcode', FormatFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Prix de Vente', PrixVenteListFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format BL', FormatBLOptionCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format FP', FormatFPOptionCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format FV', FormatFVOptionCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format BR', FormatBROptionCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format FA', FormatFAOptionCbx.ItemIndex);
    if PoleDisplayActiveSdr.SliderOn then
    begin
    Ini.WriteBool(Caption,'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
    Ini.WriteString(Caption,'Afficheur client PORT', PoleDisplayCOMListCbx.Text);
    Ini.WriteString(Caption,'Afficheur client Msg', PoleDisplayMsgEdt.Text);
    Ini.WriteString(Caption,'Afficheur client Msg2', PoleDisplayMsg2Edt.Text);
    Ini.WriteInteger(Caption,'Afficheur client Fin msg', PoleDisplayTotalEdt.ItemIndex);
    end else
        begin
           Ini.WriteBool(Caption,'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
        end;
    if TiroirCaisseActiveSdr.SliderOn then
    begin
    Ini.WriteBool(Caption,'Tiroir caisse Active', TiroirCaisseActiveSdr.SliderOn);
     if TiroirCaisseCaseCOMRbtn.Checked then
     begin
     Ini.WriteInteger(Caption,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag);
     Ini.WriteString(Caption,'Tiroir caisse COM', TiroirCaisseCOMListCbx.Text);
     end else
         begin
          if TiroirCaisseCasePRINTRbtn.Checked then
          begin
           Ini.WriteInteger(Caption,'Tiroir caisse Cas', TiroirCaisseCasePRINTRbtn.Tag);
           Ini.WriteInteger(Caption,'Tiroir caisse PRINT', TiroirCaissePrinterListCbx.ItemIndex);
          end;
         end;
     Ini.WriteBool(Caption,'Tiroir caisse PASSWORD', TiroirCaisseCasePasswordSdr.SliderOn);
     MainForm.OuvertureduTiroirCaisse1.Visible:= True;
    end else
        begin
             Ini.WriteBool(Caption,'Tiroir caisse Active', TiroirCaisseActiveSdr.SliderOn);

             MainForm.OuvertureduTiroirCaisse1.Visible:= False;
        end;

    if BalanceIPActiveSdr.SliderOn  then
    begin
    Ini.WriteBool(Caption,'Balance IP Active', BalanceIPActiveSdr.SliderOn);
    Ini.WriteInteger(Caption,'Balance', BalanceIPListCbx.ItemIndex);
    Ini.WriteString(Caption,'Balance Adresse IP', BalanceIPAdressIPEdt.Text);
    Ini.WriteInteger(Caption,'Type de Code a Barre', BalanceIPBareCodeListCbx.ItemIndex);
    end;
    for I := 1 to 56 do
    begin
     BalBtn := (FindComponent('Bal'+IntToStr(I)+'sp') as TsSpeedButton);
     Ini.WriteString(Caption,'Bal '+IntToStr(I), BalBtn.Caption);
     MainForm.SQLQuery.Active:= False;
     MainForm.SQLQuery.SQL.Clear;
     MainForm.SQLQuery.SQL.Text:= 'SELECT code_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+ QuotedStr(BalBtn.Caption) +');' ;
     MainForm.SQLQuery.Active:= True;

     Ini.WriteString(Caption,'Bal '+IntToStr(I)+'Code ',  IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) );

    end;

    Ini.WriteBool(Caption,   'Is EU', IsEUOptionGSlider.SliderOn);



    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;

    Ini.Free;
//  inherited;
  end;
   Close;
  end;
procedure TFOptions.ImageCompanyOptionImgMouseEnter(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse enter
  if ImageCompanyOptionImg.Picture.Graphic = nil then
  begin
    ImageCompanyOptionImg.Grayed:=false;
    ImageCompanyOptionImg.Blend:=20;
  end else
      begin
      ImageCompanyOptionImg.Grayed:=false;
      ImageCompanyOptionImg.Blend:=20;
      end;
end;
procedure TFOptions.ImageCompanyOptionImgMouseLeave(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse leave
  if  ImageCompanyOptionImg.Picture.Graphic <> nil then
    begin
     ImageCompanyOptionImg.Grayed:= False;
     ImageCompanyOptionImg.Blend:=0;
     end else
    begin
    ImageCompanyOptionImg.Grayed:= true;
    ImageCompanyOptionImg.Blend:=50;
    end;
end;
procedure TFOptions.ImageCompanyOptionImgClick(Sender: TObject);
var
 Jpg:  TJPEGImage;
 bmp: TBitmap;
 scale: Double;
begin
 if  OpenPictureDialogProduitG.Execute then
 begin
   Jpg := TJPEGImage.Create;
   try
   ImageEditProduitGBtn.Visible:=true;
   ImageDeleteProduitGBtn.Visible:=True;
   ImageCompanyOptionImg.Stretch:=True;
   ImageCompanyOptionImg.Grayed:=False;
   ImageCompanyOptionImg.Blend:=0;
   ImageCompanyOptionImg.ImageIndex:= -1;
    Jpg.LoadFromFile(OpenPictureDialogProduitG.FileName);
          if jpg.Height > jpg.Width then
        scale := 1200 / jpg.Height
      else
        scale := 1920 / jpg.Width;
      bmp := TBitmap.Create;
      try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg.Width * scale);
        bmp.Height:= Round(jpg.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
        {Convert back to JPEG and save to file}
          jpg.Assign(bmp);
        {CompressionQuality JPEG and save to file}
//          Jpg.CompressionQuality:= 50;
//          Jpg.Compress;
          ImageCompanyOptionImg.Picture.Assign(Jpg);
      finally
        bmp.free;
      end;
   finally
     Jpg.Free
   end;
 end else begin exit
 end;
end;
procedure TFOptions.ImageDeleteProduitGBtnClick(Sender: TObject);
begin
ImageEditProduitGBtn.Visible:=false;
ImageDeleteProduitGBtn.Visible:=false;
ImageCompanyOptionImg.ImageIndex:=0;
ImageCompanyOptionImg.Stretch:=False;
ImageCompanyOptionImg.Grayed:=True;
ImageCompanyOptionImg.Blend:=40;
ImageCompanyOptionImg.Picture.Graphic:= nil;
OpenPictureDialogProduitG.CleanupInstance;
MainForm.CompanyTable.Edit;
MainForm.CompanyTable.FieldValues['logo_comp']:= null;
MainForm.CompanyTable.Post;
end;


procedure TFOptions.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
  close;
 end;
 if key = #13 then

  begin
   key := #0;
   OKFPrintingBtnClick(Sender);

  end;
end;

procedure TFOptions.FormPaint(Sender: TObject);
begin
end;

// this function is to get a liot of available COM ports
function ExtComName(ComNr: DWORD): string;
begin
  if ComNr > 9 then
    Result := Format('\\\\.\\COM%d', [ComNr])
  else
    Result := Format('COM%d', [ComNr]);
end;

function CheckCom(AComNumber: Integer): Integer;
var
  FHandle: THandle;
begin
  Result := 0;
  FHandle := CreateFile(PChar(ExtComName(AComNumber)),
    GENERIC_READ or GENERIC_WRITE,
    0, {exclusive access}
    nil, {no security attrs}
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle)
  else
    Result := GetLastError;
end;

procedure TFOptions.PoleDisplayCOMListCbxDropDown(Sender: TObject);
//var
//  XX, Err: Integer;
  begin
//    PoleDisplayCOMListCbx.Items.Clear;
//    for XX := 1 to 20 do
//    begin
//      Err := CheckCom(XX);
//      if (Err = 0) or (Err = ERROR_ACCESS_DENIED) then
//      begin
//        {the Port exists, if  Err = ERROR_ACCESS_DENIED then the port is already open}
////        ShowMessage('Port COM'+ IntToStr(xx)) ;
//        PoleDisplayCOMListCbx.Items.Add('COM'+IntToStr(xx));
//        //  Break
//        end;
//
//        end;

end;


procedure TFOptions.ProduitSdr11Changing(Sender: TObject;
  var CanChange: Boolean);
begin
 if ProduitSdr11.SliderOn = False then
  begin
    CtrSdr1.SliderOn:= True;
    BLSdr2.SliderOn:= True;
    BRSdr3.SliderOn:= True;
    FVSdr4.SliderOn:= True;
    FASdr5.SliderOn:= True;
    FPSdr6.SliderOn:= True;

    PerteSdr15.SliderOn:= True;

    CtrSdr1.Enabled:= False;
    BLSdr2.Enabled:= False;
    BRSdr3.Enabled:= False;
    FVSdr4.Enabled:= False;
    FASdr5.Enabled:= False;
    FPSdr6.Enabled:= False;

    PerteSdr15.Enabled:= False;


  end else
      begin
       if ClientSdr12.SliderOn <> true then
       begin
          CtrSdr1.SliderOn:= False;
          BLSdr2.SliderOn:= False;
          FVSdr4.SliderOn:= False;
          FPSdr6.SliderOn:= False;

          CtrSdr1.Enabled:= True;
          BLSdr2.Enabled:= True;
          FVSdr4.Enabled:= True;
          FPSdr6.Enabled:= True;

       end;
       if FourSdr13.SliderOn <> true then
       begin
          BRSdr3.SliderOn:= False;
          FASdr5.SliderOn:= False;

         BRSdr3.Enabled:= True;
         FASdr5.Enabled:= True;
       end;

          PerteSdr15.SliderOn:= False;
          PerteSdr15.Enabled:= True;

      end;
end;

procedure TFOptions.ResetDBBtnClick(Sender: TObject);
var SQLSring,SQLSring2 :String   ;
begin


   if AllSdr0.SliderOn = True then
   begin

            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
//            SetWindowPos(FOptions.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
//            SetWindowPos(FWorkingSplash.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
            FWorkingSplash.Show;

        MainForm.InactiveTables;

        try
          MainForm.SQLQuery.Active:= False;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.add('SELECT truncate_tables(''postgres'')');
          MainForm.SQLQuery.Active:= True;
        finally
          MainForm.SQLQuery.Active:= False;
          MainForm.SQLQuery.SQL.Clear;
        end;

//     MainForm.CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
     MainForm.InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing

     MainForm.ActiveTables;
     MainForm.RerfreshTables;


       FWorkingSplash.WorkingNormalForms;
       FWorkingSplash.Close;




   end else
       begin

            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
            FWorkingSplash.Show;

        MainForm.InactiveTables;

        if CtrSdr1.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_ctr');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_ctr_list');
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr <> 0 OR code_bvctr is null  ' );
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr <> 0 OR code_bvctr is null  ' );

        end;

        if CtrSdrF23.SliderOn = True then
        begin

//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_ctr');
//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_ctr_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr <> 0 OR code_bvctr is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr <> 0 OR code_bvctr is null  ' );

        end;

        if BLSdr2.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_liv');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_liv_list');
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv <> 0 OR code_bvliv is null  ' );
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv <> 0 OR code_bvliv is null  ' );

        end;

        if BLSdrF24.SliderOn = True then
        begin

//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_liv');
//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_liv_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv <> 0 OR code_bvliv is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv <> 0 OR code_bvliv is null  ' );

        end;

        if BRSdr3.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_rec');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_rec_list');
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec <> 0 OR code_barec is null  ' );
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec <> 0 OR code_barec is null  ' );

        end;

        if BRSdrF25.SliderOn = True then
        begin

//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_rec');
//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_rec_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec <> 0 OR code_barec is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec <> 0 OR code_barec is null  ' );

        end;

        if FVSdr4.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_fac');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_fac_list');
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvfac <> 0 OR code_bvfac is null  ' );
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvfac <> 0 OR code_bvfac is null  ' );

        end;

        if FVSdrF26.SliderOn = True then
        begin

//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_fac');
//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_fac_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvfac <> 0 OR code_bvfac is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvfac <> 0 OR code_bvfac is null  ' );

        end;

        if FASdr5.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_fac');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_fac_list');
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac <> 0 OR code_bafac is null  ' );
//         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac <> 0 OR code_bafac is null  ' );

        end;

        if FASdrF27.SliderOn = True then
        begin

//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_fac');
//         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_fac_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac <> 0 OR code_bafac is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac <> 0 OR code_bafac is null  ' );

        end;

        if FPSdr6.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonp_fac');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonp_fac_list');

        end;
        if RCSdr7.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_rc <> 0 OR code_rc is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where bon_or_no_rc = 1  ' );

        end;
        if RFSdr8.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_rf <> 0 OR code_rf is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where bon_or_no_rf = 1  ' );

        end;
        if CaisseSdr9.SliderOn = True then
        begin
          try
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.add('SELECT code_cmpt from compte WHERE nature_cmpt = false ');
            MainForm.SQLQuery.Active:= True;

            while NOT MainForm.SQLQuery.Eof do
            begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM transfer_comptes where code_cmpts = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger)
               +'OR code_cmptd = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger) );
               MainForm.SQLQuery.Next;
            end;


          finally
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
          end;

          MainForm.GstockdcConnection.ExecSQL('DELETE FROM compte where nature_cmpt = false ' );
          MainForm.GstockdcConnection.ExecSQL('INSERT INTO "public"."compte" ("code_cmpt", "nom_cmpt", "refer_cmpt", "nature_cmpt", "oldcredit_cmpt", "date_cmpt") VALUES (''1'', ''Caisse'', ''00001'', ''f'', ''0'', ''2016-01-01'') ' );

        end;
        if BankSdr10.SliderOn = True then
        begin

          try
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.add('SELECT code_cmpt from compte WHERE nature_cmpt = true ');
            MainForm.SQLQuery.Active:= True;

            while NOT MainForm.SQLQuery.Eof do
            begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM transfer_comptes where code_cmpts = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger)
               +'OR code_cmptd = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger) );
               MainForm.SQLQuery.Next;
            end;


          finally
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
          end;

          MainForm.GstockdcConnection.ExecSQL('DELETE FROM compte where nature_cmpt = true ' );
          MainForm.GstockdcConnection.ExecSQL('INSERT INTO "public"."compte" ("code_cmpt", "nom_cmpt", "refer_cmpt", "nature_cmpt", "oldcredit_cmpt", "date_cmpt") VALUES (''2'', ''Banque'', ''00002'', ''t'', ''0'', ''2016-01-01'') ' );

        end;
        if ProduitSdr11.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  produit');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  codebarres');

        end;
        if ClientSdr12.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  client');
         SQLSring:= 'INSERT INTO client (nom_c,adr_c,ville_c,fix_c,mob_c,email_c,willaya_c,fax_c,activ_c,mob2_c,rc_c,nif_c,nart_c,nis_c,obser_c,nbank_c,rib_c,activite_c,siteweb_c,oldcredit_c,maxcredit_c,code_c,tarification_c,credit_c)' ;
         SQLSring2:=' VALUES (''Comptoir'','''','''','''','''','''','''','''',''t'','''','''','''','''','''','''','''','''','''','''',''0'',''0'',''1'',''0'',''0'')';
         MainForm.GstockdcConnection.ExecSQL(SQLSring + SQLSring2);

        end;
        if FourSdr13.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  fournisseur');
        end;
        if ChargeSdr14.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  charges');
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  charge_type');
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  charge_s_type');
          MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_ch <> 0 OR code_ch is null  ' );
        end;
        if PerteSdr15.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  pertes');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  perte_type');
        end;
        if PFamileSdr16.SliderOn = True then
        begin
           MainForm.GstockdcConnection.ExecSQL('TRUNCATE  famproduit');
        end;
        if PSFamileSdr17.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  sfamproduit');
        end;
        if UniteSdr18.SliderOn = True then
        begin
           MainForm.GstockdcConnection.ExecSQL('TRUNCATE  unite');
        end;
        if localSdr19.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  localisation');
        end;
        if ClientCreditSdr20.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('UPDATE client set (oldcredit_c ,credit_c) = (0,0) ;');
        end;
        if FourCreditSdr21.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('UPDATE fournisseur set (oldcredit_f ,credit_f) = (0,0) ;');
        end;

        if CtrNoValidBonSdr22.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_ctr_list CTL USING bonv_ctr CT WHERE CTL.code_bvctr = CT.code_bvctr AND CT.valider_bvctr = FALSE' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_ctr WHERE valider_bvctr = false ' );
        end;



         MainForm.ActiveTables;
         MainForm.RerfreshTables;

         FWorkingSplash.Close;
         FWorkingSplash.WorkingNormalForms;
       end;



end;

procedure TFOptions.ResetDBPaswordGEdtChange(Sender: TObject);
begin

 if ResetDBPaswordGEdt.Text = 'p88stk' then
 begin
  ResetDBBtn.Enabled:= True;
  Label21.Enabled:= True;


 end else
     begin
        ResetDBBtn.Enabled:= False;
        Label21.Enabled:= False;

     end;

end;

procedure TFOptions.ResetDBPaswordGEdtMouseEnter(Sender: TObject);
begin
   Application.HintPause := 500;      // 250 mSec before hint is shown
   Application.HintHidePause := 5000;
   ResetDBPaswordGEdt.ShowHint:= True;
   ResetDBPaswordGEdt.Hint:='Appelez Hamza Benzaoui : +213 661 45 81 97 ';
end;

//************Bal*************//
 procedure TFOptions.EnableBalBtns();
begin

  Bal1sp.Enabled:=  True;
  Bal2sp.Enabled:=  True;
  Bal3sp.Enabled:=  True;
  Bal4sp.Enabled:=  True;
  Bal5sp.Enabled:=  True;
  Bal6sp.Enabled:=  True;
  Bal7sp.Enabled:=  True;
  Bal8sp.Enabled:=  True;
  Bal9sp.Enabled:=  True;
  Bal10sp.Enabled:= True;
  Bal11sp.Enabled:= True;
  Bal12sp.Enabled:= True;
  Bal13sp.Enabled:= True;
  Bal14sp.Enabled:= True;
  Bal15sp.Enabled:= True;
  Bal16sp.Enabled:= True;
  Bal17sp.Enabled:= True;
  Bal18sp.Enabled:= True;
  Bal19sp.Enabled:= True;
  Bal20sp.Enabled:= True;
  Bal21sp.Enabled:= True;
  Bal22sp.Enabled:= True;
  Bal23sp.Enabled:= True;
  Bal24sp.Enabled:= True;
  Bal25sp.Enabled:= True;
  Bal26sp.Enabled:= True;
  Bal27sp.Enabled:= True;
  Bal28sp.Enabled:= True;
  Bal29sp.Enabled:= True;
  Bal30sp.Enabled:= True;
  Bal31sp.Enabled:= True;
  Bal32sp.Enabled:= True;
  Bal33sp.Enabled:= True;
  Bal34sp.Enabled:= True;
  Bal35sp.Enabled:= True;
  Bal36sp.Enabled:= True;
  Bal37sp.Enabled:= True;
  Bal38sp.Enabled:= True;
  Bal39sp.Enabled:= True;
  Bal40sp.Enabled:= True;
  Bal41sp.Enabled:= True;
  Bal42sp.Enabled:= True;
  Bal43sp.Enabled:= True;
  Bal44sp.Enabled:= True;
  Bal45sp.Enabled:= True;
  Bal46sp.Enabled:= True;
  Bal47sp.Enabled:= True;
  Bal48sp.Enabled:= True;
  Bal49sp.Enabled:= True;
  Bal50sp.Enabled:= True;
  Bal51sp.Enabled:= True;
  Bal52sp.Enabled:= True;
  Bal53sp.Enabled:= True;
  Bal54sp.Enabled:= True;
  Bal55sp.Enabled:= True;
  Bal56sp.Enabled:= True;


end;

procedure TFOptions.DisableBalBtns();
begin

  Bal1sp.Enabled:=  False;
  Bal2sp.Enabled:=  False;
  Bal3sp.Enabled:=  False;
  Bal4sp.Enabled:=  False;
  Bal5sp.Enabled:=  False;
  Bal6sp.Enabled:=  False;
  Bal7sp.Enabled:=  False;
  Bal8sp.Enabled:=  False;
  Bal9sp.Enabled:=  False;
  Bal10sp.Enabled:= False;
  Bal11sp.Enabled:= False;
  Bal12sp.Enabled:= False;
  Bal13sp.Enabled:= False;
  Bal14sp.Enabled:= False;
  Bal15sp.Enabled:= False;
  Bal16sp.Enabled:= False;
  Bal17sp.Enabled:= False;
  Bal18sp.Enabled:= False;
  Bal19sp.Enabled:= False;
  Bal20sp.Enabled:= False;
  Bal21sp.Enabled:= False;
  Bal22sp.Enabled:= False;
  Bal23sp.Enabled:= False;
  Bal24sp.Enabled:= False;
  Bal25sp.Enabled:= False;
  Bal26sp.Enabled:= False;
  Bal27sp.Enabled:= False;
  Bal28sp.Enabled:= False;
  Bal29sp.Enabled:= False;
  Bal30sp.Enabled:= False;
  Bal31sp.Enabled:= False;
  Bal32sp.Enabled:= False;
  Bal33sp.Enabled:= False;
  Bal34sp.Enabled:= False;
  Bal35sp.Enabled:= False;
  Bal36sp.Enabled:= False;
  Bal37sp.Enabled:= False;
  Bal38sp.Enabled:= False;
  Bal39sp.Enabled:= False;
  Bal40sp.Enabled:= False;
  Bal41sp.Enabled:= False;
  Bal42sp.Enabled:= False;
  Bal43sp.Enabled:= False;
  Bal44sp.Enabled:= False;
  Bal45sp.Enabled:= False;
  Bal46sp.Enabled:= False;
  Bal47sp.Enabled:= False;
  Bal48sp.Enabled:= False;
  Bal49sp.Enabled:= False;
  Bal50sp.Enabled:= False;
  Bal51sp.Enabled:= False;
  Bal52sp.Enabled:= False;
  Bal53sp.Enabled:= False;
  Bal54sp.Enabled:= False;
  Bal55sp.Enabled:= False;
  Bal56sp.Enabled:= False;


end;


//************Fav*************//

procedure TFOptions.EnableFavBtns();
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

procedure TFOptions.DisableFavBtns();
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

procedure TFOptions.EditFavOSpClick(Sender: TObject);
begin

  if EditFavOSp.Tag = 0 then
  begin
  EnableFavBtns;
  SaveFavOSp.Enabled:= True;
  EditFavOSp.ImageIndex:= 19 ;
  EditFavOSp.Tag := 1;
  end else

   if EditFavOSp.Tag = 1 then
   begin

     DisableFavBtns;
     SaveFavOSp.Enabled:= False;
     EditFavOSp.ImageIndex:= 55 ;
     EditFavOSp.Tag := 0;
   end;



end;


procedure TFOptions.S2Click(Sender: TObject);
begin
  FavBtn.Caption:='';
end;

procedure TFOptions.SaveFavOSpClick(Sender: TObject);
var
  Ini: TMemIniFile;
  I: Integer;

begin

  Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));

  for I := 1 to 60 do
  begin
   FavBtn := (FindComponent('Fav'+IntToStr(I)+'sp') as TsSpeedButton);
   Ini.WriteString(Caption,'Fav '+IntToStr(I), FavBtn.Caption);
  end;

  Ini.UpdateFile;
  Ini.Free;

  DisableFavBtns;
  SaveFavOSp.Enabled:= False;
  EditFavOSp.ImageIndex:= 55 ;
  EditFavOSp.Tag := 0;


end;

procedure TFOptions.TiroirCaisseCOMListCbxDropDown(Sender: TObject);
//var
//  XX, Err: Integer;
  begin
//    TiroirCaisseCOMListCbx.Items.Clear;
//    for XX := 1 to 20 do
//    begin
//      Err := CheckCom(XX);
//      if (Err = 0) or (Err = ERROR_ACCESS_DENIED) then
//      begin
//        {the Port exists, if  Err = ERROR_ACCESS_DENIED then the port is already open}
////        ShowMessage('Port COM'+ IntToStr(xx)) ;
//        TiroirCaisseCOMListCbx.Items.Add('COM'+IntToStr(xx));
//        //  Break
//        end;
//
//        end;

end;

procedure TFOptions.UploadToBalBtnClick(Sender: TObject);
var
  Ini: TMemIniFile;
//  I: Integer;


  s: TSocket; //
  Records: LabelPLU;
  RecordShop: ShpName;
  I: Integer;
  CommResult: Integer;
  iCount: Integer;
  IPAddress: TStrings;

  CodeP,PrixP: Integer;
  NomP : String;
begin

  s := 0;
  edt1.Text := '0';
  try
    IPAddress := TStringList.Create;
    IPAddress.Delimiter := '.';
    IPAddress.DelimitedText := BalanceIPAdressIPEdt.Text;


    s := ConnectScale(IPAddress.DelimitedText, 2000 + StrToInt(IPAddress[3]));
    IPAddress.Free;
    if (s > 0) then // Connection Successful
    begin



      iCount := 0;
      for I := 1 to 56 do
      begin


      //==============Send Shop Name========//
            ZeroMemory(@RecordShop, SizeOf(RecordShop));
            RecordShop.RecordNo :=  I ;; // Shop No.
            RecordShop.labformat := 17;
            RecordShop.Name[0].TwsFontSize := 4; // shopname line1 font
    //        RecordShop.Name[0].TxtValue := shopNameEdit.Text; // shopname  line1
            StrPCopy(RecordShop.Name[0].TxtValue, NameCompanyOptionEdt.Text);
    //        RecordShop.Name[1].TwsFontSize := 5;
    //        RecordShop.Name[1].TxtValue := 'Addr: 1234';
    //        RecordShop.Name[2].TwsFontSize := 5;
    //        RecordShop.Name[2].TxtValue := 'Tel: 1234';

            CommResult := SendShopName(s, @RecordShop);
            case CommResult of
              $06:
                begin
                  Inc(iCount);
                  edt1.Text := IntToStr(iCount);
                  Application.ProcessMessages;
                end;
              $E1:
                edt1.Text := 'Write Error'; // Write Error
              $E2:
                edt1.Text := 'No enough Space'; // No enough Space
            else
              edt1.Text := 'Undefined Error'; // Undefined Error
            end;


        BalBtn := (FindComponent('Bal'+IntToStr(I)+'sp') as TsSpeedButton);

        if BalBtn.Caption <> '' then
        begin
          MainForm.SQLQuery.Active:= False;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:= 'SELECT code_p, nom_p, prixvd_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+ QuotedStr(BalBtn.Caption) +');' ;
          MainForm.SQLQuery.Active:= True;

          if NOT MainForm.SQLQuery.isEmpty then
          begin
            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger;
            NomP:= MainForm.SQLQuery.FieldByName('nom_p').asString;
            PrixP:= MainForm.SQLQuery.FieldValues['prixvd_p'];
          end;
        end else
            begin
             CodeP := 0;
             NomP:= '';
             PrixP := 0;
            end;

        //==============Send produit========//
        ZeroMemory(@Records, SizeOf(Records));
        Records.PLUNo := I ; // PLU No.
        Records.WeightUnit := 0; // Item Property 0-Weight 1-Non-weight
        Records.UPriceOverride := 0; // Unit Price Override 0-Inhibit  1-Allow
        Records.UPrice := PrixP * 100; // Unit Price
        Records.MG := 997; // Main Group No.
        Records.Cost := 0; // Cost
        Records.LabelFormat1 := 17; //Label Format
        Records.BarFormat := 5; // Barcode Format No.
        Records.EANFlags := 55; //Ean data F1F2
//        Records.EAN_Data.ItemCode := '0000200000'; //Item Code
//        StrPCopy(Records.EAN_Data.ItemCode, IntToStr(CodeP) + '00000');

        //        Format('%.*d',[5,CodeP])
        StrPCopy(Records.EAN_Data.ItemCode, Format('%.*d',[5,CodeP]) + '00000');

        Records.EAN_Data.BarCodeType := 0; //Barcode Type 0--EAN; 9--ITF
        Records.EAN_Data.BarRightData := 1;  //X's Type 0--Price,1--Weight,2--Quantity
        Records.MBarcode1.MutilBarFunc :=86; // EAN-128
        Records.MBarcode1.MutilBarData :='F (94)XXXXXXXXXXXXXXXXXXXXXXXXXXCD'; //EAN-128C (94)
        Records.MBarcode1.MutilBarType :=0; //EAN-128 Type 0-A 1-B 2-C
        Records.Commodity[0].TwsFontSize := 21;    //Item Font Size(First Line)
//        Records.Commodity[0].TxtValue := 'Ounness';//Item Commodity(First Line)
        StrPCopy(Records.Commodity[0].TxtValue, NomP);

        CommResult := SendLPlu(s, @Records);
        case CommResult of
          $06:
            begin
              Inc(iCount);
              edt1.Text := IntToStr(iCount);
              Application.ProcessMessages;
//              ShowMessage('R?ussi');
              Continue;
            end;
          $E1:
            begin
//             ShowMessage('Write Error');
             Continue; // Write Error
            end;
          $E2:
            begin
//             ShowMessage('No enought Space');
             Break; // No enought Space
            end;
        else
          begin
//           ShowMessage('Undefined Error');
           Break; // Undefined Error
          end;
        end;



      end;


      MainForm.SQLQuery.Active:= False;
      MainForm.SQLQuery.SQL.Clear;

      ShowMessage('R?ussi');


    end else
    begin
       ShowMessage('?chec de connection');
    end;
  finally
    if s > 0 then
      CloseConnect(s);
  end;




// The olde method
{
  try
  ScaleLib:=CoScale.Create;
  except
  ShowMessage('UnSuccssed - COM Object');
  end;


  ScaleLib.ScaleIP:=BalanceIPAdressIPEdt.Text;
  ScaleLib.ScaleTimeOut:=1000;

  ScaleLib.OpenConnect;


  case ScaleLib.ResultCode  of
        0: ShowMessage('R?ussi');
    else
        ShowMessage('Le Balance ne r?pond pas! Assurer-tu que le Balance est allum? et en d?finissant l''adresse IP: '
        +BalanceIPAdressIPEdt.Text);
    end;

  Ini := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));

  if BalanceIPActiveSdr.SliderOn  then
  begin
  Ini.WriteBool(Caption,'Balance IP Active', BalanceIPActiveSdr.SliderOn);
  Ini.WriteInteger(Caption,'Balance', BalanceIPListCbx.ItemIndex);
  Ini.WriteString(Caption,'Balance Adresse IP', BalanceIPAdressIPEdt.Text);
  Ini.WriteInteger(Caption,'Type de Code a Barre', BalanceIPBareCodeListCbx.ItemIndex);
  end;

  for I := 1 to 56 do
  begin
   BalBtn := (FindComponent('Bal'+IntToStr(I)+'sp') as TsSpeedButton);
   Ini.WriteString(Caption,'Bal '+IntToStr(I), BalBtn.Caption);

    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p, nom_p, prixvd_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+ QuotedStr(BalBtn.Caption) +');' ;
    MainForm.SQLQuery.Active:= True;

    Ini.WriteString(Caption,'Bal '+IntToStr(I)+'Code ',  IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) );


     BalBtn := (FindComponent('Bal'+IntToStr(I)+'sp') as TsSpeedButton);

     ScaleLib.RaiseException:=True;
     try

      ScaleLib.ScaleTimeOut := 1000;

      ScaleLib.LabelFormat := 'F1';
      ScaleLib.LabelFont := 'S3';
      ScaleLib.BarCodeFormat := 5;

      ScaleLib.PLUNo := I;
      ScaleLib.PLUName := MainForm.SQLQuery.FieldByName('nom_p').AsString;
      ScaleLib.PLUType := 0;
      ScaleLib.UnitPrice := (MainForm.SQLQuery.FieldValues['prixvd_p'] *100);
      ScaleLib.ShelfLife := 10;
      ScaleLib.SellBy := 0;
      ScaleLib.ItemCode := IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger);
      ScaleLib.GroupCode := 23;
      ScaleLib.TareWeight := 0;

      ScaleLib.MsgNo := 1;
//      ScaleLib.MsgName := MsgName.Text;
      ScaleLib.IngredientNo := 0;
//        ScaleLib.IngredientName := IngredientName.Text;

      ScaleLib.SendPLU;

      except

      end;

//      ShowMessage(ScaleLib.ResultDescription(0));
      ScaleLib.RaiseException:=False;

  end;

    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;


  Ini.UpdateFile;
  Ini.Free;


     }

end;

procedure TFOptions.Viderlechamp1Click(Sender: TObject);
begin
    BalBtn.Caption:='';
end;

procedure TFOptions.VilleCompanyOptionCbxEnter(Sender: TObject);
Var I,CodeW: Integer;
Ini: TIniFile;
begin
 Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
 if Ini.ReadBool('', 'Is EU',False) then
 begin
    //Here we add France data
 end else
     begin
       if WilayaCompanyOptionCbx.Text <> '' then
       begin
        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT code_w FROM wilayas WHERE LOWER(nom_w) LIKE LOWER('+QuotedStr(WilayaCompanyOptionCbx.Text)+')' ;
        DataModuleF.SQLQuery3.Active := True;

        CodeW:= DataModuleF.SQLQuery3.FieldByName('code_w').AsInteger;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT nom_cumm FROM communes WHERE code_w ='+ IntToStr(CodeW) + ' ORDER By code_cumm';
        DataModuleF.SQLQuery3.Active := True;

        DataModuleF.SQLQuery3.Refresh;
        VilleCompanyOptionCbx.Items.Clear;

        DataModuleF.SQLQuery3.first;
        begin
         for I := 0 to DataModuleF.SQLQuery3.RecordCount - 1 do
         if ( DataModuleF.SQLQuery3.FieldByName('nom_cumm').IsNull = False )  then
         begin
           VilleCompanyOptionCbx.Items.Add(DataModuleF.SQLQuery3.FieldByName('nom_cumm').AsString);
           DataModuleF.SQLQuery3.Next;
          end;
        end;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
       end

     end;


     Ini.Free;
end;

procedure TFOptions.WilayaCompanyOptionCbxEnter(Sender: TObject);
Var I: Integer;
Ini: TIniFile;
begin
 Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
 if Ini.ReadBool('', 'Is EU',True) then
 begin
    //Here we add France data
 end else
     begin
        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT nom_w FROM wilayas ORDER By code_w';
        DataModuleF.SQLQuery3.Active := True;

        WilayaCompanyOptionCbx.Items.Clear;
        DataModuleF.SQLQuery3.first;
        begin
          for I := 0 to DataModuleF.SQLQuery3.RecordCount - 1 do
          if ( DataModuleF.SQLQuery3.FieldByName('nom_w').IsNull = False )  then
          begin
            WilayaCompanyOptionCbx.Items.Add(DataModuleF.SQLQuery3.FieldByName('nom_w').AsWideString);
            DataModuleF.SQLQuery3.Next;
          end;
        end;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
     end;
   Ini.Free;
end;

procedure TFOptions.TiroirCaisseCaseCOMRbtnClick(Sender: TObject);
begin

  CaseCOMLbl.Enabled:= True;
  TiroirCaisseCOMListCbx.Enabled:= True;

  CasePrinterLbl.Enabled:= False;
  TiroirCaissePrinterListCbx.Enabled:= False;


end;
procedure TFOptions.TiroirCaisseCasePRINTRbtnClick(Sender: TObject);
begin

  CasePrinterLbl.Enabled:= True;
  TiroirCaissePrinterListCbx.Enabled:= True;

  CaseCOMLbl.Enabled:= False;
  TiroirCaisseCOMListCbx.Enabled:= False;

end;



procedure TFOptions.PoleDisplayActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin

 if PoleDisplayActiveSdr.SliderOn = False then
  begin
  PoleDisplayCOMListLbl.Enabled:=True;
  PoleDisplayCOMListCbx.Enabled:=True;

  PoleDisplayMsgLbl.Enabled:=True;
  PoleDisplayMsgEdt.Enabled:=True;
  PoleDisplayMsg2Lbl.Enabled:=True;
  PoleDisplayMsg2Edt.Enabled:=True;

  PoleDisplayTotalLbl.Enabled:=True;
  PoleDisplayTotalEdt.Enabled:=True;

  TestPoleBtn.Enabled:=True;
  TestPoleLbl.Enabled:=True;

  end else
      begin
        PoleDisplayCOMListLbl.Enabled:=False;
        PoleDisplayCOMListCbx.Enabled:=False;

        PoleDisplayMsgLbl.Enabled:=False;
        PoleDisplayMsgEdt.Enabled:=False;
        PoleDisplayMsg2Lbl.Enabled:=False;
        PoleDisplayMsg2Edt.Enabled:=False;

        PoleDisplayTotalLbl.Enabled:=False;
        PoleDisplayTotalEdt.Enabled:=False;

        TestPoleBtn.Enabled:=False;
        TestPoleLbl.Enabled:=False;
      end;



end;





procedure TFOptions.BalBtnLblDrawerTimerTimer(Sender: TObject);
Var
I : Integer;
BalBtnNum : TsSpeedButton;
begin
   for I := 1 to 56 do
 begin
    BalBtnNum := (FindComponent('Bal'+IntToStr(I)+'sp') as TsSpeedButton);
    BalBtnNum.Canvas.Font.Name :='Arial';// set the font
    BalBtnNum.Canvas.Font.Size  :=6;//set the size of the font
    BalBtnNum.Canvas.Font.Color:=$004734F6;//set the color of the text
    BalBtnNum.Canvas.TextOut(2,2,IntToStr(I));
 end;
end;

procedure TFOptions.TiroirCaisseActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
    if TiroirCaisseActiveSdr.SliderOn = False then
  begin

    TiroirCaisseCaseCOMRbtn.Enabled:=True;
    CaseCOMLbl.Enabled:=True;
    TiroirCaisseCOMListCbx.Enabled:=True;

    TiroirCaisseCasePRINTRbtn.Enabled:=True;
    CasePrinterLbl.Enabled:=True;
    TiroirCaissePrinterListCbx.Enabled:=True;

    TiroirCaisseCasePasswordLbl.Enabled:=True;
    TiroirCaisseCasePasswordSdr.Enabled:=True;

    TestTeroirBtn.Enabled:=True;
    TestTeroirLbl.Enabled:=True;


  end else
      begin

          TiroirCaisseCaseCOMRbtn.Enabled:=False;
          CaseCOMLbl.Enabled:=False;
          TiroirCaisseCOMListCbx.Enabled:=False;

          TiroirCaisseCasePRINTRbtn.Enabled:=False;
          CasePrinterLbl.Enabled:=False;
          TiroirCaissePrinterListCbx.Enabled:=False;

          TiroirCaisseCasePasswordLbl.Enabled:=False;
          TiroirCaisseCasePasswordSdr.Enabled:=False;
          TiroirCaisseCasePasswordSdr.SliderOn:=False;

          TestTeroirBtn.Enabled:=False;
          TestTeroirLbl.Enabled:=False;
                 end;


end;


procedure TFOptions.TestBalanceIPBtnClick(Sender: TObject);
var
  BalanceSocket: TSocket; //
  Records: LabelPLU;
  i: Integer;
  CommResult: Integer;
  iCount: Integer;
  IPAddress: TStrings;
begin
  BalanceSocket := 0;
  edt1.Text := '0';
  try
    IPAddress := TStringList.Create;
    IPAddress.Delimiter := '.';
    IPAddress.DelimitedText := BalanceIPAdressIPEdt.Text;

    BalanceSocket := ConnectScale(IPAddress.DelimitedText, 2000 + StrToInt(IPAddress[3]));
    IPAddress.Free;
    if (BalanceSocket > 0) then // Connection Successful
    begin
       ShowMessage('La balance est Connect?e sur l''adresse IP: '+BalanceIPAdressIPEdt.Text);
    end else
    begin
       ShowMessage('?chec de connection');
    end;
  finally
    if BalanceSocket > 0 then
      CloseConnect(BalanceSocket);
  end;







//=============Old Confugration balnce======>
//  try
//  ScaleLib:=CoScale.Create;
//  except
//  ShowMessage('UnSuccssed - COM Object');
//  end;
//
//
//  ScaleLib.ScaleIP:=BalanceIPAdressIPEdt.Text;
//  ScaleLib.ScaleTimeOut:=1000;
//
//  ScaleLib.OpenConnect;
//
//
//  case ScaleLib.ResultCode  of
//      0: ShowMessage('R?ussi');
//  else
//      ShowMessage('Le Balance ne r?pond pas! Assurer-tu que le Balance est allum? et en d?finissant l''adresse IP: '
//      +BalanceIPAdressIPEdt.Text);
//  end;

end;

procedure TFOptions.TestPoleBtnClick(Sender: TObject);
begin
          try
            ComPort1.Port := PoleDisplayCOMListCbx.Text;// 'COM7';
            ComPort1.Events := [];
            ComPort1.FlowControl.ControlDTR := dtrEnable;
            ComPort1.FlowControl.ControlRTS := rtsEnable;
            ComPort1.Open; // open port
            ComPort1.WriteUnicodeString('                                        '#13#10);
//            ComPort1.WriteUnicodeString('                                        '#13#10);
            ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
            ComPort1.Close;
          except
            ShowMessage('Svp, brancher l''Afficheur Client');
          end;


end;


procedure TFOptions.TestTeroirBtnClick(Sender: TObject);
var myPrinter   : TPrinter;

begin


  if TiroirCaisseCasePRINTRbtn.Checked then
  begin
    myPrinter := printer;
    with myPrinter do
    begin

      Printer.PrinterIndex:= TiroirCaissePrinterListCbx.ItemIndex;
      // Start printing
      BeginDoc;

      // Set up a large blue font
      Canvas.Font.Size   := 12;
      Canvas.Font.Color  := clBlack;

      // Write out the page size
      Canvas.TextOut(20, 40, 'C''est un TEST :D');

      // Finish printing
      EndDoc;
    end;
  end;

  if TiroirCaisseCaseCOMRbtn.Checked then
  begin
          try
            ComPort1.Port := TiroirCaisseCOMListCbx.Text;// 'COM7';
            ComPort1.Events := [];
            ComPort1.FlowControl.ControlDTR := dtrEnable;
            ComPort1.FlowControl.ControlRTS := rtsEnable;
            ComPort1.Open; // open port
            ComPort1.WriteUnicodeString('                                        '#13#10);
            ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
            ComPort1.Close;
          except
            ShowMessage('Svp, brancher le Tiroir Caisse');
          end;
  end;


end;

End.

