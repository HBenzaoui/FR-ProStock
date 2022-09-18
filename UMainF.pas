unit UMainF;

interface

uses 
  Winapi.Windows, Vcl.Printers,
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
    StockMainFMnm: TMenuItem;
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
    ProduitTablelogo_p: TBlobField;
    ProduitTableperissable_p: TBooleanField;
    ProduitTabledateperiss_p: TDateField;
    ProduitTablealertdays_p: TSmallintField;
    ProduitTablecodebar_p: TWideStringField;
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
    Bona_recTablevalider_barec: TBooleanField;
    Bona_recTablenum_barec: TWideStringField;
    Bona_recPlistTable: TFDQuery;
    ProduitTableQUT: TIntegerField;
    FDQuery2: TFDQuery;
    Button1: TButton;
    Button2: TButton;
    ComptesMainFMmn: TMenuItem;
    N13: TMenuItem;
    LocalMainFMmn: TMenuItem;
    PanelIcons24: TsAlphaImageList;
    Mode_paiementTable: TFDQuery;
    CompteTable: TFDQuery;
    PanelIcons48: TsAlphaImageList;
    GridIcons13: TsAlphaImageList;
    Bona_recTablenum_cheque_barec: TWideStringField;
    GridIconsMP20: TsAlphaImageList;
    Bona_recTablecode_mdpai: TSmallintField;
    Bona_recTablecode_cmpt: TSmallintField;
    Bona_recTableCompte: TStringField;
    Bona_recTableModePaie: TStringField;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Mode_paiementTablecode_mdpai: TSmallintField;
    Mode_paiementTablenom_mdpai: TWideStringField;
    Mode_paiementTablecode_cmpt: TIntegerField;
    Button8: TButton;
    Bonv_livTable: TFDQuery;
    Bonv_liv_listTable: TFDQuery;
    Bonv_livTablecode_bvliv: TIntegerField;
    Bonv_livTabledate_bvliv: TDateField;
    Bonv_livTabletime_bvliv: TTimeField;
    Bonv_livTablevalider_bvliv: TBooleanField;
    Bonv_livTablenum_bvliv: TWideStringField;
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
    Bona_facTablevalider_bafac: TBooleanField;
    Bona_facTablenum_bafac: TWideStringField;
    Bona_facTablenum_cheque_bafac: TWideStringField;
    Bona_facTablecode_mdpai: TSmallintField;
    Bona_facTablecode_cmpt: TSmallintField;
    Bona_fac_listTablecode_bafacl: TIntegerField;
    Bona_fac_listTablecode_bafac: TIntegerField;
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
    Bonv_facTablevalider_bvfac: TBooleanField;
    Bonv_facTablenum_bvfac: TWideStringField;
    Bonv_facTablenum_cheque_bvfac: TWideStringField;
    Bonv_facTablecode_mdpai: TSmallintField;
    Bonv_facTablecode_cmpt: TSmallintField;
    Bonv_fac_listTablecode_bvfacl: TIntegerField;
    Bonv_fac_listTablecode_bvfac: TIntegerField;
    Bonv_fac_listTablecond_p: TIntegerField;
    WilayasDataS: TDataSource;
    CommunesTablecode_w: TSmallintField;
    Bonv_livTableModePaie: TStringField;
    Bonv_livTableCompte: TStringField;
    Bona_facTableModePaie: TStringField;
    Bona_facTableCompte: TStringField;
    Bonv_facTableModePaie: TStringField;
    Bonv_facTableCompte: TStringField;
    Bonv_livTablecode_c: TIntegerField;
    Bonv_facTablecode_c: TIntegerField;
    Bonv_fac_listTablecode_p: TIntegerField;
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
    ClientTablenbank_c: TWideStringField;
    ClientTablerib_c: TWideStringField;
    ClientTableactivite_c: TWideStringField;
    ClientTablesiteweb_c: TWideStringField;
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
    FournisseurTableactiv_f: TBooleanField;
    FournisseurTablerc_f: TWideStringField;
    FournisseurTablenif_f: TWideStringField;
    FournisseurTablenart_f: TWideStringField;
    FournisseurTablenis_f: TWideStringField;
    FournisseurTablenbank_f: TWideStringField;
    FournisseurTablerib_f: TWideStringField;
    FournisseurTablesiteweb_f: TWideStringField;
    Bona_recTablecode_f: TIntegerField;
    FournisseurTablecode_f: TIntegerField;
    Button14: TButton;
    Button15: TButton;
    ComptoiIcons48: TsAlphaImageList;
    Bonv_ctrTable: TFDQuery;
    Bonv_ctr_listTable: TFDQuery;
    Bonv_ctr_listTablecode_bvctrl: TIntegerField;
    Bonv_ctr_listTablecode_bvctr: TIntegerField;
    Bonv_ctr_listTablecond_p: TIntegerField;
    Bonv_ctr_listTablecode_p: TIntegerField;
    Bonv_ctrTablecode_bvctr: TIntegerField;
    Bonv_ctrTabledate_bvctr: TDateField;
    Bonv_ctrTabletime_bvctr: TTimeField;
    Bonv_ctrTablecode_c: TIntegerField;
    Bonv_ctrTablevalider_bvctr: TBooleanField;
    Bonv_ctrTablenum_bvctr: TWideStringField;
    TreMainFMnm: TMenuItem;
    C5: TMenuItem;
    B6: TMenuItem;
    InventoryMainFMnm: TMenuItem;
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
    Button18: TButton;
    StatuBar: TsStatusBar;
    Timer1: TTimer;
    GridIconsUR36: TsAlphaImageList;
    Bonv_ctrTablecode_ur: TIntegerField;
    Bona_recTablecode_ur: TIntegerField;
    Bona_facTablecode_ur: TIntegerField;
    Bonv_livTablecode_ur: TIntegerField;
    Bonv_facTablecode_ur: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_ocb: TIntegerField;
    Opt_cas_bnk_CaisseTabledate_ocb: TDateField;
    Opt_cas_bnk_CaisseTablenom_ocb: TWideStringField;
    Opt_cas_bnk_CaisseTablethird_ocb: TWideStringField;
    Opt_cas_bnk_CaisseTablecode_mdpai: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_cmpt: TIntegerField;
    Opt_cas_bnk_CaisseTabletime_ocb: TTimeField;
    Opt_cas_bnk_CaisseTablenature_ocb: TBooleanField;
    Opt_cas_bnk_CaisseTablecode_ur: TIntegerField;
    Opt_cas_bnk_BankTablecode_ocb: TIntegerField;
    Opt_cas_bnk_BankTabledate_ocb: TDateField;
    Opt_cas_bnk_BankTablenom_ocb: TWideStringField;
    Opt_cas_bnk_BankTablethird_ocb: TWideStringField;
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
    RegclientTablecode_mdpai: TIntegerField;
    RegclientTablenum_cheque_rc: TWideStringField;
    RegclientTablecode_c: TIntegerField;
    RegclientTablecode_ur: TIntegerField;
    RegfournisseurTablecode_rf: TIntegerField;
    RegfournisseurTablenom_rf: TWideStringField;
    RegfournisseurTabledate_rf: TDateField;
    RegfournisseurTabletime_rf: TTimeField;
    RegfournisseurTablecode_mdpai: TIntegerField;
    RegfournisseurTablenum_cheque_rf: TWideStringField;
    RegfournisseurTablecode_f: TIntegerField;
    RegfournisseurTablecode_ur: TIntegerField;
    RegclientTableAgent: TStringField;
    RegfournisseurTableAgent: TStringField;
    Bona_recTablebon_or_no_barec: TBooleanField;
    RegfournisseurTablecode_cmpt: TIntegerField;
    RegclientTablecode_cmpt: TIntegerField;
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
    famp_ur: TCheckBox;
    sfamp_ur: TCheckBox;
    mdpai_ur: TCheckBox;
    cmpt_ur: TCheckBox;
    unit_ur: TCheckBox;
    local_ur: TCheckBox;
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
    Bonp_facTablevalider_bpfac: TBooleanField;
    Bonp_facTablenum_bpfac: TWideStringField;
    Bonp_fac_listTablecode_bpfacl: TIntegerField;
    Bonp_fac_listTablecode_bpfac: TIntegerField;
    Bonp_fac_listTablecond_p: TIntegerField;
    Bonp_fac_listTablecode_p: TIntegerField;
    Bonp_fac_listTabletva_p: TSmallintField;
    Bonp_facTablecode_ur: TIntegerField;
    N21: TMenuItem;
    Label1: TLabel;
    Opt_cas_bnk_CaisseTablecode_transfer: TIntegerField;
    Opt_cas_bnk_BankTablecode_transfer: TIntegerField;
    ProduitTableobser_p: TWideStringField;
    ClientTableobser_c: TWideStringField;
    FournisseurTableobser_f: TWideStringField;
    Bona_recTableobser_barec: TWideStringField;
    Bona_facTableobser_bafac: TWideStringField;
    Bonv_facTableobser_bvfac: TWideStringField;
    Bonv_ctrTableobser_bvctr: TWideStringField;
    RegclientTableobser_rc: TWideStringField;
    RegfournisseurTableobser_rf: TWideStringField;
    Bonp_facTableobser_bpfac: TWideStringField;
    Bonv_liv_listTablecode_barec: TIntegerField;
    SQLQuery3: TFDQuery;
    Bonv_ctr_listTablecode_barec: TIntegerField;
    ChangUserMAinFMnu: TMenuItem;
    N24: TMenuItem;
    OuvertureduTiroirCaisse1: TMenuItem;
    Reconnectez1: TMenuItem;
    FunctionsTriggesFDScript: TFDScript;
    Bonv_livTableobser_bvliv: TWideStringField;
    Bonv_livTableAgent: TStringField;
    Bona_facTableAgent: TStringField;
    Bonp_facTableAgent: TStringField;
    Bonv_facTableAgent: TStringField;
    Bonv_ctrTableAgent: TStringField;
    Opt_cas_bnk_CaisseTableAgent: TStringField;
    Opt_cas_bnk_BankTableAgent: TStringField;
    Bonv_ctrTableremiseperc: TFMTBCDField;
    Bonv_fac_listTablecode_bafac: TIntegerField;
    Bonp_facTableremiseperc: TFMTBCDField;
    Bonv_liv_listTablenomp: TWideStringField;
    Bonv_liv_listTablereferp: TWideStringField;
    Bonv_ctr_listTablenomp: TWideStringField;
    Bonv_ctr_listTablereferp: TWideStringField;
    Bonv_fac_listTablenomp: TWideStringField;
    Bonv_fac_listTablereferp: TWideStringField;
    Bonp_fac_listTablenomp: TWideStringField;
    Bonp_fac_listTablereferp: TWideStringField;
    Bona_recTableremiseperc: TFMTBCDField;
    Bona_fac_listTabletva_p: TSmallintField;
    Bona_fac_listTablenomp: TWideStringField;
    Bona_fac_listTablereferp: TWideStringField;
    Bona_fac_listTabledateperiss_p: TDateField;
    AltersDBChangesFDScript: TFDScript;
    totaux_ur: TCheckBox;
    viewprixa_ur: TCheckBox;
    firstrunCkb: TCheckBox;
    MouvementdeProduit1: TMenuItem;
    N25: TMenuItem;
    MouvementdeProduit2: TMenuItem;
    MouvementdeProduit3: TMenuItem;
    stock_ur: TCheckBox;
    RegfournisseurTablecode_bacom: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_bacom: TIntegerField;
    Opt_cas_bnk_BankTablecode_bacom: TIntegerField;
    RegclientTablecode_bvcom: TIntegerField;
    Opt_cas_bnk_CaisseTablecode_bvcom: TIntegerField;
    Opt_cas_bnk_BankTablecode_bvcom: TIntegerField;
    Bonv_ctr_listTablelocalisation: TWideStringField;
    Bonp_fac_listTablelocalisation: TWideStringField;
    Bonv_liv_listTablelocalisation: TWideStringField;
    BRVMainFMmn: TMenuItem;
    FDEventAlerter: TFDEventAlerter;
    SQLQuery4: TFDQuery;
    ClientTablecredit_c: TFMTBCDField;
    ClientTableoldcredit_c: TFMTBCDField;
    ClientTablemaxcredit_c: TFMTBCDField;
    FournisseurTablecredit_f: TFMTBCDField;
    FournisseurTableoldcredit_f: TFMTBCDField;
    FournisseurTablemaxcredit_f: TFMTBCDField;
    RegclientTablemontver_rc: TFMTBCDField;
    RegclientTablecode_bvret: TIntegerField;
    RegfournisseurTablemontver_rf: TFMTBCDField;
    Bonv_ctr_listTablequt_p: TFMTBCDField;
    Bonv_ctr_listTableprixvd_p: TFMTBCDField;
    Bonv_ctr_listTableprixht_p: TFMTBCDField;
    Bonv_ctr_listTableprixvttc: TFMTBCDField;
    Bonv_ctr_listTablemontantht: TFMTBCDField;
    Bonv_ctr_listTablemontantttc: TFMTBCDField;
    Bonv_ctr_listTablemontanttva: TFMTBCDField;
    Bonv_ctr_listTablemontantaht: TFMTBCDField;
    Bonv_ctr_listTablemarge: TFMTBCDField;
    Bonv_ctr_listTablemargem: TFMTBCDField;
    Bonp_fac_listTablequt_p: TFMTBCDField;
    Bonp_fac_listTableprixvd_p: TFMTBCDField;
    Bonp_fac_listTableprixht_p: TFMTBCDField;
    Bonp_fac_listTableprixvttc: TFMTBCDField;
    Bonp_fac_listTablemontantht: TFMTBCDField;
    Bonp_fac_listTablemontantttc: TFMTBCDField;
    Bonp_fac_listTablemontanttva: TFMTBCDField;
    Bonp_fac_listTablemontantaht: TFMTBCDField;
    Bonp_fac_listTablemarge: TFMTBCDField;
    Bonp_fac_listTablemargem: TFMTBCDField;
    Bonv_liv_listTablequt_p: TFMTBCDField;
    Bonv_liv_listTableprixvd_p: TFMTBCDField;
    Bonv_liv_listTableprixht_p: TFMTBCDField;
    Bonv_liv_listTableprixvttc: TFMTBCDField;
    Bonv_liv_listTablemontantht: TFMTBCDField;
    Bonv_liv_listTablemontantttc: TFMTBCDField;
    Bonv_liv_listTablemontanttva: TFMTBCDField;
    Bonv_liv_listTablemontantaht: TFMTBCDField;
    Bonv_liv_listTablemarge: TFMTBCDField;
    Bonv_liv_listTablemargem: TFMTBCDField;
    Bonv_fac_listTablequt_p: TFMTBCDField;
    Bonv_fac_listTableprixvd_p: TFMTBCDField;
    Bonv_fac_listTableprixht_p: TFMTBCDField;
    Bonv_fac_listTableprixvttc: TFMTBCDField;
    Bonv_fac_listTablemontantht: TFMTBCDField;
    Bonv_fac_listTablemontantttc: TFMTBCDField;
    Bonv_fac_listTablemontanttva: TFMTBCDField;
    Bonv_fac_listTablemontantaht: TFMTBCDField;
    Bonv_fac_listTablemarge: TFMTBCDField;
    Bonv_fac_listTablemargem: TFMTBCDField;
    Bona_fac_listTablequt_p: TFMTBCDField;
    Bona_fac_listTableprixht_p: TFMTBCDField;
    Bona_fac_listTableprixvd_p: TFMTBCDField;
    Bona_fac_listTableprixvr_p: TFMTBCDField;
    Bona_fac_listTableprixvg_p: TFMTBCDField;
    Bona_fac_listTableprixva_p: TFMTBCDField;
    Bona_fac_listTableprixva2_p: TFMTBCDField;
    Bona_fac_listTablequtinstock_p: TFMTBCDField;
    Bona_fac_listTableprixattc: TFMTBCDField;
    Bona_fac_listTablemontantht: TFMTBCDField;
    Bona_fac_listTablemontantttc: TFMTBCDField;
    Bona_fac_listTablemontanttva: TFMTBCDField;
    Bona_fac_listTablemontantaht: TFMTBCDField;
    Bona_fac_listTablemarged: TFMTBCDField;
    Bona_fac_listTablemarger: TFMTBCDField;
    Bona_fac_listTablemargeg: TFMTBCDField;
    Bona_fac_listTablemargea: TFMTBCDField;
    Bona_fac_listTablemargea2: TFMTBCDField;
    ProduitTableprixht_p: TFMTBCDField;
    ProduitTableprixvd_p: TFMTBCDField;
    ProduitTableprixvr_p: TFMTBCDField;
    ProduitTableprixvg_p: TFMTBCDField;
    ProduitTableprixva_p: TFMTBCDField;
    ProduitTableprixva2_p: TFMTBCDField;
    ProduitTablequt_p: TFMTBCDField;
    ProduitTablequtmin_p: TFMTBCDField;
    ProduitTablequtmax_p: TFMTBCDField;
    ProduitTablequtini_p: TFMTBCDField;
    ProduitTablepmp_p: TFMTBCDField;
    ProduitTablecode_mrkp: TSmallintField;
    ProduitTableprixattc: TFMTBCDField;
    ProduitTableprixvttcd: TFMTBCDField;
    ProduitTableprixvttcr: TFMTBCDField;
    ProduitTableprixvttcg: TFMTBCDField;
    ProduitTableprixvttca: TFMTBCDField;
    ProduitTableprixvttca2: TFMTBCDField;
    ProduitTablequtdispo: TFMTBCDField;
    Opt_cas_bnk_CaisseTableencaiss_ocb: TFMTBCDField;
    Opt_cas_bnk_CaisseTabledecaiss_ocb: TFMTBCDField;
    Opt_cas_bnk_CaisseTablecode_bvret: TIntegerField;
    Opt_cas_bnk_BankTableencaiss_ocb: TFMTBCDField;
    Opt_cas_bnk_BankTabledecaiss_ocb: TFMTBCDField;
    Opt_cas_bnk_BankTablecode_bvret: TIntegerField;
    Bonv_livTablemontht_bvliv: TFMTBCDField;
    Bonv_livTablemontver_bvliv: TFMTBCDField;
    Bonv_livTablemontttc_bvliv: TFMTBCDField;
    Bonv_livTableremise_bvliv: TFMTBCDField;
    Bonv_livTablemarge_bvliv: TFMTBCDField;
    Bonv_livTablemontaht_bvliv: TFMTBCDField;
    Bonv_livTablemontanttva: TFMTBCDField;
    Bonv_livTablemontantres: TFMTBCDField;
    Bonv_livTableremiseperc: TFMTBCDField;
    Bonv_livTablenetht: TFMTBCDField;
    Bona_recTablemontht_barec: TFMTBCDField;
    Bona_recTablemontver_barec: TFMTBCDField;
    Bona_recTablemontttc_barec: TFMTBCDField;
    Bona_recTableremise_barec: TFMTBCDField;
    Bona_recTablemontanttva: TFMTBCDField;
    Bona_recTablemontantres: TFMTBCDField;
    Bona_recTablenetht: TFMTBCDField;
    Bonv_ctrTablemontht_bvctr: TFMTBCDField;
    Bonv_ctrTablemontver_bvctr: TFMTBCDField;
    Bonv_ctrTablemontttc_bvctr: TFMTBCDField;
    Bonv_ctrTableremise_bvctr: TFMTBCDField;
    Bonv_ctrTablemarge_bvctr: TFMTBCDField;
    Bonv_ctrTablemontaht_bvctr: TFMTBCDField;
    Bonv_ctrTablemontanttva: TFMTBCDField;
    Bonv_ctrTablemontantren: TFMTBCDField;
    Bonv_ctrTablenetht: TFMTBCDField;
    Bonp_facTablemontht_bpfac: TFMTBCDField;
    Bonp_facTablemontver_bpfac: TFMTBCDField;
    Bonp_facTablemontttc_bpfac: TFMTBCDField;
    Bonp_facTableremise_bpfac: TFMTBCDField;
    Bonp_facTablemarge_bpfac: TFMTBCDField;
    Bonp_facTabletimber_bpfac: TFMTBCDField;
    Bonp_facTablemontaht_bpfac: TFMTBCDField;
    Bonp_facTablemontanttva: TFMTBCDField;
    Bonp_facTablemontantres: TFMTBCDField;
    Bonp_facTablenetht: TFMTBCDField;
    Bonp_facTablenetttc: TFMTBCDField;
    Bona_facTablemontht_bafac: TFMTBCDField;
    Bona_facTablemontver_bafac: TFMTBCDField;
    Bona_facTablemontttc_bafac: TFMTBCDField;
    Bona_facTableremise_bafac: TFMTBCDField;
    Bona_facTabletimber_bafac: TFMTBCDField;
    Bona_facTablemontanttva: TFMTBCDField;
    Bona_facTablemontantres: TFMTBCDField;
    Bona_facTableremiseperc: TFMTBCDField;
    Bona_facTablenetht: TFMTBCDField;
    Bona_facTablenetttc: TFMTBCDField;
    Bonv_facTablemontht_bvfac: TFMTBCDField;
    Bonv_facTablemontver_bvfac: TFMTBCDField;
    Bonv_facTablemontttc_bvfac: TFMTBCDField;
    Bonv_facTableremise_bvfac: TFMTBCDField;
    Bonv_facTabletimber_bvfac: TFMTBCDField;
    Bonv_facTablemarge_bvfac: TFMTBCDField;
    Bonv_facTablemontaht_bvfac: TFMTBCDField;
    Bonv_facTablemontanttva: TFMTBCDField;
    Bonv_facTablemontantres: TFMTBCDField;
    Bonv_facTableremiseperc: TFMTBCDField;
    Bonv_facTablenetht: TFMTBCDField;
    Bonv_facTablenetttc: TFMTBCDField;
    Bona_recPlistTablecode_barec: TIntegerField;
    Bona_recPlistTablecode_barecl: TIntegerField;
    Bona_recPlistTablequt_p: TFMTBCDField;
    Bona_recPlistTablecond_p: TIntegerField;
    Bona_recPlistTablecode_p: TIntegerField;
    Bona_recPlistTabletva_p: TSmallintField;
    Bona_recPlistTableprixht_p: TFMTBCDField;
    Bona_recPlistTablenomp: TWideStringField;
    Bona_recPlistTablereferp: TWideStringField;
    Bona_recPlistTableprixvd_p: TFMTBCDField;
    Bona_recPlistTableprixvr_p: TFMTBCDField;
    Bona_recPlistTableprixvg_p: TFMTBCDField;
    Bona_recPlistTableprixva_p: TFMTBCDField;
    Bona_recPlistTableprixva2_p: TFMTBCDField;
    Bona_recPlistTabledateperiss_p: TDateField;
    Bona_recPlistTablequtinstock_p: TFMTBCDField;
    Bona_recPlistTablelocalisation: TWideStringField;
    Bona_recPlistTableprixattc: TFMTBCDField;
    Bona_recPlistTablemontantht: TFMTBCDField;
    Bona_recPlistTablemontantttc: TFMTBCDField;
    Bona_recPlistTablemontanttva: TFMTBCDField;
    Bona_recPlistTablemontantaht: TFMTBCDField;
    Bona_recPlistTablemarged: TFMTBCDField;
    Bona_recPlistTablemarger: TFMTBCDField;
    Bona_recPlistTablemargeg: TFMTBCDField;
    Bona_recPlistTablemargea: TFMTBCDField;
    Bona_recPlistTablemargea2: TFMTBCDField;
    investissement1: TMenuItem;
    N26: TMenuItem;
    ypesdesCharge1: TMenuItem;
    SousTypesdesCharges1: TMenuItem;
    ProduitTablevaluestockaht: TFMTBCDField;
    ProduitTablevaluestockattc: TFMTBCDField;
    ProduitTablevaluestockvdht: TFMTBCDField;
    ProduitTablevaluestockvdttc: TFMTBCDField;
    ProduitTablevaluestockvrht: TFMTBCDField;
    ProduitTablevaluestockvrttc: TFMTBCDField;
    ProduitTablevaluestockvght: TFMTBCDField;
    ProduitTablevaluestockvgttc: TFMTBCDField;
    ProduitTablevaluestockvaht: TFMTBCDField;
    ProduitTablevaluestockvattc: TFMTBCDField;
    ProduitTablevaluestockva2ht: TFMTBCDField;
    ProduitTablevaluestockva2ttc: TFMTBCDField;
    Bonv_facTableclientbvfac: TWideStringField;
    Bonv_livTableclientbvliv: TWideStringField;
    Bona_facTablefourbafac: TWideStringField;
    RegfournisseurTableFourRF: TWideStringField;
    RegclientTableClientrRC: TWideStringField;
    Bonp_facTableclientbvfac: TWideStringField;
    Bona_recTablefourbarec: TWideStringField;
    Bonv_ctrTableclientbvctr: TWideStringField;
    procedure ClientMainFBtnClick(Sender: TObject);
    procedure FourMainFBtnClick(Sender: TObject);
    procedure ProduitMainFBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComptoirMainFBtnClick(Sender: TObject);
    procedure BRMainFMmnClick(Sender: TObject);
    procedure Bona_recPlistTableCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Bona_recPlistTableAfterRefresh(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BLMainFMmnClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Bonv_liv_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_fac_listTableAfterRefresh(DataSet: TDataSet);
    procedure FactureV2MainFMnmClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Bona_fac_listTableAfterRefresh(DataSet: TDataSet);
    procedure FactureAMainFMnmClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure dddClick(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Bonv_ctr_listTableAfterRefresh(DataSet: TDataSet);
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
    procedure FactureP2MainFMnmClick(Sender: TObject);
    procedure Bonp_fac_listTableAfterRefresh(DataSet: TDataSet);
    procedure T3Click(Sender: TObject);
    procedure A5Click(Sender: TObject);
    procedure ChangUserMAinFMnuClick(Sender: TObject);
    procedure Bonv_ctr_listTablequt_pChange(Sender: TField);
    procedure OuvertureduTiroirCaisse1Click(Sender: TObject);
    procedure Reconnectez1Click(Sender: TObject);
    procedure GstockdcConnectionError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure Bonv_liv_listTablequt_pChange(Sender: TField);
    procedure Bonv_liv_listTableprixvd_pChange(Sender: TField);
    procedure Bonv_liv_listTablecond_pChange(Sender: TField);
    procedure Bonv_liv_listTabletva_pChange(Sender: TField);
    procedure Bonv_fac_listTablequt_pChange(Sender: TField);
    procedure Bonv_fac_listTableprixvd_pChange(Sender: TField);
    procedure Bonv_fac_listTablecond_pChange(Sender: TField);
    procedure Bonv_fac_listTabletva_pChange(Sender: TField);
    procedure Bonp_fac_listTablequt_pChange(Sender: TField);
    procedure Bonp_fac_listTableprixvd_pChange(Sender: TField);
    procedure Bonp_fac_listTablecond_pChange(Sender: TField);
    procedure Bonp_fac_listTabletva_pChange(Sender: TField);
    procedure Bonv_ctr_listTableprixvd_pChange(Sender: TField);
    procedure Bonv_ctr_listTablecond_pChange(Sender: TField);
    procedure Bonv_ctr_listTabletva_pChange(Sender: TField);
    procedure Bona_recPlistTablequt_pChange(Sender: TField);
    procedure Bona_recPlistTableprixht_pChange(Sender: TField);
    procedure Bona_recPlistTablecond_pChange(Sender: TField);
    procedure Bona_recPlistTabletva_pChange(Sender: TField);
    procedure Bona_recPlistTableprixvd_pChange(Sender: TField);
    procedure Bona_recPlistTableprixvr_pChange(Sender: TField);
    procedure Bona_recPlistTableprixvg_pChange(Sender: TField);
    procedure Bona_recPlistTableprixva_pChange(Sender: TField);
    procedure Bona_recPlistTableprixva2_pChange(Sender: TField);
    procedure Bona_fac_listTablequt_pChange(Sender: TField);
    procedure Bona_fac_listTableprixht_pChange(Sender: TField);
    procedure Bona_fac_listTablecond_pChange(Sender: TField);
    procedure Bona_fac_listTableprixvd_pChange(Sender: TField);
    procedure Bona_fac_listTableprixvr_pChange(Sender: TField);
    procedure Bona_fac_listTableprixvg_pChange(Sender: TField);
    procedure Bona_fac_listTableprixva_pChange(Sender: TField);
    procedure Bona_fac_listTableprixva2_pChange(Sender: TField);
    procedure InventoryMainFMnmClick(Sender: TObject);
    procedure MouvementdeProduit2Click(Sender: TObject);
    procedure MouvementdeProduit3Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure BRVMainFMmnClick(Sender: TObject);
    procedure FDEventAlerterAlert(ASender: TFDCustomEventAlerter;
      const AEventName: string; const AArgument: Variant);
  private
   //---- this to value of changege we need it to check if theuser changed something
     CountInsert,CountUpdate,CountDelete   : Int64;
     CountInsertCheck,CountUpdateCheck,CountDeleteCheck :Int64;
     
    TimerStart: TDateTime;
//    procedure ActiveTables;
//    procedure InactiveTables;

    procedure RefreshCNotification;

    procedure SwitchingDB;


   public
    function KillTask(ExeFileName: string): Integer;
    function getDBName(): String;

    procedure ConnectToDBonMainCreate;


    procedure ActiveTables;
    procedure InactiveTables;
    procedure RerfreshTables;
    procedure ActiveTablesControls;
    procedure BonCTRListTRefresh;

     procedure WMUserCloseTab(var Message: TMessage); message
    WM_USER_CLOSETAB;

    Procedure StartTimer;

    procedure LoadGridLayout(Mydbgrid: TDBGridEh; fileName: string);
    procedure SaveGridLayout(Mydbgrid: TDBGridEh; fileName: string);



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
  UBonFacPGestion, UBonFacP, UTransferComptesGestion, UTransferListGestion,
  UAbout, DBCalcController, UInventory, UBonComA, UBonComAGestion, UBonComV, UBonComVGestion,
  UBonRetV;

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
          wForm.Position := MainForm.Position;
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


Procedure StringExplode(s: string; Delimiter: string; Var res: TStringList);
Begin
	res.Clear;
	res.Text := StringReplace(s, Delimiter, #13#10, [rfIgnoreCase, rfReplaceAll]);
End;

procedure TMainForm.SaveGridLayout(Mydbgrid: TDBGridEh; fileName: string);
var
  lines: TStringList;
  i: integer;
begin
	try
		lines := TStringList.Create;
                with Mydbgrid do
                begin
	        	for i := 0 to Mydbgrid.Columns.count-1 do
                        begin
	    			lines.Add(  IntToStr(Mydbgrid.Columns[i].Index)
		            	+ '~ ' + Mydbgrid.Columns[i].DisplayName
		            	+ '~ ' + Mydbgrid.Columns[i].Title.Caption
		            	+ '~ ' + IntToStr(Mydbgrid.Columns[i].Width)
                  + '~ ' + BoolToStr(Mydbgrid.Columns[i].Visible)
		            );
		        end;
	        end;

		lines.SaveToFile(fileName);
	finally
	        lines.free;
	end;
end;


procedure TMainForm.LoadGridLayout(Mydbgrid: TDBGridEh; fileName: string);
var
	lines: TStringList;
	columnInfo: TStringList;
	lineCtr: integer;
   	colIdx: integer;
        cnt: integer;
begin
 try
      	lines := TStringList.Create;
        columnInfo := TStringList.Create;
  	lines.LoadFromFile(fileName);
	for lineCtr := 0 to lines.Count-1 do
        begin
		if trim(lines[lineCtr]) <> '' then
                begin
			StringExplode(lines[lineCtr], '~ ', columnInfo);
			cnt:=Mydbgrid.Columns.count;
			// go through all the columns, looking for the one we are currently working on
			for colIdx := 0 to cnt-1 do
                        begin
				// once found, set its width and title, then its index (order)
	        		if Mydbgrid.Columns[colIdx].FieldName = columnInfo[1] then
                                begin
					Mydbgrid.Columns[colIdx].Width := StrToInt(columnInfo[3]);
					Mydbgrid.Columns[colIdx].Title.Caption := columnInfo[2];
          Mydbgrid.Columns[colIdx].Visible := StrToBool(columnInfo[4]);

			               // do the index assignment last!
					// ignore the index specified in the file. use its line
					Mydbgrid.Columns[colIdx].Index := lineCtr; //StrToInt(columnInfo[0]); order instead
				end; // if
			end;
		end;
	end;
 finally
	lines.free;
	if assigned(columnInfo) then
        	columnInfo.free;
 end;
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
       FournisseurTable.DisableControls;
       FournisseurTable.Active:=False;
       FournisseurTable.SQL.Clear;
       FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
       FournisseurTable.Active:=True;
       FournisseurTable.EnableControls;

if Not Assigned(BonRecF) then

     BonRecF:= TBonRecF.Create(Application) else
                                        begin
                                          BonRecF.Show
                                        end;
end;

procedure TMainForm.BRVMainFMmnClick(Sender: TObject);
begin
        ClientTable.DisableControls;
        ClientTable.Active:=False;
        ClientTable.SQL.Clear;
        ClientTable.SQL.Text:='SELECT * FROM client ';
        ClientTable.Active:=True;
        ClientTable.EnableControls;

if Not Assigned(BonRetVF) then

     BonRetVF:= TBonRetVF.Create(Application) else
                                        begin
                                          BonRetVF.Show
                                        end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  msg: String;
  I: Integer;

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
   begin 
   
     CanClose := false; 
     NormalForms 
   
   end else
    begin
    
      for I := dxTabbedMDIManager1.TabProperties.PageCount - 1 downto 0 do
      begin
       dxTabbedMDIManager1.TabProperties.Pages[I].MDIChild.Close;
      end;

       InactiveTables;
       GstockdcConnection.Connected:= False;
       DataModuleF.GstockdcConnection02.Connected:= False;
       DataModuleF.PSDBConfigConnection.Connected:= False;

      CanClose := True;
    end;
 end;

end;

procedure TMainForm.FormCreate(Sender: TObject);
var sCmd: string;
Ini: TIniFile;
begin
//  MainForm.FDPhysPgDriverLink1.VendorLib:= 'C:\Program Files (x86)\PostgreSQL\9.6\bin\libpq.dll' ; // Eable this is only for Debuggin
//     FDPhysPgDriverLink1.VendorLib:= GetCurrentDir+'\bin\libpq.dll' ;    // Eable this is only for Debuggin
     FDPhysPgDriverLink1.VendorLib:= GetCurrentDir+'\lib\libpq.dll' ;    // Eable this is only for releasing

//  Application.UpdateFormatSettings := false;
//  FormatSettings.DecimalSeparator := ',';
//  FormatSettings.ThousandSeparator := ' ';
//  FormatSettings.CurrencyDecimals := 2;
//  FormatSettings.DateSeparator:= '/';
//  FormatSettings.ShortDateFormat:= 'dd/mm/yyyy';
//  FormatSettings.CurrencyString:= ' ';
//  FormatSettings.CurrencyFormat:= 1;
//
//   Label1.Caption  :=  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);
  
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

procedure TMainForm.Q1Click(Sender: TObject);
begin
Close;
end;

procedure TMainForm.Bona_recPlistTableCalcFields(DataSet: TDataSet);
begin

   Sqlquery3.Active:=False;
   Sqlquery3.Sql.Clear;
   Sqlquery3.Sql.Text:='SELECT prixht_p, qut_p ,qutini_p from produit WHERE code_p =' + IntToStr (Bona_recPlistTable.FieldByName('code_p').AsInteger) ;
   Sqlquery3.Active:=True;

  Bona_recPlistTable.FieldByName('CalcPMP').AsFloat:=
  ((Sqlquery3.FieldByName('prixht_p').AsFloat * (Sqlquery3.FieldByName('qut_p').AsFloat + Sqlquery3.FieldByName('qutini_p').AsFloat))
  +(Bona_recPlistTable.FieldByName('prixht_p').AsFloat * Bona_recPlistTable.FieldByName('qut_p').AsFloat))
  / (Sqlquery3.FieldByName('qut_p').AsFloat + Sqlquery3.FieldByName('qutini_p').AsFloat + Bona_recPlistTable.FieldByName('qut_p').AsFloat);

  Sqlquery3.Active:=False;
   Sqlquery3.Sql.Clear;



  //  Bona_recPlistTable.FieldValues['PrixATTC']:=
  // (((Bona_recPlistTable.FieldValues['prixht_p'] * Bona_r ecPlistTable.FieldValues['tva_p'])/100) + (Bona_recPlistTable.FieldValues['prixht_p'])) ;
  //
  //   Bona_recPlistTable.FieldValues['MontantHT']:=
  // ((Bona_recPlistTable.FieldValues['prixht_p'] * Bona_recPlistTable.FieldValues['qut_p']) * (Bona_recPlistTable.FieldValues['cond_p']) ) ;
  //
  //
  //   Bona_recPlistTable.FieldValues['MontantTTC']:=
  // ((Bona_recPlistTable.FieldValues['PrixATTC'] * Bona_recPlistTable.FieldValues['qut_p']) * (Bona_recPlistTable.FieldValues['cond_p']) ) ;
  //
  //    Bona_recPlistTable.FieldValues['MontantTVA']:=
  // ((Bona_recPlistTable.FieldValues['MontantTTC']) - (Bona_recPlistTable.FieldValues['MontantHT'])) ;
  //
  //
  // if  Bona_recPlistTable.FieldValues['prixvd_p'] <> 0 then
  // begin
  //  if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
  // begin
  //      Bona_recPlistTable.FieldValues['MargeD']:=
  //((((Bona_recPlistTable.FieldValues['prixvd_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
  // end else
  //     begin
  //      Bona_recPlistTable.FieldValues['MargeD']:= 100;
  //     end;
  // end;
  //
  //  if  Bona_recPlistTable.FieldValues['prixvr_p'] <> 0 then
  // begin
  //   if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then  begin
  //      Bona_recPlistTable.FieldValues['MargeR']:=
  //((((Bona_recPlistTable.FieldValues['prixvr_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
  // end  else
  //      begin
  //        Bona_recPlistTable.FieldValues['MargeR']:= 100;
  //      end;
  // end;
  //   if  Bona_recPlistTable.FieldValues['prixvg_p'] <> 0 then
  // begin
  //    if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
  // begin
  //      Bona_recPlistTable.FieldValues['MargeG']:=
  //((((Bona_recPlistTable.FieldValues['prixvg_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
  // end else
  //     begin
  //         Bona_recPlistTable.FieldValues['MargeG']:= 100;
  //     end;
  // end;
  //   if  Bona_recPlistTable.FieldValues['prixva_p'] <> 0 then
  // begin
  //    if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
  // begin
  //      Bona_recPlistTable.FieldValues['MargeA']:=
  //((((Bona_recPlistTable.FieldValues['prixva_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
  // end else
  //     begin
  //       Bona_recPlistTable.FieldValues['MargeA']:= 100;
  //     end;
  // end;
  //   if  Bona_recPlistTable.FieldValues['prixva2_p'] <> 0 then
  // begin
  //    if  Bona_recPlistTable.FieldValues['prixht_p'] <> 0 then
  // begin
  //      Bona_recPlistTable.FieldValues['MargeA2']:=
  //((((Bona_recPlistTable.FieldValues['prixva2_p']) - (Bona_recPlistTable.FieldValues['prixht_p'])) / (Bona_recPlistTable.FieldValues['prixht_p']) ) * 100) ;
  // end else
  //     begin
  //       Bona_recPlistTable.FieldValues['MargeA2']:= 100;
  //     end;
  // end;

end;

procedure TMainForm.Bona_recPlistTablecond_pChange(Sender: TField);
begin
 if (Bona_recPlistTablecond_p.Value > 9999999) OR (Bona_recPlistTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTablecond_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTablecond_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTablecond_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTableprixht_pChange(Sender: TField);
begin
 if (Bona_recPlistTableprixht_p.Value > 9999999) OR (Bona_recPlistTableprixht_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTableprixht_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTableprixht_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTableprixht_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTableprixva2_pChange(Sender: TField);
begin

 if (Bona_recPlistTableprixva2_p.Value > 9999999) OR (Bona_recPlistTableprixva2_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTableprixva2_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTableprixva2_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTableprixva2_p.Value := 0;
      Bona_recPlistTable.Post;
//
     end;
end;

procedure TMainForm.Bona_recPlistTableprixva_pChange(Sender: TField);
begin
 if (Bona_recPlistTableprixva_p.Value > 9999999) OR (Bona_recPlistTableprixva_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTableprixva_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTableprixva_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTableprixva_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTableprixvd_pChange(Sender: TField);
begin

      if (Bona_recPlistTableprixvd_p.Value > 9999999) OR (Bona_recPlistTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTableprixvd_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTableprixvd_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTableprixvd_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTableprixvg_pChange(Sender: TField);
begin

 if (Bona_recPlistTableprixvg_p.Value > 9999999) OR (Bona_recPlistTableprixvg_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTableprixvg_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTableprixvg_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTableprixvg_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTableprixvr_pChange(Sender: TField);
begin
  if (Bona_recPlistTableprixvr_p.Value > 9999999) OR (Bona_recPlistTableprixvr_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTableprixvr_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTableprixvr_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTableprixvr_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTablequt_pChange(Sender: TField);
begin
 if (Bona_recPlistTablequt_p.Value > 9999999) OR (Bona_recPlistTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_recPlistTable.Edit;
  Bona_recPlistTablequt_p.Value := 1;
  Bona_recPlistTable.Post;

 end else if Bona_recPlistTablequt_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTablequt_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
end;

procedure TMainForm.Bona_recPlistTabletva_pChange(Sender: TField);
begin
     if Bona_recPlistTabletva_p.IsNull then
     begin

      Bona_recPlistTable.Edit;
      Bona_recPlistTabletva_p.Value := 0;
      Bona_recPlistTable.Post;

     end;
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
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,NewHT,BonRTotalHT: Double;
InvoiceID :Integer;
  begin

       if Assigned(BonRecGestionF) then
       begin

         SQLQuery3.Active:= False;
         SQLQuery3.SQL.Clear;
//         SQLQuery3.SQL.Text:= BonRecGestionF.BRLSQL+
         SQLQuery3.SQL.Text:= ' SELECT BRL.code_barecl,BRL.tva_p, '
      +'   (((BRL.prixht_p * BRL.tva_p)/100)+BRL.prixht_p) AS PrixATTC, '
      +'   ((BRL.prixht_p * BRL.qut_p) * cond_p) AS MontantHT, '
      +'   (((((BRL.prixht_p * BRL.tva_p)/100)+BRL.prixht_p) * BRL.qut_p)*cond_p) AS MontantTTC, '
      +'   (((((((BRL.prixht_p * BRL.tva_p)/100)+BRL.prixht_p) * BRL.qut_p)*cond_p) )-(((BRL.prixht_p * BRL.qut_p) * cond_p))) AS MontantTVA, '
      +'   ((BRL.prixht_p * BRL.qut_p)* cond_p) AS MontantAHT '

      +' FROM bona_rec_list as BRL '
      +' LEFT JOIN produit as P   '
      +'  ON BRL.code_p = P.code_p '+

         ' WHERE code_barec= '+ IntToStr(Bona_recTable.FieldByName('code_barec').AsInteger) +' ORDER BY code_barecl ';
         SQLQuery3.Active:= True;

          SQLQuery3.First;
          while not SQLQuery3.Eof do
          begin
            TotalHT:= TotalHT + (SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + SQLQuery3.FieldByName('tva_p').Value ;
            LeReste:= TotalTTC - StrToFloat(StringReplace(BonRecGestionF.BonRecRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            SQLQuery3.Next;
          end;

         SQLQuery3.Active:=false;
         SQLQuery3.SQL.Clear;

         InvoiceID := Bona_recPlistTable.FieldByName('code_barecl').AsInteger;
         Bona_recPlistTable.Active:=false;
         Bona_recPlistTable.SQL.Clear;
         Bona_recPlistTable.SQL.Text:= BonRecGestionF.BRLSQL+ ' ORDER BY code_barecl ' ;
         Bona_recPlistTable.Active:=True;

         Bona_recPlistTable.Locate('code_barecl',InvoiceID,[]);



    BonRecGestionF.BonRecTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonRecGestionF.BonRecTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonRecGestionF.BonRecTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonRecGestionF.BonRecResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonRecGestionF.BonRTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonRecGestionF.BonRTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonRecGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;

    if MainForm.Bona_recTable.FieldByName('montver_barec').Value<> Null then
    begin
    Regle:= MainForm.Bona_recTable.FieldByName('montver_barec').Value;
    BonRecGestionF.BonRecRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bona_recPlistTable.IsEmpty) then
    begin
//    if BonRecGestionF.FournisseurBonRecGCbx.Text<>'' then
//    begin
//    BonRecGestionF.BonRecGFourNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonRecGestionF.BonRecGFourOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

//     BonRecGestionF.RemisePerctageBonRecGEdt.Text:='';
//    BonRecGestionF.RemiseBonRecGEdtChange(Self);

              BonRecGestionF.RemisePerctageBonRecGEdtChange(Self);

            if BonRecGestionF.BonRTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRecGestionF.BonRTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonRecGestionF.BonRecTotalHTLbl.Caption<>'' then
            begin
            BonRTotalHT:=StrToFloat (StringReplace(BonRecGestionF.BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonRecGestionF.RemiseBonRecGEdt.Text:=FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);
    end;
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

procedure TMainForm.Bonp_fac_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFV,TTCafterTimber,Marge,NewHt,BonFVTotalHT: Double ;
InvoiceID :Integer;
  begin
      if Assigned(BonFacPGestionF) then
       begin

         SQLQuery3.Active:= False;
         SQLQuery3.SQL.Clear;
//         SQLQuery3.SQL.Text:= BonFacPGestionF.FPLSQL +
         SQLQuery3.SQL.Text:= 'SELECT FPL.code_bpfacl,FPL.tva_p, '
          +'   (((FPL.prixvd_p * FPL.tva_p)/100)+FPL.prixvd_p) AS PrixVTTC,  '
          +'   ((FPL.prixht_p * FPL.qut_p) * cond_p) AS MontantAHT,  '
          +'   ((FPL.prixvd_p * FPL.qut_p) * cond_p) AS MontantHT,  '
          +'   (((((FPL.prixvd_p * FPL.tva_p)/100)+FPL.prixvd_p) * FPL.qut_p)*cond_p) AS MontantTTC,  '
          +'   (((((((FPL.prixvd_p * FPL.tva_p)/100)+FPL.prixvd_p) * FPL.qut_p)*cond_p) )-(((FPL.prixvd_p * FPL.qut_p) * cond_p))) AS MontantTVA,  '
          +'   ((P.prixht_p * FPL.qut_p)* cond_p) AS MontantAHT,  '
//          +'  CASE   '
//          +'       WHEN FPL.prixvd_p <> ''0''  THEN  '
//          +'     CASE WHEN ((P.prixht_p * FPL.qut_p)* cond_p) <> ''0''   '
//          +'       THEN ( ( (((FPL.prixvd_p * FPL.qut_p) * cond_p) - ((P.prixht_p * FPL.qut_p)* cond_p)) / ((P.prixht_p * FPL.qut_p)* cond_p) ) *100)  '
//          +'       ELSE ''100''    '
//          +'     END   '
//          +'  END AS Marge, '
          +'   (((FPL.prixvd_p * FPL.qut_p) * cond_p) - ((P.prixht_p * FPL.qut_p)* cond_p) ) AS MargeM '
          +' FROM bonp_fac_list as FPL  '
          +' LEFT JOIN produit as P    '
          +'   ON FPL.code_p = P.code_p ' +

          ' WHERE code_bpfac= '+ IntToStr(Bonp_facTable.FieldByName('code_bpfac').AsInteger) +' ORDER BY code_bpfacl ';
         SQLQuery3.Active:= True;

          SQLQuery3.First;
          while not SQLQuery3.Eof do
          begin
            TotalAHT:= TotalAHT + (SQLQuery3.FieldByName('MontantAHT').Value );
            TotalHT:= TotalHT + (SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + SQLQuery3.FieldByName('tva_p').Value ;
            Marge:=Marge + SQLQuery3.FieldByName('MargeM').Value ;
            LeReste:= TotalTTC - StrToFloat(StringReplace(BonFacPGestionF.BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            SQLQuery3.Next;
          end;

         SQLQuery3.Active:=false;
         SQLQuery3.SQL.Clear;

         InvoiceID := Bonp_fac_listTable.FieldByName('code_bpfacl').AsInteger;

         Bonp_fac_listTable.Active:=false;
         Bonp_fac_listTable.SQL.Clear;
         Bonp_fac_listTable.SQL.Text:= BonFacPGestionF.FPLSQL +' ORDER BY code_bpfacl ' ;
         Bonp_fac_listTable.Active:=True;

         Bonp_fac_listTable.Locate('code_bpfacl',InvoiceID,[]);

    BonFacPGestionF.BonFacVTotalAHTLbl.Caption :=    CurrToStrF((TotalAHT),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonFacPGestionF.BonFacVResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonFacPGestionF.BonFVTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonFacPGestionF.BonFVTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonFacPGestionF.TotalTVANewLbl.Caption :=       CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonFacPGestionF.BonFacVTotalMargeLbl.Caption :=    CurrToStrF((Marge),ffNumber,2) ;

    if MainForm.Bonp_facTable.FieldByName('montver_bpfac').Value<> Null then
    begin
    Regle:= MainForm.Bonp_facTable.FieldByName('montver_bpfac').value;
    BonFacPGestionF.BonFacVRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonp_fac_listTable.IsEmpty) then
   begin
//    if BonFacPGestionF.ClientBonFacVGCbx.Text<>'' then
//    begin
//    BonFacPGestionF.BonFacVGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonFacPGestionF.BonFacVGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

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

//        BonFacPGestionF.RemisePerctageBonFacVGEdt.Text:='';

           BonFacPGestionF.RemisePerctageBonFacVGEdtChange(Self);

            if BonFacPGestionF.BonFVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFacPGestionF.BonFVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonFacPGestionF.BonFacVTotalHTLbl.Caption<>'' then
            begin
            BonFVTotalHT:=StrToFloat (StringReplace(BonFacPGestionF.BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonFacPGestionF.RemiseBonFacVGEdt.Text:=FloatToStrF((BonFVTotalHT - NewHT),ffNumber,14,2);
   end;

       end;

end;

procedure TMainForm.Bonp_fac_listTablecond_pChange(Sender: TField);
begin
  if (Bonp_fac_listTablecond_p.Value > 9999999) OR (Bonp_fac_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonp_fac_listTable.Edit;
  Bonp_fac_listTablecond_p.Value := 1;
  Bonp_fac_listTable.Post;

 end else if Bonp_fac_listTablecond_p.IsNull then
     begin

      Bonp_fac_listTable.Edit;
      Bonp_fac_listTablecond_p.Value := 0;
      Bonp_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bonp_fac_listTableprixvd_pChange(Sender: TField);
begin
   if (Bonp_fac_listTableprixvd_p.Value > 9999999) OR (Bonp_fac_listTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonp_fac_listTable.Edit;
  Bonp_fac_listTableprixvd_p.Value := 1;
  Bonp_fac_listTable.Post;

 end else if Bonp_fac_listTableprixvd_p.IsNull then
     begin

      Bonp_fac_listTable.Edit;
      Bonp_fac_listTableprixvd_p.Value := 0;
      Bonp_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bonp_fac_listTablequt_pChange(Sender: TField);
begin
 if (Bonp_fac_listTablequt_p.Value > 9999999) OR (Bonp_fac_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonp_fac_listTable.Edit;
  Bonp_fac_listTablequt_p.Value := 1;
  Bonp_fac_listTable.Post;

 end else if Bonp_fac_listTablequt_p.IsNull then
     begin

      Bonp_fac_listTable.Edit;
      Bonp_fac_listTablequt_p.Value := 0;
      Bonp_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bonp_fac_listTabletva_pChange(Sender: TField);
begin
  if Bonp_fac_listTabletva_p.IsNull then
 begin

  Bonp_fac_listTable.Edit;
  Bonp_fac_listTabletva_p.Value := 0;
  Bonp_fac_listTable.Post;

 end;
end;

procedure TMainForm.BLMainFMmnClick(Sender: TObject);
begin
        ClientTable.DisableControls;
        ClientTable.Active:=False;
        ClientTable.SQL.Clear;
        ClientTable.SQL.Text:='SELECT * FROM client ';
        ClientTable.Active:=True;
        ClientTable.EnableControls;

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
//var
//   HTaskbar:HWND;
//   OldVal:LongInt;
  begin
//  //Find handle of TASKBAR
//  HTaskBar:=FindWindow('Shell_TrayWnd',nil);
//  //Turn SYSTEM KEYS Back ON,Only Win 95/98/ME
//  SystemParametersInfo(97,Word(False),@OldVal,0);
//  //Enable the taskbar
//  EnableWindow(HTaskBar,True);
//  //Show the taskbar
//  ShowWindow(HTaskbar,SW_SHOW);

 end;

procedure TMainForm.Bonv_liv_listTablecond_pChange(Sender: TField);
begin
 if (Bonv_liv_listTablecond_p.Value > 9999999) OR (Bonv_liv_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_liv_listTable.Edit;
  Bonv_liv_listTablecond_p.Value := 1;
  Bonv_liv_listTable.Post;

 end else if Bonv_liv_listTablecond_p.IsNull then
     begin

      Bonv_liv_listTable.Edit;
      Bonv_liv_listTablecond_p.Value := 0;
      Bonv_liv_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_liv_listTableprixvd_pChange(Sender: TField);
begin
 if (Bonv_liv_listTableprixvd_p.Value > 9999999) OR (Bonv_liv_listTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_liv_listTable.Edit;
  Bonv_liv_listTableprixvd_p.Value := 1;
  Bonv_liv_listTable.Post;

 end else if Bonv_liv_listTableprixvd_p.IsNull then
     begin

      Bonv_liv_listTable.Edit;
      Bonv_liv_listTableprixvd_p.Value := 0;
      Bonv_liv_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_liv_listTablequt_pChange(Sender: TField);
begin

  if (Bonv_liv_listTablequt_p.Value > 9999999) OR (Bonv_liv_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_liv_listTable.Edit;
  Bonv_liv_listTablequt_p.Value := 1;
  Bonv_liv_listTable.Post;

 end else if Bonv_liv_listTablequt_p.IsNull then
     begin

      Bonv_liv_listTable.Edit;
      Bonv_liv_listTablequt_p.Value := 0;
      Bonv_liv_listTable.Post;

     end;

end;

procedure TMainForm.Bonv_liv_listTabletva_pChange(Sender: TField);
begin
 if Bonv_liv_listTabletva_p.IsNull then
 begin

  Bonv_liv_listTable.Edit;
  Bonv_liv_listTabletva_p.Value := 0;
  Bonv_liv_listTable.Post;

 end;
end;

procedure TMainForm.Bonv_liv_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,Marge,NewHT,BonLTotalHT: Double;
InvoiceID :Integer;
  begin
       if Assigned(BonLivGestionF) then
       begin

          SQLQuery3.Active:= False;
          SQLQuery3.SQL.Clear;
//          SQLQuery3.SQL.Text:= BonLivGestionF.BLLSQL
          SQLQuery3.SQL.Text:= 'Select BLL.code_bvlivl,BLL.tva_p, '
          +' (((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) AS PrixVTTC, '
          +' ((BLL.prixht_p * BLL.qut_p) * cond_p) AS MontantAHT, '
          +' ((BLL.prixvd_p * BLL.qut_p) * cond_p) AS MontantHT, '
          +' (((((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) * BLL.qut_p)*cond_p) AS MontantTTC, '
          +' (((((((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) * BLL.qut_p)*cond_p) )-(((BLL.prixvd_p * BLL.qut_p) * cond_p))) AS MontantTVA, '
          +' ((P.prixht_p * BLL.qut_p)* cond_p) AS MontantAHT, '
          +' (((BLL.prixvd_p * BLL.qut_p) * cond_p) - ((P.prixht_p * BLL.qut_p)* cond_p) ) AS MargeM '
          +' FROM bonv_liv_list as BLL '
          +' LEFT JOIN produit as P '
          +' ON BLL.code_p = P.code_p '
          + ' WHERE code_bvliv= '+ IntToStr(Bonv_livTable.FieldByName('code_bvliv').AsInteger) +' ORDER BY code_bvlivl ';
          SQLQuery3.Active:= True;

          SQLQuery3.First;
          while not SQLQuery3.Eof do
          begin
            TotalAHT:= TotalAHT + (SQLQuery3.FieldByName('MontantAHT').Value );
            TotalHT:= TotalHT + (SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + SQLQuery3.FieldByName('tva_p').AsInteger;
            Marge:=Marge + SQLQuery3.FieldByName('MargeM').Value ;
            LeReste:= TotalTTC - StrToFloat(StringReplace(BonLivGestionF.BonLivRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            SQLQuery3.Next;
          end;

         SQLQuery3.Active:=false;
         SQLQuery3.SQL.Clear;

         InvoiceID := Bonv_liv_listTable.FieldByName('code_bvlivl').AsInteger;

         Bonv_liv_listTable.Active:=false;
         Bonv_liv_listTable.SQL.Clear;
         Bonv_liv_listTable.SQL.Text:= BonLivGestionF.BLLSQL+' ORDER BY code_bvlivl ' ;
         Bonv_liv_listTable.Active:=True;

         Bonv_liv_listTable.Locate('code_bvlivl',InvoiceID,[]);


    BonLivGestionF.BonLivTotalAHTLbl.Caption :=    CurrToStrF((TotalAHT),ffNumber,2) ;
    BonLivGestionF.BonLivTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonLivGestionF.BonLivTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonLivGestionF.BonLivTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonLivGestionF.BonLivResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonLivGestionF.BonLTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonLivGestionF.BonLTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonLivGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonLivGestionF.BonLivTotalMargeLbl.Caption := CurrToStrF(((Marge)),ffNumber,2) ;

    if MainForm.Bonv_livTable.FieldByName('montver_bvliv').Value<> Null then
    begin
    Regle:= MainForm.Bonv_livTable.FieldByName('montver_bvliv').Value;
    BonLivGestionF.BonLivRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_liv_listTable.IsEmpty) then
    begin
//    if BonLivGestionF.ClientBonLivGCbx.Text<>'' then
//    begin
//    BonLivGestionF.BonLivGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonLivGestionF.BonLivGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;
//         if  (Bonv_livTable.FieldValues['RemisePerc']= null) OR (Bonv_livTable.FieldValues['remise_bvliv']= 0) then
//         begin
//         BonLivGestionF.RemisePerctageBonLivGEdt.Text:='';
//         end else
//         begin
//            BonLivGestionF.RemisePerctageBonLivGEdtChange(Self);
//         end;

            BonLivGestionF.RemisePerctageBonLivGEdtChange(Self);

            if BonLivGestionF.BonLTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonLivGestionF.BonLTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonLivGestionF.BonLivTotalHTLbl.Caption<>'' then
            begin
            BonLTotalHT:=StrToFloat (StringReplace(BonLivGestionF.BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonLivGestionF.RemiseBonLivGEdt.Text:=FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);
    end;
       end;
end;

procedure TMainForm.Bonv_fac_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFV,TTCafterTimber,Marge,NewHT,BonFVTotalHT,tempTimber: Double;
InvoiceID :Integer;
  begin
      if Assigned(BonFacVGestionF) then
       begin


          if BonFacVGestionF.TimberBonFacVGEdt.Text <> '' then
          begin
             tempTimber:=  StrToFloat(StringReplace(BonFacVGestionF.TimberBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end;

         SQLQuery3.Active:= False;
         SQLQuery3.SQL.Clear;
//         SQLQuery3.SQL.Text:= BonFacVGestionF.FVLSQL
         SQLQuery3.SQL.Text:= 'SELECT FVL.code_bvfacl,FVL.tva_p,   '
          +'   (((FVL.prixvd_p * FVL.tva_p)/100)+FVL.prixvd_p) AS PrixVTTC,   '
          +'   ((FVL.prixht_p * FVL.qut_p) * cond_p) AS MontantAHT, '
          +'   ((FVL.prixvd_p * FVL.qut_p) * cond_p) AS MontantHT, '
          +'   (((((FVL.prixvd_p * FVL.tva_p)/100)+FVL.prixvd_p) * FVL.qut_p)*cond_p) AS MontantTTC,  '
          +'   (((((((FVL.prixvd_p * FVL.tva_p)/100)+FVL.prixvd_p) * FVL.qut_p)*cond_p) )-(((FVL.prixvd_p * FVL.qut_p) * cond_p))) AS MontantTVA, '
          +'   ((P.prixht_p * FVL.qut_p)* cond_p) AS MontantAHT,  '
          +'   (((FVL.prixvd_p * FVL.qut_p) * cond_p) - ((P.prixht_p * FVL.qut_p)* cond_p) ) AS MargeM   '
          +' FROM bonv_fac_list as FVL  '
          +' LEFT JOIN produit as P  '
          +'   ON FVL.code_p = P.code_p '
         + ' WHERE code_bvfac= '+ IntToStr(Bonv_facTable.FieldByName('code_bvfac').AsInteger) +' ORDER BY code_bvfacl ';
         SQLQuery3.Active:= True;

          SQLQuery3.First;
          while not SQLQuery3.Eof do
          begin
            TotalAHT:= TotalAHT + (SQLQuery3.FieldByName('MontantAHT').Value );
            TotalHT:= TotalHT + (SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + SQLQuery3.FieldByName('tva_p').Value;
            Marge:=Marge + SQLQuery3.FieldByName('MargeM').Value ;
            LeReste:= (TotalTTC + tempTimber )
                      - StrToFloat(StringReplace(BonFacVGestionF.BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            SQLQuery3.Next;
          end;


         SQLQuery3.Active:=false;
         SQLQuery3.SQL.Clear;

         InvoiceID := Bonv_fac_listTable.FieldByName('code_bvfacl').AsInteger;

         Bonv_fac_listTable.Active:=false;
         Bonv_fac_listTable.SQL.Clear;
         Bonv_fac_listTable.SQL.Text:= BonFacVGestionF.FVLSQL +' ORDER BY code_bvfacl ' ;
         Bonv_fac_listTable.Active:=True;

         Bonv_fac_listTable.Locate('code_bvfacl',InvoiceID,[]);


    BonFacVGestionF.BonFacVTotalAHTLbl.Caption :=    CurrToStrF((TotalAHT),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonFacVGestionF.BonFacVResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonFacVGestionF.BonFVTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonFacVGestionF.BonFVTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonFacVGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonFacVGestionF.BonFacVTotalMargeLbl.Caption :=    CurrToStrF((Marge),ffNumber,2) ;

    if Bonv_facTable.FieldByName('montver_bvfac').Value<> Null then
    begin
    Regle:= Bonv_facTable.FieldByName('montver_bvfac').Value;
    BonFacVGestionF.BonFacVRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_fac_listTable.IsEmpty) then
    begin
//    if BonFacVGestionF.ClientBonFacVGCbx.Text<>'' then
//    begin
//    BonFacVGestionF.BonFacVGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonFacVGestionF.BonFacVGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

            BonFacVGestionF.RemisePerctageBonFacVGEdtChange(Self);

            if BonFacVGestionF.BonFVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFacVGestionF.BonFVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonFacVGestionF.BonFacVTotalHTLbl.Caption<>'' then
            begin
            BonFVTotalHT:=StrToFloat (StringReplace(BonFacVGestionF.BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonFacVGestionF.RemiseBonFacVGEdt.Text:=FloatToStrF((BonFVTotalHT - NewHT),ffNumber,14,2);


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

//        BonFacVGestionF.RemisePerctageBonFacVGEdt.Text:='';





    end;

       end;
end;

procedure TMainForm.Bonv_fac_listTablecond_pChange(Sender: TField);
begin
  if (Bonv_fac_listTablecond_p.Value > 9999999) OR (Bonv_fac_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_fac_listTable.Edit;
  Bonv_fac_listTablecond_p.Value := 1;
  Bonv_fac_listTable.Post;

 end else if Bonv_fac_listTablecond_p.IsNull then
     begin

      Bonv_fac_listTable.Edit;
      Bonv_fac_listTablecond_p.Value := 0;
      Bonv_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_fac_listTableprixvd_pChange(Sender: TField);
begin
  if (Bonv_fac_listTableprixvd_p.Value > 9999999) OR (Bonv_fac_listTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_fac_listTable.Edit;
  Bonv_fac_listTableprixvd_p.Value := 1;
  Bonv_fac_listTable.Post;

 end else if Bonv_fac_listTableprixvd_p.IsNull then
     begin

      Bonv_fac_listTable.Edit;
      Bonv_fac_listTableprixvd_p.Value := 0;
      Bonv_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_fac_listTablequt_pChange(Sender: TField);
begin
 if (Bonv_fac_listTablequt_p.Value > 9999999) OR (Bonv_fac_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_fac_listTable.Edit;
  Bonv_fac_listTablequt_p.Value := 1;
  Bonv_fac_listTable.Post;

 end else if Bonv_fac_listTablequt_p.IsNull then
     begin

      Bonv_fac_listTable.Edit;
      Bonv_fac_listTablequt_p.Value := 0;
      Bonv_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_fac_listTabletva_pChange(Sender: TField);
begin
 if Bonv_fac_listTabletva_p.IsNull then
 begin

  Bonv_fac_listTable.Edit;
  Bonv_fac_listTabletva_p.Value := 0;
  Bonv_fac_listTable.Post;

 end;
end;

procedure TMainForm.FactureV2MainFMnmClick(Sender: TObject);
begin

        ClientTable.DisableControls;
        ClientTable.Active:=False;
        ClientTable.SQL.Clear;
        ClientTable.SQL.Text:='SELECT * FROM client ';
        ClientTable.Active:=True;
        ClientTable.EnableControls;

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

procedure TMainForm.Bona_fac_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFA,TTCafterTimber,NewHT,BonFATotalHT,tempTimber: Double;
InvoiceID :Integer;
  begin
      if Assigned(BonFacAGestionF) then
       begin

          if BonFacAGestionF.TimberBonFacAGEdt.Text <> '' then
          begin
             tempTimber:=  StrToFloat(StringReplace(BonFacAGestionF.TimberBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end;


         SQLQuery3.Active:= False;
         SQLQuery3.SQL.Clear;
//         SQLQuery3.SQL.Text:= BonFacAGestionF.FALSQL
         SQLQuery3.SQL.Text:= 'SELECT FAL.code_bafacl,FAL.tva_p, '
      +'   FAL.prixvd_p,FAL.prixvr_p,FAL.prixvg_p,FAL.prixva_p,FAL.prixva2_p,FAL.dateperiss_p,FAL.qutinstock_p,'
      +'   (((FAL.prixht_p * FAL.tva_p)/100)+FAL.prixht_p) AS PrixATTC, '
      +'   ((FAL.prixht_p * FAL.qut_p) * cond_p) AS MontantHT, '
      +'   (((((FAL.prixht_p * FAL.tva_p)/100)+FAL.prixht_p) * FAL.qut_p)*cond_p) AS MontantTTC, '
      +'   (((((((FAL.prixht_p * FAL.tva_p)/100)+FAL.prixht_p) * FAL.qut_p)*cond_p) )-(((FAL.prixht_p * FAL.qut_p) * cond_p))) AS MontantTVA, '
      +'   ((FAL.prixht_p * FAL.qut_p)* cond_p) AS MontantAHT '

      +' FROM bona_fac_list as FAL  '
      +' LEFT JOIN produit as P   '
      +'   ON FAL.code_p = P.code_p '
         + ' WHERE code_bafac= '+ IntToStr(Bona_facTable.FieldByName('code_bafac').AsInteger) +' ORDER BY code_bafacl ';
         SQLQuery3.Active:= True;

          SQLQuery3.First;
          while not SQLQuery3.Eof do
          begin
            TotalHT:= TotalHT + (SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + SQLQuery3.FieldByName('tva_p').Value ;
            LeReste:= (TotalTTC + tempTimber)
                      - StrToFloat(StringReplace(BonFacAGestionF.BonFacARegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            SQLQuery3.Next;
          end;


         SQLQuery3.Active:=false;
         SQLQuery3.SQL.Clear;

         InvoiceID := Bona_fac_listTable.FieldByName('code_bafacl').AsInteger;
         Bona_fac_listTable.Active:=false;
         Bona_fac_listTable.SQL.Clear;
         Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL +' ORDER BY code_bafacl ' ;
         Bona_fac_listTable.Active:=True;

          Bona_fac_listTable.Locate('code_bafacl',InvoiceID,[]);

    BonFacAGestionF.BonFacATotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonFacAGestionF.BonFacATotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonFacAGestionF.BonFacATotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonFacAGestionF.BonFacAResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonFacAGestionF.BonFATotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonFacAGestionF.BonFaTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonFacAGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;

    if MainForm.Bona_facTable.FieldByName('montver_bafac').Value<> Null then
    begin
    Regle:= MainForm.Bona_facTable.FieldByName('montver_bafac').Value;
    BonFacAGestionF.BonFacARegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bona_fac_listTable.IsEmpty) then
   begin
//    if BonFacAGestionF.FourBonFacAGCbx.Text<>'' then
//    begin
//    BonFacAGestionF.BonFacAGFourNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonFacAGestionF.BonFacAGFourOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

              BonFacAGestionF.RemisePerctageBonFacAGEdtChange(Self);

            if BonFacAGestionF.BonFATotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFacAGestionF.BonFATotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonFacAGestionF.BonFacATotalHTLbl.Caption<>'' then
            begin
            BonFATotalHT:=StrToFloat (StringReplace(BonFacAGestionF.BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonFacAGestionF.RemiseBonFacAGEdt.Text:=FloatToStrF((BonFATotalHT - NewHT),ffNumber,14,2);



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

//        BonFacAGestionF.RemisePerctageBonFacAGEdt.Text:='';



   end;
       end;
end;

procedure TMainForm.Bona_fac_listTablecond_pChange(Sender: TField);
begin
  if (Bona_fac_listTablecond_p.Value > 9999999) OR (Bona_fac_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTablecond_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTablecond_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTablecond_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTableprixht_pChange(Sender: TField);
begin
   if (Bona_fac_listTableprixht_p.Value > 9999999) OR (Bona_fac_listTableprixht_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTableprixht_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTableprixht_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTableprixht_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTableprixva2_pChange(Sender: TField);
begin
 if (Bona_fac_listTableprixva2_p.Value > 9999999) OR (Bona_fac_listTableprixva2_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTableprixva2_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTableprixva2_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTableprixva2_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTableprixva_pChange(Sender: TField);
begin
 if (Bona_fac_listTableprixva_p.Value > 9999999) OR (Bona_fac_listTableprixva_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTableprixva_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTableprixva_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTableprixva_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTableprixvd_pChange(Sender: TField);
begin

if (Bona_fac_listTableprixvd_p.Value > 9999999) OR (Bona_fac_listTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTableprixvd_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTableprixvd_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTableprixvd_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTableprixvg_pChange(Sender: TField);
begin
 if (Bona_fac_listTableprixvg_p.Value > 9999999) OR (Bona_fac_listTableprixvg_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTableprixvg_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTableprixvg_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTableprixvg_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTableprixvr_pChange(Sender: TField);
begin

 if (Bona_fac_listTableprixvr_p.Value > 9999999) OR (Bona_fac_listTableprixvr_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTableprixvr_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTableprixvr_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTableprixvr_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.Bona_fac_listTablequt_pChange(Sender: TField);
begin
 if (Bona_fac_listTablequt_p.Value > 9999999) OR (Bona_fac_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_fac_listTable.Edit;
  Bona_fac_listTablequt_p.Value := 1;
  Bona_fac_listTable.Post;

 end else if Bona_fac_listTablequt_p.IsNull then
     begin

      Bona_fac_listTable.Edit;
      Bona_fac_listTablequt_p.Value := 0;
      Bona_fac_listTable.Post;

     end;
end;

procedure TMainForm.FactureP2MainFMnmClick(Sender: TObject);
begin
        ClientTable.DisableControls;
        ClientTable.Active:=False;
        ClientTable.SQL.Clear;
        ClientTable.SQL.Text:='SELECT * FROM client ';
        ClientTable.Active:=True;
        ClientTable.EnableControls;

if Not Assigned(BonFacPF) then

     BonFacPF:= TBonFacPF.Create(Application) else
                                        begin
                                          BonFacPF.Show
                                        end;
end;

procedure TMainForm.FactureAMainFMnmClick(Sender: TObject);
begin

 FournisseurTable.DisableControls;
 FournisseurTable.Active:=False;
 FournisseurTable.SQL.Clear;
 FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
 FournisseurTable.Active:=True;
 FournisseurTable.EnableControls;

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

procedure TMainForm.BonCTRListTRefresh;
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeRendu,Regle,Marge,NewHT,BonFCTotalHT: Double;
InvoiceID :Integer;
  begin
   if Assigned(BonCtrGestionF) then
  begin

      MainForm.SQLQuery3.Active:= False;
      MainForm.SQLQuery3.SQL.Clear;
//      MainForm.SQLQuery3.SQL.Text:= BonCtrGestionF.BCLSQL+ ' WHERE code_bvctr= '+
      MainForm.SQLQuery3.SQL.Text:= 'SELECT BCL.code_bvctrl,BCL.tva_p,  '
              +'   (((BCL.prixvd_p * BCL.tva_p)/100)+BCL.prixvd_p) AS PrixVTTC,  '
              +'   ((BCL.prixht_p * BCL.qut_p) * cond_p) AS MontantAHT,  '
              +'   ((BCL.prixvd_p * BCL.qut_p) * cond_p) AS MontantHT,  '
              +'   (((((BCL.prixvd_p * BCL.tva_p)/100)+BCL.prixvd_p) * BCL.qut_p)*cond_p) AS MontantTTC, '
              +'   (((((((BCL.prixvd_p * BCL.tva_p)/100)+BCL.prixvd_p) * BCL.qut_p)*cond_p) )-(((BCL.prixvd_p * BCL.qut_p) * cond_p))) AS MontantTVA, '
              +'   ((P.prixht_p * BCL.qut_p)* cond_p) AS MontantAHT,  '
//              +'   L.nom_l AS Localisation,  '
//              +'  CASE  '
//              +'       WHEN BCL.prixvd_p <> ''0''  THEN   '
//              +'     CASE WHEN ((P.prixht_p * BCL.qut_p)* cond_p) <> ''0''  '
//              +'       THEN ( ( (((BCL.prixvd_p * BCL.qut_p) * cond_p) - ((P.prixht_p * BCL.qut_p)* cond_p)) / ((P.prixht_p * BCL.qut_p)* cond_p) ) *100) '
//              +'       ELSE ''100''   '
//              +'     END            '
//              +'  END AS Marge,     '
              +'   (((BCL.prixvd_p * BCL.qut_p) * cond_p) - ((P.prixht_p * BCL.qut_p)* cond_p) ) AS MargeM   '
              +' FROM bonv_ctr_list as BCL   '
              +' LEFT JOIN produit as P    '
              +'   ON BCL.code_p = P.code_p '  +
        ' WHERE code_bvctr= '+ IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger) +' ORDER BY code_bvctrl ';

      MainForm.SQLQuery3.Active:= True;

      MainForm.SQLQuery3.First;
      while not MainForm.SQLQuery3.Eof do
      begin
        TotalAHT:= TotalAHT + (MainForm.SQLQuery3.FieldByName('MontantAHT').Value );
        TotalHT:= TotalHT + (MainForm.SQLQuery3.FieldByName('MontantHT').Value );
        TotalTVA:= TotalTVA + MainForm.SQLQuery3.FieldByName('MontantTVA').Value;
        TotalTTC:= TotalTTC + MainForm.SQLQuery3.FieldByName('MontantTTC').Value;
        TVA:=TVA + MainForm.SQLQuery3.FieldByName('tva_p').Value ;
         if MainForm.SQLQuery3.FieldByName('MargeM').Value <> null then
         begin
         Marge:=Marge + MainForm.SQLQuery3.FieldByName('MargeM').Value ;
         end;
        LeRendu:=  (StrToFloat(StringReplace(BonCtrGestionF.BonCtrRegleLbl.Caption, #32, '', [rfReplaceAll]))) - TotalTTC  ;
        MainForm.SQLQuery3.Next;
      end;

         MainForm.SQLQuery3.Active:=false;
         MainForm.SQLQuery3.SQL.Clear;


//=======This what slows the CTR================

//         InvoiceID := Bonv_ctr_listTable.FieldByName('code_bvctrl').AsInteger;

////////////VERY SLOW///////////////////////


//         Bonv_ctr_listTable.Active:=false;
//         Bonv_ctr_listTable.SQL.Clear;
//         Bonv_ctr_listTable.SQL.Text:=BonCtrGestionF.BCLSQL +' ORDER BY code_bvctrl ' ;
//         Bonv_ctr_listTable.Active:=True;


////////////VERY SLOW///////////////////////
///
///
///
//         Bonv_ctr_listTable.Locate('code_bvctrl',InvoiceID,[]);

//=======This what slows the CTR================


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

   BonCtrGestionF.BonCtrTotalAHTLbl.Caption :=    CurrToStrF((TotalAHT),ffNumber,2) ;
   BonCtrGestionF.BonCTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
   BonCtrGestionF.BonCTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
   BonCtrGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
   BonCtrGestionF.BonCTRTotalMargeLbl.Caption :=  CurrToStrF(((Marge)),ffNumber,2) ;

    if MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').Value<> Null then
    begin
    Regle:= MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').Value;
    BonCtrGestionF.BonCtrRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) then
    begin
//    if BonCtrGestionF.ClientBonCtrGCbx.Text<>'' then
//    begin
//    BonCtrGestionF.BonCtrGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonCtrGestionF.BonCtrGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

//     BonCtrGestionF.RemisePerctageBonCtrGEdt.Text:='';


             BonCtrGestionF.RemisePerctageBonCtrGEdtChange(Self);

            if BonCtrGestionF.BonCTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonCtrGestionF.BonCTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonCtrGestionF.BonCtrTotalHTLbl.Caption<>'' then
            begin
            BonFCTotalHT:=StrToFloat (StringReplace(BonCtrGestionF.BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            if BonCtrGestionF.Tag = 0 then
            begin
            BonCtrGestionF.RemiseBonCtrGEdt.Text:=FloatToStrF((BonFCTotalHT - NewHT),ffNumber,14,2);
            end;
    end;

       end;


end;

procedure TMainForm.Bonv_ctr_listTableAfterRefresh(DataSet: TDataSet);
begin

  BonCTRListTRefresh();




end;

procedure TMainForm.Bonv_ctr_listTablecond_pChange(Sender: TField);
begin
     if Bonv_ctr_listTablecond_p.IsNull then
     begin

      Bonv_ctr_listTable.Edit;
      Bonv_ctr_listTablecond_p.Value := 1;
      Bonv_ctr_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_ctr_listTableprixvd_pChange(Sender: TField);
begin
     if Bonv_ctr_listTableprixvd_p.IsNull then
     begin

      Bonv_ctr_listTable.Edit;
      Bonv_ctr_listTableprixvd_p.Value := 0;
      Bonv_ctr_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_ctr_listTablequt_pChange(Sender: TField);
begin

 if (Bonv_ctr_listTablequt_p.Value > 999999) OR (Bonv_ctr_listTablequt_p.Value < -999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_ctr_listTable.Edit;
  Bonv_ctr_listTablequt_p.Value := 1;
  Bonv_ctr_listTable.Post;

 end else if Bonv_ctr_listTablequt_p.IsNull then
     begin

      Bonv_ctr_listTable.Edit;
      Bonv_ctr_listTablequt_p.Value := 0;
      Bonv_ctr_listTable.Post;

     end;
end;

procedure TMainForm.Bonv_ctr_listTabletva_pChange(Sender: TField);
begin
     if Bonv_ctr_listTabletva_p.IsNull then
     begin

      Bonv_ctr_listTable.Edit;
      Bonv_ctr_listTabletva_p.Value := 0;
      Bonv_ctr_listTable.Post;

     end;
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


function TMainForm.getDBName() :string;
begin

  DataModuleF.SQLQuery1.Active:= False;
  DataModuleF.SQLQuery1.SQL.Clear;
  DataModuleF.SQLQuery1.SQL.Text:= 'SELECT code_db,dbname_db,dbdesc_db FROM dblist WHERE dbdesc_db LIKE '+ QuotedStr(LoginUserF.FolderCbx.Text) ;
  DataModuleF.SQLQuery1.Active:= true;

  if NOT DataModuleF.SQLQuery1.IsEmpty then
  begin
     result:= DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString;
  end else
  begin
     result:= 'GSTOCKDC';
  end;

  DataModuleF.SQLQuery1.Active:= False;
  DataModuleF.SQLQuery1.SQL.Clear;



end;



procedure TMainForm.ConnectToDBonMainCreate;
Var
 buttonSelected : Integer;
 FromCaption: String;
begin

 try
   GstockdcConnection.DriverName := 'PG';
   GstockdcConnection.Params.Values['Server'] :='localhost';
   GstockdcConnection.Params.Values['user_name'] := 'postgres';
   GstockdcConnection.Params.Values['password'] := ''; // ditto
   GstockdcConnection.Params.Values['Port'] := '5432';
   GstockdcConnection.LoginPrompt := False;

   GstockdcConnection.Params.Values['Database'] := getDBName;

//   GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC';
   GstockdcConnection.Connected:= True;


  //----this is to check if the tables is exsit or not if not creat them -----
   DataModuleF.SQLQuery1.Active:= False;
   DataModuleF.SQLQuery1.SQL.Clear;
//   SQLQuery.SQL.Text:= 'SELECT COUNT(*) as ntable from information_schema.tables WHERE table_schema = ''public''' ;
   DataModuleF.SQLQuery1.SQL.Text:= 'SELECT dbversion FROM dbinfo WHERE apptype = ''S'' ' ;

   DataModuleF.SQLQuery1.Active:= True;

     //---always update tbale numbers when we add new table
//     if SQLQuery.FieldByName('ntable').AsInteger <> 42 then
     if StrToInt(DataModuleF.SQLQuery1.FieldByName('dbversion').AsString) < 2 then
     begin

      CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
      InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing
      FunctionsTriggesFDScript.ExecuteAll;                             // Eable this is only for releasing
      AltersDBChangesFDScript.ExecuteAll;                              // Eable this is only for releasing

      DataModuleF.SQLQuery1.Edit;
      DataModuleF.SQLQuery1.FieldByName('dbversion').AsString:='2';
      DataModuleF.SQLQuery1.Post;

     end;
     DataModuleF.SQLQuery1.SQL.Clear;
     DataModuleF.SQLQuery1.Active:= False;


    ActiveTables;
    ActiveTablesControls;




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

  //-- put the database name on the form caption
  FromCaption:=StringReplace(MainForm.Caption, ' ', '', [rfReplaceAll]) ;
  Delete( FromCaption, Pos('//',FromCaption), MaxInt );
  MainForm.Caption:= FromCaption + ' //'+ LoginUserF.FolderCbx.Text;

                  except
        on E: Exception do
      begin

      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);

      // Show a custom dialog
    buttonSelected := DataModuleF.MyMessageDialog('Le serveur ne répond pas Assurer-tu que le serveur est activé'
    ,mtCustom,[mbRetry,mbCancel],
                              ['Annuler','Réessayer']);


          if buttonSelected = mrRetry then
          begin

              ConnectToDBonMainCreate;

          end;

          if buttonSelected = mrCancel then
           begin

            GstockdcConnection.Connected:=False;
            DataModuleF.GstockdcConnection02.Connected:=False;
            DataModuleF.PSDBConfigConnection.Connected:=False;

           Application.Terminate;


          end;

   end;
   end;


end;



procedure TMainForm.FormShow(Sender: TObject);

Var
//PrixP, sumPrixInBon :Double;
CodeP,code_bvliv : Integer;
QutP, CondP : Double;
begin

  //Conneting to the server
        ConnectToDBonMainCreate;



  
    if UserTypeLbl.Caption <> '0' then
      begin
       OptionMainFMnm.Visible:= False;
       UsersGMainFMnm.Visible:= False;

       BoardMainFBtn.Enabled:= False;
       BoardMainFBtn.ImageIndex:= 12;
     end else
         begin
           OptionMainFMnm.Visible:= True;
           UsersGMainFMnm.Visible:= True;

          BoardMainFBtn.Enabled:= True;
          BoardMainFBtn.ImageIndex:= 0;
         end;



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
             VenteMainFMnm.Visible:= True;
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
                 AchatsMainFMnm.Visible:= True;
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

                   TreMainFMnm.Visible:= True;

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
                  ListesMainFMnm.Visible := True;

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

             if NOT (stock_ur.Checked)  Then
             begin

               StockMainFMnm.Visible:= False;

             end else
                 begin

                   StockMainFMnm.Visible:= True;

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


   Label1.Caption:= FloatToStr(MemoryUsed);


    CalcPrixAchatInBonVentes();


end;


procedure TMainForm.Reconnectez1Click(Sender: TObject);
begin
DataModuleF.ConnectToDB ;
ConnectToDBonMainCreate;
end;

procedure TMainForm.RefreshCNotification;
begin

  DataModuleF.PZeroQCnotif.Active:= True;
  DataModuleF.PCloseZeroQCnotif.Active:= True;
  DataModuleF.PMoreMaxQCnotif.Active:= True;
  DataModuleF.PCloseDiedCnotif.Active:= True;
//  DataModuleF.PDiedCnotif.Active:= True;

  DataModuleF.PZeroQCnotif.Refresh;
  DataModuleF.PCloseZeroQCnotif.Refresh;
  DataModuleF.PMoreMaxQCnotif.Refresh;
  DataModuleF.PCloseDiedCnotif.Refresh;
//  DataModuleF.PDiedCnotif.Refresh;

   CNotificationLbl.Caption:= IntToStr
  ( DataModuleF.PZeroQCnotif.RecordCount + DataModuleF.PCloseZeroQCnotif.RecordCount + DataModuleF.PMoreMaxQCnotif.RecordCount +
  DataModuleF.PCloseDiedCnotif.RecordCount + DataModuleF.PDiedCnotif.RecordCount ) ;


     if StrToInt(CNotificationLbl.Caption) > 99 then
  begin
   CNotificationLbl.Caption:= '99+'
  end;


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

procedure TMainForm.OuvertureduTiroirCaisse1Click(Sender: TObject);
var myPrinter   : TPrinter;
   Ini: TIniFile;
   TiroirA,TiroirCas,PasswordA : Boolean;
   PORT : string;
begin
       Ini       := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
       TiroirA   := Ini.ReadBool('', 'Tiroir caisse Active',TiroirA);
       TiroirCas := Ini.ReadBool('', 'Tiroir caisse Cas',   TiroirCas);
       PORT      :=Ini.ReadString(Caption,'Tiroir caisse COM', PORT);
       PasswordA := Ini.ReadBool('', 'Tiroir caisse PASSWORD',   PasswordA);

  if TiroirA then
  begin
   //-- this is to check if he doesnt need a password
   if PasswordA = False then
   begin

    if TiroirCas = False then   // means = 0  Case COM
    begin
      try
        FOptions.ComPort1.Port :=PORT;// 'COM7';
        FOptions.ComPort1.Events := [];
        FOptions.ComPort1.Open; // open port
//        FOptions.ComPort1.WriteUnicodeString('                                        '#13#10);
//        FOptions.ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
        FOptions.ComPort1.Close;
      except
     //   ShowMessage('Svp, brancher le Tiroir Caisse');
      end;
    end;

    if TiroirCas = True then  // means = 1   Case PRINTER
    begin
      myPrinter := printer;
      with myPrinter do
      begin

        Printer.PrinterIndex:= Ini.ReadInteger(Caption,'Tiroir caisse PRINT', Printer.PrinterIndex) ;
        // Start printing
        BeginDoc;

        // Finish printing
        EndDoc;
      end;
    end;

      end else
       begin
        If NOT Assigned(UsersGestionF) then
        begin
                LoginUserF := TLoginUserF.Create(Application);
                LoginUserF.Tag:= 2;
                LoginUserF.Show
        end else
            begin
              LoginUserF.Tag:= 2;
              LoginUserF.Show;
            end;

        end;


  end;


  Ini.Free;
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

procedure TMainForm.ChangUserMAinFMnuClick(Sender: TObject);
begin
  If NOT Assigned(UsersGestionF) then
  begin
          LoginUserF := TLoginUserF.Create(Application);
          LoginUserF.Tag:= 1;
          LoginUserF.Show
  end else
      begin
        LoginUserF.Tag:= 1;
        LoginUserF.Show;
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

 //-------- Show the splash screan for the TransferComptesGestionF---------//

  if Not Assigned(TransferListGestionF) then

     TransferListGestionF:= TTransferListGestionF.Create(Application) else
                                        begin
                                          TransferListGestionF.Show
                                        end;

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
       FournisseurTable.DisableControls;
       FournisseurTable.Active:=False;
       FournisseurTable.SQL.Clear;
       FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
       FournisseurTable.Active:=True;
       FournisseurTable.EnableControls;

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

 procedure TMainForm.A5Click(Sender: TObject);
begin
  //-------- Show the About Form---------//

            AboutF:=TAboutF.Create(Application);

            AboutF.Show;
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
      DataModuleF.PCloseDiedCnotif.Active:= False;
      DataModuleF.PDiedCnotif.Active:= False;

      DataModuleF.ChargesTable.Active:= False;
      DataModuleF.Charge_typeTable.Active:= False;
      DataModuleF.Charge_s_typeTable.Active:= False;
      DataModuleF.PertesTable.Active:= False;
      DataModuleF.Perte_typeTable.Active:= False;

      DataModuleF.Transfer_comptesTable.Active:= False;

      DataModuleF.PerissBona_recTable.Active:= False;

      DataModuleF.InventoryTable.Active:= False;
      DataModuleF.Inventory_listTable.Active:= False;
end;



procedure TMainForm.ActiveTables;
begin



      DataModuleF.UsersTable.Active := True;

      FDEventAlerter.Active:= True;

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
      Bonp_facTable.Active := True;
      Bonp_fac_listTable.Active := True;
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
      DataModuleF.PCloseDiedCnotif.Active:= True;
      DataModuleF.PDiedCnotif.Active:= True;



      DataModuleF.ChargesTable.Active:= True;
      DataModuleF.Charge_typeTable.Active:= True;
      DataModuleF.Charge_s_typeTable.Active:= True;
      DataModuleF.PertesTable.Active:= True;
      DataModuleF.Perte_typeTable.Active:= True;

      DataModuleF.Transfer_comptesTable.Active:= True;

      DataModuleF.PerissBona_recTable.Active:= True;

      DataModuleF.InventoryTable.Active:= True;
      DataModuleF.Inventory_listTable.Active:= True;


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
      DataModuleF.PCloseDiedCnotif.Refresh;
      DataModuleF.PDiedCnotif.Refresh;



      DataModuleF.ChargesTable.Refresh;
      DataModuleF.Charge_typeTable.Refresh;
      DataModuleF.Charge_s_typeTable.Refresh;
      DataModuleF.PertesTable.Refresh;
      DataModuleF.Perte_typeTable.Refresh;

      DataModuleF.Transfer_comptesTable.Refresh;

      DataModuleF.PerissBona_recTable.Refresh;

      DataModuleF.InventoryTable.Refresh;
      DataModuleF.Inventory_listTable.Refresh;
end;


procedure TMainForm.ActiveTablesControls;
begin

      if DataModuleF.UsersTable.ControlsDisabled  then  begin DataModuleF.UsersTable.EnableControls; end;

      if ProduitTable.ControlsDisabled       then  begin ProduitTable.EnableControls; end;
      if ClientTable.ControlsDisabled        then  begin ClientTable.EnableControls; end;
      if FournisseurTable.ControlsDisabled   then  begin FournisseurTable.EnableControls; end;
      if Bona_recTable.ControlsDisabled      then  begin Bona_recTable.EnableControls; end;
      if Bona_recPlistTable.ControlsDisabled then  begin Bona_recPlistTable.EnableControls; end;
      if Bona_facTable.ControlsDisabled      then  begin Bona_facTable.EnableControls; end;
      if Bona_fac_listTable.ControlsDisabled then  begin Bona_fac_listTable.EnableControls; end;
      if Bonv_livTable.ControlsDisabled      then  begin Bonv_livTable.EnableControls; end;
      if Bonv_liv_listTable.ControlsDisabled then  begin Bonv_liv_listTable.EnableControls; end;
      if Bonv_facTable.ControlsDisabled      then  begin Bonv_facTable.EnableControls; end;
      if Bonv_fac_listTable.ControlsDisabled then  begin Bonv_fac_listTable.EnableControls; end;
      if Bonv_ctrTable.ControlsDisabled      then  begin Bonv_ctrTable.EnableControls; end;
      if Bonv_ctr_listTable.ControlsDisabled then  begin Bonv_ctr_listTable.EnableControls; end;
      if Bonp_facTable.ControlsDisabled      then  begin Bonp_facTable.EnableControls; end;
      if Bonp_fac_listTable.ControlsDisabled then  begin Bonp_fac_listTable.EnableControls; end;
      if Mode_paiementTable.ControlsDisabled then  begin Mode_paiementTable.EnableControls; end;
      if CompteTable.ControlsDisabled        then  begin CompteTable.EnableControls; end;
      if FamproduitTable.ControlsDisabled    then  begin FamproduitTable.EnableControls; end;
      if SfamproduitTable.ControlsDisabled   then  begin SfamproduitTable.EnableControls; end;
      if CodebarresTable.ControlsDisabled    then  begin CodebarresTable.EnableControls; end;
      if UniteTable.ControlsDisabled         then  begin UniteTable.EnableControls; end;
      if WilayasTable.ControlsDisabled       then  begin WilayasTable.EnableControls; end;
      if CommunesTable.ControlsDisabled      then  begin CommunesTable.EnableControls; end;
      if Opt_cas_bnk_CaisseTable.ControlsDisabled  then  begin Opt_cas_bnk_CaisseTable.EnableControls; end;
      if Opt_cas_bnk_BankTable.ControlsDisabled  then  begin Opt_cas_bnk_BankTable.EnableControls; end;
      if RegclientTable.ControlsDisabled     then  begin RegclientTable.EnableControls; end;
      if RegfournisseurTable.ControlsDisabled  then  begin RegfournisseurTable.EnableControls; end;
      if CompanyTable.ControlsDisabled       then  begin CompanyTable.EnableControls; end;


      if DataModuleF.TopClient.ControlsDisabled  then  begin DataModuleF.TopClient.EnableControls; end;
      if DataModuleF.TopFour.ControlsDisabled  then  begin DataModuleF.TopFour.EnableControls; end;
      if DataModuleF.TopVerClient.ControlsDisabled  then  begin DataModuleF.TopVerClient.EnableControls; end;
      if DataModuleF.TopVerFour.ControlsDisabled  then  begin DataModuleF.TopVerFour.EnableControls; end;
      if DataModuleF.Top5produit.ControlsDisabled  then  begin DataModuleF.Top5produit.EnableControls; end;
      if DataModuleF.TotalProduit.ControlsDisabled  then  begin DataModuleF.TotalProduit.EnableControls; end;
      if DataModuleF.ToatalVerMonthVLIV.ControlsDisabled  then  begin DataModuleF.ToatalVerMonthVLIV.EnableControls; end;
      if DataModuleF.ToatalVerMonthVFAC.ControlsDisabled  then  begin DataModuleF.ToatalVerMonthVFAC.EnableControls; end;
      if DataModuleF.ToatalVerMonthVCTR.ControlsDisabled  then  begin DataModuleF.ToatalVerMonthVCTR.EnableControls; end;
      if DataModuleF.ToatalVerMonthAREC.ControlsDisabled  then  begin DataModuleF.ToatalVerMonthAREC.EnableControls; end;
      if DataModuleF.ToatalVerMonthAFAC.ControlsDisabled  then  begin DataModuleF.ToatalVerMonthAFAC.EnableControls; end;

      if DataModuleF.PZeroQCnotif.ControlsDisabled  then  begin DataModuleF.PZeroQCnotif.EnableControls; end;
      if DataModuleF.PCloseZeroQCnotif.ControlsDisabled  then  begin DataModuleF.PCloseZeroQCnotif.EnableControls; end;
      if DataModuleF.PMoreMaxQCnotif.ControlsDisabled  then  begin DataModuleF.PMoreMaxQCnotif.EnableControls; end;
      if DataModuleF.PCloseDiedCnotif.ControlsDisabled  then  begin DataModuleF.PCloseDiedCnotif.EnableControls; end;
      if DataModuleF.PDiedCnotif.ControlsDisabled  then  begin DataModuleF.PDiedCnotif.EnableControls; end;

      if DataModuleF.ChargesTable.ControlsDisabled  then  begin DataModuleF.ChargesTable.EnableControls; end;
      if DataModuleF.Charge_typeTable.ControlsDisabled  then  begin DataModuleF.Charge_typeTable.EnableControls; end;
      if DataModuleF.Charge_s_typeTable.ControlsDisabled  then  begin DataModuleF.Charge_s_typeTable.EnableControls; end;
      if DataModuleF.PertesTable.ControlsDisabled  then  begin DataModuleF.PertesTable.EnableControls; end;
      if DataModuleF.Perte_typeTable.ControlsDisabled  then  begin DataModuleF.Perte_typeTable.EnableControls; end;

      if DataModuleF.Transfer_comptesTable.ControlsDisabled  then  begin DataModuleF.Transfer_comptesTable.EnableControls; end;

      if DataModuleF.PerissBona_recTable.ControlsDisabled  then  begin DataModuleF.PerissBona_recTable.EnableControls; end;


end;


procedure TMainForm.rparation1Click(Sender: TObject);
var
 BackupTask: ITask;
begin
//             GrayForms;
//            FWorkingSplash := TFWorkingSplash.Create(MainForm);
            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
            FWorkingSplash.Show;


 
   BackupTask := TTask.Create (
   procedure ()
   begin
    try

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



        except on E: Exception do

            begin
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);
              ShowMessage(E.ClassName + ' error raised, with message : ' + E.Message);
              FWorkingSplash.Close;
              FWorkingSplash.WorkingNormalForms;
              Exit
            end;

        end;

          FWorkingSplash.Close;
          FWorkingSplash.WorkingNormalForms;
//          NormalForms;

//         dxActivityIndicator1.Active:= False;

        SQLQuery.Active:= False;
        SQLQuery.SQL.Clear;
   end);
          BackupTask.Start;



end;

procedure TMainForm.RGClientMainFMnmClick(Sender: TObject);
begin
        ClientTable.DisableControls;
        ClientTable.Active:=False;
        ClientTable.SQL.Clear;
        ClientTable.SQL.Text:='SELECT * FROM client ';
        ClientTable.Active:=True;
        ClientTable.EnableControls;

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

        ClientTable.DisableControls;
        ClientTable.Active:=False;
        ClientTable.SQL.Clear;
        ClientTable.SQL.Text:='SELECT * FROM client ';
        ClientTable.Active:=True;
        ClientTable.EnableControls;

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

procedure TMainForm.B2Click(Sender: TObject);
begin
       FournisseurTable.DisableControls;
       FournisseurTable.Active:=False;
       FournisseurTable.SQL.Clear;
       FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
       FournisseurTable.Active:=True;
       FournisseurTable.EnableControls;

if Not Assigned(BonComAF) then

     BonComAF:= TBonComAF.Create(Application) else
                                        begin
                                          BonComAF.Show
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

procedure TMainForm.B4Click(Sender: TObject);
begin
       ClientTable.DisableControls;
       ClientTable.Active:=False;
       ClientTable.SQL.Clear;
       ClientTable.SQL.Text:='SELECT * FROM client ';
       ClientTable.Active:=True;
       ClientTable.EnableControls;

if Not Assigned(BonComVF) then

     BonComVF:= TBonComVF.Create(Application) else
                                        begin
                                          BonComVF.Show
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

procedure TMainForm.FDEventAlerterAlert(ASender: TFDCustomEventAlerter;
  const AEventName: string; const AArgument: Variant);
begin
  if AEventName = 'c_produit' then
  begin
    ProduitTable.Refresh;
  end;

   if AEventName = 'c_client' then
  begin
    ClientTable.Refresh;
  end;

    if AEventName = 'c_fournisseur' then
  begin
    FournisseurTable.Refresh;
  end;

   if AEventName = 'c_charges' then
  begin
    DataModuleF.ChargesTable.Refresh;
  end;


  if AEventName = 'c_pertes' then
  begin
    DataModuleF.PertesTable.Refresh;
  end;

   if AEventName = 'c_regclient' then
  begin
    RegclientTable.Refresh;
  end;

    if AEventName = 'c_regfournisseur' then
  begin
    RegfournisseurTable.Refresh;
  end;

   if AEventName = 'c_opt_cas_bnk' then
  begin
    Opt_cas_bnk_CaisseTable.Refresh;
    Opt_cas_bnk_BankTable.Refresh;
  end;


  if AEventName = 'c_transfer_comptes' then
  begin
    DataModuleF.Transfer_comptesTable.Refresh;
  end;

   if AEventName = 'c_bona_rec' then
  begin
    Bona_recTable.Refresh;
  end;

    if AEventName = 'c_bona_rec_list' then
  begin
    Bona_recPlistTable.Refresh;
  end;

   if AEventName = 'c_bona_fac' then
  begin
    Bona_facTable.Refresh;
  end;


  if AEventName = 'c_bona_fac_list' then
  begin
    Bona_fac_listTable.Refresh;
  end;

   if AEventName = 'c_bonp_fac' then
  begin
    Bonp_facTable.Refresh;
  end;

    if AEventName = 'c_bonp_fac_list' then
  begin
    Bonp_fac_listTable.Refresh;
  end;

   if AEventName = 'c_bonv_liv' then
  begin
    Bonv_livTable.Refresh;
  end;


  if AEventName = 'c_bonv_liv_list' then
  begin
    Bonv_liv_listTable.Refresh;
  end;

   if AEventName = 'c_bonv_fac' then
  begin
    Bonv_facTable.Refresh;
  end;

    if AEventName = 'c_bonv_fac_list' then
  begin
    Bonv_fac_listTable.Refresh;
  end;

   if AEventName = 'c_bonv_ctr' then
  begin
    Bonv_ctrTable.Refresh;
  end;


  if AEventName = 'c_bonv_ctr_list' then
  begin
    Bonv_ctr_listTable.Refresh;
  end;
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

procedure TMainForm.MouvementdeProduit2Click(Sender: TObject);
begin
  if Not Assigned(ProduitsListF) then
  begin
   ProduitsListF:= TProduitsListF.Create(Application);
  end  else
  begin
    ProduitsListF.Show;
  end;
    ProduitsListF.ProduitMovementBtnClick(Sender);
  end;

procedure TMainForm.MouvementdeProduit3Click(Sender: TObject);
begin
  if Not Assigned(ProduitsListF) then
  begin
   ProduitsListF:= TProduitsListF.Create(Application);
  end  else
  begin
    ProduitsListF.Show;
  end;
    ProduitsListF.ProduitMovementAllBtnClick(Sender);
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

procedure TMainForm.GstockdcConnectionError(ASender, AInitiator: TObject;
  var AException: Exception);

Var
  buttonSelected : Integer;
begin

//    try
//        DataModuleF.ConnectToDB;
////        ConnectToDBonMainCreate;
//
//        if  DataModuleF.GstockdcConnection02.Connected OR DataModuleF.PSDBConfigConnection.Connected then
//        begin
//             ConnectToDBonMainCreate;
//        end;
//
//
//      except
//
//
//
//           // Show a custom dialog
//     buttonSelected := DataModuleF.MyMessageDialog('Le serveur ne répond pas! Assurer-tu que le serveur est activé'
//     ,mtCustom,[mbRetry,mbCancel],
//                              ['Annuler','Réessayer']);
//
//
//          if buttonSelected = mrRetry then
//          begin
//
//              DataModuleF.ConnectToDB;
//      //        ConnectToDBonMainCreate;
//
//              if  DataModuleF.GstockdcConnection02.Connected OR DataModuleF.PSDBConfigConnection.Connected then
//              begin
//                   ConnectToDBonMainCreate;
//              end;
//
//          end;
//
//          if buttonSelected = mrCancel then
//          begin
//
//            GstockdcConnection.Connected:=False;
//            DataModuleF.GstockdcConnection02.Connected:=False;
//            DataModuleF.PSDBConfigConnection.Connected:=False;
//
//            Application.Terminate;
//
//
//          end;



//    end;
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

procedure TMainForm.SwitchingDB();
var
 buttonSelected : Integer;

 DBName,DBName2 :String;

begin


     GstockdcConnection.OnError:= nil;

//   try


   //--at first we get the database name
   DBName:= getDBName;

   //--make sure to change to the second database name
   DBName2:=DBName;
   if DBName <> 'GSTOCKDC' then
   begin
    insert('2~', DBName2, Pos('~',DBName)+1 );
   end else
   begin
    DBName2:='GSTOCKDC2'
   end;

   if sImage1.Tag = 0 then
   begin



      GstockdcConnection.Connected:= False;
      GstockdcConnection.Params.Values['Database'] := DBName;
      GstockdcConnection.Connected:= True;


      DataModuleF.GstockdcConnection02.Connected:= False;
      DataModuleF.GstockdcConnection02.Params.Values['Database'] := DBName;
      DataModuleF.GstockdcConnection02.Connected:= True;





      CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
      InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing
      FunctionsTriggesFDScript.ExecuteAll;                             // Eable this is only for releasing
      AltersDBChangesFDScript.ExecuteAll;                              // Eable this is only for releasing

      DataModuleF.CheckdbVersionAndAlterDb;                            // Eable this is only for releasing


          CalcPrixAchatInBonVentes();


       ActiveTables;
       ActiveTablesControls;



      sImage1.ImageIndex:=4;
      sImage1.Tag := 1;


   end else
   begin


      GstockdcConnection.Connected:= False;
      GstockdcConnection.Params.Values['Database'] :=    DBName2;
      GstockdcConnection.Connected:= True;

      DataModuleF.GstockdcConnection02.Connected:= False;
      DataModuleF.GstockdcConnection02.Params.Values['Database'] := DBName2;
      DataModuleF.GstockdcConnection02.Connected:= True;


      CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
      InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing
      FunctionsTriggesFDScript.ExecuteAll;                             // Eable this is only for releasing
      AltersDBChangesFDScript.ExecuteAll;                              // Eable this is only for releasing

      DataModuleF.CheckdbVersionAndAlterDb;                            // Eable this is only for releasing

          CalcPrixAchatInBonVentes();


       ActiveTables;
       ActiveTablesControls;

      sImage1.ImageIndex:=3;
      sImage1.Tag := 0;

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

//               except
//
//    // Show a custom dialog
//    buttonSelected := DataModuleF.MyMessageDialog('Le serveur ne répond pas! Assurer-tu que le serveur est activé',mtCustom,[mbRetry,mbCancel],
//                              ['Annuler','Réessayer']);
//
//
//          if buttonSelected = mrRetry then
//          begin
//
//              SwitchingDB;
//
//          end;
//
//          if buttonSelected = mrCancel then Application.Terminate;
//
//
//
//
// end;


GstockdcConnection.OnError := GstockdcConnectionError;

end;


procedure TMainForm.SwitchDBMAinFMnuClick(Sender: TObject);
begin


   SwitchingDB;
    


   if Assigned(DashboardF) then
   begin
     DashboardF.OnPaint(Sender)
   end;

   if Assigned(CaisseListF) then
   begin
     CaisseListF.OnPaint(Sender)
   end;

   if Assigned(BankListF) then
   begin
     BankListF.OnPaint(Sender)
   end;
   


  
   
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

procedure TMainForm.InventoryMainFMnmClick(Sender: TObject);
begin
if Not Assigned(InventoryF) then

     InventoryF:= TInventoryF.Create(Application) else
                                        begin
                                          InventoryF.Show
                                        end;
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
