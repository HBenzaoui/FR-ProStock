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
  ChromeTabs,  Vcl.StdCtrls, FireDAC.VCLUI.Script,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  Vcl.Touch.Keyboard, sStatusBar;



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
    L1: TMenuItem;
    ClientMainFMnm: TMenuItem;
    FourMainFMnm: TMenuItem; N1: TMenuItem;
    ProduitMainFMmn: TMenuItem; F4: TMenuItem; R1: TMenuItem; N2: TMenuItem; M1: TMenuItem;
    N3: TMenuItem; T1: TMenuItem; M2: TMenuItem;
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
    AdvToolButton12: TAdvToolButton;
    S06: TPanel;
    S08: TPanel;
    sPageControl1: TsPageControl;
    FaceP: TPanel;
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
    ProduitTabletva_p: TWideStringField;
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
    F6: TMenuItem;
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
    Bona_recPlistTablequt_p: TIntegerField;
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
    c4: TMenuItem;
    N13: TMenuItem;
    o1: TMenuItem;
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
    Bonv_liv_listTablequt_p: TIntegerField;
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
    Bona_fac_listTablequt_p: TIntegerField;
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
    Bonv_fac_listTablequt_p: TIntegerField;
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
    Bonv_liv_listTabletvap: TIntegerField;
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
    Bonv_fac_listTabletvap: TIntegerField;
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
    Button13: TButton;
    ClientTablenom_c: TWideStringField;
    ClientTableadr_c: TWideStringField;
    ClientTableville_c: TWideStringField;
    ClientTablefix_c: TWideStringField;
    ClientTablemob_c: TWideStringField;
    ClientTableemail_c: TWideStringField;
    ClientTablewillaya_c: TWideStringField;
    ClientTablefax_c: TWideStringField;
    ClientTableactiv_c: TBooleanField;
    ClientTablelogo_c: TBlobField;
    ClientTablemob2_c: TWideStringField;
    ClientTablerc_c: TWideStringField;
    ClientTablenif_c: TWideStringField;
    ClientTablenart_c: TWideStringField;
    ClientTablenis_c: TWideStringField;
    ClientTableobser_c: TWideMemoField;
    ClientTablenbank_c: TWideStringField;
    ClientTablerib_c: TWideStringField;
    ClientTableactivite_c: TWideStringField;
    ClientTablepays_c: TWideStringField;
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
    FournisseurTablepays_f: TWideStringField;
    FournisseurTablefix_f: TWideStringField;
    FournisseurTablemob_f: TWideStringField;
    FournisseurTablemob2_f: TWideStringField;
    FournisseurTablefax_f: TWideStringField;
    FournisseurTableemail_f: TWideStringField;
    FournisseurTableobser_f: TWideStringField;
    FournisseurTablelogo_f: TBlobField;
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
    Bonv_ctr_listTablequt_p: TIntegerField;
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
    Bonv_ctr_listTabletvap: TCurrencyField;
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
    Accual: TsTabSheet;
    Bonv_ctr_Top10produit: TFDQuery;
    Bonv_ctr_Top10produitcode_p: TIntegerField;
    Bonv_ctr_Top10produitsum: TLargeintField;
    Bonv_ctr_Top10produitnomp: TStringField;
    GstockdcConnection: TFDConnection;
    Opt_cas_bnk_CaisseTable: TFDQuery;
    Opt_cas_bnk_BankTable: TFDQuery;
    Button17: TButton;
    Button18: TButton;
    StatuBar: TsStatusBar;
    Timer1: TTimer;
    UsersTable: TFDQuery;
    GridIconsUR36: TsAlphaImageList;
    Bonv_ctrTablecode_ur: TIntegerField;
    Bonv_ctrTableAgnet: TStringField;
    Opt_cas_bnk_CaisseTableAgnet: TStringField;
    Opt_cas_bnk_BankTableAgnet: TStringField;
    Bona_recTablecode_ur: TIntegerField;
    Bona_recTableAgnet: TStringField;
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
    vente_ur: TCheckBox;
    bl_ur: TCheckBox;
    fcv_ur: TCheckBox;
    rgc_ur: TCheckBox;
    achat_ur: TCheckBox;
    br_ur: TCheckBox;
    fca_ur: TCheckBox;
    rgf_ur: TCheckBox;
    tre_ur: TCheckBox;
    caisse_ur: TCheckBox;
    bank_ur: TCheckBox;
    client_ur: TCheckBox;
    four_ur: TCheckBox;
    ctr_ur: TCheckBox;
    produit_ur: TCheckBox;
    faceIcon68: TsAlphaImageList;
    CompanyTable: TFDQuery;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    BLFaceBtn: TAdvToolButton;
    FCVFaceBtn: TAdvToolButton;
    CTRFaceBtn: TAdvToolButton;
    BRFaceBtn: TAdvToolButton;
    FCAFaceBtn: TAdvToolButton;
    AdvToolButton15: TAdvToolButton;
    CaisseFaceBtn: TAdvToolButton;
    BankFaceBtn: TAdvToolButton;
    AdvToolButton18: TAdvToolButton;
    ClientFaceBtn: TAdvToolButton;
    FourFaceBtn: TAdvToolButton;
    ProduitFaceBtn: TAdvToolButton;
    FDScriptCreateTables: TFDScript;
    FDScript1: TFDScript;
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
    procedure sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer;
      var CanClose: Boolean; var Action: TacCloseAction);
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
    procedure Button13Click(Sender: TObject);
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
    procedure M2Click(Sender: TObject);
    procedure ProduitFaceBtnClick(Sender: TObject);
    procedure ClientMainFMnmClick(Sender: TObject);
    procedure FourMainFMnmClick(Sender: TObject);
    procedure ProduitMainFMmnClick(Sender: TObject);
    procedure BoardMainFBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    TimerStart: TDateTime;

    TabSheetProduit: TsTabSheet;
    TabSheetClient: TsTabSheet;

 //   TabSheetFournisseur: TsTabSheet;
    TabSheetBonRect: TsTabSheet;
    TabSheetBonLiv:  TsTabSheet;
    TabSheetBonFacV: TsTabSheet;
    TabSheetBonFacA: TsTabSheet;
    TabSheetBonCtr: TsTabSheet;
    TabSheetCaisse: TsTabSheet;
    TabSheetBank: TsTabSheet;
    TabSheetRegFour: TsTabSheet;
    TabSheetRegClient: TsTabSheet;
    TabSheetDashBoard: TsTabSheet;


  public

    TabSheetFournisseur: TsTabSheet;
    procedure WMUserCloseTab(var Message: TMessage); message
    WM_USER_CLOSETAB;

    Procedure StartTimer;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses TlHelp32,

   UClientsList, UFournisseurList, UProduitsList, UBonRec, UBonRecGestion,
  USplashAddUnite, UBonLiv, UBonLivGestion, UBonFacVGestion, UBonFacV,
  UBonFacAGestion, UBonFacA, UComptoir,ShellAPI, UBonCtr, UCaisseList,
  UBankList, UUsersList, UUsersGestion, UReglementFList, UReglementCList,
  UOptions, UModePaieList, UDashboard;

