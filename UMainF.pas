unit UMainF;

interface

uses 
  Winapi.Windows,
  System.DateUtils,MMSystem,
   Winapi.Messages, System.SysUtils,System.Math, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sScrollBox, sFrameBar, Vcl.WinXCtrls,
  sSkinManager, dxGDIPlusClasses, Vcl.ExtCtrls, AdvToolBtn, System.ImageList,
  acAlphaImageList, Vcl.Menus, Vcl.ImgList, Vcl.ComCtrls, sPageControl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Comp.UI,
  FireDAC.FMXUI.Wait, FireDAC.ConsoleUI.Wait, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
    Vcl.StdCtrls, FireDAC.VCLUI.Script,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  Vcl.Touch.Keyboard, sStatusBar, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxClasses, dxTabbedMDI,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, acImage, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxActivityIndicator, acPNG;

  procedure GrayForms;
  procedure NormalForms;

  const
   WM_USER_CLOSETAB = WM_USER + 1;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    OptionMainFMnm: TMenuItem;
    N6: TMenuItem;
    UsersGMainFMnm: TMenuItem;
    N7: TMenuItem;
    Q1: TMenuItem;
    A1: TMenuItem;
    ListesMainFMnm: TMenuItem;
    ClientMainFMnm: TMenuItem;
    FourMainFMnm: TMenuItem; N1: TMenuItem;
    ProduitMainFMmn: TMenuItem;
    FamPMainFMmn: TMenuItem; R1: TMenuItem; N2: TMenuItem; M1: TMenuItem;
    N3: TMenuItem; T1: TMenuItem;
    MPMainFMmn: TMenuItem;
    VenteMainFMnm: TMenuItem;
    AchatsMainFMnm: TMenuItem;
    FactureVMainFMnm: TMenuItem; statistiques1: TMenuItem;
    A4: TMenuItem; A6: TMenuItem; N4: TMenuItem; B1: TMenuItem; M3: TMenuItem; N5: TMenuItem; A5: TMenuItem;
    TopPanelImageListMainForma: TsAlphaImageList;
    TopP: TPanel;
    BoardMainFBtn: TAdvToolButton;
    ClientMainFBtn: TAdvToolButton;
    FourMainFBtn: TAdvToolButton;
    BLMainFBtn: TAdvToolButton;
    BRMainFBtn: TAdvToolButton;
    ComptoirMainFBtn: TAdvToolButton;
    ProduitMainFBtn: TAdvToolButton;
    CaisseMainFBtn: TAdvToolButton;
    AdvToolButton10: TAdvToolButton;
    AdvToolButton11: TAdvToolButton;
    S01: TPanel;
    S02: TPanel;
    S03: TPanel;
    S04: TPanel;
    S00: TPanel;
    AlphaSkinmangerMainForm: TsSkinManager;
    SplitView1: TSplitView;
    sFrameBar1: TsFrameBar;
    S07: TPanel;
    AdvToolButton7: TAdvToolButton;
    S05: TPanel;
    CnotificationMainFBtn: TAdvToolButton;
    S06: TPanel;
    S08: TPanel;
    Sbottom: TPanel;
    STop: TPanel;
    ClientTable: TFDQuery;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FournisseurTable: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ProduitTable: TFDQuery;
    UniteTable: TFDQuery;
    SfamproduitTable: TFDQuery;
    FamproduitTable: TFDQuery;
    CodebarresTable: TFDQuery;
    ProduitTablecode_p: TIntegerField;
    ProduitTablenom_p: TWideStringField;
    ProduitTablerefer_p: TWideStringField;
    ProduitTablecode_famp: TIntegerField;
    ProduitTablealertqut_p: TIntegerField;
    ProduitTablecode_f: TIntegerField;
    ProduitTableobser_p: TWideMemoField;
    ProduitTablelogo_p: TBlobField;
    ProduitTableperissable_p: TBooleanField;
    ProduitTabledateperiss_p: TDateField;
    ProduitTablealertdays_p: TSmallintField;
    ProduitTableprixht_p: TCurrencyField;
    ProduitTableprixvd_p: TCurrencyField;
    ProduitTableprixvr_p: TCurrencyField;
    ProduitTableprixvg_p: TCurrencyField;
    ProduitTableprixva_p: TCurrencyField;
    ProduitTableprixva2_p: TCurrencyField;
    ProduitTablecodebar_p: TWideStringField;
    ProduitTablePrixATTC: TSingleField;
    ProduitTablePrixTTCDetail: TSingleField;
    ProduitTablePrixTTCR: TSingleField;
    ProduitTablePrixTTCG: TSingleField;
    ProduitTablePrixTTCA: TSingleField;
    ProduitTablePrixTTCA2: TSingleField;
    ProduitTablefamp: TStringField;
    ProduitTablesfamp: TStringField;
    ProduitTablecode_sfamp: TIntegerField;
    ProduitTablefourp: TStringField;
    LocalisationTable: TFDQuery;
    ProduitTablecode_l: TIntegerField;
    ProduitTablelocal: TStringField;
    ProduitTablecode_u: TSmallintField;
    ProduitTableunit: TStringField;
    SQLQuery: TFDQuery;
    B2: TMenuItem;
    BRMainFMmn: TMenuItem;
    FactureAMainFMnm: TMenuItem;
    N8: TMenuItem;
    c44: TMenuItem;
    N9: TMenuItem;
    C3: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    FacturedAvoirVente: TMenuItem;
    B4: TMenuItem;
    BLMainFMmn: TMenuItem;
    FactureP2MainFMnm: TMenuItem;
    FactureV2MainFMnm: TMenuItem;
    MainMenuImageListMainFormaa: TsAlphaImageList;
    CtrMainFMmn: TMenuItem;
    N12: TMenuItem;
    Bona_recTable: TFDQuery;
    Bona_recTablecode_barec: TIntegerField;
    Bona_recTabledate_barec: TDateField;
    Bona_recTabletime_barec: TTimeField;
    Bona_recTablemontht_barec: TCurrencyField;
    rr: TCurrencyField;
    Bona_recTablevalider_barec: TBooleanField;
    Bona_recTablenum_barec: TWideStringField;
    Bona_recTablefourbarec: TStringField;
    Bona_recTableMontantTVA: TCurrencyField;
    Bona_recTableMontantVer: TCurrencyField;
    Bona_recPlistTable: TFDQuery;
    Bona_recTableobser_barec: TWideMemoField;
    Bona_recPlistTablecode_barecl: TIntegerField;
    Bona_recPlistTablecode_barec: TIntegerField;
    Bona_recPlistTableprixht_p: TCurrencyField;
    Bona_recPlistTablecond_p: TIntegerField;
    Bona_recPlistTablePrixATTC: TCurrencyField;
    Bona_recPlistTableMontantTVA: TCurrencyField;
    Bona_recPlistTableMontantTTC: TCurrencyField;
    Bona_recPlistTableMontantHT: TCurrencyField;
    ProduitTableQUT: TIntegerField;
    FDQuery2: TFDQuery;
    Bona_recTablemonttc_barec: TCurrencyField;
    Bona_recPlistTablecode_p: TIntegerField;
    Bona_recPlistTablenomp: TStringField;
    Bona_recPlistTablereferp: TStringField;
    Bona_recPlistTabletvap: TIntegerField;
    Button1: TButton;
    Button2: TButton;
    ComptesMainFMmn: TMenuItem;
    N13: TMenuItem;
    LocalMainFMmn: TMenuItem;
    PanelIcons24: TsAlphaImageList;
    Button3: TButton;
    Mode_paiementTable: TFDQuery;
    CompteTable: TFDQuery;
    PanelIcons48: TsAlphaImageList;
    GridIcons13: TsAlphaImageList;
    Bona_recTableremise_barec: TCurrencyField;
    Bona_recPlistTableTVA: TSingleField;
    Bona_recTablenum_cheque_barec: TWideStringField;
    GridIconsMP20: TsAlphaImageList;
    Bona_recTablecode_mdpai: TSmallintField;
    Bona_recTablecode_cmpt: TSmallintField;
    Bona_recTableCompte: TStringField;
    Bona_recTableModePaie: TStringField;
    ProduitTablequt_p: TFloatField;
    ProduitTablequtmax_p: TFloatField;
    ProduitTablequtmin_p: TFloatField;
    ProduitTablequtini_p: TFloatField;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Mode_paiementTablecode_mdpai: TSmallintField;
    Mode_paiementTablenom_mdpai: TWideStringField;
    Mode_paiementTablecode_cmpt: TIntegerField;
    Button8: TButton;
    Bona_recTableCredit: TFDQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    IntegerField2: TIntegerField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    WideMemoField1: TWideMemoField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    WideStringField2: TWideStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    StringField2: TStringField;
    StringField3: TStringField;
    Bona_recTableRemisePerc: TFloatField;
    Bona_recTableNEWTTC: TCurrencyField;
    Button9: TButton;
    Bonv_livTable: TFDQuery;
    Bonv_liv_listTable: TFDQuery;
    Bonv_livTablecode_bvliv: TIntegerField;
    Bonv_livTabledate_bvliv: TDateField;
    Bonv_livTabletime_bvliv: TTimeField;
    Bonv_livTablemontht_bvliv: TCurrencyField;
    Bonv_livTablemontver_bvliv: TCurrencyField;
    Bonv_livTablevalider_bvliv: TBooleanField;
    Bonv_livTablenum_bvliv: TWideStringField;
    Bonv_livTableobser_bvliv: TWideMemoField;
    Bonv_livTablemontttc_bvliv: TCurrencyField;
    Bonv_livTableremise_bvliv: TCurrencyField;
    Bonv_livTablenum_cheque_bvliv: TWideStringField;
    Bonv_livTablecode_mdpai: TSmallintField;
    Bonv_livTablecode_cmpt: TSmallintField;
    Bonv_liv_listTablecode_bvlivl: TIntegerField;
    Bonv_liv_listTablecode_bvliv: TIntegerField;
    Bonv_liv_listTablecond_p: TIntegerField;
    Bonv_liv_listTablecode_p: TIntegerField;
    Bona_facTable: TFDQuery;
    Bona_fac_listTable: TFDQuery;
    Bona_facTablecode_bafac: TIntegerField;
    Bona_facTabledate_bafac: TDateField;
    Bona_facTabletime_bafac: TTimeField;
    Bona_facTablecode_f: TIntegerField;
    Bona_facTablemontht_bafac: TCurrencyField;
    Bona_facTablemontver_bafac: TCurrencyField;
    Bona_facTablevalider_bafac: TBooleanField;
    Bona_facTablenum_bafac: TWideStringField;
    Bona_facTableobser_bafac: TWideMemoField;
    Bona_facTablemontttc_bafac: TCurrencyField;
    Bona_facTableremise_bafac: TCurrencyField;
    Bona_facTablenum_cheque_bafac: TWideStringField;
    Bona_facTablecode_mdpai: TSmallintField;
    Bona_facTablecode_cmpt: TSmallintField;
    Bona_fac_listTablecode_bafacl: TIntegerField;
    Bona_fac_listTablecode_bafac: TIntegerField;
    Bona_fac_listTableprixht_p: TCurrencyField;
    Bona_fac_listTablecond_p: TIntegerField;
    Bona_fac_listTablecode_p: TIntegerField;
    WilayasTable: TFDQuery;
    CommunesTable: TFDQuery;
    WilayasTablecode_w: TSmallintField;
    WilayasTablenom_w: TWideStringField;
    CommunesTablecode_cumm: TSmallintField;
    CommunesTablecodepostal_cumm: TIntegerField;
    CommunesTablenom__cumm: TWideStringField;
    Bonv_fac_listTable: TFDQuery;
    Bonv_facTable: TFDQuery;
    Bonv_facTablecode_bvfac: TIntegerField;
    Bonv_facTabledate_bvfac: TDateField;
    Bonv_facTabletime_bvfac: TTimeField;
    Bonv_facTablemontht_bvfac: TCurrencyField;
    Bonv_facTablemontver_bvfac: TCurrencyField;
    Bonv_facTablevalider_bvfac: TBooleanField;
    Bonv_facTablenum_bvfac: TWideStringField;
    Bonv_facTableobser_bvfac: TWideMemoField;
    Bonv_facTablemontttc_bvfac: TCurrencyField;
    Bonv_facTableremise_bvfac: TCurrencyField;
    Bonv_facTablenum_cheque_bvfac: TWideStringField;
    Bonv_facTablecode_mdpai: TSmallintField;
    Bonv_facTablecode_cmpt: TSmallintField;
    Bonv_fac_listTablecode_bvfacl: TIntegerField;
    Bonv_fac_listTablecode_bvfac: TIntegerField;
    Bonv_fac_listTablecond_p: TIntegerField;
    WilayasDataS: TDataSource;
    CommunesTablecode_w: TSmallintField;
    Bonv_livTablefourbarec: TStringField;
    Bonv_livTableMontantTVA: TCurrencyField;
    Bonv_livTableMontantRes: TCurrencyField;
    Bonv_livTableModePaie: TStringField;
    Bonv_livTableCompte: TStringField;
    Bonv_livTableRemisePerc: TFloatField;
    Bonv_livTableNEWTTC: TCurrencyField;
    Bonv_liv_listTableMontantHT: TCurrencyField;
    Bonv_liv_listTableMontantTVA: TCurrencyField;
    Bonv_liv_listTableMontantTTC: TCurrencyField;
    Bonv_liv_listTablenomp: TStringField;
    Bonv_liv_listTablereferp: TStringField;
    Bonv_liv_listTableTVA: TSingleField;
    Bonv_livTableCredit: TFDQuery;
    IntegerField3: TIntegerField;
    DateField2: TDateField;
    TimeField2: TTimeField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    BooleanField2: TBooleanField;
    WideStringField3: TWideStringField;
    StringField4: TStringField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    WideMemoField2: TWideMemoField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    WideStringField4: TWideStringField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    StringField5: TStringField;
    StringField6: TStringField;
    Bona_facTablefourbarec: TStringField;
    Bona_facTableMontantTVA: TCurrencyField;
    Bona_facTableMontantRes: TCurrencyField;
    Bona_facTableModePaie: TStringField;
    Bona_facTableCompte: TStringField;
    Bona_facTableRemisePerc: TFloatField;
    Bona_facTableNEWTTC: TCurrencyField;
    Bona_facTableCredit: TFDQuery;
    IntegerField5: TIntegerField;
    DateField3: TDateField;
    TimeField3: TTimeField;
    IntegerField6: TIntegerField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    BooleanField3: TBooleanField;
    WideStringField5: TWideStringField;
    StringField7: TStringField;
    CurrencyField15: TCurrencyField;
    CurrencyField16: TCurrencyField;
    WideMemoField3: TWideMemoField;
    CurrencyField17: TCurrencyField;
    CurrencyField18: TCurrencyField;
    WideStringField6: TWideStringField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    StringField8: TStringField;
    StringField9: TStringField;
    Bonv_facTablefourbarec: TStringField;
    Bonv_facTableMontantTVA: TCurrencyField;
    Bonv_facTableMontantRes: TCurrencyField;
    Bonv_facTableModePaie: TStringField;
    Bonv_facTableCompte: TStringField;
    Bonv_facTableRemisePerc: TFloatField;
    Bonv_facTableNEWTTC: TCurrencyField;
    Bonv_facTableCredit: TFDQuery;
    IntegerField7: TIntegerField;
    DateField4: TDateField;
    TimeField4: TTimeField;
    CurrencyField19: TCurrencyField;
    CurrencyField20: TCurrencyField;
    BooleanField4: TBooleanField;
    WideStringField7: TWideStringField;
    StringField10: TStringField;
    CurrencyField21: TCurrencyField;
    CurrencyField22: TCurrencyField;
    WideMemoField4: TWideMemoField;
    CurrencyField23: TCurrencyField;
    CurrencyField24: TCurrencyField;
    WideStringField8: TWideStringField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    StringField11: TStringField;
    StringField12: TStringField;
    Bonv_livTablecode_c: TIntegerField;
    Bonv_facTablecode_c: TIntegerField;
    Bonv_livTableCreditcode_c: TIntegerField;
    Bonv_facTableCreditcode_c: TIntegerField;
    Bonv_liv_listTableprixvd_p: TCurrencyField;
    Bonv_liv_listTablePrixVTTCc: TCurrencyField;
    Bonv_fac_listTablecode_p: TIntegerField;
    Bonv_fac_listTablePrixVTTC: TCurrencyField;
    Bonv_fac_listTableMontantHT: TCurrencyField;
    Bonv_fac_listTableMontantTVA: TCurrencyField;
    Bonv_fac_listTableMontantTTC: TCurrencyField;
    Bonv_fac_listTablenomp: TStringField;
    Bonv_fac_listTablereferp: TStringField;
    Bonv_fac_listTableTVA: TSingleField;
    Button10: TButton;
    Bonv_fac_listTableprixvd_p: TCurrencyField;
    Bona_facTabletimber_bafac: TCurrencyField;
    Bonv_facTabletimber_bvfac: TCurrencyField;
    Button11: TButton;
    Button12: TButton;
    Bona_fac_listTablePrixVTTC: TCurrencyField;
    Bona_fac_listTableMontantHT: TCurrencyField;
    Bona_fac_listTableMontantTVA: TCurrencyField;
    Bona_fac_listTableMontantTTC: TCurrencyField;
    Bona_fac_listTablenomp: TStringField;
    Bona_fac_listTablereferp: TStringField;
    Bona_fac_listTabletvap: TIntegerField;
    Bona_fac_listTableTVA: TSingleField;
    ClientTablenom_c: TWideStringField;
    ClientTableadr_c: TWideStringField;
    ClientTableville_c: TWideStringField;
    ClientTablefix_c: TWideStringField;
    ClientTableemail_c: TWideStringField;
    ClientTablewillaya_c: TWideStringField;
    ClientTablefax_c: TWideStringField;
    ClientTableactiv_c: TBooleanField;
    ClientTablemob2_c: TWideStringField;
    ClientTablerc_c: TWideStringField;
    ClientTablenif_c: TWideStringField;
    ClientTablenart_c: TWideStringField;
    ClientTablenis_c: TWideStringField;
    ClientTableobser_c: TWideMemoField;
    ClientTablenbank_c: TWideStringField;
    ClientTablerib_c: TWideStringField;
    ClientTableactivite_c: TWideStringField;
    ClientTablesiteweb_c: TWideStringField;
    ClientTableoldcredit_c: TCurrencyField;
    ClientTablemaxcredit_c: TCurrencyField;
    ClientTablecode_c: TIntegerField;
    ClientTabletarification_c: TSmallintField;
    GridIconsClientNature20: TsAlphaImageList;
    FournisseurTablenom_f: TWideStringField;
    FournisseurTableadr_f: TWideStringField;
    FournisseurTableville_f: TWideStringField;
    FournisseurTablewillaya_f: TWideStringField;
    FournisseurTablefix_f: TWideStringField;
    FournisseurTablemob_f: TWideStringField;
    FournisseurTablemob2_f: TWideStringField;
    FournisseurTablefax_f: TWideStringField;
    FournisseurTableemail_f: TWideStringField;
    FournisseurTableobser_f: TWideStringField;
    FournisseurTableactiv_f: TBooleanField;
    FournisseurTablerc_f: TWideStringField;
    FournisseurTablenif_f: TWideStringField;
    FournisseurTablenart_f: TWideStringField;
    FournisseurTablenis_f: TWideStringField;
    FournisseurTablenbank_f: TWideStringField;
    FournisseurTablerib_f: TWideStringField;
    FournisseurTablesiteweb_f: TWideStringField;
    FournisseurTableoldcredit_f: TCurrencyField;
    FournisseurTablemaxcredit_f: TCurrencyField;
    Bona_recTablecode_f: TIntegerField;
    FournisseurTablecode_f: TIntegerField;
    Button14: TButton;
    Button15: TButton;
    ComptoiIcons48: TsAlphaImageList;
    Button16: TButton;
    Bonv_ctrTable: TFDQuery;
    Bonv_ctr_listTable: TFDQuery;
    Bonv_ctr_listTablecode_bvctrl: TIntegerField;
    Bonv_ctr_listTablecode_bvctr: TIntegerField;
    Bonv_ctr_listTableprixvd_p: TCurrencyField;
    Bonv_ctr_listTablecond_p: TIntegerField;
    Bonv_ctr_listTablecode_p: TIntegerField;
    Bonv_ctrTablecode_bvctr: TIntegerField;
    Bonv_ctrTabledate_bvctr: TDateField;
    Bonv_ctrTabletime_bvctr: TTimeField;
    Bonv_ctrTablecode_c: TIntegerField;
    Bonv_ctrTablemontht_bvctr: TCurrencyField;
    Bonv_ctrTablemontver_bvctr: TCurrencyField;
    Bonv_ctrTablevalider_bvctr: TBooleanField;
    Bonv_ctrTablenum_bvctr: TWideStringField;
    Bonv_ctrTableobser_bvctr: TWideMemoField;
    Bonv_ctrTablemontttc_bvctr: TCurrencyField;
    Bonv_ctrTableremise_bvctr: TCurrencyField;
    Bonv_ctrTableclientbvctr: TStringField;
    Bonv_ctrTableMontantTVA: TCurrencyField;
    Bonv_ctrTableMontantRen: TCurrencyField;
    Bonv_ctrTableRemisePerc: TCurrencyField;
    Bonv_ctrTableNEWTTC: TCurrencyField;
    Bonv_ctrTableCredit: TFDQuery;
    IntegerField4: TIntegerField;
    DateField5: TDateField;
    TimeField5: TTimeField;
    IntegerField8: TIntegerField;
    CurrencyField25: TCurrencyField;
    CurrencyField26: TCurrencyField;
    BooleanField5: TBooleanField;
    WideStringField9: TWideStringField;
    WideMemoField5: TWideMemoField;
    StringField13: TStringField;
    CurrencyField27: TCurrencyField;
    CurrencyField28: TCurrencyField;
    CurrencyField29: TCurrencyField;
    CurrencyField30: TCurrencyField;
    CurrencyField31: TCurrencyField;
    CurrencyField32: TCurrencyField;
    TreMainFMnm: TMenuItem;
    C5: TMenuItem;
    B6: TMenuItem;
    L2: TMenuItem;
    Bonv_ctr_listTablePrixVTTC: TCurrencyField;
    Bonv_ctr_listTableMontantTVA: TCurrencyField;
    Bonv_ctr_listTableMontantHT: TCurrencyField;
    Bonv_ctr_listTableMontantTTC: TCurrencyField;
    Bonv_ctr_listTablenomp: TStringField;
    Bonv_ctr_listTablereferp: TStringField;
    Bonv_ctr_listTableTVA: TCurrencyField;
    N14: TMenuItem;
    Ajouterunrglementclient1: TMenuItem;
    P1: TMenuItem;
    N15: TMenuItem;
    T3: TMenuItem;
    CaisseMainFMnm: TMenuItem;
    BankMainFMnm: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    H1: TMenuItem;
    GstockdcConnection: TFDConnection;
    Opt_cas_bnk_CaisseTable: TFDQuery;
    Opt_cas_bnk_BankTable: TFDQuery;
    Button17: TButton;
    Button18: TButton;
    StatuBar: TsStatusBar;
    Timer1: TTimer;
    GridIconsUR36: TsAlphaImageList;
    Bonv_ctrTablecode_ur: TIntegerField;
    Bonv_ctrTableAgnet: TStringField;
    Opt_cas_bnk_CaisseTableAgnet: TStringField;
    Opt_cas_bnk_BankTableAgnet: TStringField;
    Bona_recTablecode_ur: TIntegerField;
    Bona_facTablecode_ur: TIntegerField;
    Bona_facTableAgnet: TStringField;
    Bonv_livTablecode_ur: TIntegerField;
    Bonv_livTableAgnet: TStringField;
    Bonv_facTablecode_ur: TIntegerField;
    Bonv_facTableAgnet: TStringField;
    Opt_cas_bnk_CaisseTablecode_ocb: TIntegerField;
    Opt_cas_bnk_CaisseTabledate_ocb: TDateField;
    Opt_cas_bnk_CaisseTablenom_ocb: TWideStringField;
    Opt_cas_bnk_CaisseTablethird_ocb: TWideStringField;
    Opt_cas_bnk_CaisseTableencaiss_ocb: TCurrencyField;
    Opt_cas_bnk_CaisseTabledecaiss_ocb: TCurrencyField;
    Opt_cas_bnk_CaisseTablecode_mdpai: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_cmpt: TIntegerField;
    Opt_cas_bnk_CaisseTabletime_ocb: TTimeField;
    Opt_cas_bnk_CaisseTablenature_ocb: TBooleanField;
    Opt_cas_bnk_CaisseTablecode_ur: TIntegerField;
    Opt_cas_bnk_BankTablecode_ocb: TIntegerField;
    Opt_cas_bnk_BankTabledate_ocb: TDateField;
    Opt_cas_bnk_BankTablenom_ocb: TWideStringField;
    Opt_cas_bnk_BankTablethird_ocb: TWideStringField;
    Opt_cas_bnk_BankTableencaiss_ocb: TCurrencyField;
    Opt_cas_bnk_BankTabledecaiss_ocb: TCurrencyField;
    Opt_cas_bnk_BankTablecode_mdpai: TIntegerField;
    Opt_cas_bnk_BankTablecode_cmpt: TIntegerField;
    Opt_cas_bnk_BankTabletime_ocb: TTimeField;
    Opt_cas_bnk_BankTablenature_ocb: TBooleanField;
    Opt_cas_bnk_BankTablecode_ur: TIntegerField;
    RGFourMainFMnm: TMenuItem;
    RGClientMainFMnm: TMenuItem;
    RegclientTable: TFDQuery;
    RegfournisseurTable: TFDQuery;
    RegclientTablecode_rc: TIntegerField;
    RegclientTablenom_rc: TWideStringField;
    RegclientTabledate_rc: TDateField;
    RegclientTabletime_rc: TTimeField;
    RegclientTablemontver_rc: TCurrencyField;
    RegclientTablecode_mdpai: TIntegerField;
    RegclientTablenum_cheque_rc: TWideStringField;
    RegclientTablecode_c: TIntegerField;
    RegclientTablecode_ur: TIntegerField;
    RegclientTableClientrRC: TStringField;
    RegfournisseurTablecode_rf: TIntegerField;
    RegfournisseurTablenom_rf: TWideStringField;
    RegfournisseurTabledate_rf: TDateField;
    RegfournisseurTabletime_rf: TTimeField;
    RegfournisseurTablemontver_rf: TCurrencyField;
    RegfournisseurTablecode_mdpai: TIntegerField;
    RegfournisseurTablenum_cheque_rf: TWideStringField;
    RegfournisseurTablecode_f: TIntegerField;
    RegfournisseurTablecode_ur: TIntegerField;
    RegfournisseurTableFourRF: TStringField;
    RegclientTableAgent: TStringField;
    RegfournisseurTableAgent: TStringField;
    RegfournisseurTableobser_rf: TWideMemoField;
    RegclientTableobser_rc: TWideMemoField;
    Bona_recTablebon_or_no_barec: TBooleanField;
    RegfournisseurTablecode_cmpt: TIntegerField;
    RegclientTablecode_cmpt: TIntegerField;
    Button19: TButton;
    Bona_recTableCreditcode_ur: TIntegerField;
    Bona_recTableCreditbon_or_no_barec: TBooleanField;
    RegfournisseurTablecode_barec: TIntegerField;
    RegfournisseurTablebon_or_no_rf: TSmallintField;
    GriDRegIcons20: TsAlphaImageList;
    RegfournisseurTablecode_bafac: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_barec: TSmallintField;
    Opt_cas_bnk_BankTablecode_barec: TSmallintField;
    Opt_cas_bnk_BankTablecode_bafac: TIntegerField;
    Opt_cas_bnk_BankTablecode_bvliv: TIntegerField;
    Opt_cas_bnk_BankTablecode_bvfac: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_bafac: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_bvliv: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_bvfac: TIntegerField;
    RegclientTablebon_or_no_rc: TSmallintField;
    RegclientTablecode_bvliv: TIntegerField;
    RegclientTablecode_bvfac: TIntegerField;
    RegclientTablecode_bvctr: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_bvctr: TIntegerField;
    Opt_cas_bnk_BankTablecode_bvctr: TIntegerField;
    UserIDLbl: TLabel;
    Opt_cas_bnk_CaisseTablecode_rc: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_rf: TIntegerField;
    Opt_cas_bnk_BankTablecode_rc: TIntegerField;
    Opt_cas_bnk_BankTablecode_rf: TIntegerField;
    Label2: TLabel;
    Bonv_livTableNeTHT: TCurrencyField;
    Bona_recTableNeTHT: TCurrencyField;
    Bona_facTableNeTHT: TCurrencyField;
    Bonv_ctrTableNeTHT: TCurrencyField;
    Bonv_facTableNeTHT: TCurrencyField;
    Bona_facTableNetTTC: TCurrencyField;
    Bonv_facTableNetTTC: TCurrencyField;
    Bona_fac_listTabletva_p: TIntegerField;
    Bonv_fac_listTabletva_p: TSmallintField;
    Opt_cas_bnk_CaisseTableMP: TStringField;
    Opt_cas_bnk_BankTableMP: TStringField;
    RegclientTableMP: TStringField;
    RegfournisseurTableMP: TStringField;
    UserTypeLbl: TLabel;
    bl_ur: TCheckBox;
    fcv_ur: TCheckBox;
    rgc_ur: TCheckBox;
    br_ur: TCheckBox;
    fca_ur: TCheckBox;
    rgf_ur: TCheckBox;
    caisse_ur: TCheckBox;
    bank_ur: TCheckBox;
    client_ur: TCheckBox;
    four_ur: TCheckBox;
    ctr_ur: TCheckBox;
    produit_ur: TCheckBox;
    faceIcon52: TsAlphaImageList;
    CompanyTable: TFDQuery;
    CreateTablesFDScript: TFDScript;
    DropDatabaseFDScript: TFDScript;
    BonCtrListDataS: TDataSource;
    UserNameLbl: TLabel;
    Bonv_fac_listTablequt_p: TFloatField;
    Bona_recPlistTablequt_p: TFloatField;
    Bona_fac_listTablequt_p: TFloatField;
    Bonv_liv_listTablequt_p: TFloatField;
    Bonv_ctr_listTablequt_p: TFloatField;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    ProduitListDataS: TDataSource;
    BonRecListDataS: TDataSource;
    BonFacAListDataS: TDataSource;
    BonLivListDataS: TDataSource;
    BonFacVListDataS: TDataSource;
    AddUnitCompteDataS: TDataSource;
    GridIconsComptes20: TsAlphaImageList;
    SFamPMainFMmn: TMenuItem;
    UniteMainFMmn: TMenuItem;
    ClientTablecredit_c: TCurrencyField;
    FournisseurTablecredit_f: TCurrencyField;
    famp_ur: TCheckBox;
    sfamp_ur: TCheckBox;
    mdpai_ur: TCheckBox;
    cmpt_ur: TCheckBox;
    unit_ur: TCheckBox;
    local_ur: TCheckBox;
    Bona_recPlistTabletva_p: TSmallintField;
    Bonv_liv_listTableMarge: TCurrencyField;
    Bonv_liv_listTableMontantAHT: TCurrencyField;
    Bonv_liv_listTableprixht_p: TCurrencyField;
    Bonv_fac_listTableMarge: TCurrencyField;
    Bonv_fac_listTableMontantAHT: TCurrencyField;
    Bonv_fac_listTableprixht_p: TCurrencyField;
    Bonv_liv_listTableMargeM: TCurrencyField;
    Bonv_fac_listTableMargeM: TCurrencyField;
    Bonv_livTablemarge_bvliv: TCurrencyField;
    Bonv_facTablemarge_bvfac: TCurrencyField;
    Bonv_ctr_listTableMarge: TCurrencyField;
    Bonv_ctr_listTableMontantAHT: TCurrencyField;
    Bonv_ctr_listTableprixht_p: TCurrencyField;
    Bonv_ctr_listTableMargeM: TCurrencyField;
    Bonv_ctrTablemarge_bvctr: TCurrencyField;
    Bona_recPlistTableprixvd_p: TCurrencyField;
    Bona_recPlistTableprixvr_p: TCurrencyField;
    Bona_recPlistTableprixvg_p: TCurrencyField;
    Bona_recPlistTableprixva_p: TCurrencyField;
    Bona_recPlistTableprixva2_p: TCurrencyField;
    Bona_fac_listTableprixvd_p: TCurrencyField;
    Bona_fac_listTableprixvr_p: TCurrencyField;
    Bona_fac_listTableprixvg_p: TCurrencyField;
    Bona_fac_listTableprixva_p: TCurrencyField;
    Bona_fac_listTableprixva2_p: TCurrencyField;
    Bona_recPlistTableMargeD: TCurrencyField;
    Bona_recPlistTableMargeR: TCurrencyField;
    Bona_recPlistTableMargeG: TCurrencyField;
    Bona_recPlistTableMargeA: TCurrencyField;
    Bona_recPlistTableMargeA2: TCurrencyField;
    Bona_fac_listTableMargeD: TCurrencyField;
    Bona_fac_listTableMargeR: TCurrencyField;
    Bona_fac_listTableMargeG: TCurrencyField;
    Bona_fac_listTableMargeA: TCurrencyField;
    Bona_fac_listTableMargeA2: TCurrencyField;
    ProduitTableQutDispo: TFloatField;
    Bonv_liv_listTabletva_p: TSmallintField;
    Bonv_ctr_listTabletva_p: TSmallintField;
    ProduitTabletva_p: TSmallintField;
    ClientTablemob_c: TWideStringField;
    PanelIcons16: TsAlphaImageList;
    sImage1: TsImage;
    N18: TMenuItem;
    SwitchDBMAinFMnu: TMenuItem;
    InsertDataFDScript: TFDScript;
    CreatDB: TButton;
    BackupDbSDlg: TSaveDialog;
    B3: TMenuItem;
    Restaurer1: TMenuItem;
    N19: TMenuItem;
    rparation1: TMenuItem;
    RestoreDbODlg: TOpenDialog;
    Timer2: TTimer;
    dxActivityIndicator1: TdxActivityIndicator;
    N20: TMenuItem;
    Rpar1: TMenuItem;
    Bona_recTableAgent: TStringField;
    Button13: TButton;
    CNotificationLbl: TLabel;
    CNotificationPaintBox: TPaintBox;
    Bona_fac_listTabledateperiss_p: TDateField;
    Bona_fac_listTablequtinstock_p: TFloatField;
    Bona_recPlistTabledateperiss_p: TDateField;
    Bona_recPlistTablequtinstock_p: TFloatField;
    L1: TMenuItem;
    ListedetypesdeCharge1: TMenuItem;
    ListedetypesdeCharge2: TMenuItem;
    L3: TMenuItem;
    L4: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    Opt_cas_bnk_CaisseTablecode_ch: TIntegerField;
    Opt_cas_bnk_BankTablecode_ch: TIntegerField;
    Bonp_facTable: TFDQuery;
    Bonp_fac_listTable: TFDQuery;
    BonFacPListDataS: TDataSource;
    Bonp_facTablecode_bpfac: TIntegerField;
    Bonp_facTabledate_bpfac: TDateField;
    Bonp_facTabletime_bpfac: TTimeField;
    Bonp_facTablecode_c: TIntegerField;
    Bonp_facTablemontht_bpfac: TCurrencyField;
    Bonp_facTablemontver_bpfac: TCurrencyField;
    Bonp_facTablevalider_bpfac: TBooleanField;
    Bonp_facTablenum_bpfac: TWideStringField;
    Bonp_facTableobser_bpfac: TWideMemoField;
    Bonp_facTablemontttc_bpfac: TCurrencyField;
    Bonp_facTableremise_bpfac: TCurrencyField;
    Bonp_facTablemarge_bpfac: TCurrencyField;
    Bonp_fac_listTablecode_bpfacl: TIntegerField;
    Bonp_fac_listTablecode_bpfac: TIntegerField;
    Bonp_fac_listTablequt_p: TFloatField;
    Bonp_fac_listTableprixvd_p: TCurrencyField;
    Bonp_fac_listTablecond_p: TIntegerField;
    Bonp_fac_listTablecode_p: TIntegerField;
    Bonp_fac_listTabletva_p: TSmallintField;
    Bonp_facTableclientbvfac: TStringField;
    Bonp_facTableMontantTVA: TCurrencyField;
    Bonp_facTableMontantRes: TCurrencyField;
    Bonp_facTableRemisePerc: TCurrencyField;
    Bonp_facTableNEWTTC: TCurrencyField;
    Bonp_facTableNeTHT: TCurrencyField;
    Bonp_facTableNetTTC: TCurrencyField;
    Bonp_fac_listTablePrixVTTC: TCurrencyField;
    Bonp_fac_listTableMontantHT: TCurrencyField;
    Bonp_fac_listTableMontantTVA: TCurrencyField;
    Bonp_fac_listTableMontantTTC: TCurrencyField;
    Bonp_fac_listTablenomp: TStringField;
    Bonp_fac_listTablereferp: TStringField;
    Bonp_fac_listTableTVA: TCurrencyField;
    Bonp_fac_listTableMarge: TCurrencyField;
    Bonp_fac_listTableMontantAHT: TCurrencyField;
    Bonp_fac_listTableprixht_p: TCurrencyField;
    Bonp_fac_listTableMargeM: TCurrencyField;
    Bonp_facTabletimber_bpfac: TCurrencyField;
    Bonp_facTablecode_ur: TIntegerField;
    Bonp_facTableAgent: TStringField;
    ProduitTableValueStock: TCurrencyField;
    N21: TMenuItem;
    Label1: TLabel;
    procedure ClientMainFBtnClick(Sender: TObject);
    procedure FourMainFBtnClick(Sender: TObject);
    procedure ProduitMainFBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ProduitTableCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComptoirMainFBtnClick(Sender: TObject);
    procedure BRMainFMmnClick(Sender: TObject);
    procedure Bona_recPlistTableCalcFields(DataSet: TDataSet);
    procedure Bona_recTableCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Bona_recPlistTableAfterRefresh(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Bona_recTableCreditCalcFields(DataSet: TDataSet);
    procedure BLMainFMmnClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Bonv_livTableCalcFields(DataSet: TDataSet);
    procedure Bonv_liv_listTableCalcFields(DataSet: TDataSet);
    procedure Bonv_liv_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_livTableCreditCalcFields(DataSet: TDataSet);
    procedure Bonv_facTableCalcFields(DataSet: TDataSet);
    procedure Bonv_fac_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_fac_listTableCalcFields(DataSet: TDataSet);
    procedure Bonv_facTableCreditCalcFields(DataSet: TDataSet);
    procedure FactureV2MainFMnmClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Bona_facTableCalcFields(DataSet: TDataSet);
    procedure Bona_fac_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bona_fac_listTableCalcFields(DataSet: TDataSet);
    procedure Bona_facTableCreditCalcFields(DataSet: TDataSet);
    procedure FactureAMainFMnmClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure dddClick(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Bonv_ctrTable2CalcFields(DataSet: TDataSet);
    procedure Bonv_ctrTableCalcFields(DataSet: TDataSet);
    procedure Bonv_ctr_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_ctr_listTableCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure BLMainFBtnClick(Sender: TObject);
    procedure BRMainFBtnClick(Sender: TObject);
    procedure CaisseMainFMnmClick(Sender: TObject);
    procedure CaisseMainFBtnClick(Sender: TObject);
    procedure BankMainFMnmClick(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure UsersGMainFMnmClick(Sender: TObject);
    procedure RGFourMainFMnmClick(Sender: TObject);
    procedure RGClientMainFMnmClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure RegfournisseurTableCalcFields(DataSet: TDataSet);
    procedure CtrMainFMmnClick(Sender: TObject);
    procedure BLFaceBtnClick(Sender: TObject);
    procedure OptionMainFMnmClick(Sender: TObject);
    procedure BankFaceBtnClick(Sender: TObject);
    procedure BRFaceBtnClick(Sender: TObject);
    procedure CaisseFaceBtnClick(Sender: TObject);
    procedure ClientFaceBtnClick(Sender: TObject);
    procedure CTRFaceBtnClick(Sender: TObject);
    procedure FCAFaceBtnClick(Sender: TObject);
    procedure FCVFaceBtnClick(Sender: TObject);
    procedure FourFaceBtnClick(Sender: TObject);
    procedure MPMainFMmnClick(Sender: TObject);
    procedure ProduitFaceBtnClick(Sender: TObject);
    procedure ClientMainFMnmClick(Sender: TObject);
    procedure FourMainFMnmClick(Sender: TObject);
    procedure ProduitMainFMmnClick(Sender: TObject);
    procedure BoardMainFBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure H1Click(Sender: TObject);
    procedure ComptesMainFMmnClick(Sender: TObject);
    procedure FamPMainFMmnClick(Sender: TObject);
    procedure SFamPMainFMmnClick(Sender: TObject);
    procedure UniteMainFMmnClick(Sender: TObject);
    procedure LocalMainFMmnClick(Sender: TObject);
    procedure SwitchDBMAinFMnuClick(Sender: TObject);
    procedure CreatDBClick(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure rparation1Click(Sender: TObject);
    procedure Rpar1Click(Sender: TObject);
    procedure Restaurer1Click(Sender: TObject);
    procedure Q1Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure CnotificationMainFBtnClick(Sender: TObject);
    procedure CNotificationPaintBoxPaint(Sender: TObject);
    procedure L3Click(Sender: TObject);
    procedure L4Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure ListedetypesdeCharge1Click(Sender: TObject);
    procedure ListedetypesdeCharge2Click(Sender: TObject);
    procedure FDPhysPgDriverLink1DriverCreated(Sender: TObject);
    procedure FactureP2MainFMnmClick(Sender: TObject);
    procedure Bonp_facTableCalcFields(DataSet: TDataSet);
    procedure Bonp_fac_listTableCalcFields(DataSet: TDataSet);
    procedure Bonp_fac_listTableAfterRefresh(DataSet: TDataSet);
    procedure T3Click(Sender: TObject);
  private
   //---- this to value of changege we need it to check if theuser changed something
     CountInsert,CountUpdate,CountDelete   : Int64;
     CountInsertCheck,CountUpdateCheck,CountDeleteCheck :Int64; 
     
    TimerStart: TDateTime;
//    procedure ActiveTables;
//    procedure InactiveTables;
    procedure RerfreshTables;
    procedure RefreshCNotification;
   public
    function KillTask(ExeFileName: string): Integer;
   
    procedure ActiveTables;
    procedure InactiveTables;

     procedure WMUserCloseTab(var Message: TMessage); message
    WM_USER_CLOSETAB;

    Procedure StartTimer;
  end;

var
  MainForm: TMainForm;
//    gGrayForms: TComponentList;
implementation

{$R *.dfm}

uses   Vcl.Direct2D,Character, 
 TlHelp32,Contnrs,System.Threading,IniFiles,
   UClientsList, UFournisseurList, UProduitsList, UBonRec, UBonRecGestion,
  USplashAddUnite, UBonLiv, UBonLivGestion, UBonFacVGestion, UBonFacV,
  UBonFacAGestion, UBonFacA, UComptoir,ShellAPI, UBonCtr, UCaisseList,
  UBankList, UUsersList, UUsersGestion, UReglementFList, UReglementCList,
  UOptions, UModePaieList, UDashboard,uCompteList, UFamPList, USFamPList,
  UUnitesList, ULocaleList, UHomeF, UDataModule, USplash, UWorkingSplash,
  ULogoSplashForm, ULoginUser, ULogin, UCNotifications, UChargesFList,
  UPertesFList, USTypeChargeList, UTypeChargeList, UTypePerteList,
  UBonFacPGestion, UBonFacP, UTransferComptesGestion;

  var
    gGrayForms: TComponentList;

procedure GrayForms;
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
          wForm.AlphaBlendValue := 80;
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

procedure NormalForms;
begin
  FreeAndNil(gGrayForms);
end;



function MemoryUsed: cardinal;
var
    st: TMemoryManagerState;
    sb: TSmallBlockTypeState;
begin
    GetMemoryManagerState(st);
    result := st.TotalAllocatedMediumBlockSize + st.TotalAllocatedLargeBlockSize;
    for sb in st.SmallBlockTypeStates do begin
        result := result + sb.UseableBlockSize * sb.AllocatedBlockCount;
    end;
end;


function ExeAndWait(ExeNameAndParams: string; ncmdShow: Integer = SW_SHOWNORMAL): Integer;
var
    StartupInfo: TStartupInfo;
    ProcessInformation: TProcessInformation;
    Res: Bool;
    lpExitCode: DWORD;
begin
    with StartupInfo do //you can play with this structure
    begin
        cb := SizeOf(TStartupInfo);
        lpReserved := nil;
        lpDesktop := nil;
        lpTitle := nil;
        dwFlags := STARTF_USESHOWWINDOW;
        wShowWindow := ncmdShow;
        cbReserved2 := 0;
        lpReserved2 := nil;
    end;
    Res := CreateProcess(nil, PChar(ExeNameAndParams), nil, nil, True,
        CREATE_DEFAULT_ERROR_MODE
        or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInformation);
    while True do
    begin
        GetExitCodeProcess(ProcessInformation.hProcess, lpExitCode);
        if lpExitCode <> STILL_ACTIVE then
            Break;
        Application.ProcessMessages;
    end;
    Result := Integer(lpExitCode);
end;


procedure TMainForm.ClientMainFBtnClick(Sender: TObject);
begin
if Not Assigned(ClientListF) then

     ClientListF:= TClientListF.Create(Application) else
                                        begin
                                          ClientListF.Show
                                        end;
end;

procedure TMainForm.FourMainFBtnClick(Sender: TObject);
begin
if Not Assigned(FournisseurListF) then
     FournisseurListF:= TFournisseurListF.Create(Application) else
        begin
          FournisseurListF.Show
        end;
end;

procedure TMainForm.ComptoirMainFBtnClick(Sender: TObject);
begin
 BonCtrF.AddBVCtrBtnClick(Self);
end;

procedure TMainForm.ProduitMainFBtnClick(Sender: TObject);
begin
if Not Assigned(ProduitsListF) then

     ProduitsListF:= TProduitsListF.Create(Application) else
                                        begin
                                          ProduitsListF.Show
                                        end;
end;

procedure TMainForm.BRMainFMmnClick(Sender: TObject);
begin
if Not Assigned(BonRecF) then

     BonRecF:= TBonRecF.Create(Application) else
                                        begin
                                          BonRecF.Show
                                        end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  msg: String;
  
begin
//--- this is to check if the values chnages and there is changes in database
  SQLQuery.Active:= False;
  SQLQuery.SQL.Clear;   
  SQLQuery.SQL.Text:= ' SELECT datname, tup_inserted, tup_updated, tup_deleted '
  +' FROM pg_stat_database WHERE datname = ' +QuotedStr(GstockdcConnection.Params.Database);
  SQLQuery.Active:= True;

  CountInsertCheck:= SQLQuery.FieldByName('tup_inserted').AsInteger;
  CountUpdateCheck:= SQLQuery.FieldByName('tup_updated').AsInteger;
  CountDeleteCheck:= SQLQuery.FieldByName('tup_deleted').AsInteger;

  SQLQuery.SQL.Clear;    
  SQLQuery.Active:= False;



  if (CountInsertCheck <> CountInsert) 
  OR (CountUpdateCheck <> CountUpdate)
  OR (CountDeleteCheck <> CountDelete) then
  
 begin
  GrayForms;
  msg:='Vous n''avez pas sauvé. Voulez-vous vraiment fermer?';

  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrCancel then
   begin CanClose := false; NormalForms end
    else
    begin
      CanClose := True;
    end;
 end;
 
end;

procedure TMainForm.FormCreate(Sender: TObject);
var sCmd: string;
Ini: TIniFile;
begin
//  MainForm.FDPhysPgDriverLink1.VendorLib:= 'C:\Program Files (x86)\PostgreSQL\9.6\bin\libpq.dll' ; // Eable this is only for Debuggin
     FDPhysPgDriverLink1.VendorLib:= GetCurrentDir+'\bin\libpq.dll' ;    // Eable this is only for releasing

  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
  FormatSettings.ShortDateFormat:= 'dd/mm/yyyy';
  FormatSettings.CurrencyString:= '';
  FormatSettings.CurrencyFormat:= 1;


  
Screen.MenuFont.Height := 15;
Screen.MenuFont.Color:= $0040332D ;





  Width:= Screen.Width;
  Height:= Screen.Height - 50;

//  Label2.Caption:=#174;


    MainForm.Visible:=False;
//    Application.CreateForm(TLogoSplashF, LogoSplashF);
    LogoSplashF := TLogoSplashF.Create(Application);
    LogoSplashF.Show;


end;

procedure TMainForm.ProduitTableCalcFields(DataSet: TDataSet);
//var FamP : string;
begin

 ProduitTable.FieldValues['PrixATTC']:=
 (((ProduitTable.FieldValues['prixht_p'] * ProduitTable.FieldValues['tva_p'])/100) + (ProduitTable.FieldValues['prixht_p'])) ;

 ProduitTable.FieldValues['PrixVTTCD']:=
 (((ProduitTable.FieldValues['prixvd_p'] * ProduitTable.FieldValues['tva_p'])/100) + (ProduitTable.FieldValues['prixvd_p'])) ;

 ProduitTable.FieldValues['PrixVTTCR']:=
 (((ProduitTable.FieldValues['prixvr_p'] * ProduitTable.FieldValues['tva_p'])/100) + (ProduitTable.FieldValues['prixvr_p'])) ;

 ProduitTable.FieldValues['PrixVTTCG']:=
 (((ProduitTable.FieldValues['prixvg_p'] * ProduitTable.FieldValues['tva_p'])/100) + (ProduitTable.FieldValues['prixvg_p'])) ;

 ProduitTable.FieldValues['PrixVTTCA']:=
 (((ProduitTable.FieldValues['prixva_p'] * ProduitTable.FieldValues['tva_p'])/100) + (ProduitTable.FieldValues['prixva_p'])) ;

  ProduitTable.FieldValues['PrixVTTCA2']:=
 (((ProduitTable.FieldValues['prixva2_p'] * ProduitTable.FieldValues['tva_p'])/100) + (ProduitTable.FieldValues['prixva2_p'])) ;

    ProduitTable.FieldValues['QutDispo']:=
 (ProduitTable.FieldValues['qut_p'] + ProduitTable.FieldValues['qutini_p']);


     ProduitTable.FieldValues['ValueStock']:=
 (ProduitTable.FieldValues['QutDispo'] * ProduitTable.FieldValues['prixht_p']);


end;

procedure TMainForm.Q1Click(Sender: TObject);
begin
Close;
end;

procedure TMainForm.Bona_recPlistTableCalcFields(DataSet: TDataSet);
begin
  Bona_recPlistTable.FieldValues['PrixATTC']:=
 (((Bona_recPlistTable.FieldValues['prixht_p'] * Bona_recPlistTable.FieldValues['tva_p'])/100) + (Bona_recPlistTable.FieldValues['prixht_p'])) ;

   Bona_recPlistTable.FieldValues['MontantHT']:=
 ((Bona_recPlistTable.FieldValues['prixht_p'] * Bona_recPlistTable.FieldValues['qut_p']) * (Bona_recPlistTable.FieldValues['cond_p']) ) ;


   Bona_recPlistTable.FieldValues['MontantTTC']:=
 ((Bona_recPlistTable.FieldValues['PrixATTC'] * Bona_recPlistTable.FieldValues['qut_p']) * (Bona_recPlistTable.FieldValues['cond_p']) ) ;

    Bona_recPlistTable.FieldValues['MontantTVA']:=
 ((Bona_recPlistTable.FieldValues['MontantTTC']) - (Bona_recPlistTable.FieldValues['MontantHT'])) ;


 if  Bona_recPlistTable.FieldValues['prixvd_p'] <> 0 then
 begin
  if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_recPlistTable.FieldValues['MargeD']:=
((((Bona_recPlistTable.FieldValues['prixvd_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
      Bona_recPlistTable.FieldValues['MargeD']:= 100; 
     end;
 end;

  if  Bona_recPlistTable.FieldValues['prixvr_p'] <> 0 then
 begin
   if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then  begin
      Bona_recPlistTable.FieldValues['MargeR']:=
((((Bona_recPlistTable.FieldValues['prixvr_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
 end  else
      begin
        Bona_recPlistTable.FieldValues['MargeR']:= 100;
      end;
 end;
   if  Bona_recPlistTable.FieldValues['prixvg_p'] <> 0 then
 begin
    if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_recPlistTable.FieldValues['MargeG']:=
((((Bona_recPlistTable.FieldValues['prixvg_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
         Bona_recPlistTable.FieldValues['MargeG']:= 100;
     end;
 end;
   if  Bona_recPlistTable.FieldValues['prixva_p'] <> 0 then
 begin
    if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_recPlistTable.FieldValues['MargeA']:=
((((Bona_recPlistTable.FieldValues['prixva_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
       Bona_recPlistTable.FieldValues['MargeA']:= 100;
     end;
 end;
   if  Bona_recPlistTable.FieldValues['prixva2_p'] <> 0 then
 begin
    if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_recPlistTable.FieldValues['MargeA2']:=
((((Bona_recPlistTable.FieldValues['prixva2_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
       Bona_recPlistTable.FieldValues['MargeA2']:= 100;
     end;
 end;

end;

procedure TMainForm.Bona_recTableCalcFields(DataSet: TDataSet);
begin
 Bona_recTable.FieldValues['MontantTVA']:=
((Bona_recTable.FieldValues['montttc_barec']) - ((Bona_recTable.FieldValues['montht_barec'])-(Bona_recTable.FieldValues['remise_barec']))) ;

  Bona_recTable.FieldValues['MontantRes']:=
((Bona_recTable.FieldValues['montttc_barec']) - (Bona_recTable.FieldValues['montver_barec'])) ;

  if ((Bona_recTable.FieldByName('remise_barec').AsCurrency) <> 0 ) AND  ((Bona_recTable.FieldByName('montht_barec').AsCurrency) <> 0) then
  begin
    Bona_recTable.FieldValues['RemisePerc']:=
    ((Bona_recTable.FieldValues['remise_barec'] / Bona_recTable.FieldValues['montht_barec']) * 100) ;
  end else
      begin

         Bona_recTable.FieldValues['RemisePerc']:=0;
      end;


           Bona_recTable.FieldValues['NeTHT']:=
    ((Bona_recTable.FieldValues['montht_barec']) - (Bona_recTable.FieldValues['remise_barec'])) ;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
DropDatabaseFDScript.ExecuteAll;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
   try
  SQLQuery.Active:= False;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.add('SELECT truncate_tables(''postgres'')');
  SQLQuery.Active:= True;
  finally
  SQLQuery.Active:= False;
  SQLQuery.SQL.Clear;
  end;
end;



procedure TMainForm.Button3Click(Sender: TObject);
begin
//B3Click(Sender);
end;
procedure TMainForm.Bona_recPlistTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle: Currency;
  begin

          if Assigned(BonRecGestionF) then
       begin


      MainForm.Bona_recPlistTable.DisableControls;
      MainForm.Bona_recPlistTable.First;

      while not MainForm.Bona_recPlistTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bona_recPlistTable.FieldValues['MontantHT'] );
        TotalTVA:= TotalTVA + MainForm.Bona_recPlistTable.FieldValues['MontantTVA'];
        TotalTTC:= TotalTTC + MainForm.Bona_recPlistTable.FieldValues['MontantTTC'];
        TVA:=TVA + MainForm.Bona_recPlistTable.FieldValues['tva_p'] ;
        LeReste:= TotalTTC - StrToCurr(StringReplace(BonRecGestionF.BonRecRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
        MainForm.Bona_recPlistTable.Next;
      end;
         MainForm.Bona_recPlistTable.Active:=false;
         MainForm.Bona_recPlistTable.SQL.Clear;
         MainForm.Bona_recPlistTable.SQL.Text:='Select * FROM bona_rec_list ORDER BY code_barecl ' ;
         MainForm.Bona_recPlistTable.Active:=True;

         MainForm.Bona_recPlistTable.EnableControls;


  MainForm.Bona_recPlistTable.EnableControls;

    BonRecGestionF.BonRecTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonRecGestionF.BonRecTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonRecGestionF.BonRecTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonRecGestionF.BonRecResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonRecGestionF.BonRTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonRecGestionF.BonRTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonRecGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;

    if MainForm.Bona_recTable.FieldValues['montver_barec']<> Null then
    begin
    Regle:= MainForm.Bona_recTable.FieldValues['montver_barec'];
    BonRecGestionF.BonRecRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bona_recPlistTable.IsEmpty) then

    if BonRecGestionF.FournisseurBonRecGCbx.Text<>'' then
    begin
    BonRecGestionF.BonRecGFourNEWCredit.Caption:=
    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonRecGestionF.BonRecGFourOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
    end ;

     BonRecGestionF.RemisePerctageBonRecGEdt.Text:='';
//    BonRecGestionF.RemiseBonRecGEdtChange(Self);


       end;


end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
 if GstockdcConnection.Connected = True then

  ShowMessage('connect')
  else
  begin

  ShowMessage('not connected');

  end;

end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
GstockdcConnection.Connected:= True;
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
//  with GstockdcConnection do
  GstockdcConnection.DriverName := 'PG';
  GstockdcConnection.Params.Values['Server'] :='localhost'; // your server name'';
  GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC';
  GstockdcConnection.Params.Values['user_name'] := 'postgres';    // adjust to suit
  GstockdcConnection.Params.Values['password'] := ''; // ditto
  GstockdcConnection.Params.Values['Port'] := '5432';
  GstockdcConnection.LoginPrompt := False;
//  GstockdcConnection.Connected := True;
end;

procedure TMainForm.Button7Click(Sender: TObject);
begin

  ProduitTable.Active := True;
  ClientTable.Active := True;
  FournisseurTable.Active := True;
//  FournisseurTablePassif.Active := True;
//  FournisseurTableActif.Active := True;
  Bona_recTable.Active := True;
  Bona_recPlistTable.Active := True;
  Bona_facTable.Active := True;
  Bona_fac_listTable.Active := True;
  Bonv_livTable.Active := True;
  Bonv_liv_listTable.Active := True;
  Bonv_facTable.Active := True;
  Bonv_fac_listTable.Active := True;
  Mode_paiementTable.Active := True;
  CompteTable.Active := True;
  FamproduitTable.Active := True;
  SfamproduitTable.Active := True;
  CodebarresTable.Active := True;
  LocalisationTable.Active := True;
  UniteTable.Active := True;
  WilayasTable.Active := True;
  CommunesTable.Active := True;

end;

procedure TMainForm.Button8Click(Sender: TObject);
begin
  GstockdcConnection.DriverName := 'PG';
  GstockdcConnection.Params.Values['Server'] :='localhost'; // your server name'';
  GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC2';
  GstockdcConnection.Params.Values['user_name'] := 'postgres';    // adjust to suit
  GstockdcConnection.Params.Values['password'] := ''; // ditto
  GstockdcConnection.Params.Values['Port'] := '5432';
  GstockdcConnection.LoginPrompt := False;
end;

procedure TMainForm.Bona_recTableCreditCalcFields(DataSet: TDataSet);
begin
 Bona_recTableCredit.FieldValues['MontantTVA']:=
((Bona_recTableCredit.FieldValues['montttc_barec']) - ((Bona_recTableCredit.FieldValues['montht_barec'])-(Bona_recTableCredit.FieldValues['remise_barec']))) ;

  Bona_recTableCredit.FieldValues['MontantRes']:=
((Bona_recTableCredit.FieldValues['montttc_barec']) - (Bona_recTableCredit.FieldValues['montver_barec'])) ;
end;

procedure TMainForm.Bonp_facTableCalcFields(DataSet: TDataSet);
begin
 Bonp_facTable.FieldValues['MontantTVA']:=
((Bonp_facTable.FieldValues['montttc_bpfac']) - ((Bonp_facTable.FieldValues['montht_bpfac'])-(Bonp_facTable.FieldValues['remise_bpfac']))) - ((Bonp_facTable.FieldValues['timber_bpfac']));

  Bonp_facTable.FieldValues['MontantRes']:=
((Bonp_facTable.FieldValues['montttc_bpfac']) - (Bonp_facTable.FieldValues['montver_bpfac'])) ;

  if ((Bonp_facTable.FieldByName('remise_bpfac').AsCurrency) <> 0 ) AND  ((Bonp_facTable.FieldByName('montht_bpfac').AsCurrency) <> 0) then
  begin
    Bonp_facTable.FieldValues['RemisePerc']:=
    ((Bonp_facTable.FieldValues['remise_bpfac'] / Bonp_facTable.FieldValues['montht_bpfac']) * 100) ;
  end else
      begin

         Bonp_facTable.FieldValues['RemisePerc']:=0;
      end;


      Bonp_facTable.FieldValues['NeTHT']:=
    ((Bonp_facTable.FieldValues['montht_bpfac']) - (Bonp_facTable.FieldValues['remise_bpfac'])) ;

         Bonp_facTable.FieldValues['NetTTC']:=
          ((Bonp_facTable.FieldValues['montttc_bpfac']) - ((Bonp_facTable.FieldValues['timber_bpfac'])) ) ;

end;

procedure TMainForm.Bonp_fac_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFV,TTCafterTimber,Marge: Currency;
  begin
      if Assigned(BonFacPGestionF) then
       begin

      MainForm.Bonp_fac_listTable.DisableControls;
      MainForm.Bonp_fac_listTable.First;

      while not MainForm.Bonp_fac_listTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bonp_fac_listTable.FieldValues['MontantHT'] );
        TotalTVA:= TotalTVA + MainForm.Bonp_fac_listTable.FieldValues['MontantTVA'];
        TotalTTC:= TotalTTC + MainForm.Bonp_fac_listTable.FieldValues['MontantTTC'];
        TVA:=TVA + MainForm.Bonp_fac_listTable.FieldValues['tva_p'] ;
        Marge:=Marge + MainForm.Bonp_fac_listTable.FieldValues['MargeM'] ;
        LeReste:= TotalTTC - StrToCurr(StringReplace(BonFacPGestionF.BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
        MainForm.Bonp_fac_listTable.Next;
      end;
         MainForm.Bonp_fac_listTable.Active:=false;
         MainForm.Bonp_fac_listTable.SQL.Clear;
         MainForm.Bonp_fac_listTable.SQL.Text:='Select * FROM bonp_fac_list ORDER BY code_bpfacl ' ;
         MainForm.Bonp_fac_listTable.Active:=True;

         MainForm.Bonp_fac_listTable.EnableControls;

  MainForm.Bonp_fac_listTable.EnableControls;

    BonFacPGestionF.BonFacVTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonFacPGestionF.BonFacVResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonFacPGestionF.BonFVTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonFacPGestionF.BonFVTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonFacPGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalMargeLbl.Caption :=    CurrToStrF((Marge),ffNumber,2) ;

    if MainForm.Bonp_facTable.FieldValues['montver_bpfac']<> Null then
    begin
    Regle:= MainForm.Bonp_facTable.FieldValues['montver_bpfac'];
    BonFacPGestionF.BonFacVRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonp_fac_listTable.IsEmpty) then

    if BonFacPGestionF.ClientBonFacVGCbx.Text<>'' then
    begin
    BonFacPGestionF.BonFacVGClientNEWCredit.Caption:=
    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonFacPGestionF.BonFacVGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
    end ;

//              if BonFacPGestionF.ModePaieBonFacVGCbx.Text<>'' then
//         begin
//          if BonFacPGestionF.TimberPerctageBonFacVGEdt.Visible = True then
//          begin
//            TTCbeforeTimber:= StrToFloat (StringReplace(BonFacPGestionF.BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
//            TimberFV:= (TTCbeforeTimber/100);
//            if TimberFV < 2500 then
//            begin
//            TTCafterTimber:= (TTCbeforeTimber + TimberFV);
//            BonFacPGestionF.TimberBonFacVGEdt.Text:=  FloatToStrF(TimberFV,ffNumber,14,2);
//            end else
//                begin
//                  BonFacPGestionF.TimberBonFacVGEdt.Text:=  FloatToStrF(2500,ffNumber,14,2);
//                  TTCafterTimber:= (TTCbeforeTimber + 2500);
//                end;
//                BonFacPGestionF.BonFacVTotalTTCLbl.Caption:=  FloatToStrF(TTCafterTimber,ffNumber,14,2);
//          end;
//          end;

        BonFacPGestionF.RemisePerctageBonFacVGEdt.Text:='';

       end;

end;

procedure TMainForm.Bonp_fac_listTableCalcFields(DataSet: TDataSet);
begin

  Bonp_Fac_listTable.FieldValues['PrixVTTC']:=
 (((Bonp_Fac_listTable.FieldValues['prixvd_p'] * Bonp_Fac_listTable.FieldValues['tva_p'])/100) + (Bonp_Fac_listTable.FieldValues['prixvd_p'])) ;

   Bonp_Fac_listTable.FieldValues['MontantHT']:=
 ((Bonp_Fac_listTable.FieldValues['prixvd_p'] * Bonp_Fac_listTable.FieldValues['qut_p']) * (Bonp_Fac_listTable.FieldValues['cond_p']) ) ;


   Bonp_Fac_listTable.FieldValues['MontantTTC']:=
 ((Bonp_Fac_listTable.FieldValues['PrixVTTC'] * Bonp_Fac_listTable.FieldValues['qut_p']) * (Bonp_Fac_listTable.FieldValues['cond_p']) ) ;


    Bonp_Fac_listTable.FieldValues['MontantTVA']:=
 ((Bonp_Fac_listTable.FieldValues['MontantTTC']) - (Bonp_Fac_listTable.FieldValues['MontantHT'])) ;

     Bonp_Fac_listTable.FieldValues['MontantAHT']:=
 ((Bonp_Fac_listTable.FieldValues['prixht_p'] * Bonp_Fac_listTable.FieldValues['qut_p']) * (Bonp_Fac_listTable.FieldValues['cond_p']) ) ;

   if  Bonp_Fac_listTable.FieldValues['prixvd_p'] <> 0 then
 begin
 if  Bonp_Fac_listTable.FieldValues['MontantAHT'] <> 0 then begin
     Bonp_Fac_listTable.FieldValues['Marge']:=
((((Bonp_Fac_listTable.FieldValues['MontantHT']) - (Bonp_Fac_listTable.FieldValues['MontantAHT'])) / (Bonp_Fac_listTable.FieldValues['MontantAHT']) ) * 100) ;
 end else
     begin
        Bonp_Fac_listTable.FieldValues['Marge']:= 100;
     end;
 end;

    Bonp_Fac_listTable.FieldValues['MargeM']:=
 ((Bonp_Fac_listTable.FieldValues['MontantHT']) - (Bonp_Fac_listTable.FieldValues['MontantAHT'])) ;
end;

procedure TMainForm.BLMainFMmnClick(Sender: TObject);
begin
if Not Assigned(BonLivF) then

     BonLivF:= TBonLivF.Create(Application) else
                                        begin
                                          BonLivF.Show
                                        end;
end;

procedure TMainForm.Button9Click(Sender: TObject);
begin
//B5Click(Sender);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
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

 end;

procedure TMainForm.Bonv_livTableCalcFields(DataSet: TDataSet);
begin
 Bonv_livTable.FieldValues['MontantTVA']:=
((Bonv_livTable.FieldValues['montttc_bvliv']) - ((Bonv_livTable.FieldValues['montht_bvliv'])-(Bonv_livTable.FieldValues['remise_bvliv']))) ;

  Bonv_livTable.FieldValues['MontantRes']:=
((Bonv_livTable.FieldValues['montttc_bvliv']) - (Bonv_livTable.FieldValues['montver_bvliv'])) ;

  if ((Bonv_livTable.FieldByName('remise_bvliv').AsCurrency) <> 0 ) AND  ((Bonv_livTable.FieldByName('montht_bvliv').AsCurrency) <> 0) then
  begin
    Bonv_livTable.FieldValues['RemisePerc']:=
    ((Bonv_livTable.FieldValues['remise_bvliv'] / Bonv_livTable.FieldValues['montht_bvliv']) * 100) ;
  end else
      begin

         Bonv_livTable.FieldValues['RemisePerc']:=0;
      end;

     Bonv_livTable.FieldValues['NeTHT']:=
    ((Bonv_livTable.FieldValues['montht_bvliv']) - (Bonv_livTable.FieldValues['remise_bvliv'])) ;

end;

procedure TMainForm.Bonv_liv_listTableCalcFields(DataSet: TDataSet);
begin
  Bonv_liv_listTable.FieldValues['PrixVTTC']:=
 (((Bonv_liv_listTable.FieldValues['prixvd_p'] * Bonv_liv_listTable.FieldValues['tva_p'])/100) + (Bonv_liv_listTable.FieldValues['prixvd_p'])) ;

   Bonv_liv_listTable.FieldValues['MontantHT']:=
 ((Bonv_liv_listTable.FieldValues['prixvd_p'] * Bonv_liv_listTable.FieldValues['qut_p']) * (Bonv_liv_listTable.FieldValues['cond_p']) ) ;


   Bonv_liv_listTable.FieldValues['MontantTTC']:=
 ((Bonv_liv_listTable.FieldValues['PrixVTTC'] * Bonv_liv_listTable.FieldValues['qut_p']) * (Bonv_liv_listTable.FieldValues['cond_p']) ) ;


    Bonv_liv_listTable.FieldValues['MontantTVA']:=
 ((Bonv_liv_listTable.FieldValues['MontantTTC']) - (Bonv_liv_listTable.FieldValues['MontantHT'])) ;


    Bonv_liv_listTable.FieldValues['MontantAHT']:=
 ((Bonv_liv_listTable.FieldValues['prixht_p'] * Bonv_liv_listTable.FieldValues['qut_p']) * (Bonv_liv_listTable.FieldValues['cond_p']) ) ;

  if  Bonv_liv_listTable.FieldValues['prixvd_p'] <> 0 then
 begin
    if  Bonv_liv_listTable.FieldValues['MontantAHT'] <> 0 then begin
     Bonv_liv_listTable.FieldValues['Marge']:=
((((Bonv_liv_listTable.FieldValues['MontantHT']) - (Bonv_liv_listTable.FieldValues['MontantAHT'])) / (Bonv_liv_listTable.FieldValues['MontantAHT']) ) * 100) ;
    end else
        begin
          Bonv_liv_listTable.FieldValues['Marge']:=100;
        end;
  end;
    Bonv_liv_listTable.FieldValues['MargeM']:=
 ((Bonv_liv_listTable.FieldValues['MontantHT']) - (Bonv_liv_listTable.FieldValues['MontantAHT'])) ;



end;

procedure TMainForm.Bonv_liv_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,Marge: Currency;
  begin
       if Assigned(BonLivGestionF) then
       begin

      MainForm.Bonv_liv_listTable.DisableControls;
      MainForm.Bonv_liv_listTable.First;

      while not MainForm.Bonv_liv_listTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bonv_liv_listTable.FieldByName('MontantHT').AsCurrency );
        TotalTVA:= TotalTVA + MainForm.Bonv_liv_listTable.FieldByName('MontantTVA').AsCurrency;
        TotalTTC:= TotalTTC + MainForm.Bonv_liv_listTable.FieldByName('MontantTTC').AsCurrency;
        TVA:=TVA + MainForm.Bonv_liv_listTable.FieldByName('tva_p').AsInteger;
        Marge:=Marge + MainForm.Bonv_liv_listTable.FieldByName('MargeM').AsCurrency ;
        LeReste:= TotalTTC - StrToCurr(StringReplace(BonLivGestionF.BonLivRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
        MainForm.Bonv_liv_listTable.Next;
      end;
         MainForm.Bonv_liv_listTable.Active:=false;
         MainForm.Bonv_liv_listTable.SQL.Clear;
         MainForm.Bonv_liv_listTable.SQL.Text:='Select * FROM bonv_liv_list ORDER BY code_bvlivl ' ;
         MainForm.Bonv_liv_listTable.Active:=True;

         MainForm.Bonv_liv_listTable.EnableControls;


  MainForm.Bonv_liv_listTable.EnableControls;

    BonLivGestionF.BonLivTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonLivGestionF.BonLivTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonLivGestionF.BonLivTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonLivGestionF.BonLivResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonLivGestionF.BonLTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonLivGestionF.BonLTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonLivGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonLivGestionF.BonLivTotalMargeLbl.Caption := CurrToStrF(((Marge)),ffNumber,2) ;

    if MainForm.Bonv_livTable.FieldByName('montver_bvliv').AsCurrency<> Null then
    begin
    Regle:= MainForm.Bonv_livTable.FieldByName('montver_bvliv').AsCurrency;
    BonLivGestionF.BonLivRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_liv_listTable.IsEmpty) then

    if BonLivGestionF.ClientBonLivGCbx.Text<>'' then
    begin
    BonLivGestionF.BonLivGClientNEWCredit.Caption:=
    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonLivGestionF.BonLivGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
    end ;

     BonLivGestionF.RemisePerctageBonLivGEdt.Text:='';

       end;
end;

procedure TMainForm.Bonv_livTableCreditCalcFields(DataSet: TDataSet);
begin
 Bonv_livTableCredit.FieldValues['MontantTVA']:=
((Bonv_livTableCredit.FieldValues['montttc_bvliv']) - ((Bonv_livTableCredit.FieldValues['montht_bvliv'])-(Bonv_livTableCredit.FieldValues['remise_bvliv']))) ;

  Bonv_livTableCredit.FieldValues['MontantRes']:=
((Bonv_livTableCredit.FieldValues['montttc_bvliv']) - (Bonv_livTableCredit.FieldValues['montver_bvliv'])) ;
end;

procedure TMainForm.Bonv_facTableCalcFields(DataSet: TDataSet);
begin
 Bonv_facTable.FieldValues['MontantTVA']:=
((Bonv_facTable.FieldValues['montttc_bvfac']) - ((Bonv_facTable.FieldValues['montht_bvfac'])-(Bonv_facTable.FieldValues['remise_bvfac']))) - ((Bonv_facTable.FieldValues['timber_bvfac'])) ;

  Bonv_facTable.FieldValues['MontantRes']:=
((Bonv_facTable.FieldValues['montttc_bvfac']) - (Bonv_facTable.FieldValues['montver_bvfac'])) ;

  if ((Bonv_facTable.FieldByName('remise_bvfac').AsCurrency) <> 0 ) AND  ((Bonv_facTable.FieldByName('montht_bvfac').AsCurrency) <> 0) then
  begin
    Bonv_facTable.FieldValues['RemisePerc']:=
    ((Bonv_facTable.FieldValues['remise_bvfac'] / Bonv_facTable.FieldValues['montht_bvfac']) * 100) ;
  end else
      begin

         Bonv_facTable.FieldValues['RemisePerc']:=0;
      end;


      Bonv_facTable.FieldValues['NeTHT']:=
    ((Bonv_facTable.FieldValues['montht_bvfac']) - (Bonv_facTable.FieldValues['remise_bvfac'])) ;

         Bonv_facTable.FieldValues['NetTTC']:=
    ((Bonv_facTable.FieldValues['montttc_bvfac']) - (Bonv_facTable.FieldValues['timber_bvfac'])) ;


end;

procedure TMainForm.Bonv_fac_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFV,TTCafterTimber,Marge: Currency;
  begin
      if Assigned(BonFacVGestionF) then
       begin

      MainForm.Bonv_fac_listTable.DisableControls;
      MainForm.Bonv_fac_listTable.First;

      while not MainForm.Bonv_fac_listTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bonv_fac_listTable.FieldValues['MontantHT'] );
        TotalTVA:= TotalTVA + MainForm.Bonv_fac_listTable.FieldValues['MontantTVA'];
        TotalTTC:= TotalTTC + MainForm.Bonv_fac_listTable.FieldValues['MontantTTC'];
        TVA:=TVA + MainForm.Bonv_fac_listTable.FieldValues['tva_p'] ;
        Marge:=Marge + MainForm.Bonv_fac_listTable.FieldValues['MargeM'] ;
        LeReste:= TotalTTC - StrToCurr(StringReplace(BonFacVGestionF.BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
        MainForm.Bonv_fac_listTable.Next;
      end;
         MainForm.Bonv_fac_listTable.Active:=false;
         MainForm.Bonv_fac_listTable.SQL.Clear;
         MainForm.Bonv_fac_listTable.SQL.Text:='Select * FROM bonv_fac_list ORDER BY code_bvfacl ' ;
         MainForm.Bonv_fac_listTable.Active:=True;

         MainForm.Bonv_fac_listTable.EnableControls;

  MainForm.Bonv_fac_listTable.EnableControls;

    BonFacVGestionF.BonFacVTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonFacVGestionF.BonFacVResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonFacVGestionF.BonFVTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonFacVGestionF.BonFVTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonFacVGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalMargeLbl.Caption :=    CurrToStrF((Marge),ffNumber,2) ;

    if MainForm.Bonv_facTable.FieldValues['montver_bvfac']<> Null then
    begin
    Regle:= MainForm.Bonv_facTable.FieldValues['montver_bvfac'];
    BonFacVGestionF.BonFacVRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_fac_listTable.IsEmpty) then

    if BonFacVGestionF.ClientBonFacVGCbx.Text<>'' then
    begin
    BonFacVGestionF.BonFacVGClientNEWCredit.Caption:=
    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonFacVGestionF.BonFacVGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
    end ;

              if BonFacVGestionF.ModePaieBonFacVGCbx.Text<>'' then
         begin
          if BonFacVGestionF.TimberPerctageBonFacVGEdt.Visible = True then
          begin
            TTCbeforeTimber:= StrToFloat (StringReplace(BonFacVGestionF.BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
            TimberFV:= (TTCbeforeTimber/100);
            if TimberFV < 2500 then
            begin
            TTCafterTimber:= (TTCbeforeTimber + TimberFV);
            BonFacVGestionF.TimberBonFacVGEdt.Text:=  FloatToStrF(TimberFV,ffNumber,14,2);
            end else
                begin
                  BonFacVGestionF.TimberBonFacVGEdt.Text:=  FloatToStrF(2500,ffNumber,14,2);
                  TTCafterTimber:= (TTCbeforeTimber + 2500);
                end;
                BonFacVGestionF.BonFacVTotalTTCLbl.Caption:=  FloatToStrF(TTCafterTimber,ffNumber,14,2);
          end;
          end;

        BonFacVGestionF.RemisePerctageBonFacVGEdt.Text:='';

       end;
end;

procedure TMainForm.Bonv_fac_listTableCalcFields(DataSet: TDataSet);

begin

  Bonv_Fac_listTable.FieldValues['PrixVTTC']:=
 (((Bonv_Fac_listTable.FieldValues['prixvd_p'] * Bonv_Fac_listTable.FieldValues['tva_p'])/100) + (Bonv_Fac_listTable.FieldValues['prixvd_p'])) ;

   Bonv_Fac_listTable.FieldValues['MontantHT']:=
 ((Bonv_Fac_listTable.FieldValues['prixvd_p'] * Bonv_Fac_listTable.FieldValues['qut_p']) * (Bonv_Fac_listTable.FieldValues['cond_p']) ) ;


   Bonv_Fac_listTable.FieldValues['MontantTTC']:=
 ((Bonv_Fac_listTable.FieldValues['PrixVTTC'] * Bonv_Fac_listTable.FieldValues['qut_p']) * (Bonv_Fac_listTable.FieldValues['cond_p']) ) ;


    Bonv_Fac_listTable.FieldValues['MontantTVA']:=
 ((Bonv_Fac_listTable.FieldValues['MontantTTC']) - (Bonv_Fac_listTable.FieldValues['MontantHT'])) ;

     Bonv_Fac_listTable.FieldValues['MontantAHT']:=
 ((Bonv_Fac_listTable.FieldValues['prixht_p'] * Bonv_Fac_listTable.FieldValues['qut_p']) * (Bonv_Fac_listTable.FieldValues['cond_p']) ) ;

   if  Bonv_Fac_listTable.FieldValues['prixvd_p'] <> 0 then
 begin
 if  Bonv_Fac_listTable.FieldValues['MontantAHT'] <> 0 then begin
     Bonv_Fac_listTable.FieldValues['Marge']:=
((((Bonv_Fac_listTable.FieldValues['MontantHT']) - (Bonv_Fac_listTable.FieldValues['MontantAHT'])) / (Bonv_Fac_listTable.FieldValues['MontantAHT']) ) * 100) ;
 end else
     begin
        Bonv_Fac_listTable.FieldValues['Marge']:= 100;
     end;
 end;

    Bonv_Fac_listTable.FieldValues['MargeM']:=
 ((Bonv_Fac_listTable.FieldValues['MontantHT']) - (Bonv_Fac_listTable.FieldValues['MontantAHT'])) ;
end;

procedure TMainForm.Bonv_facTableCreditCalcFields(DataSet: TDataSet);
begin
 Bonv_FacTableCredit.FieldValues['MontantTVA']:=
((Bonv_FacTableCredit.FieldValues['montttc_bvfac']) - ((Bonv_FacTableCredit.FieldValues['montht_bvfac'])-(Bonv_FacTableCredit.FieldValues['remise_bvfac']))) ;

  Bonv_FacTableCredit.FieldValues['MontantRes']:=
((Bonv_FacTableCredit.FieldValues['montttc_bvfac']) - (Bonv_FacTableCredit.FieldValues['montver_bvfac'])) ;

end;

procedure TMainForm.FactureV2MainFMnmClick(Sender: TObject);
begin

if Not Assigned(BonFacVF) then

     BonFacVF:= TBonFacVF.Create(Application) else
                                        begin
                                          BonFacVF.Show
                                        end;
end;

procedure TMainForm.Button10Click(Sender: TObject);
begin
//F7Click(Sender);
end;

procedure TMainForm.Button11Click(Sender: TObject);
begin
if  ProduitsListF = nil then
  begin

   ShowMessage('nill');
  end else
      begin
            ShowMessage('nop');
      end;// Bonv_fac_listTable.Refresh;
end;

procedure TMainForm.Bona_facTableCalcFields(DataSet: TDataSet);
begin
 Bona_facTable.FieldValues['MontantTVA']:=
((Bona_facTable.FieldValues['montttc_bafac']) - ((Bona_facTable.FieldValues['montht_bafac'])-(Bona_facTable.FieldValues['remise_bafac']))) - ((Bona_facTable.FieldValues['timber_bafac'])) ;

  Bona_facTable.FieldValues['MontantRes']:=
((Bona_facTable.FieldValues['montttc_bafac']) - (Bona_facTable.FieldValues['montver_bafac'])) ;

 if ((Bona_facTable.FieldByName('remise_bafac').AsCurrency) <> 0 ) AND  ((Bona_facTable.FieldByName('montht_bafac').AsCurrency) <> 0) then
  begin
    Bona_facTable.FieldValues['RemisePerc']:=
    ((Bona_facTable.FieldValues['remise_bafac'] / Bona_facTable.FieldValues['montht_bafac']) * 100) ;
  end else
      begin

         Bona_facTable.FieldValues['RemisePerc']:=0;
      end;

     Bona_facTable.FieldValues['NeTHT']:=
    ((Bona_facTable.FieldValues['montht_bafac']) - (Bona_facTable.FieldValues['remise_bafac'])) ;

         Bona_facTable.FieldValues['NetTTC']:=
    ((Bona_facTable.FieldValues['montttc_bafac']) - (Bona_facTable.FieldValues['timber_bafac'])) ;
end;

procedure TMainForm.Bona_fac_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFA,TTCafterTimber: Currency;
  begin
      if Assigned(BonFacAGestionF) then
       begin

      MainForm.Bona_fac_listTable.DisableControls;
      MainForm.Bona_fac_listTable.First;

      while not MainForm.Bona_fac_listTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bona_fac_listTable.FieldValues['MontantHT'] );
        TotalTVA:= TotalTVA + MainForm.Bona_fac_listTable.FieldValues['MontantTVA'];
        TotalTTC:= TotalTTC + MainForm.Bona_fac_listTable.FieldValues['MontantTTC'];
        TVA:=TVA + MainForm.Bona_fac_listTable.FieldValues['tva_p'] ;
        LeReste:= TotalTTC - StrToCurr(StringReplace(BonFacAGestionF.BonFacARegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
        MainForm.Bona_fac_listTable.Next;
      end;
         MainForm.Bona_fac_listTable.Active:=false;
         MainForm.Bona_fac_listTable.SQL.Clear;
         MainForm.Bona_fac_listTable.SQL.Text:='Select * FROM bona_fac_list ORDER BY code_bafacl ' ;
         MainForm.Bona_fac_listTable.Active:=True;

         MainForm.Bona_fac_listTable.EnableControls;

  MainForm.Bona_fac_listTable.EnableControls;

    BonFacAGestionF.BonFacATotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonFacAGestionF.BonFacATotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonFacAGestionF.BonFacATotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonFacAGestionF.BonFacAResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonFacAGestionF.BonFATotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonFacAGestionF.BonFaTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonFacAGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;

    if MainForm.Bona_facTable.FieldValues['montver_bafac']<> Null then
    begin
    Regle:= MainForm.Bona_facTable.FieldValues['montver_bafac'];
    BonFacAGestionF.BonFacARegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bona_fac_listTable.IsEmpty) then

    if BonFacAGestionF.FourBonFacAGCbx.Text<>'' then
    begin
    BonFacAGestionF.BonFacAGFourNEWCredit.Caption:=
    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonFacAGestionF.BonFacAGFourOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
    end ;

              if BonFacAGestionF.ModePaieBonFacAGCbx.Text<>'' then
         begin
          if BonFacAGestionF.TimberPerctageBonFacAGEdt.Visible = True then
          begin
            TTCbeforeTimber:= StrToFloat (StringReplace(BonFacAGestionF.BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
            TimberFA:= (TTCbeforeTimber/100);
            if TimberFA < 2500 then
            begin
            TTCafterTimber:= (TTCbeforeTimber + TimberFA);
            BonFacAGestionF.TimberBonFacAGEdt.Text:=  FloatToStrF(TimberFA,ffNumber,14,2);
            end else
                begin
                  BonFacAGestionF.TimberBonFacAGEdt.Text:=  FloatToStrF(2500,ffNumber,14,2);
                  TTCafterTimber:= (TTCbeforeTimber + 2500);
                end;
                BonFacAGestionF.BonFacATotalTTCLbl.Caption:=  FloatToStrF(TTCafterTimber,ffNumber,14,2);
          end;
          end;

        BonFacAGestionF.RemisePerctageBonFacAGEdt.Text:='';

       end;
end;

procedure TMainForm.Bona_fac_listTableCalcFields(DataSet: TDataSet);
begin
  Bona_fac_listTable.FieldValues['PrixVTTC']:=
 (((Bona_fac_listTable.FieldValues['prixht_p'] * Bona_fac_listTable.FieldValues['tva_p'])/100) + (Bona_fac_listTable.FieldValues['prixht_p'])) ;

   Bona_fac_listTable.FieldValues['MontantHT']:=
 ((Bona_fac_listTable.FieldValues['prixht_p'] * Bona_fac_listTable.FieldValues['qut_p']) * (Bona_fac_listTable.FieldValues['cond_p']) ) ;


   Bona_fac_listTable.FieldValues['MontantTTC']:=
 ((Bona_fac_listTable.FieldValues['PrixVTTC'] * Bona_fac_listTable.FieldValues['qut_p']) * (Bona_fac_listTable.FieldValues['cond_p']) ) ;


    Bona_fac_listTable.FieldValues['MontantTVA']:=
 ((Bona_fac_listTable.FieldValues['MontantTTC']) - (Bona_fac_listTable.FieldValues['MontantHT'])) ;

   if  Bona_fac_listTable.FieldValues['prixvd_p'] <> 0 then
 begin
    if  Bona_fac_listTable.FieldValues['prixht_p'] <> 0 then
 begin
       Bona_fac_listTable.FieldValues['MargeD']:=
((((Bona_fac_listTable.FieldValues['prixvd_p']) - (Bona_fac_listTable.FieldValues['prixht_p'])) / (Bona_fac_listTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
        Bona_fac_listTable.FieldValues['MargeD']:= 100;
     end;
 end;
   if  Bona_fac_listTable.FieldValues['prixvr_p'] <> 0 then
 begin
    if  Bona_fac_listTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_fac_listTable.FieldValues['MargeR']:=
((((Bona_fac_listTable.FieldValues['prixvr_p']) - (Bona_fac_listTable.FieldValues['prixht_p'])) / (Bona_fac_listTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
      Bona_fac_listTable.FieldValues['MargeR']:= 100; 
     end;
 end;
   if  Bona_fac_listTable.FieldValues['prixvg_p'] <> 0 then
 begin
    if  Bona_fac_listTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_fac_listTable.FieldValues['MargeG']:=
((((Bona_fac_listTable.FieldValues['prixvg_p']) - (Bona_fac_listTable.FieldValues['prixht_p'])) / (Bona_fac_listTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
      Bona_fac_listTable.FieldValues['MargeG']:= 100; 
     end;
 end;
   if  Bona_fac_listTable.FieldValues['prixva_p'] <> 0 then
 begin
    if  Bona_fac_listTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_fac_listTable.FieldValues['MargeA']:=
((((Bona_fac_listTable.FieldValues['prixva_p']) - (Bona_fac_listTable.FieldValues['prixht_p'])) / (Bona_fac_listTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
       Bona_fac_listTable.FieldValues['MargeA']:= 100; 
     end;
 end;
   if  Bona_fac_listTable.FieldValues['prixva2_p'] <> 0 then
 begin
    if  Bona_fac_listTable.FieldValues['prixht_p'] <> 0 then
 begin
      Bona_fac_listTable.FieldValues['MargeA2']:=
((((Bona_fac_listTable.FieldValues['prixva2_p']) - (Bona_fac_listTable.FieldValues['prixht_p'])) / (Bona_fac_listTable.FieldValues['prixht_p']) ) * 100) ;
 end else
     begin
       Bona_fac_listTable.FieldValues['MargeA2']:=100;
     end;
 end;



end;

procedure TMainForm.Bona_facTableCreditCalcFields(DataSet: TDataSet);
begin
 Bona_FacTableCredit.FieldValues['MontantTVA']:=
((Bona_FacTableCredit.FieldValues['montttc_bafac']) - ((Bona_FacTableCredit.FieldValues['montht_bafac'])-(Bona_FacTableCredit.FieldValues['remise_bafac']))) ;

  Bona_FacTableCredit.FieldValues['MontantRes']:=
((Bona_FacTableCredit.FieldValues['montttc_bafac']) - (Bona_FacTableCredit.FieldValues['montver_bafac'])) ;
end;

procedure TMainForm.FactureP2MainFMnmClick(Sender: TObject);
begin
if Not Assigned(BonFacPF) then

     BonFacPF:= TBonFacPF.Create(Application) else
                                        begin
                                          BonFacPF.Show
                                        end;
end;

procedure TMainForm.FactureAMainFMnmClick(Sender: TObject);
begin
if Not Assigned(BonFacAF) then

     BonFacAF:= TBonFacAF.Create(Application) else
                                        begin
                                          BonFacAF.Show
                                        end;
end;

procedure TMainForm.Button12Click(Sender: TObject);
begin
//FactureAMainFMnmClick(Sender);
end;

procedure TMainForm.Button13Click(Sender: TObject);
begin
LoginF.Show;
end;

procedure TMainForm.CreatDBClick(Sender: TObject);
begin
//  GstockdcConnection.ExecSQL('CREATE DATABASE "GSTOCKDCDC007" ' 
//  + ' WITH OWNER = postgres '
//  + ' ENCODING = ''UTF8'' ' 
//  + ' TABLESPACE = pg_default '
//  + ' CONNECTION LIMIT = - 1 '
//        );


//    DataModuleF.PSDBConfigConnection.ExecSQL('CREATE TABLE "users" ( '
//   +' "code_ur" int4 NOT NULL, '
//   +' "nom_ur" varchar(40) COLLATE "default", '
//   +' "password_ur" varchar(32) COLLATE "default", '
//   +' "bl_ur" bool, '
//   +' "fcv_ur" bool, '
//   +' "rgc_ur" bool, '
//   +' "br_ur" bool, '
//   +' "fca_ur" bool, '
//   +' "rgf_ur" bool, '
//   +' "caisse_ur" bool, '
//   +' "bank_ur" bool, '
//   +' "client_ur" bool, '
//   +' "four_ur" bool, '
//   +' "type_ur" int2 DEFAULT 0, '
//   +' "ctr_ur" bool, '
//   +' "produit_ur" bool, '
//   +' "famp_ur" bool, '
//   +' "sfamp_ur" bool, '
//   +' "mdpai_ur" bool, '
//   +' "cmpt_ur" bool, '
//   +' "unit_ur" bool, '
//   +' "local_ur" bool ) '
//   +' WITH (OIDS=FALSE); '
//   +' COMMENT ON COLUMN "users"."ctr_ur" IS '' '' ;' 
//
//   );
//
//  if DataModuleF.UsersTable.IsEmpty then
//  begin
//    DataModuleF.PSDBConfigConnection.ExecSQL(' INSERT INTO "public"."users" ("code_ur", "nom_ur",'
//   +' "password_ur", "bl_ur", "fcv_ur", "rgc_ur", "br_ur", "fca_ur", '
//   +' "rgf_ur", "caisse_ur", "bank_ur", "client_ur", "four_ur", "type_ur",'
//   +' "ctr_ur", "produit_ur", "famp_ur", "sfamp_ur", "mdpai_ur", "cmpt_ur",'
//   +' "unit_ur", "local_ur") VALUES '
//   +' (''1'', ''Admin'', ''admin'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t'', '
//   +' ''t'', ''0'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t'', ''t''); '
//    );
//  end;
//     DataModuleF.UsersTable.Active := True;

  
end;

procedure TMainForm.dddClick(Sender: TObject);
begin
ProduitsListF.Close;
end;

procedure TMainForm.WMUserCloseTab(var Message: TMessage);
begin
TTabSheet(Message.WParam).Free;
FreeAndNil(ProduitsListF);
end;

procedure TMainForm.Button14Click(Sender: TObject);
begin
    ProduitTable.Disconnect ;
  ClientTable.Disconnect;
  FournisseurTable.Disconnect ;
  Bona_recTable.Disconnect;
  Bona_recPlistTable.Disconnect ;
  Bona_facTable.Disconnect ;
  Bona_fac_listTable.Disconnect ;
  Bonv_livTable.Disconnect ;
  Bonv_liv_listTable.Disconnect ;
  Bonv_facTable.Disconnect ;
  Bonv_fac_listTable.Disconnect ;
  Mode_paiementTable.Disconnect ;
  CompteTable.Disconnect ;
  FamproduitTable.Disconnect ;
  SfamproduitTable.Disconnect ;
  CodebarresTable.Disconnect ;
  LocalisationTable.Disconnect;
  UniteTable.Disconnect;
  WilayasTable.Disconnect ;
  CommunesTable.Disconnect ;
end;

procedure TMainForm.Button15Click(Sender: TObject);
var    SEInfo: TShellExecuteInfo;
    ExitCode: DWORD;
    ExecuteFile, ParamString, StartInString: string;

 begin
  ExecuteFile:='C:\WINDOWS\system32\cmd.exe';
  FillChar(SEInfo, SizeOf(SEInfo), 0) ;
  SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
  with SEInfo do
   begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;      lpFile := PChar(ExecuteFile) ;
    { ParamString can contain the application parameters. }
     lpParameters := PChar('/C pg_dump -U postgres -W -F t GSTOCKDC > d:\dd') ;
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

  ShowMessage('Calculator terminated') ;
  end
  else
  ShowMessage('Error starting Calc!') ;

end;

procedure TMainForm.Button16Click(Sender: TObject);
begin
//V2Click(Sender)
end;

procedure TMainForm.Bonv_ctrTable2CalcFields(DataSet: TDataSet);
begin
// Bonv_ctrTable.FieldValues['MontantTVA']:=
//((Bonv_ctrTable.FieldValues['montttc_bvctr']) - ((Bonv_ctrTable.FieldValues['montht_bvctr'])-(Bonv_ctrTable.FieldValues['remise_bvctr']))) ;
//
//  Bonv_ctrTable.FieldValues['MontantRen']:=
//((Bonv_ctrTable.FieldValues['montver_bvctr']) - (Bonv_ctrTable.FieldValues['montttc_bvctr'])) ;
//
//  if (Bonv_ctrTable.FieldValues['remise_bvctr']) AND (Bonv_ctrTable.FieldValues['montht_bvctr']) <> 0 then
//  begin
//    Bonv_ctrTable.FieldValues['RemisePerc']:=
//    ((Bonv_ctrTable.FieldValues['remise_bvctr'] / Bonv_ctrTable.FieldValues['montht_bvctr']) * 100) ;
//  end else
//      begin
//                Bonv_ctrTable.FieldValues['RemisePerc']:=0;
//      end;
end;

procedure TMainForm.Bonv_ctrTableCalcFields(DataSet: TDataSet);
begin

 Bonv_ctrTable.FieldValues['MontantTVA']:=
((Bonv_ctrTable.FieldValues['montttc_bvctr']) - ((Bonv_ctrTable.FieldValues['montht_bvctr'])-(Bonv_ctrTable.FieldValues['remise_bvctr']))) ;


// if (Bonv_ctrTable.FieldValues['montver_bvctr']) > (Bonv_ctrTable.FieldValues['montttc_bvctr']) then

 begin
    Bonv_ctrTable.FieldValues['MontantRen']:=
  ((Bonv_ctrTable.FieldValues['montver_bvctr']) - (Bonv_ctrTable.FieldValues['montttc_bvctr'])) ;
 end;// else
//     begin
   //   Bonv_ctrTable.FieldValues['MontantRen']:=0;
   //  end;

  if ((Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency) <> 0 ) AND  ((Bonv_ctrTable.FieldByName('montht_bvctr').AsCurrency) <> 0) then
  begin
    Bonv_ctrTable.FieldValues['RemisePerc']:=
    ((Bonv_ctrTable.FieldValues['remise_bvctr'] / Bonv_ctrTable.FieldValues['montht_bvctr']) * 100) ;
  end else
      begin
                Bonv_ctrTable.FieldValues['RemisePerc']:=0;
      end;


     Bonv_ctrTable.FieldValues['NeTHT']:=
    ((Bonv_ctrTable.FieldValues['montht_bvctr']) - (Bonv_ctrTable.FieldValues['remise_bvctr'])) ;

end;

procedure TMainForm.Bonv_ctr_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeRendu,Regle,Marge: Currency;
  begin
   if Assigned(BonCtrGestionF) then
  begin
      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.First;
      while not MainForm.Bonv_ctr_listTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bonv_ctr_listTable.FieldValues['MontantHT'] );
        TotalTVA:= TotalTVA + MainForm.Bonv_ctr_listTable.FieldValues['MontantTVA'];
        TotalTTC:= TotalTTC + MainForm.Bonv_ctr_listTable.FieldValues['MontantTTC'];
        TVA:=TVA + MainForm.Bonv_ctr_listTable.FieldValues['tva_p'] ;
         Marge:=Marge + MainForm.Bonv_ctr_listTable.FieldValues['MargeM'] ;
        LeRendu:=  (StrToCurr(StringReplace(BonCtrGestionF.BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]))) - TotalTTC  ;
        MainForm.Bonv_ctr_listTable.Next;
      end;
         MainForm.Bonv_ctr_listTable.Active:=false;
         MainForm.Bonv_ctr_listTable.SQL.Clear;
         MainForm.Bonv_ctr_listTable.SQL.Text:='Select * FROM bonv_ctr_list ORDER BY code_bvctrl ' ;
         MainForm.Bonv_ctr_listTable.Active:=True;

         MainForm.Bonv_ctr_listTable.EnableControls;

  MainForm.Bonv_ctr_listTable.EnableControls;

   BonCtrGestionF.BonCtrTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonCtrGestionF.BonCtrTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;

    BonCtrGestionF.BonCtrTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    if LeRendu > 0 then
    begin
      BonCtrGestionF.BonCtrRenduLbl.Caption :=      CurrToStrF((LeRendu),ffNumber,2) ;
    end else
    begin
       BonCtrGestionF.BonCtrRenduLbl.Caption :=     CurrToStrF((0),ffNumber,2) ;
    end;

   BonCtrGestionF.BonCTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
   BonCtrGestionF.BonCTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
   BonCtrGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
   BonCtrGestionF.BonCTRTotalMargeLbl.Caption :=  CurrToStrF(((Marge)),ffNumber,2) ;

    if MainForm.Bonv_ctrTable.FieldValues['montver_bvctr']<> Null then
    begin
    Regle:= MainForm.Bonv_ctrTable.FieldValues['montver_bvctr'];
    BonCtrGestionF.BonCtrRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_ctr_listTable.IsEmpty) then

//    if BonCtrGestionF.ClientBonCtrGCbx.Text<>'' then
//    begin
//    BonCtrGestionF.BonCtrGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonCtrGestionF.BonCtrGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

     BonCtrGestionF.RemisePerctageBonCtrGEdt.Text:='';

       end;
end;

procedure TMainForm.Bonv_ctr_listTableCalcFields(DataSet: TDataSet);
begin
  Bonv_ctr_listTable.FieldValues['PrixVTTC']:=
 (((Bonv_ctr_listTable.FieldValues['prixvd_p'] * Bonv_ctr_listTable.FieldValues['tva_p'])/100) + (Bonv_ctr_listTable.FieldValues['prixvd_p'])) ;

   Bonv_ctr_listTable.FieldValues['MontantHT']:=
 ((Bonv_ctr_listTable.FieldValues['prixvd_p'] * Bonv_ctr_listTable.FieldValues['qut_p']) * (Bonv_ctr_listTable.FieldValues['cond_p']) ) ;

   Bonv_ctr_listTable.FieldValues['MontantTTC']:=
 ((Bonv_ctr_listTable.FieldValues['PrixVTTC'] * Bonv_ctr_listTable.FieldValues['qut_p']) * (Bonv_ctr_listTable.FieldValues['cond_p']) ) ;

    Bonv_ctr_listTable.FieldValues['MontantTVA']:=
 ((Bonv_ctr_listTable.FieldValues['MontantTTC']) - (Bonv_ctr_listTable.FieldValues['MontantHT'])) ;

      Bonv_ctr_listTable.FieldValues['MontantAHT']:=
 ((Bonv_ctr_listTable.FieldValues['prixht_p'] * Bonv_ctr_listTable.FieldValues['qut_p']) * (Bonv_ctr_listTable.FieldValues['cond_p']) ) ;

    if  Bonv_ctr_listTable.FieldValues['prixvd_p'] <> 0 then
 begin
 if  Bonv_ctr_listTable.FieldValues['MontantAHT'] <> 0 then  begin
     Bonv_ctr_listTable.FieldValues['Marge']:=
((((Bonv_ctr_listTable.FieldValues['MontantHT']) - (Bonv_ctr_listTable.FieldValues['MontantAHT'])) / (Bonv_ctr_listTable.FieldValues['MontantAHT']) ) * 100) ;
 end else
     begin
      Bonv_ctr_listTable.FieldValues['Marge']:= 100; 
     end;
 end;

    Bonv_ctr_listTable.FieldValues['MargeM']:=
 ((Bonv_ctr_listTable.FieldValues['MontantHT']) - (Bonv_ctr_listTable.FieldValues['MontantAHT'])) ;
end;


function NonWhiteSpaceCharacterCount(const str: string): Integer;
var
  c: Char;
begin
  Result := 0;
  for c in str do
    if not Character.IsWhiteSpace(c) then
      inc(Result);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
{
 Here put regstation form 
 }         
 begin
  
   GstockdcConnection.DriverName := 'PG';
   GstockdcConnection.Params.Values['Server'] :='localhost';
   GstockdcConnection.Params.Values['user_name'] := 'postgres';
   GstockdcConnection.Params.Values['password'] := ''; // ditto
   GstockdcConnection.Params.Values['Port'] := '5432';
   GstockdcConnection.LoginPrompt := False;

   GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC';
   GstockdcConnection.Connected:= True;


   
  //----this is to check if the tables is exsit or not if not creat them ----- 
   SQLQuery.Active:= False;
   SQLQuery.SQL.Clear;
   SQLQuery.SQL.Text:= 'SELECT COUNT(*) as ntable from information_schema.tables WHERE table_schema = ''public''' ;
   SQLQuery.Active:= True;
  
     if SQLQuery.FieldByName('ntable').AsInteger <> 26 then
     begin
     
      CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
      InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing
      
     end;
     SQLQuery.SQL.Clear;
     SQLQuery.Active:= False;
      
  
    ActiveTables;  



  end;


//-----this is the set the value of transactions at first start----
  SQLQuery.Active:= False;
  SQLQuery.SQL.Clear;   
  SQLQuery.SQL.Text:= ' SELECT datname, tup_inserted, tup_updated, tup_deleted '
  +' FROM pg_stat_database WHERE datname = ' +QuotedStr(GstockdcConnection.Params.Database);
  SQLQuery.Active:= True;

  CountInsert:= SQLQuery.FieldByName('tup_inserted').AsInteger;
  CountUpdate:= SQLQuery.FieldByName('tup_updated').AsInteger;
  CountDelete:= SQLQuery.FieldByName('tup_deleted').AsInteger;

  SQLQuery.SQL.Clear;    
  SQLQuery.Active:= False;


  
  
    if UserTypeLbl.Caption <> '0' then
      begin

       OptionMainFMnm.Visible:= False;
       UsersGMainFMnm.Visible:= False;

       BoardMainFBtn.Enabled:= False;
       BoardMainFBtn.ImageIndex:= 12;

       if NOT (bl_ur.Checked) AND NOT (fcv_ur.Checked)  AND NOT (rgc_ur.Checked) AND NOT (ctr_ur.Checked) Then
       begin
          VenteMainFMnm.Visible:= False;

          BLMainFBtn.Enabled:= False;
          BLMainFBtn.ImageIndex:= 16;
          HomeF.BLFaceBtn.Enabled:= False;

          FactureVMainFMnm.Visible:= False;
          HomeF.FCVFaceBtn.Enabled:= False;

          ComptoirMainFBtn.Enabled:= False;
          ComptoirMainFBtn.ImageIndex:= 17;
          HomeF.CTRFaceBtn.Enabled:= False;

       end else
           begin

             if bl_ur.Checked  then
             begin
              BLMainFBtn.Enabled:= True;
              BLMainFBtn.ImageIndex:= 4;
              BLMainFMmn.Visible:= True;
              HomeF.BLFaceBtn.Enabled:= True;
             end else
                 begin
                  BLMainFBtn.Enabled:= False;
                  BLMainFBtn.ImageIndex:= 16;
                  BLMainFMmn.Visible:= False;
                  HomeF.BLFaceBtn.Enabled:= False;
                 end;

             if fcv_ur.Checked then
             begin
              FactureVMainFMnm.Visible:= True;
              FactureV2MainFMnm.Visible:= True;
              HomeF.FCVFaceBtn.Enabled:= True;
             end else
                 begin
                 FactureVMainFMnm.Visible:= False;
                 FactureV2MainFMnm.Visible:= False;
                 HomeF.FCVFaceBtn.Enabled:= False;
                 end;

               if rgc_ur.Checked  then
               begin
                RGClientMainFMnm.Visible:= True;
               end else
                   begin
                    RGClientMainFMnm.Visible:= False;
                   end;

             if ctr_ur.Checked  then
             begin
              ComptoirMainFBtn.Enabled:= True;
              ComptoirMainFBtn.ImageIndex:= 5;
              CtrMainFMmn.Visible:= True;
              HomeF.CTRFaceBtn.Enabled:= True;
             end else
                 begin
                  ComptoirMainFBtn.Enabled:= False;
                  ComptoirMainFBtn.ImageIndex:= 17;
                  CtrMainFMmn.Visible:= False;
                  HomeF.CTRFaceBtn.Enabled:= False;
                 end;
           end;
          if NOT (br_ur.Checked) AND NOT (fca_ur.Checked)  AND NOT (rgf_ur.Checked)  Then
          begin
           AchatsMainFMnm.Visible:= False;
           
           BRMainFBtn.Enabled:= False;
           BRMainFBtn.ImageIndex:= 15;
           HomeF.BRFaceBtn.Enabled:= False;

           HomeF.FCAFaceBtn.Enabled:= False;

          end else
              begin
                 if br_ur.Checked  then
                 begin
                   BRMainFMmn.Visible:= True;
                   BRMainFBtn.Enabled:= True;
                   BRMainFBtn.ImageIndex:= 3;
                   HomeF.BRFaceBtn.Enabled:= True;
                 end else
                     begin
                       BRMainFMmn.Visible:= False;
                       BRMainFBtn.Enabled:= False;
                       BRMainFBtn.ImageIndex:= 15;
                       HomeF.BRFaceBtn.Enabled:= False;
                     end;
                 if fca_ur.Checked  then
                 begin
                  FactureAMainFMnm.Visible:= True;
                  HomeF.FCAFaceBtn.Enabled:= True;
                 end else
                     begin
                        FactureAMainFMnm.Visible:= False;
                        HomeF.FCAFaceBtn.Enabled:= False;
                     end;
                 if rgf_ur.Checked  then
                 begin
                   RGFourMainFMnm.Visible:= True;
                 end else
                     begin
                      RGFourMainFMnm.Visible:= False;
                    end;

              end;

           if NOT (caisse_ur.Checked) AND NOT (bank_ur.Checked)  Then

             begin
               TreMainFMnm.Visible:= False;

                CaisseMainFBtn.Enabled:= False;
                CaisseMainFBtn.ImageIndex:= 19;
                HomeF.CaisseFaceBtn.Enabled:= False;
                CaisseMainFMnm.Visible:= False;

                HomeF.BankFaceBtn.Enabled:= False;

             end else
                 begin

                   if caisse_ur.Checked  then
                   begin
                    CaisseMainFBtn.Enabled:= True;
                    CaisseMainFBtn.ImageIndex:= 7;
                    HomeF.CaisseFaceBtn.Enabled:= True;
                    CaisseMainFMnm.Visible:= True;
                   end else
                       begin
                        CaisseMainFBtn.Enabled:= False;
                        CaisseMainFBtn.ImageIndex:= 19;
                        HomeF.CaisseFaceBtn.Enabled:= False;
                        CaisseMainFMnm.Visible:= False;
                       end;
                     if bank_ur.Checked  then
                     begin
                      BankMainFMnm.Visible:= True;
                      HomeF.BankFaceBtn.Enabled:= True;
                     end else
                         begin
                          BankMainFMnm.Visible:= False;
                          HomeF.BankFaceBtn.Enabled:= False;
                         end;

                 end;

            if NOT (client_ur.Checked) AND NOT (four_ur.Checked)  AND NOT (produit_ur.Checked)  AND
               NOT (famp_ur.Checked)   AND NOT (sfamp_ur.Checked) AND NOT (mdpai_ur.Checked)    AND
               NOT (cmpt_ur.Checked)   AND NOT (unit_ur.Checked)  AND NOT (local_ur.Checked)    Then
            begin
              ListesMainFMnm.Visible := False;

              ClientMainFBtn.Enabled:= False;
              ClientMainFBtn.ImageIndex:= 13;
              HomeF.ClientFaceBtn.Enabled:= False;

              FourMainFBtn.Enabled:= False;
              FourMainFBtn.ImageIndex:= 14;
              HomeF.FourFaceBtn.Enabled:= False;

              ProduitMainFBtn.Enabled:= False;
              ProduitMainFBtn.ImageIndex:= 18;
              HomeF.ProduitFaceBtn.Enabled:= False;


              ProduitMainFBtn.Enabled:= False;
              ProduitMainFBtn.ImageIndex:= 18;
              HomeF.ProduitFaceBtn.Enabled:= False;

            end else
                begin

                  if client_ur.Checked  then
                   begin
                    ClientMainFBtn.Enabled:= True;
                    ClientMainFBtn.ImageIndex:= 1;
                    ClientMainFMnm.Visible:= True;
                    HomeF.ClientFaceBtn.Enabled:= True;
                   end else
                       begin
                        ClientMainFBtn.Enabled:= False;
                        ClientMainFBtn.ImageIndex:= 13;
                        ClientMainFMnm.Visible:= False;
                        HomeF.ClientFaceBtn.Enabled:= False;
                       end;

                  if four_ur.Checked  then
                   begin
                    FourMainFBtn.Enabled:= True;
                    FourMainFBtn.ImageIndex:= 2;
                    FourMainFMnm.Visible:= True;
                    HomeF.FourFaceBtn.Enabled:= True;
                   end else
                       begin
                        FourMainFBtn.Enabled:= False;
                        FourMainFBtn.ImageIndex:= 14;
                        FourMainFMnm.Visible:= False;
                        HomeF.FourFaceBtn.Enabled:= False;
                       end;

                  if produit_ur.Checked  then
                     begin
                      ProduitMainFBtn.Enabled:= True;
                      ProduitMainFBtn.ImageIndex:= 6;
                      ProduitMainFMmn.Visible:= True;
                      HomeF.ProduitFaceBtn.Enabled:= True;
                   end else
                     begin
                      ProduitMainFBtn.Enabled:= False;
                      ProduitMainFBtn.ImageIndex:= 18;
                      ProduitMainFMmn.Visible:= False;
                      HomeF.ProduitFaceBtn.Enabled:= False;
                     end;

                  if famp_ur.Checked  then
                     begin
                      FamPMainFMmn.Visible:= True;
                   end else
                     begin
                      FamPMainFMmn.Visible:= False;
                     end;

                   if sfamp_ur.Checked  then
                     begin
                      SFamPMainFMmn.Visible:= True;
                   end else
                     begin
                      SFamPMainFMmn.Visible:= False;
                     end;

                   if mdpai_ur.Checked  then
                     begin
                      MPMainFMmn.Visible:= True;
                   end else
                     begin
                      MPMainFMmn.Visible:= False;
                     end;

                  if cmpt_ur.Checked  then
                     begin
                      ComptesMainFMmn.Visible:= True;
                   end else
                     begin
                      ComptesMainFMmn.Visible:= False;
                     end;

                   if unit_ur.Checked  then
                     begin
                      UniteMainFMmn.Visible:= True;
                   end else
                     begin
                      UniteMainFMmn.Visible:= False;
                     end;

                   if local_ur.Checked  then
                     begin
                      LocalMainFMmn.Visible:= True;
                   end else
                     begin
                      LocalMainFMmn.Visible:= False;
                     end;
                end;
     end else
         begin
           OptionMainFMnm.Visible:= True;
           UsersGMainFMnm.Visible:= True;
         end;


  HomeF.Label1.Caption:='Bonjour '+DataModuleF.UsersTable.FieldByName('nom_ur').AsString;
   UserNameLbl.Caption:=DataModuleF.UsersTable.FieldByName('nom_ur').AsString;

   while HomeF.Label1.Width > 180  do
    begin
     HomeF.Label1.Font.Height:= HomeF.Label1.Font.Height - 2 ;
     HomeF.Label1.Top:= HomeF.Label1.Top + 1
    end;

//   if HomeF.Label1.Width > 180 then
//    begin
//     HomeF.Label1.Font.Height:= HomeF.Label1.Font.Height - 2
//    end;

    RefreshCNotification;



   Label1.Caption:= FloatToStr(MemoryUsed)
   
end;


procedure TMainForm.RefreshCNotification;
begin

  DataModuleF.PZeroQCnotif.Active:= True;
  DataModuleF.PCloseZeroQCnotif.Active:= True;
  DataModuleF.PMoreMaxQCnotif.Active:= True;
//  DataModuleF.PCloseDiedCnotif.Active:= True;
//  DataModuleF.PDiedCnotif.Active:= True;
  
  DataModuleF.PZeroQCnotif.Refresh;
  DataModuleF.PCloseZeroQCnotif.Refresh;
  DataModuleF.PMoreMaxQCnotif.Refresh;
//  DataModuleF.PCloseDiedCnotif.Refresh;
//  DataModuleF.PDiedCnotif.Refresh;

   CNotificationLbl.Caption:= IntToStr
  ( DataModuleF.PZeroQCnotif.RecordCount + DataModuleF.PCloseZeroQCnotif.RecordCount + DataModuleF.PMoreMaxQCnotif.RecordCount +
  DataModuleF.PCloseDiedCnotif.RecordCount + DataModuleF.PDiedCnotif.RecordCount ) ;


    if CNotificationLbl.Caption <> '0'  then
    begin

     CNotificationPaintBox.Visible:= True;
     CNotificationLbl.Visible:= True;
    end;

    if NonWhiteSpaceCharacterCount(CNotificationLbl.Caption) > 2 then
    begin

     CNotificationLbl.Font.Size := CNotificationLbl.Font.Size - 1 ; 
     CNotificationLbl.Top:=  CNotificationLbl.Top  + 1;
    end;

    if NonWhiteSpaceCharacterCount(CNotificationLbl.Caption) > 3 then
    begin

     CNotificationLbl.Font.Size := CNotificationLbl.Font.Size - 2 ; 
     CNotificationLbl.Top:=  CNotificationLbl.Top  + 2;
    end;
   
end;

procedure TMainForm.N17Click(Sender: TObject);
begin
FactureV2MainFMnmClick(Sender);
BonFacVF.AddBVFacBtnClick(Sender);
end;

procedure TMainForm.BLMainFBtnClick(Sender: TObject);
begin
BLMainFMmnClick(Sender);
end;

procedure TMainForm.BRMainFBtnClick(Sender: TObject);
begin
 BRMainFMmnClick(Sender);
end;

procedure TMainForm.CaisseMainFMnmClick(Sender: TObject);
begin
if Not Assigned(CaisseListF) then

     CaisseListF:= TCaisseListF.Create(Application) else
                                        begin
                                          CaisseListF.Show
                                        end;
end;

procedure TMainForm.CaisseMainFBtnClick(Sender: TObject);
begin
CaisseMainFMnmClick(Sender);
end;

procedure TMainForm.BankMainFMnmClick(Sender: TObject);
begin
if Not Assigned(BankListF) then
     BankListF:= TBankListF.Create(Application) else
                                        begin
                                          BankListF.Show
                                        end;
end;

procedure TMainForm.Button17Click(Sender: TObject);
begin
//MainForm.B7Click(Sender);
end;

procedure TMainForm.Button18Click(Sender: TObject);
       var
MyForm: TBonRecGestionF;
begin
//  if NOT Assigned(BonRecGestionF) then
//  begin
//    BonRecGestionF := TBonRecGestionF.Create(nil);
//
//  end;
//   BonRecGestionF.Show


//     with TBonRecGestionF.Create(nil) do
//    try
//      ShowModal;
//    finally
//      Free;
//    end;

//    if BonRecGestionF = nil then
//    begin
//     ShowMessage('nil');
//
//    end
//    else
//    begin
//     ShowMessage('not nil');
//    end;



  begin
  try
  MyForm:=TBonRecGestionF.Create(nil);
  MyForm.ShowModal;
  finally
  MyForm.Free;
  end;
  end;


end;

procedure TMainForm.StartTimer;
begin
 TimerStart := now();
 Timer1.interval := 500;
 Timer1.enabled  := True;
end;

procedure TMainForm.T3Click(Sender: TObject);
begin
//if Not Assigned(TransferComptesGestionF) then
//
//     TransferComptesGestionF:= TTransferComptesGestionF.Create(nil) else
//                                        begin
//                                          TransferComptesGestionF.Show
//                                        end;


 //-------- Show the splash screan for the TransferComptesGestionF---------//


      TransferComptesGestionF:=TTransferComptesGestionF.Create(nil);
      TransferComptesGestionF.Left:=  (Screen.Width div 2 ) - (TransferComptesGestionF.Width div 2)    ;
      TransferComptesGestionF.Top:=   (Screen.Height div 2) - (TransferComptesGestionF.Height div 2)    ;

      TransferComptesGestionF.Show;

end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
   StatuBar.Panels[1].Text:=
   ' |    '+ FormatDateTime('dddd, d,  mmmm, yyyy', Now) +'    |    '
           + Formatdatetime('hh:nn:ss', TimerStart - now()) + '    |'; //nn is for minutes.
//      StatuBar.Panels[1].Text:=TimeToStr(Time);
end;

procedure TMainForm.UsersGMainFMnmClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            UsersListF:=TUsersListF.Create(Application);
            UsersListF.Left:=  (Screen.Width div 2 ) - (UsersListF.Width div 2)    ;
            UsersListF.Top:=   (Screen.Height div 2) - (UsersListF.Height div 2)    ;

            UsersListF.Show;

            UsersListF.ResearchUsersEdt.SetFocus;
end;

procedure TMainForm.RGFourMainFMnmClick(Sender: TObject);
begin
if Not Assigned(ReglementFListF) then

     ReglementFListF:= TReglementFListF.Create(Application) else
                                        begin
                                          ReglementFListF.Show
                                        end;
end;


procedure TMainForm.Rpar1Click(Sender: TObject);
var
 BackupTask: ITask;
begin
             GrayForms;
            FWorkingSplash := TFWorkingSplash.Create(MainForm);
            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
            FWorkingSplash.Show; 
          
 
   BackupTask := TTask.Create (procedure ()
   begin
        
//        InactiveTables;
//        dxActivityIndicator1.Active:= True;

        SQLQuery.Active:= False;
        SQLQuery.SQL.Clear;
        SQLQuery.SQL.Text:= 'VACUUM';
        SQLQuery.ResourceOptions.CmdExecMode := amAsync;
        SQLQuery.ExecSQL;

            
        while SQLQuery.Command.State = csExecuting  do
        begin
//          dxActivityIndicator1.Active:= True;

        end;
         SQLQuery.ResourceOptions.CmdExecMode  := amBlocking;
        SQLQuery.ResourceOptions.CmdExecTimeout :=$FFFFFFFF ; 
//        ActiveTables;
          FWorkingSplash.Close;
          NormalForms;

//         dxActivityIndicator1.Active:= False;

        SQLQuery.Active:= False;
        SQLQuery.SQL.Clear;
   end);
          BackupTask.Start;

end;



procedure TMainForm.InactiveTables;
begin
      ProduitTable.Active := False;
      ClientTable.Active := False;
      FournisseurTable.Active := False;
      Bona_recTable.Active := False;
      Bona_recPlistTable.Active := False;
      Bona_facTable.Active := False;
      Bona_fac_listTable.Active := False;
      Bonv_livTable.Active := False;
      Bonv_liv_listTable.Active := False;
      Bonv_facTable.Active := False;
      Bonv_fac_listTable.Active := False;
      Bonv_ctrTable.Active := False;
      Bonv_ctr_listTable.Active := False;
      Mode_paiementTable.Active := False;
      CompteTable.Active := False;
      FamproduitTable.Active := False;
      SfamproduitTable.Active := False;
      CodebarresTable.Active := False;
      LocalisationTable.Active := False;
      UniteTable.Active := False;
      WilayasTable.Active := False;
      CommunesTable.Active := False;
      Opt_cas_bnk_CaisseTable.Active := False;
      Opt_cas_bnk_BankTable.Active := False;
//      DataModuleF.UsersTable.Active := False;
      RegclientTable.Active := False;
      RegfournisseurTable.Active := False;
      CompanyTable.Active := False;
      
      DataModuleF.TopClient.Active:= False;
      DataModuleF.TopFour.Active:= False;
      DataModuleF.TopVerClient.Active:= False;
      DataModuleF.TopVerFour.Active:= False;
      DataModuleF.Top5produit.Active:= False;
      DataModuleF.TotalProduit.Active:= False;
      DataModuleF.ToatalVerMonthVLIV.Active:= False;
      DataModuleF.ToatalVerMonthVFAC.Active:= False;
      DataModuleF.ToatalVerMonthVCTR.Active:= False;
      DataModuleF.ToatalVerMonthAREC.Active:= False;
      DataModuleF.ToatalVerMonthAFAC.Active:= False;

      DataModuleF.PZeroQCnotif.Active:= False;
      DataModuleF.PCloseZeroQCnotif.Active:= False;
      DataModuleF.PMoreMaxQCnotif.Active:= False;
//      DataModuleF.PCloseDiedCnotif.Active:= False;
//      DataModuleF.PDiedCnotif.Active:= False;



      DataModuleF.ChargesTable.Active:= False;
      DataModuleF.Charge_typeTable.Active:= False;
      DataModuleF.Charge_s_typeTable.Active:= False;
      DataModuleF.PertesTable.Active:= False;
      DataModuleF.Perte_typeTable.Active:= False;
end;

function TMainForm.KillTask(ExeFileName: string): Integer;


const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;



procedure TMainForm.ActiveTables;
begin

      
    
      DataModuleF.UsersTable.Active := True;


      ProduitTable.Active := True;
      ClientTable.Active := True;
      FournisseurTable.Active := True;
      Bona_recTable.Active := True;
      Bona_recPlistTable.Active := True;
      Bona_facTable.Active := True;
      Bona_fac_listTable.Active := True;
      Bonv_livTable.Active := True;
      Bonv_liv_listTable.Active := True;
      Bonv_facTable.Active := True;
      Bonv_fac_listTable.Active := True;
      Bonv_ctrTable.Active := True;
      Bonv_ctr_listTable.Active := True;
      Mode_paiementTable.Active := True;
      CompteTable.Active := True;
      FamproduitTable.Active := True;
      SfamproduitTable.Active := True;
      CodebarresTable.Active := True;
      LocalisationTable.Active := True;
      UniteTable.Active := True;
      WilayasTable.Active := True;
      CommunesTable.Active := True;
      Opt_cas_bnk_CaisseTable.Active := True;
      Opt_cas_bnk_BankTable.Active := True;
     
      RegclientTable.Active := True;
      RegfournisseurTable.Active := True;
      CompanyTable.Active := True;
      
      DataModuleF.TopClient.Active:= True;
      DataModuleF.TopFour.Active:= True;
      DataModuleF.TopVerClient.Active:= True;
      DataModuleF.TopVerFour.Active:= True;
      DataModuleF.Top5produit.Active:= True;
      DataModuleF.TotalProduit.Active:= True;
      DataModuleF.ToatalVerMonthVLIV.Active:= True;
      DataModuleF.ToatalVerMonthVFAC.Active:= True;
      DataModuleF.ToatalVerMonthVCTR.Active:= True;
      DataModuleF.ToatalVerMonthAREC.Active:= True;
      DataModuleF.ToatalVerMonthAFAC.Active:= True;

      DataModuleF.PZeroQCnotif.Active:= True;
      DataModuleF.PCloseZeroQCnotif.Active:= True;
      DataModuleF.PMoreMaxQCnotif.Active:= True;
//      DataModuleF.PCloseDiedCnotif.Active:= True;
//      DataModuleF.PDiedCnotif.Active:= True;



      DataModuleF.ChargesTable.Active:= True;
      DataModuleF.Charge_typeTable.Active:= True;
      DataModuleF.Charge_s_typeTable.Active:= True;
      DataModuleF.PertesTable.Active:= True;
      DataModuleF.Perte_typeTable.Active:= True;

      
end;


   
 procedure TMainForm.RerfreshTables;
begin
      ProduitTable.Refresh;
      ClientTable.Refresh  ;
      FournisseurTable.Refresh ;
      Bona_recTable.Refresh  ;
      Bona_recPlistTable.Refresh;
      Bona_facTable.Refresh  ;
      Bona_fac_listTable.Refresh  ;
      Bonv_livTable.Refresh ;
      Bonv_liv_listTable.Refresh  ;
      Bonv_facTable.Refresh ;
      Bonv_fac_listTable.Refresh  ;
      Bonv_ctrTable.Refresh ;
      Bonv_ctr_listTable.Refresh ;
      Mode_paiementTable.Refresh;
      CompteTable.Refresh ;
      FamproduitTable.Refresh  ;
      SfamproduitTable.Refresh ;
      CodebarresTable.Refresh ;
      LocalisationTable.Refresh;
      UniteTable.Refresh ;
      WilayasTable.Refresh  ;
      CommunesTable.Refresh ;
      Opt_cas_bnk_CaisseTable.Refresh  ;
      Opt_cas_bnk_BankTable.Refresh;
//      DataModuleF.UsersTable.Refresh ;
      RegclientTable.Refresh ;
      RegfournisseurTable.Refresh ;
      CompanyTable.Refresh ;
      
      DataModuleF.TopClient.Refresh ;
      DataModuleF.TopFour.Refresh ;
      DataModuleF.TopVerClient.Refresh ;
      DataModuleF.TopVerFour.Refresh ;
      DataModuleF.Top5produit.Refresh;
      DataModuleF.TotalProduit.Refresh ;
      DataModuleF.ToatalVerMonthVLIV.Refresh;
      DataModuleF.ToatalVerMonthVFAC.Refresh;
      DataModuleF.ToatalVerMonthVCTR.Refresh;
      DataModuleF.ToatalVerMonthAREC.Refresh;
      DataModuleF.ToatalVerMonthAFAC.Refresh;

      DataModuleF.PZeroQCnotif.Refresh;
      DataModuleF.PCloseZeroQCnotif.Refresh;
      DataModuleF.PMoreMaxQCnotif.Refresh;
//      DataModuleF.PCloseDiedCnotif.Refresh;
//      DataModuleF.PDiedCnotif.Refresh;



      DataModuleF.ChargesTable.Refresh;
      DataModuleF.Charge_typeTable.Refresh;
      DataModuleF.Charge_s_typeTable.Refresh;
      DataModuleF.PertesTable.Refresh;
      DataModuleF.Perte_typeTable.Refresh;
end;


procedure TMainForm.rparation1Click(Sender: TObject);
var
 BackupTask: ITask;
begin
             GrayForms;
            FWorkingSplash := TFWorkingSplash.Create(MainForm);
            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
            FWorkingSplash.Show; 
          
 
   BackupTask := TTask.Create (procedure ()
   begin
        
//        InactiveTables;
//        dxActivityIndicator1.Active:= True;

        SQLQuery.Active:= False;
        SQLQuery.SQL.Clear;
        SQLQuery.SQL.Text:= 'VACUUM FULL';
        SQLQuery.ResourceOptions.CmdExecMode := amAsync;
        SQLQuery.ExecSQL;

            
        while SQLQuery.Command.State = csExecuting  do
        begin
//          dxActivityIndicator1.Active:= True;

        end;
         SQLQuery.ResourceOptions.CmdExecMode  := amBlocking;
        SQLQuery.ResourceOptions.CmdExecTimeout :=$FFFFFFFF ; 
//        ActiveTables;
          FWorkingSplash.Close;
          NormalForms;

//         dxActivityIndicator1.Active:= False;

        SQLQuery.Active:= False;
        SQLQuery.SQL.Clear;
   end);
          BackupTask.Start;

      
end;

procedure TMainForm.RGClientMainFMnmClick(Sender: TObject);
begin
if Not Assigned(ReglementCListF) then

     ReglementCListF:= TReglementCListF.Create(Application) else
                                        begin
                                          ReglementCListF.Show
                                        end;
end;

procedure TMainForm.Button19Click(Sender: TObject);
var
  codeBR : integer;
  MyForm :TBonRecGestionF;
begin

 try
  MyForm := TBonRecGestionF.Create(nil);



//MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec ';
MainForm.Bona_recTable.Active:= True;
//MainForm.Bona_recTable.EnableControls;

//  if NOT Assigned(BonRecGestionF)  then
//  begin


 // end;

if Assigned(BonRecF) then
begin
BonRecF.ResearchBARecEdt.Text:='';
end;

MainForm.Bona_recPlistTable.IndexFieldNames:='';
codeBR:= 0;



     if MainForm.Bona_recTable.RecordCount <= 0 then
      begin

        MainForm.Bona_recTable.Insert;
        MainForm.Bona_recTable.FieldValues['code_barec']:=1;
        MainForm.Bona_recTable.FieldValues['num_barec']:= 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_recTable.FieldValues['date_barec']:= DateOf(Today);
        MainForm.Bona_recTable.FieldValues['time_barec']:=TimeOf(Now);
        MainForm.Bona_recTable.Post;
        codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
      end else
          begin
            MainForm.Bona_recTable.Last;
            codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(codeBR));
            MainForm.Bona_recPlistTable.Active:=True;

           if MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
        //   MainForm.Bona_recTable.Last;
           codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
           end else
           begin
        //   MainForm.Bona_recTable.Last;
          // codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
           MainForm.Bona_recTable.Insert;
           MainForm.Bona_recTable.FieldValues['code_barec']:= codeBR + 1;
           MainForm.Bona_recTable.FieldValues['num_barec']:=  'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBR + 1)]);
           MainForm.Bona_recTable.FieldValues['date_barec']:= DateOf(Today);
           MainForm.Bona_recTable.FieldValues['time_barec']:= TimeOf(Now);
           MainForm.Bona_recTable.Post;


           end;
     //    MyForm.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

//      MainForm.Bona_recPlistTable.Active:=False;
//      MainForm.Bona_recPlistTable.SQL.Clear;
//      MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list';
//      MainForm.Bona_recPlistTable.Active:=True;

MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
//MainForm.Bona_recPlistTable.Refresh;

           MyForm.Tag:= 0;
      MyForm.ShowModal;

 finally
    MyForm.Free
 end;

//      MainForm.Bona_recTable.DisableControls;
//MainForm.Bona_recTable.Active:= False;
//MainForm.Bona_recTable.SQL.clear;
//mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
//MainForm.Bona_recTable.Active:= True;
//MainForm.Bona_recTable.EnableControls;

end;

procedure TMainForm.RegfournisseurTableCalcFields(DataSet: TDataSet);
begin
// RegfournisseurTable.FieldValues['MontantTVA']:=
//((RegfournisseurTable.FieldValues['montttc_barec']) - ((RegfournisseurTable.FieldValues['montht_barec'])-(RegfournisseurTable.FieldValues['remise_barec']))) ;

//  RegfournisseurTable.FieldValues['MontantRes']:=
//((RegfournisseurTable.FieldValues['montttc_barec']) - (RegfournisseurTable.FieldValues['montver_barec'])) ;
//
//  if (RegfournisseurTable.FieldValues['remise_barec']) AND (RegfournisseurTable.FieldValues['montht_barec']) <> 0 then
//  begin
//    RegfournisseurTable.FieldValues['RemisePerc']:=
//    ((RegfournisseurTable.FieldValues['remise_barec'] / RegfournisseurTable.FieldValues['montht_barec']) * 100) ;
//  end else
//      begin
//
//         RegfournisseurTable.FieldValues['RemisePerc']:=0;
//      end;
end;

procedure TMainForm.Restaurer1Click(Sender: TObject);
var
 RestoreTask,ShowTask: ITask;
 Backupname,input,cmd,PathRS,NamePathRS : string;
 StartInfo: TStartupInfo;
 ProcInfo: TProcessInformation;
 CreateOk: boolean;

begin
  
  RestoreDbODlg.FileName:= 'Backup_Le_' +
   IntToStr(DayOf(Today)) +'-'+ IntToStr(MonthOf(Today))+ '-'+ IntToStr(YearOf(Today)) ;
 if  RestoreDbODlg.Execute then
 begin
//  ShowTask:= TTask.Create (procedure ()
//   begin
        GrayForms;
    FWorkingSplash := TFWorkingSplash.Create(MainForm);
    FWorkingSplash.dxActivityIndicator1.Active:= True;
    FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
    FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
    FWorkingSplash.Show; 
//   end);
//    ShowTask.Start;

            
//  InactiveTables;
  { fill with known state }
  FillChar(StartInfo, SizeOf(TStartupInfo), #0);
  FillChar(ProcInfo, SizeOf(TProcessInformation), #0);
  StartInfo.cb := SizeOf(TStartupInfo);
  StartInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
  NamePathRS:=  StringReplace((ExtractFileName(RestoreDbODlg.FileName)) , #32 , '_', [rfReplaceAll]) ;
  
  PathRS :=ExtractFilePath(RestoreDbODlg.FileName);
  cmd := 'C:\Windows\System32\cmd.exe';
  //debug
//  input := '/c "C:\Program Files (x86)\PostgreSQL\9.6\bin\pg_restore.exe" --username postgres --dbname='+ GstockdcConnection.Params.Database +' --no-password --clean '+ NamePathRS;
input := '/c "'+GetCurrentDir+'\bin\pg_restore.exe" --username postgres --dbname='+ GstockdcConnection.Params.Database +' --no-password --clean '+ NamePathRS;// Eable this is only for releasing
   RestoreTask := TTask.Create (procedure ()
   begin
     GstockdcConnection.Connected:= False;
     
     CreateOk := CreateProcess(PChar(cmd), PChar(input), nil, nil, false, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil,
     Pchar(PathRS), StartInfo, ProcInfo);
  { check to see if successful }
//  if CreateOk then
//     may or may not be needed. Usually wait for child processes
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
//    CloseHandle(ProcInfo.hProcess);
//    CloseHandle(ProcInfo.hThread);
//          RestoreTask.CheckCanceled;
            GstockdcConnection.Connected:= True;
      ActiveTables;  
//      RerfreshTables;
      FWorkingSplash.Close;
      NormalForms;
      
 

      RestoreDbODlg.FileName:='';

   end);
  RestoreTask.Start;
  


 end;   
//  ActiveTables;  
//  RerfreshTables;
end;

procedure TMainForm.CtrMainFMmnClick(Sender: TObject);
begin
     if Not Assigned(BonCtrF) then

     BonCtrF:= TBonCtrF.Create(Application) else
                                        begin
                                          BonCtrF.Show
                                        end;
end;

procedure TMainForm.BLFaceBtnClick(Sender: TObject);
begin
BLMainFMmnClick(Sender);
BonLivF.AddBVLivBtnClick(Sender);
end;

procedure TMainForm.OptionMainFMnmClick(Sender: TObject);
begin
//FOptions.Position:= poScreenCenter;
            FOptions.Show;

end;

procedure TMainForm.ClientFaceBtnClick(Sender: TObject);
begin
ClientMainFBtnClick(Sender);
end;

procedure TMainForm.FourFaceBtnClick(Sender: TObject);
begin
FourMainFBtnClick(Sender);
end;

procedure TMainForm.CNotificationPaintBoxPaint(Sender: TObject);
var
  D2DCanvas: TDirect2DCanvas;
begin
  if TDirect2DCanvas.Supported then
  begin
    D2DCanvas := TDirect2DCanvas.Create(CNotificationPaintBox.Canvas,CNotificationPaintBox.ClientRect);
    D2DCanvas.BeginDraw;
    try
//      D2DCanvas.Pen.Style := psClear;
      D2DCanvas.Pen.Color := clNone;
      D2DCanvas.Ellipse(19,19,CNotificationPaintBox.Width - 19,CNotificationPaintBox.Height - 19);

    finally
      D2DCanvas.EndDraw;
      D2DCanvas.Free;
    end;
  end;

end;

procedure TMainForm.ProduitFaceBtnClick(Sender: TObject);
begin
ProduitMainFBtnClick(Sender);
end;

procedure TMainForm.CaisseFaceBtnClick(Sender: TObject);
begin
CaisseMainFMnmClick(Sender);
end;

procedure TMainForm.CnotificationMainFBtnClick(Sender: TObject);
begin

CNotificationPaintBox.Visible:= False;
CNotificationLbl.Visible:= False;

if Not Assigned(CNotificationsF) then

     CNotificationsF:= TCNotificationsF.Create(Application) else
                                        begin
                                          CNotificationsF.Show
                                        end;
end;

procedure TMainForm.B3Click(Sender: TObject);
var
 BackupTask: ITask;
 Backupname,PathBC,NamePathBC,input,cmd : string;

  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CreateOk: boolean;
  AppDone    : DWord;

begin
  
   BackupDbSDlg.FileName:= 'Backup_Le_' +
   IntToStr(DayOf(Today)) +'-'+ IntToStr(MonthOf(Today))+ '-'+ IntToStr(YearOf(Today)) ;
 if  BackupDbSDlg.Execute then
 begin

  { fill with known state }
  FillChar(StartInfo, SizeOf(TStartupInfo), #0);
  FillChar(ProcInfo, SizeOf(TProcessInformation), #0);
  StartInfo.cb := SizeOf(TStartupInfo);
  StartInfo.dwFlags := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
  NamePathBC:=  StringReplace((ExtractFileName(BackupDbSDlg.FileName)) , #32 , '_', [rfReplaceAll]) +'.backup' ;
  
  PathBC :=ExtractFilePath(BackupDbSDlg.FileName);
  cmd := 'C:\Windows\System32\cmd.exe';
  //debug
//  input := '/c "C:\Program Files (x86)\PostgreSQL\9.6\bin\pg_dump.exe" -U postgres -F c '+ GstockdcConnection.Params.Database +' > '+ NamePathBC;
input := '/c "'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -F c '+ GstockdcConnection.Params.Database +' > '+ NamePathBC;// Eable this is only for releasing

   BackupTask := TTask.Create (procedure ()
   begin

     CreateOk := CreateProcess(PChar(cmd), PChar(input), nil, nil, false, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil,
     Pchar(PathBC), StartInfo, ProcInfo);
  { check to see if successful }
  if CreateOk then
//     may or may not be needed. Usually wait for child processes
    begin
        WaitForSingleObject(ProcInfo.hProcess, INFINITE);
        CloseHandle(ProcInfo.hProcess);
        CloseHandle(ProcInfo.hThread);
    end;
    BackupDbSDlg.FileName:='';

   end);
  BackupTask.Start;

      //-----this is to reset the transatctions values as it in database----
      SQLQuery.Active:= False;
      SQLQuery.SQL.Clear;   
      SQLQuery.SQL.Text:= ' SELECT datname, tup_inserted, tup_updated, tup_deleted '
      +' FROM pg_stat_database WHERE datname = ' +QuotedStr(GstockdcConnection.Params.Database);
      SQLQuery.Active:= True;

      CountInsert:= SQLQuery.FieldByName('tup_inserted').AsInteger;
      CountUpdate:= SQLQuery.FieldByName('tup_updated').AsInteger;
      CountDelete:= SQLQuery.FieldByName('tup_deleted').AsInteger;

      SQLQuery.SQL.Clear;    
      SQLQuery.Active:= False;

 end;

end;

procedure TMainForm.BankFaceBtnClick(Sender: TObject);
begin
BankMainFMnmClick(Sender);
end;

procedure TMainForm.CTRFaceBtnClick(Sender: TObject);
begin
BonCtrF.AddBVCtrBtnClick(Self);
//BonCtrF.AddBVCtrBtnClick(Self);
end;

procedure TMainForm.FCVFaceBtnClick(Sender: TObject);
begin
FactureV2MainFMnmClick(Sender);
BonFacVF.AddBVFacBtnClick(Sender);
end;

procedure TMainForm.FDPhysPgDriverLink1DriverCreated(Sender: TObject);
begin
//C:\Program Files (x86)\PostgreSQL\9.6\bin\libpq.dll
end;

procedure TMainForm.BRFaceBtnClick(Sender: TObject);
begin
BRMainFMmnClick(Sender);
BonRecF.AddBARecBtnClick(Sender);
end;

procedure TMainForm.FCAFaceBtnClick(Sender: TObject);
begin
FactureAMainFMnmClick(Sender);
BonFacAF.AddBAFacBtnClick(Sender);
end;

procedure TMainForm.MPMainFMmnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            Mode_paiementTable.Active:= False;
            Mode_paiementTable.SQL.Clear;
            Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement';
            Mode_paiementTable.Active:= True;

            ModePaieListF:=TModePaieListF.Create(Application);
     //       ClientGestionF.BringToFront;
            ModePaieListF.Left:=  (Screen.Width div 2 ) - (ModePaieListF.Width div 2)    ;
            ModePaieListF.Top:=   (Screen.Height div 2) - (ModePaieListF.Height div 2)    ;

            ModePaieListF.ShowModal;
end;

procedure TMainForm.ClientMainFMnmClick(Sender: TObject);
begin
ClientMainFBtnClick(Sender);
end;

procedure TMainForm.FourMainFMnmClick(Sender: TObject);
begin
FourMainFBtnClick(Sender);
end;

procedure TMainForm.ProduitMainFMmnClick(Sender: TObject);
begin
ProduitMainFBtnClick(Sender);
end;

procedure TMainForm.BoardMainFBtnClick(Sender: TObject);
begin
     if Not Assigned(DashboardF) then

     DashboardF:= TDashboardF.Create(Application) else
                                        begin
                                          DashboardF.Show
                                        end;
end;



procedure KillProcess(hWindowHandle: HWND);
var

  hprocessID: INTEGER;
  processHandle: THandle;
  DWResult: DWORD;
begin
  SendMessageTimeout(hWindowHandle, WM_CLOSE, 0, 0,
    SMTO_ABORTIFHUNG or SMTO_NORMAL, 5000, DWResult);

  if isWindow(hWindowHandle) then
  begin
    // PostMessage(hWindowHandle, WM_QUIT, 0, 0);

    { Get the process identifier for the window}
    GetWindowThreadProcessID(hWindowHandle, @hprocessID);
    if hprocessID <> 0 then
    begin
      { Get the process handle }
      processHandle := OpenProcess(PROCESS_TERMINATE or PROCESS_QUERY_INFORMATION,
        False, hprocessID);
      if processHandle <> 0 then
      begin
        { Terminate the process }
        TerminateProcess(processHandle, 0);
        CloseHandle(ProcessHandle);
      end;
    end;
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;

begin
  for I := dxTabbedMDIManager1.TabProperties.PageCount - 1 downto 0 do
    dxTabbedMDIManager1.TabProperties.Pages[I].MDIChild.Close;
    
    Sleep(500);
    
//   if Assigned(DashboardF) then
//   begin
//    DashboardF.Close;
//   end;
//
   InactiveTables;
   GstockdcConnection.Connected:= False;
   DataModuleF.GstockdcConnection02.Connected:= False;
   DataModuleF.PSDBConfigConnection.Connected:= False;

   Sleep(500);

//   KillTask('postgres.exe');                                    // Eable this is only for releasing
//   KillTask('cmd.exe');                                         // Eable this is only for releasing

end;

procedure TMainForm.H1Click(Sender: TObject);
begin
FactureV2MainFMnmClick(Sender);
end;

procedure TMainForm.ComptesMainFMmnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            CompteTable.Active:= False;
            CompteTable.SQL.Clear;
            CompteTable.SQL.Text:= 'SELECT * FROM compte';
            CompteTable.Active:= True;

            CompteListF:=TCompteListF.Create(Application);
     //       ClientGestionF.BringToFront;
            CompteListF.Left:=  (Screen.Width div 2 ) - (CompteListF.Width div 2)    ;
            CompteListF.Top:=   (Screen.Height div 2) - (CompteListF.Height div 2)    ;

            CompteListF.ShowModal;

end;

procedure TMainForm.FamPMainFMmnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            FamproduitTable.Active:= False;
            FamproduitTable.SQL.Clear;
            FamproduitTable.SQL.Text:= 'SELECT * FROM famproduit';
            FamproduitTable.Active:= True;

            FamPListF:=TFamPListF.Create(Application);
            FamPListF.Left:=  (Screen.Width div 2 ) - (FamPListF.Width div 2)    ;
            FamPListF.Top:=   (Screen.Height div 2) - (FamPListF.Height div 2)    ;

            FamPListF.Show;
end;

procedure TMainForm.SwitchDBMAinFMnuClick(Sender: TObject);
begin

    
   if sImage1.Tag = 0 then
   begin
           GstockdcConnection.Connected:= False;
      GstockdcConnection.DriverName := 'PG';
      GstockdcConnection.Params.Values['Server'] :='localhost';
      GstockdcConnection.Params.Values['user_name'] := 'postgres';
      GstockdcConnection.Params.Values['password'] := ''; // ditto
      GstockdcConnection.Params.Values['Port'] := '5432';
      GstockdcConnection.LoginPrompt := False;

      GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC';
      GstockdcConnection.Connected:= True;



  //----this is to check if the tables is exsit or not if not creat them ----- 
   SQLQuery.Active:= False;
   SQLQuery.SQL.Clear;
   SQLQuery.SQL.Text:= 'SELECT COUNT(*) as ntable from information_schema.tables WHERE table_schema = ''public''' ;
   SQLQuery.Active:= True;
  
     if SQLQuery.FieldByName('ntable').AsInteger <> 26 then
     begin
     
      CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
      InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing
      
     end;
     SQLQuery.SQL.Clear;
     SQLQuery.Active:= False;


    ProduitTable.Active := True;
    ClientTable.Active := True;
    FournisseurTable.Active := True;
    Bona_recTable.Active := True;
    Bona_recPlistTable.Active := True;
    Bona_facTable.Active := True;
    Bona_fac_listTable.Active := True;
    Bonv_livTable.Active := True;
    Bonv_liv_listTable.Active := True;
    Bonv_facTable.Active := True;
    Bonv_fac_listTable.Active := True;
    Bonv_ctrTable.Active := True;
    Bonv_ctr_listTable.Active := True;
    Mode_paiementTable.Active := True;
    CompteTable.Active := True;
    FamproduitTable.Active := True;
    SfamproduitTable.Active := True;
    CodebarresTable.Active := True;
    LocalisationTable.Active := True;
    UniteTable.Active := True;
    WilayasTable.Active := True;
    CommunesTable.Active := True;
    Opt_cas_bnk_CaisseTable.Active := True;
    Opt_cas_bnk_BankTable.Active := True;
//    DataModuleF.UsersTable.Active := True;
    RegclientTable.Active := True;
    RegfournisseurTable.Active := True;
    CompanyTable.Active := True;
    
      //--------------------data moder changer------------///
      DataModuleF.GstockdcConnection02.DriverName := 'PG';
      DataModuleF.GstockdcConnection02.Params.Values['Server'] :='localhost'; // your server name'';
      DataModuleF.GstockdcConnection02.Params.Values['user_name'] := 'postgres';    // adjust to suit
      DataModuleF.GstockdcConnection02.Params.Values['password'] := ''; // ditto
      DataModuleF.GstockdcConnection02.Params.Values['Port'] := '5432';
      DataModuleF.GstockdcConnection02.Params.Values['CharacterSet'] := 'SQL_ASCII';
      DataModuleF.GstockdcConnection02.LoginPrompt := False;


      DataModuleF.GstockdcConnection02.Params.Values['Database'] := 'GSTOCKDC';
      DataModuleF.GstockdcConnection02.Connected:= True;

      DataModuleF.TopClient.Active:= True;
      DataModuleF.TopFour.Active:= True;
      DataModuleF.TopVerClient.Active:= True;
      DataModuleF.TopVerFour.Active:= True;
      DataModuleF.Top5produit.Active:= True;
      DataModuleF.TotalProduit.Active:= True;
      DataModuleF.ToatalVerMonthVLIV.Active:= True;
      DataModuleF.ToatalVerMonthVFAC.Active:= True;
      DataModuleF.ToatalVerMonthVCTR.Active:= True;
      DataModuleF.ToatalVerMonthAREC.Active:= True;
      DataModuleF.ToatalVerMonthAFAC.Active:= True;


      DataModuleF.ChargesTable.Active:= True;
      DataModuleF.Charge_typeTable.Active:= True;
      DataModuleF.Charge_s_typeTable.Active:= True;
      DataModuleF.PertesTable.Active:= True;
      DataModuleF.Perte_typeTable.Active:= True;



      sImage1.ImageIndex:=4;
      sImage1.Tag := 1;

   
   end else
   begin

    
      GstockdcConnection.Connected:= False;
      GstockdcConnection.DriverName := 'PG';
      GstockdcConnection.Params.Values['Server'] :='localhost';
      GstockdcConnection.Params.Values['user_name'] := 'postgres';
      GstockdcConnection.Params.Values['password'] := ''; // ditto
      GstockdcConnection.Params.Values['Port'] := '5432';
      GstockdcConnection.LoginPrompt := False;

      GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC2';
      GstockdcConnection.Connected:= True;

  //----this is to check if the tables is exsit or not if not creat them ----- 
   SQLQuery.Active:= False;
   SQLQuery.SQL.Clear;
   SQLQuery.SQL.Text:= 'SELECT COUNT(*) as ntable from information_schema.tables WHERE table_schema = ''public''' ;
   SQLQuery.Active:= True;
  
     if SQLQuery.FieldByName('ntable').AsInteger <> 26 then
     begin
     
      CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
      InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing
      
     end;
     SQLQuery.SQL.Clear;
     SQLQuery.Active:= False;
     
    ProduitTable.Active := True;
    ClientTable.Active := True;
    FournisseurTable.Active := True;
    Bona_recTable.Active := True;
    Bona_recPlistTable.Active := True;
    Bona_facTable.Active := True;
    Bona_fac_listTable.Active := True;
    Bonv_livTable.Active := True;
    Bonv_liv_listTable.Active := True;
    Bonv_facTable.Active := True;
    Bonv_fac_listTable.Active := True;
    Bonv_ctrTable.Active := True;
    Bonv_ctr_listTable.Active := True;
    Mode_paiementTable.Active := True;
    CompteTable.Active := True;
    FamproduitTable.Active := True;
    SfamproduitTable.Active := True;
    CodebarresTable.Active := True;
    LocalisationTable.Active := True;
    UniteTable.Active := True;
    WilayasTable.Active := True;
    CommunesTable.Active := True;
    Opt_cas_bnk_CaisseTable.Active := True;
    Opt_cas_bnk_BankTable.Active := True;
//    DataModuleF.UsersTable.Active := True;
    RegclientTable.Active := True;
    RegfournisseurTable.Active := True;
    CompanyTable.Active := True;
    
      //--------------------data moder changer------------///
      DataModuleF.GstockdcConnection02.DriverName := 'PG';
      DataModuleF.GstockdcConnection02.Params.Values['Server'] :='localhost'; // your server name'';
      DataModuleF.GstockdcConnection02.Params.Values['user_name'] := 'postgres';    // adjust to suit
      DataModuleF.GstockdcConnection02.Params.Values['password'] := ''; // ditto
      DataModuleF.GstockdcConnection02.Params.Values['Port'] := '5432';
      DataModuleF.GstockdcConnection02.Params.Values['CharacterSet'] := 'SQL_ASCII';
      DataModuleF.GstockdcConnection02.LoginPrompt := False;


      DataModuleF.GstockdcConnection02.Params.Values['Database'] := 'GSTOCKDC2';
      DataModuleF.GstockdcConnection02.Connected:= True;

      DataModuleF.TopClient.Active:= True;
      DataModuleF.TopFour.Active:= True;
      DataModuleF.TopVerClient.Active:= True;
      DataModuleF.TopVerFour.Active:= True;
      DataModuleF.Top5produit.Active:= True;
      DataModuleF.TotalProduit.Active:= True;
      DataModuleF.ToatalVerMonthVLIV.Active:= True;
      DataModuleF.ToatalVerMonthVFAC.Active:= True;
      DataModuleF.ToatalVerMonthVCTR.Active:= True;
      DataModuleF.ToatalVerMonthAREC.Active:= True;
      DataModuleF.ToatalVerMonthAFAC.Active:= True;


      DataModuleF.ChargesTable.Active:= True;
      DataModuleF.Charge_typeTable.Active:= True;
      DataModuleF.Charge_s_typeTable.Active:= True;
      DataModuleF.PertesTable.Active:= True;
      DataModuleF.Perte_typeTable.Active:= True;

      sImage1.ImageIndex:=3;
      sImage1.Tag := 0;

     end;
   

   if Assigned(DashboardF) then
   begin
     DashboardF.OnPaint(Sender)
   end;
   
   //-----this is the set the value of transactions at first start----
  SQLQuery.Active:= False;
  SQLQuery.SQL.Clear;   
  SQLQuery.SQL.Text:= ' SELECT datname, tup_inserted, tup_updated, tup_deleted '
  +' FROM pg_stat_database WHERE datname = ' +QuotedStr(GstockdcConnection.Params.Database);
  SQLQuery.Active:= True;

  CountInsert:= SQLQuery.FieldByName('tup_inserted').AsInteger;
  CountUpdate:= SQLQuery.FieldByName('tup_updated').AsInteger;
  CountDelete:= SQLQuery.FieldByName('tup_deleted').AsInteger;

  SQLQuery.SQL.Clear;    
  SQLQuery.Active:= False;

  
   
end;

procedure TMainForm.SFamPMainFMmnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            SfamproduitTable.Active:= False;
            SfamproduitTable.SQL.Clear;
            SfamproduitTable.SQL.Text:= 'SELECT * FROM sfamproduit';
            SfamproduitTable.Active:= True;

            SFamPListF:=TSFamPListF.Create(Application);
     //       ClientGestionF.BringToFront;
            SFamPListF.Left:=  (Screen.Width div 2 ) - (SFamPListF.Width div 2)    ;
            SFamPListF.Top:=   (Screen.Height div 2) - (SFamPListF.Height div 2)    ;

            SFamPListF.ShowModal;
end;

procedure TMainForm.UniteMainFMmnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            UniteTable.Active:= False;
            UniteTable.SQL.Clear;
            UniteTable.SQL.Text:= 'SELECT * FROM unite';
            UniteTable.Active:= True;

            UnitesListF:=TUnitesListF.Create(Application);
     //       ClientGestionF.BringToFront;
            UnitesListF.Left:=  (Screen.Width div 2 ) - (UnitesListF.Width div 2)    ;
            UnitesListF.Top:=   (Screen.Height div 2) - (UnitesListF.Height div 2)    ;

            UnitesListF.ShowModal;
end;

procedure TMainForm.L1Click(Sender: TObject);
begin
  //-------- Show the splash screan for the type charge to add new one---------//

            DataModuleF.Charge_typeTable.Active:= False;
            DataModuleF.Charge_typeTable.SQL.Clear;
            DataModuleF.Charge_typeTable.SQL.Text:= 'SELECT * FROM charge_type';
            DataModuleF.Charge_typeTable.Active:= True;

            TypeChargeListF:=TTypeChargeListF.Create(Application);
            TypeChargeListF.Left:=  (Screen.Width div 2 ) - (TypeChargeListF.Width div 2)    ;
            TypeChargeListF.Top:=   (Screen.Height div 2) - (TypeChargeListF.Height div 2)    ;

            TypeChargeListF.Show;
end;

procedure TMainForm.L3Click(Sender: TObject);
begin
if Not Assigned(ChargesFListF) then

     ChargesFListF:= TChargesFListF.Create(Application) else
                                        begin
                                          ChargesFListF.Show
                                        end;
end;

procedure TMainForm.L4Click(Sender: TObject);
begin
if Not Assigned(PertesFListF) then

     PertesFListF:= TPertesFListF.Create(Application) else
                                        begin
                                          PertesFListF.Show
                                        end;
end;

procedure TMainForm.ListedetypesdeCharge1Click(Sender: TObject);
begin
  //-------- Show the splash screan for the sous type charge to add new one---------//

            DataModuleF.Charge_s_typeTable.Active:= False;
            DataModuleF.Charge_s_typeTable.SQL.Clear;
            DataModuleF.Charge_s_typeTable.SQL.Text:= 'SELECT * FROM charge_s_type';
            DataModuleF.Charge_s_typeTable.Active:= True;

            STypeChargeListF:=TSTypeChargeListF.Create(Application);
            STypeChargeListF.Left:=  (Screen.Width div 2 ) - (STypeChargeListF.Width div 2)    ;
            STypeChargeListF.Top:=   (Screen.Height div 2) - (STypeChargeListF.Height div 2)    ;

            STypeChargeListF.Show;
end;

procedure TMainForm.ListedetypesdeCharge2Click(Sender: TObject);
begin
  //-------- Show the splash screan for the sous type charge to add new one---------//

            DataModuleF.Perte_typeTable.Active:= False;
            DataModuleF.Perte_typeTable.SQL.Clear;
            DataModuleF.Perte_typeTable.SQL.Text:= 'SELECT * FROM perte_type';
            DataModuleF.Perte_typeTable.Active:= True;

            TypePerteListF:=TTypePerteListF.Create(Application);
            TypePerteListF.Left:=  (Screen.Width div 2 ) - (TypePerteListF.Width div 2)    ;
            TypePerteListF.Top:=   (Screen.Height div 2) - (TypePerteListF.Height div 2)    ;

            TypePerteListF.Show;
end;

procedure TMainForm.LocalMainFMmnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            LocalisationTable.Active:= False;
            LocalisationTable.SQL.Clear;
            LocalisationTable.SQL.Text:= 'SELECT * FROM localisation';
            LocalisationTable.Active:= True;

            LocaleListF:=TLocaleListF.Create(Application);
     //       ClientGestionF.BringToFront;
            LocaleListF.Left:=  (Screen.Width div 2 ) - (LocaleListF.Width div 2)    ;
            LocaleListF.Top:=   (Screen.Height div 2) - (LocaleListF.Height div 2)    ;

            LocaleListF.ShowModal;
end;

End.