procedure TMainForm.ClientMainFBtnClick(Sender: TObject);
begin

  if sPageControl1.ActivePage.Caption <> ' Liste des Clients ' then
  begin
    if TabSheetClient <> nil then

    begin
    //  TabSheetClient := TsTabSheet.Create(sPageControl1);
      TabSheetClient.Caption := ' Liste des Clients ';
      TabSheetClient.StyleElements:=[];
      TabSheetClient.Font.Name:= 'Roboto';
      TabSheetClient.Font.Size:= 14;
      TabSheetClient.Height:= 25;
      TabSheetClient.DoubleBuffered:= True;
      TabSheetClient.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Clients';
      ClientListF := TClientListF.Create(nil);
      ClientListF.Parent := TabSheetClient;
      ClientListF.BorderStyle := bsNone;
      ClientListF.BorderIcons := [];
      ClientListF.Align := alClient;
     // Parent := MainForm.FaceP;
      ClientListF.Show;
       sPageControl1.ActivePage := TabSheetClient;

    end else
        begin
             TabSheetClient := TsTabSheet.Create(sPageControl1);
      TabSheetClient.Caption := ' Liste des Clients ';
      TabSheetClient.StyleElements:=[];
      TabSheetClient.Font.Name:= 'Roboto';
      TabSheetClient.Font.Size:= 14;
      TabSheetClient.Height:= 25;
      TabSheetClient.DoubleBuffered:= True;
      TabSheetClient.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Clients';
      ClientListF := TClientListF.Create(nil);
      ClientListF.Parent := TabSheetClient;
      ClientListF.BorderStyle := bsNone;
      ClientListF.BorderIcons := [];
      ClientListF.Align := alClient;
     // Parent := MainForm.FaceP;
      ClientListF.Show;
       sPageControl1.ActivePage := TabSheetClient;
        end;
    end
    else
    begin

    // sPageControl1.ActivePage := TabSheetClient;
  //   if True then



    //   TabSheetClient := TsTabSheet.Create(sPageControl1);
      TabSheetClient.Caption := ' Liste des Clients ';
      TabSheetClient.StyleElements:=[];
      TabSheetClient.Font.Name:= 'Roboto';
      TabSheetClient.Font.Size:= 14;
   //   TabSheetClient.Height:= 25;
      TabSheetClient.DoubleBuffered:= True;
      TabSheetClient.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Clients';
   //   ClientListF := TClientListF.Create(nil);
      ClientListF.Parent := TabSheetClient;
      ClientListF.BorderStyle := bsNone;
      ClientListF.BorderIcons := [];
      ClientListF.Align := alClient;
     // Parent := MainForm.FaceP;
      ClientListF.Show;
       sPageControl1.ActivePage := TabSheetClient;
    end;



end;

procedure TMainForm.FourMainFBtnClick(Sender: TObject);
begin
    if sPageControl1.ActivePage.Caption <> ' Liste des Fournisseurs ' then
    if not Assigned(TabSheetFournisseur) then
    begin
      TabSheetFournisseur := TsTabSheet.Create(sPageControl1);
      TabSheetFournisseur.Caption := ' Liste des Fournisseurs ';
      TabSheetFournisseur.StyleElements:=[];
      TabSheetFournisseur.Font.Name:= 'Roboto';
      TabSheetFournisseur.Font.Size:= 14;
   //   TabSheetFournisseur.Height:= 25;
      TabSheetFournisseur.DoubleBuffered:= True;
      TabSheetFournisseur.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Clients';
      FournisseurListF := TFournisseurListF.Create(TabSheetFournisseur);
      FournisseurListF.Parent := TabSheetFournisseur;
      FournisseurListF.BorderStyle := bsNone;
      FournisseurListF.BorderIcons := [];
      FournisseurListF.Align := alClient;
     // Parent := MainForm.FaceP;
      FournisseurListF.Show;
      sPageControl1.ActivePage := TabSheetFournisseur;
     end else
    if TabSheetFournisseur <> nil then
    begin
      TabSheetFournisseur := TsTabSheet.Create(sPageControl1);
      TabSheetFournisseur.Caption := ' Liste des Fournisseurs ';
      TabSheetFournisseur.StyleElements:=[];
      TabSheetFournisseur.Font.Name:= 'Roboto';
      TabSheetFournisseur.Font.Size:= 14;
   //   TabSheetFournisseur.Height:= 25;
      TabSheetFournisseur.DoubleBuffered:= True;
      TabSheetFournisseur.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Clients';
      FournisseurListF := TFournisseurListF.Create(nil);
      FournisseurListF.Parent := TabSheetFournisseur;
      FournisseurListF.BorderStyle := bsNone;
      FournisseurListF.BorderIcons := [];
      FournisseurListF.Align := alClient;
     // Parent := MainForm.FaceP;
      FournisseurListF.Show;
      sPageControl1.ActivePage := TabSheetFournisseur;
      end;
end;

procedure TMainForm.ComptoirMainFBtnClick(Sender: TObject);
var
  codeCT : integer;

  begin

 BonCtrF.AddBVCtrBtnClick(Self);
end;

procedure TMainForm.ProduitMainFBtnClick(Sender: TObject);
begin

  if sPageControl1.ActivePage.Caption <> ' Liste des Produits ' then
    if not Assigned(TabSheetProduit) then

    begin

      TabSheetProduit := TsTabSheet.Create(sPageControl1);
      TabSheetProduit.Caption := ' Liste des Produits ';
      TabSheetProduit.StyleElements:=[];
      TabSheetProduit.Font.Name:= 'Roboto';
      TabSheetProduit.Font.Size:= 14;
      TabSheetProduit.Height:= 25;
      TabSheetProduit.DoubleBuffered:= True;
      TabSheetProduit.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      ProduitsListF := TProduitsListF.Create(nil);
      ProduitsListF.Parent := TabSheetProduit;
      ProduitsListF.BorderStyle := bsNone;
      ProduitsListF.BorderIcons := [];
      ProduitsListF.Align := alClient;
     // Parent := MainForm.FaceP;
      ProduitsListF.Show;
      sPageControl1.ActivePage := TabSheetProduit;

    end else

     sPageControl1.ActivePage := TabSheetProduit;

end;

procedure TMainForm.BRMainFMmnClick(Sender: TObject);
begin
//  if sPageControl1.ActivePage.Caption <> ' Bon de R�ception ' then
//  begin
//  if not Assigned(TabSheetBonRect) then
//    begin
//      TabSheetBonRect := TsTabSheet.Create(sPageControl1);
//      TabSheetBonRect.Caption := ' Bon de R�ception ';
//      TabSheetBonRect.StyleElements:=[];
//      TabSheetBonRect.Font.Name:= 'Roboto';
//      TabSheetBonRect.Font.Size:= 14;
//      TabSheetBonRect.Height:= 25;
//      TabSheetBonRect.DoubleBuffered:= True;
//      TabSheetBonRect.PageControl := sPageControl1;
//      sPageControl1.ActivePage.UseCloseBtn := True;
//      // sPageControl1.Pages[0].Name := 'Bon de R�ception';
//      BonRecF := TBonRecF.Create(Application);
//      BonRecF.Parent := TabSheetBonRect;
//      BonRecF.BorderStyle := bsNone;
//      BonRecF.BorderIcons := [];
//      BonRecF.Align := alClient;
//     // Parent := MainForm.FaceP;
//      BonRecF.Show;
//      sPageControl1.ActivePage := TabSheetBonRect;
//
//    end
//
//    else
//    begin
//
//       sPageControl1.ActivePage := TabSheetBonRect;
//
//
//    end;
//  end;


  if sPageControl1.ActivePage.Caption <> ' Bon de R�ception ' then
  begin
  if ( Sender <> TabSheetBonRect ) then
    begin
       if (TabSheetBonRect = nil)  then
      begin
      TabSheetBonRect := TsTabSheet.Create(sPageControl1);
      end else
               begin
                 sPageControl1.ActivePage := TabSheetBonRect;

           end;
      TabSheetBonRect.Caption := ' Bon de R�ception ';
      TabSheetBonRect.StyleElements:=[];
      TabSheetBonRect.Font.Name:= 'Roboto';
      TabSheetBonRect.Font.Size:= 14;
      TabSheetBonRect.Height:= 25;
      TabSheetBonRect.DoubleBuffered:= True;
      TabSheetBonRect.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Bon de Livraison';
      if not Assigned(BonRecF) then
      begin
      BonRecF := TBonRecF.Create(TabSheetBonRect);
      end;
      BonRecF.Parent := TabSheetBonRect;
      BonRecF.BorderStyle := bsNone;
      BonRecF.BorderIcons := [];
      BonRecF.Align := alClient;
     // Parent := MainForm.FaceP;
      BonRecF.Show;
      sPageControl1.ActivePage := TabSheetBonRect;

    end

    else
    begin
       sPageControl1.ActivePage := TabSheetBonRect;
    end;
  end;

end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//var
//  msg: String;
begin


// msg:='You have not saved. Do you really want to close?';
//
//  if MessageDlg(msg, mtConfirmation, [mbOk, mbCancel], 0) = mrCancel then
//   begin CanClose := false end
//    else
//    begin
////      GstockdcConnection.ExecSQL('VACUUM') ;
//      CanClose := True;
//    end;


end;

procedure TMainForm.FormCreate(Sender: TObject);
var sCmd: string;
begin
//Screen.MenuFont.Name := 'Helvetica LT Std';
//Screen.MenuFont.Height := 15;

//FDPhysPgDriverLink1.VendorLib:= GetCurrentDir+'\bin\libpq.dll ' ;

//  sCmd := Pwidechar(GetCurrentDir+ '\bin\pg_s.bat' );
//  ShellExecute(0, 'open', PChar(sCmd) , PChar(sCmd), nil, SW_HIDE);
//
//  Sleep(5000);

  GstockdcConnection.DriverName := 'PG';
  GstockdcConnection.Params.Values['Server'] :='localhost'; // your server name'';
//  FDConnection1.Params.Values['Database'] := 'GSTOCKDC';
  GstockdcConnection.Params.Values['user_name'] := 'postgres';    // adjust to suit
  GstockdcConnection.Params.Values['password'] := ''; // ditto
  GstockdcConnection.Params.Values['Port'] := '5432';
  GstockdcConnection.LoginPrompt := False;

 GstockdcConnection.Params.Values['Database'] := 'GSTOCKDC';
 GstockdcConnection.Connected:= True;

// FDScriptCreateTables.ExecuteAll;

  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';

  Width:= Screen.Width;
  Height:= Screen.Height - 50;

  Label2.Caption:=#174;


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

end;

procedure TMainForm.Bona_recPlistTableCalcFields(DataSet: TDataSet);
begin
  Bona_recPlistTable.FieldValues['PrixATTC']:=
 (((Bona_recPlistTable.FieldValues['prixht_p'] * Bona_recPlistTable.FieldValues['tvap'])/100) + (Bona_recPlistTable.FieldValues['prixht_p'])) ;

   Bona_recPlistTable.FieldValues['MontantHT']:=
 ((Bona_recPlistTable.FieldValues['prixht_p'] * Bona_recPlistTable.FieldValues['qut_p']) * (Bona_recPlistTable.FieldValues['cond_p']) ) ;


   Bona_recPlistTable.FieldValues['MontantTTC']:=
 ((Bona_recPlistTable.FieldValues['PrixATTC'] * Bona_recPlistTable.FieldValues['qut_p']) * (Bona_recPlistTable.FieldValues['cond_p']) ) ;


    Bona_recPlistTable.FieldValues['MontantTVA']:=
 ((Bona_recPlistTable.FieldValues['MontantTTC']) - (Bona_recPlistTable.FieldValues['MontantHT'])) ;

end;

procedure TMainForm.Bona_recTableCalcFields(DataSet: TDataSet);
begin
 Bona_recTable.FieldValues['MontantTVA']:=
((Bona_recTable.FieldValues['montttc_barec']) - ((Bona_recTable.FieldValues['montht_barec'])-(Bona_recTable.FieldValues['remise_barec']))) ;

  Bona_recTable.FieldValues['MontantRes']:=
((Bona_recTable.FieldValues['montttc_barec']) - (Bona_recTable.FieldValues['montver_barec'])) ;

  if (Bona_recTable.FieldValues['remise_barec']) AND (Bona_recTable.FieldValues['montht_barec']) <> 0 then
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
FDScript1.ExecuteAll;
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

procedure TMainForm.sPageControl1CloseBtnClick(Sender: TComponent;
  TabIndex: Integer; var CanClose: Boolean; var Action: TacCloseAction);
 var ta : TObject;

  I: Integer;
  Aba: TTabSheet;
begin
  if sPageControl1.ActivePage.Caption = ' Liste des Produits ' then
  begin

//   TabSheetProduit.Destroy;
 //  Action:=acaFree;

//   FreeAndNil(TabSheetProduit);

 //  PostMessage(Self.Handle,WM_USER_CLOSETAB,integer(TabSheetProduit),0);

  // ProduitsListF.Close;
    for I := 0 to sPageControl1.PageCount - 1 do
  begin
    if (sPageControl1.Pages[I].Caption =  ' Liste des Produits ') then
    begin
      Aba := sPageControl1.Pages[I];
      Aba.Destroy;
      sPageControl1.ActivePageIndex := 0;
      Break;
    end;
  end;


  end;


//if (ta is TsTabSheet) then
// begin
// Action :=  acaFree;
// if (Sender is TForm) then
//  begin
//    Sender.Free
//  end;
//
// end;
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
        TVA:=TVA + MainForm.Bona_recPlistTable.FieldValues['tvap'] ;
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

procedure TMainForm.BLMainFMmnClick(Sender: TObject);
begin
//  if sPageControl1.ActivePage.Caption <> ' Bon de Livraison ' then
//  begin
//  if ( Sender <> TabSheetBonLiv ) then
//    begin
//       if (TabSheetBonLiv = nil)  then
//      begin
//      TabSheetBonLiv := TsTabSheet.Create(sPageControl1);
//      end else
//               begin
//                 sPageControl1.ActivePage := TabSheetBonLiv;
//
//           end;
//      TabSheetBonLiv.Caption := ' Bon de Livraison ';
//      TabSheetBonLiv.StyleElements:=[];
//      TabSheetBonLiv.Font.Name:= 'Roboto';
//      TabSheetBonLiv.Font.Size:= 14;
//      TabSheetBonLiv.Height:= 25;
//      TabSheetBonLiv.DoubleBuffered:= True;
//      TabSheetBonLiv.PageControl := sPageControl1;
//      sPageControl1.ActivePage.UseCloseBtn := True;
//      // sPageControl1.Pages[0].Name := 'Bon de Livraison';
//      BonLivF := TBonLivF.Create(sPageControl1);
//      BonLivF.Parent := sPageControl1;
//      BonLivF.BorderStyle := bsNone;
//      BonLivF.BorderIcons := [];
//      BonLivF.Align := alClient;
//     // Parent := MainForm.FaceP;
//      BonLivF.Show;
//      sPageControl1.ActivePage := TabSheetBonLiv;
//
//    end
//
//    else
//    begin
//
//       sPageControl1.ActivePage := TabSheetBonLiv;
//
//
//    end;
//  end;

    if sPageControl1.ActivePage.Caption <> ' Bon de Livraison ' then
    if not Assigned(TabSheetBonLiv) then

    begin

      TabSheetBonLiv := TsTabSheet.Create(sPageControl1);
      TabSheetBonLiv.Caption := ' Bon de Livraison ';
      TabSheetBonLiv.StyleElements:=[];
      TabSheetBonLiv.Font.Name:= 'Roboto';
      TabSheetBonLiv.Font.Size:= 14;
      TabSheetBonLiv.Height:= 25;
      TabSheetBonLiv.DoubleBuffered:= True;
      TabSheetBonLiv.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      BonLivF := TBonLivF.Create(nil);
      BonLivF.Parent := TabSheetBonLiv;
      BonLivF.BorderStyle := bsNone;
      BonLivF.BorderIcons := [];
      BonLivF.Align := alClient;
     // Parent := MainForm.FaceP;
      BonLivF.Show;
      sPageControl1.ActivePage := TabSheetBonLiv;

    end else

     sPageControl1.ActivePage := TabSheetBonLiv;
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

  if (Bonv_livTable.FieldValues['remise_bvliv']) AND (Bonv_livTable.FieldValues['montht_bvliv']) <> 0 then
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
 (((Bonv_liv_listTable.FieldValues['prixvd_p'] * Bonv_liv_listTable.FieldValues['tvap'])/100) + (Bonv_liv_listTable.FieldValues['prixvd_p'])) ;

   Bonv_liv_listTable.FieldValues['MontantHT']:=
 ((Bonv_liv_listTable.FieldValues['prixvd_p'] * Bonv_liv_listTable.FieldValues['qut_p']) * (Bonv_liv_listTable.FieldValues['cond_p']) ) ;


   Bonv_liv_listTable.FieldValues['MontantTTC']:=
 ((Bonv_liv_listTable.FieldValues['PrixVTTC'] * Bonv_liv_listTable.FieldValues['qut_p']) * (Bonv_liv_listTable.FieldValues['cond_p']) ) ;


    Bonv_liv_listTable.FieldValues['MontantTVA']:=
 ((Bonv_liv_listTable.FieldValues['MontantTTC']) - (Bonv_liv_listTable.FieldValues['MontantHT'])) ;

end;

procedure TMainForm.Bonv_liv_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle: Currency;
  begin
              if Assigned(BonLivGestionF) then
       begin

      MainForm.Bonv_liv_listTable.DisableControls;
      MainForm.Bonv_liv_listTable.First;

      while not MainForm.Bonv_liv_listTable.Eof do
      begin
        TotalHT:= TotalHT + (MainForm.Bonv_liv_listTable.FieldValues['MontantHT'] );
        TotalTVA:= TotalTVA + MainForm.Bonv_liv_listTable.FieldValues['MontantTVA'];
        TotalTTC:= TotalTTC + MainForm.Bonv_liv_listTable.FieldValues['MontantTTC'];
        TVA:=TVA + MainForm.Bonv_liv_listTable.FieldValues['tvap'] ;
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

    if MainForm.Bonv_livTable.FieldValues['montver_bvliv']<> Null then
    begin
    Regle:= MainForm.Bonv_livTable.FieldValues['montver_bvliv'];
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

  if (Bonv_facTable.FieldValues['remise_bvfac']) AND (Bonv_facTable.FieldValues['montht_bvfac']) <> 0 then
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
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,TTCbeforeTimber,TimberFV,TTCafterTimber: Currency;
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
        TVA:=TVA + MainForm.Bonv_fac_listTable.FieldValues['tvap'] ;
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
 (((Bonv_Fac_listTable.FieldValues['prixvd_p'] * Bonv_Fac_listTable.FieldValues['tvap'])/100) + (Bonv_Fac_listTable.FieldValues['prixvd_p'])) ;

   Bonv_Fac_listTable.FieldValues['MontantHT']:=
 ((Bonv_Fac_listTable.FieldValues['prixvd_p'] * Bonv_Fac_listTable.FieldValues['qut_p']) * (Bonv_Fac_listTable.FieldValues['cond_p']) ) ;


   Bonv_Fac_listTable.FieldValues['MontantTTC']:=
 ((Bonv_Fac_listTable.FieldValues['PrixVTTC'] * Bonv_Fac_listTable.FieldValues['qut_p']) * (Bonv_Fac_listTable.FieldValues['cond_p']) ) ;


    Bonv_Fac_listTable.FieldValues['MontantTVA']:=
 ((Bonv_Fac_listTable.FieldValues['MontantTTC']) - (Bonv_Fac_listTable.FieldValues['MontantHT'])) ;

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
  if sPageControl1.ActivePage.Caption <> ' Facture de Vente' then
  begin
  if ( Sender <> TabSheetBonFacV ) then
    begin
       if (TabSheetBonFacV = nil)  then
      begin
      TabSheetBonFacV := TsTabSheet.Create(sPageControl1);
      end else
               begin
                 sPageControl1.ActivePage := TabSheetBonFacV;

           end;
      TabSheetBonFacV.Caption := ' Facture de Vente ';
      TabSheetBonFacV.StyleElements:=[];
      TabSheetBonFacV.Font.Name:= 'Roboto';
      TabSheetBonFacV.Font.Size:= 14;
      TabSheetBonFacV.Height:= 25;
      TabSheetBonFacV.DoubleBuffered:= True;
      TabSheetBonFacV.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Bon de Livraison';
      if not Assigned(BonFacVF) then
      begin
      BonFacVF := TBonFacVF.Create(TabSheetBonFacV);
      end;
      BonFacVF.Parent := TabSheetBonFacV;
      BonFacVF.BorderStyle := bsNone;
      BonFacVF.BorderIcons := [];
      BonFacVF.Align := alClient;
     // Parent := MainForm.FaceP;
      BonFacVF.Show;
      sPageControl1.ActivePage := TabSheetBonFacV;

    end

    else
    begin

       sPageControl1.ActivePage := TabSheetBonFacV;


    end;
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

  if (Bona_facTable.FieldValues['remise_bafac']) AND (Bona_facTable.FieldValues['montht_bafac']) <> 0 then
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
        TVA:=TVA + MainForm.Bona_fac_listTable.FieldValues['tvap'] ;
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
 (((Bona_fac_listTable.FieldValues['prixht_p'] * Bona_fac_listTable.FieldValues['tvap'])/100) + (Bona_fac_listTable.FieldValues['prixht_p'])) ;

   Bona_fac_listTable.FieldValues['MontantHT']:=
 ((Bona_fac_listTable.FieldValues['prixht_p'] * Bona_fac_listTable.FieldValues['qut_p']) * (Bona_fac_listTable.FieldValues['cond_p']) ) ;


   Bona_fac_listTable.FieldValues['MontantTTC']:=
 ((Bona_fac_listTable.FieldValues['PrixVTTC'] * Bona_fac_listTable.FieldValues['qut_p']) * (Bona_fac_listTable.FieldValues['cond_p']) ) ;


    Bona_fac_listTable.FieldValues['MontantTVA']:=
 ((Bona_fac_listTable.FieldValues['MontantTTC']) - (Bona_fac_listTable.FieldValues['MontantHT'])) ;
end;

procedure TMainForm.Bona_facTableCreditCalcFields(DataSet: TDataSet);
begin
 Bona_FacTableCredit.FieldValues['MontantTVA']:=
((Bona_FacTableCredit.FieldValues['montttc_bafac']) - ((Bona_FacTableCredit.FieldValues['montht_bafac'])-(Bona_FacTableCredit.FieldValues['remise_bafac']))) ;

  Bona_FacTableCredit.FieldValues['MontantRes']:=
((Bona_FacTableCredit.FieldValues['montttc_bafac']) - (Bona_FacTableCredit.FieldValues['montver_bafac'])) ;
end;

procedure TMainForm.FactureAMainFMnmClick(Sender: TObject);
begin
  if sPageControl1.ActivePage.Caption <> ' Facture d''Achat ' then
    if not Assigned(TabSheetBonFacA) then

    begin

      TabSheetBonFacA := TsTabSheet.Create(sPageControl1);
      TabSheetBonFacA.Caption := ' Facture d''Achat ';
      TabSheetBonFacA.StyleElements:=[];
      TabSheetBonFacA.Font.Name:= 'Roboto';
      TabSheetBonFacA.Font.Size:= 14;
      TabSheetBonFacA.Height:= 25;
      TabSheetBonFacA.DoubleBuffered:= True;
      TabSheetBonFacA.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      BonFacAF := TBonFacAF.Create(nil);
      BonFacAF.Parent := TabSheetBonFacA;
      BonFacAF.BorderStyle := bsNone;
      BonFacAF.BorderIcons := [];
      BonFacAF.Align := alClient;
     // Parent := MainForm.FaceP;
      BonFacAF.Show;
      sPageControl1.ActivePage := TabSheetBonFacA;

    end else

     sPageControl1.ActivePage := TabSheetBonFacA;



end;

procedure TMainForm.Button12Click(Sender: TObject);
begin
//FactureAMainFMnmClick(Sender);
end;

procedure TMainForm.Button13Click(Sender: TObject);
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
//  FournisseurTablePassif.Disconnect ;
//  FournisseurTableActif.Disconnect ;
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


 if (Bonv_ctrTable.FieldValues['montver_bvctr']) > (Bonv_ctrTable.FieldValues['montttc_bvctr']) then

 begin
    Bonv_ctrTable.FieldValues['MontantRen']:=
  ((Bonv_ctrTable.FieldValues['montver_bvctr']) - (Bonv_ctrTable.FieldValues['montttc_bvctr'])) ;
 end else
     begin
      Bonv_ctrTable.FieldValues['MontantRen']:=0;
     end;

  if (Bonv_ctrTable.FieldValues['remise_bvctr']) AND (Bonv_ctrTable.FieldValues['montht_bvctr']) <> 0 then
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
var TotalHT,TotalTVA,TVA,TotalTTC,LeRendu,Regle: Currency;
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
        TVA:=TVA + MainForm.Bonv_ctr_listTable.FieldValues['tvap'] ;
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
 (((Bonv_ctr_listTable.FieldValues['prixvd_p'] * Bonv_ctr_listTable.FieldValues['tvap'])/100) + (Bonv_ctr_listTable.FieldValues['prixvd_p'])) ;

   Bonv_ctr_listTable.FieldValues['MontantHT']:=
 ((Bonv_ctr_listTable.FieldValues['prixvd_p'] * Bonv_ctr_listTable.FieldValues['qut_p']) * (Bonv_ctr_listTable.FieldValues['cond_p']) ) ;


   Bonv_ctr_listTable.FieldValues['MontantTTC']:=
 ((Bonv_ctr_listTable.FieldValues['PrixVTTC'] * Bonv_ctr_listTable.FieldValues['qut_p']) * (Bonv_ctr_listTable.FieldValues['cond_p']) ) ;


    Bonv_ctr_listTable.FieldValues['MontantTVA']:=
 ((Bonv_ctr_listTable.FieldValues['MontantTTC']) - (Bonv_ctr_listTable.FieldValues['MontantHT'])) ;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
      GstockdcConnection.Connected := True;
    ProduitTable.Active := True;
    ClientTable.Active := True;
//    ClientListF.ClientTablePassif.Active := True;
//    ClientListF.ClientTableActif.Active := True;
    FournisseurTable.Active := True;

//    Bona_recTable.Active := True;
//    Bona_recPlistTable.Active := True;
//    Bona_facTable.Active := True;
//    Bona_fac_listTable.Active := True;
    Bonv_livTable.Active := True;
 //   Bonv_liv_listTable.Active := True;
    Bonv_facTable.Active := True;
    Bonv_fac_listTable.Active := True;
    Bonv_ctrTable.Active := True;
    Bonv_ctr_listTable.Active := True;
    Bonv_ctr_Top10produit.Active := True;
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

    UsersTable.Active := True;

    RegclientTable.Active := True;
    RegfournisseurTable.Active := True;

    CompanyTable.Active := True;


       if UserTypeLbl.Caption <> '0' then
     begin

       OptionMainFMnm.Visible:= False;
       UsersGMainFMnm.Visible:= False;



      if vente_ur.Checked  then
       begin
        VenteMainFMnm.Visible:= True;
       end else
           begin
            BLMainFBtn.Enabled:= False;
              BLMainFBtn.ImageIndex:= 16;
            ComptoirMainFBtn.Enabled:= False;
              ComptoirMainFBtn.ImageIndex:= 17;
            VenteMainFMnm.Visible:= False;
            FactureVMainFMnm.Visible:= False;

            CtrMainFMmn.Visible:= False;
            BLMainFMmn.Visible:= False;
           end;

       if bl_ur.Checked  then
       begin
        BLMainFBtn.Enabled:= True;
        BLMainFBtn.ImageIndex:= 4;
        BLMainFMmn.Visible:= True;
        BLFaceBtn.Enabled:= True;
       end else
           begin
            BLMainFBtn.Enabled:= False;
            BLMainFBtn.ImageIndex:= 16;
            BLMainFMmn.Visible:= False;
            BLFaceBtn.Enabled:= False;
           end;
       if fcv_ur.Checked then
       begin
        FactureVMainFMnm.Visible:= True;
        FactureV2MainFMnm.Visible:= True;
        FCVFaceBtn.Enabled:= True;
       end else
           begin
           FactureVMainFMnm.Visible:= False;
           FactureV2MainFMnm.Visible:= False;
           FCVFaceBtn.Enabled:= False;
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
        CTRFaceBtn.Enabled:= True;
       end else
           begin
            ComptoirMainFBtn.Enabled:= False;
            ComptoirMainFBtn.ImageIndex:= 17;
            CtrMainFMmn.Visible:= False;
            CTRFaceBtn.Enabled:= False;
           end;

       if achat_ur.Checked  then
       begin
       AchatsMainFMnm.Visible:= True;
       end else
           begin
           AchatsMainFMnm.Visible:= False;
           BRMainFBtn.Enabled:= False;
           BRMainFBtn.ImageIndex:= 15;
          end;
       if br_ur.Checked  then
       begin
       BRMainFMmn.Visible:= True;
       BRMainFBtn.Enabled:= True;
       BRMainFBtn.ImageIndex:= 3;
       BRFaceBtn.Enabled:= True;
       end else
           begin
           BRMainFMmn.Visible:= False;
           BRMainFBtn.Enabled:= False;
           BRMainFBtn.ImageIndex:= 15;
           BRFaceBtn.Enabled:= False;
           end;
       if fca_ur.Checked  then
       begin
        FactureAMainFMnm.Visible:= True;
        FCAFaceBtn.Enabled:= True;
       end else
           begin
              FactureAMainFMnm.Visible:= False;
              FCAFaceBtn.Enabled:= False;
           end;
       if rgf_ur.Checked  then
       begin
         RGFourMainFMnm.Visible:= True;
       end else
           begin
            RGFourMainFMnm.Visible:= False;
          end;
       if tre_ur.Checked  then
       begin
         TreMainFMnm.Visible:= True;
       end else
           begin
             TreMainFMnm.Visible:= False;
             CaisseMainFBtn.Enabled:= False;
           end;
       if caisse_ur.Checked  then
       begin
        CaisseMainFBtn.Enabled:= True;
        CaisseMainFBtn.ImageIndex:= 7;
        CaisseFaceBtn.Enabled:= True;
        CaisseMainFMnm.Visible:= False;
       end else
           begin
            CaisseMainFBtn.Enabled:= False;
            CaisseMainFBtn.ImageIndex:= 19;
            CaisseFaceBtn.Enabled:= False;
            CaisseMainFMnm.Visible:= False;
           end;
       if bank_ur.Checked  then
       begin
        BankMainFMnm.Visible:= True;
        BankFaceBtn.Enabled:= True;
       end else
           begin
            BankMainFMnm.Visible:= False;
            BankFaceBtn.Enabled:= False;
           end;
       if client_ur.Checked  then
       begin
        ClientMainFBtn.Enabled:= True;
        ClientMainFBtn.ImageIndex:= 1;
        ClientMainFMnm.Visible:= True;
        ClientFaceBtn.Enabled:= True;
       end else
           begin
            ClientMainFBtn.Enabled:= False;
            ClientMainFBtn.ImageIndex:= 13;
            ClientMainFMnm.Visible:= False;
            ClientFaceBtn.Enabled:= False;
           end;
       if four_ur.Checked  then
       begin
        FourMainFBtn.Enabled:= True;
        FourMainFBtn.ImageIndex:= 2;
        FourMainFMnm.Visible:= True;
        FourFaceBtn.Enabled:= True;
       end else
           begin
            FourMainFBtn.Enabled:= False;
            FourMainFBtn.ImageIndex:= 14;
            FourMainFMnm.Visible:= False;
            FourFaceBtn.Enabled:= False;
           end;

       if produit_ur.Checked  then
       begin
        ProduitMainFBtn.Enabled:= True;
        ProduitMainFBtn.ImageIndex:= 6;
        ProduitMainFMmn.Visible:= True;
        ProduitFaceBtn.Enabled:= True;
       end else
           begin
            ProduitMainFBtn.Enabled:= False;
            ProduitMainFBtn.ImageIndex:= 18;
            ProduitMainFMmn.Visible:= False;
            ProduitFaceBtn.Enabled:= False;
           end;

     end else
         begin
           OptionMainFMnm.Visible:= True;
           UsersGMainFMnm.Visible:= True;
         end;




end;

procedure TMainForm.N17Click(Sender: TObject);
begin
//F7Click(Sender);
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

    if sPageControl1.ActivePage.Caption <> ' Etat de Caisses ' then
    if not Assigned(TabSheetCaisse) then

    begin

      TabSheetCaisse := TsTabSheet.Create(sPageControl1);
      TabSheetCaisse.Caption := ' Etat de Caisses ';
      TabSheetCaisse.StyleElements:=[];
      TabSheetCaisse.Font.Name:= 'Roboto';
      TabSheetCaisse.Font.Size:= 14;
      TabSheetCaisse.Height:= 25;
      TabSheetCaisse.DoubleBuffered:= True;
      TabSheetCaisse.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      CaisseListF := TCaisseListF.Create(nil);
      CaisseListF.Parent := TabSheetCaisse;
      CaisseListF.BorderStyle := bsNone;
      CaisseListF.BorderIcons := [];
      CaisseListF.Align := alClient;
     // Parent := MainForm.FaceP;
      CaisseListF.Show;
      sPageControl1.ActivePage := TabSheetCaisse;

    end else

     sPageControl1.ActivePage := TabSheetCaisse;
end;

procedure TMainForm.CaisseMainFBtnClick(Sender: TObject);
begin
CaisseMainFMnmClick(Sender);
end;

procedure TMainForm.BankMainFMnmClick(Sender: TObject);
begin
    if sPageControl1.ActivePage.Caption <> ' Etat relev� de comptes ' then
    if not Assigned(TabSheetBank) then

    begin

      TabSheetBank := TsTabSheet.Create(sPageControl1);
      TabSheetBank.Caption := ' Etat relev� de comptes ';
      TabSheetBank.StyleElements:=[];
      TabSheetBank.Font.Name:= 'Roboto';
      TabSheetBank.Font.Size:= 14;
      TabSheetBank.Height:= 25;
      TabSheetBank.DoubleBuffered:= True;
      TabSheetBank.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      BankListF := TBankListF.Create(nil);
      BankListF.Parent := TabSheetBank;
      BankListF.BorderStyle := bsNone;
      BankListF.BorderIcons := [];
      BankListF.Align := alClient;
     // Parent := MainForm.FaceP;
      BankListF.Show;
      sPageControl1.ActivePage := TabSheetBank;

    end else

     sPageControl1.ActivePage := TabSheetBank;
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
     //       ClientGestionF.BringToFront;
            UsersListF.Left:=  (Screen.Width div 2 ) - (UsersListF.Width div 2)    ;
            UsersListF.Top:=   (Screen.Height div 2) - (UsersListF.Height div 2)    ;

            UsersListF.Show;

            UsersListF.ResearchUsersEdt.SetFocus;
end;

procedure TMainForm.RGFourMainFMnmClick(Sender: TObject);
begin
    if sPageControl1.ActivePage.Caption <> ' R�glement Fournisseur ' then
    if not Assigned(TabSheetRegFour) then

    begin

      TabSheetRegFour:= TsTabSheet.Create(sPageControl1);
      TabSheetRegFour.Caption := ' R�glement Fournisseur';
      TabSheetRegFour.StyleElements:=[];
      TabSheetRegFour.Font.Name:= 'Roboto';
      TabSheetRegFour.Font.Size:= 14;
      TabSheetRegFour.Height:= 25;
      TabSheetRegFour.DoubleBuffered:= True;
      TabSheetRegFour.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      ReglementFListF := TReglementFListF.Create(nil);
      ReglementFListF.Parent := TabSheetRegFour;
      ReglementFListF.BorderStyle := bsNone;
      ReglementFListF.BorderIcons := [];
      ReglementFListF.Align := alClient;
     // Parent := MainForm.FaceP;
      ReglementFListF.Show;
      sPageControl1.ActivePage := TabSheetRegFour;

    end else

     sPageControl1.ActivePage := TabSheetRegFour;
end;

procedure TMainForm.RGClientMainFMnmClick(Sender: TObject);
begin
    if sPageControl1.ActivePage.Caption <> ' R�glement Clients ' then
    if not Assigned(TabSheetRegClient) then

    begin

      TabSheetRegClient:= TsTabSheet.Create(sPageControl1);
      TabSheetRegClient.Caption := ' R�glement Clients';
      TabSheetRegClient.StyleElements:=[];
      TabSheetRegClient.Font.Name:= 'Roboto';
      TabSheetRegClient.Font.Size:= 14;
      TabSheetRegClient.Height:= 25;
      TabSheetRegClient.DoubleBuffered:= True;
      TabSheetRegClient.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      ReglementCListF := TReglementCListF.Create(nil);
      ReglementCListF.Parent := TabSheetRegClient;
      ReglementCListF.BorderStyle := bsNone;
      ReglementCListF.BorderIcons := [];
      ReglementCListF.Align := alClient;
     // Parent := MainForm.FaceP;
      ReglementCListF.Show;
      sPageControl1.ActivePage := TabSheetRegClient;

    end else

     sPageControl1.ActivePage := TabSheetRegClient;
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

procedure TMainForm.CtrMainFMmnClick(Sender: TObject);
begin
//  if sPageControl1.ActivePage.Caption <> ' Comptoir de Vente ' then
//    if not Assigned(TabSheetBonCtr) then
//
//    begin
//
//      TabSheetBonCtr := TsTabSheet.Create(Application);
//      TabSheetBonCtr.Parent:= sPageControl1;
//      TabSheetBonCtr.Caption := ' Comptoir de Vente ';
//      TabSheetBonCtr.StyleElements:=[];
//      TabSheetBonCtr.Font.Name:= 'Roboto';
//      TabSheetBonCtr.Font.Size:= 14;
//      TabSheetBonCtr.Height:= 25;
//      TabSheetBonCtr.DoubleBuffered:= True;
//      TabSheetBonCtr.PageControl := sPageControl1;
//      sPageControl1.ActivePage.UseCloseBtn := True;
//      // sPageControl1.Pages[0].Name := 'Liste des Produits';
//      if nOT Assigned(BonCtrF) then
//      begin
//      BonCtrF := TBonCtrF.Create(TabSheetBonCtr);
//      end;
//      BonCtrF.Parent := TabSheetBonCtr;
//      BonCtrF.BorderStyle := bsNone;
//      BonCtrF.BorderIcons := [];
//      BonCtrF.Align := alClient;
//     // Parent := MainForm.FaceP;
//      BonCtrF.Show;
//      sPageControl1.ActivePage := TabSheetBonCtr;
//
//    end else
//
//     sPageControl1.ActivePage := TabSheetBonCtr;




       if sPageControl1.ActivePage.Caption <> ' Comptoir de Vente ' then
  begin
  if ( Sender <> TabSheetBonCtr ) then
    begin
       if (TabSheetBonCtr = nil)  then
      begin
      TabSheetBonCtr := TsTabSheet.Create(sPageControl1);
      end else
               begin
                 sPageControl1.ActivePage := TabSheetBonCtr;

           end;
      TabSheetBonCtr.Caption := ' Comptoir de Vente ';
      TabSheetBonCtr.StyleElements:=[];
      TabSheetBonCtr.Font.Name:= 'Roboto';
      TabSheetBonCtr.Font.Size:= 14;
      TabSheetBonCtr.Height:= 25;
      TabSheetBonCtr.DoubleBuffered:= True;
      TabSheetBonCtr.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Bon de Livraison';
      if not Assigned(BonCtrF) then
      begin
      BonCtrF := TBonCtrF.Create(TabSheetBonCtr);
      end;
      BonCtrF.Parent := TabSheetBonCtr;
      BonCtrF.BorderStyle := bsNone;
      BonCtrF.BorderIcons := [];
      BonCtrF.Align := alClient;
     // Parent := MainForm.FaceP;
      BonCtrF.Show;
      sPageControl1.ActivePage := TabSheetBonCtr;

    end

    else
    begin

       sPageControl1.ActivePage := TabSheetBonCtr;


    end;
  end;
end;

procedure TMainForm.BLFaceBtnClick(Sender: TObject);
begin
BLMainFMmnClick(Sender);
BonLivF.AddBVLivBtnClick(Sender);
end;

procedure TMainForm.OptionMainFMnmClick(Sender: TObject);
begin
FOptions.Position:= poScreenCenter;
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

procedure TMainForm.ProduitFaceBtnClick(Sender: TObject);
begin
ProduitMainFBtnClick(Sender);
end;

procedure TMainForm.CaisseFaceBtnClick(Sender: TObject);
begin
CaisseMainFMnmClick(Sender);
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

procedure TMainForm.M2Click(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            ModePaieListF:=TModePaieListF.Create(Application);
     //       ClientGestionF.BringToFront;
            ModePaieListF.Left:=  (Screen.Width div 2 ) - (ModePaieListF.Width div 2)    ;
            ModePaieListF.Top:=   (Screen.Height div 2) - (ModePaieListF.Height div 2)    ;

            ModePaieListF.Show;

            ModePaieListF.ResearchUsersEdt.SetFocus;
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
  if sPageControl1.ActivePage.Caption <> ' Tableau de Bord ' then
    if not Assigned(TabSheetDashBoard) then

    begin

      TabSheetDashBoard := TsTabSheet.Create(sPageControl1);
      TabSheetDashBoard.Caption := ' Tableau de Bord ';
      TabSheetDashBoard.StyleElements:=[];
      TabSheetDashBoard.Font.Name:= 'Roboto';
      TabSheetDashBoard.Font.Size:= 14;
      TabSheetDashBoard.Height:= 25;
      TabSheetDashBoard.DoubleBuffered:= True;
      TabSheetDashBoard.PageControl := sPageControl1;
      sPageControl1.ActivePage.UseCloseBtn := True;
      // sPageControl1.Pages[0].Name := 'Liste des Produits';
      DashboardF := TDashboardF.Create(nil);
      DashboardF.Parent := TabSheetDashBoard;
      DashboardF.BorderStyle := bsNone;
      DashboardF.BorderIcons := [];
      DashboardF.Align := alClient;
     // Parent := MainForm.FaceP;
      DashboardF.Show;
//      DashboardF.GettingData;
      sPageControl1.ActivePage := TabSheetDashBoard;

    end else

     sPageControl1.ActivePage := TabSheetDashBoard;
end;

function KillTask(ExeFileName: string): Integer;
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

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   KillTask('postgres.exe');
   KillTask('cmd.exe');
end;

End.

