unit UDataModule;

interface

uses
  Winapi.Windows,Winapi.MMSystem,  Vcl.StdCtrls, Vcl.Dialogs,System.UITypes,Vcl.Forms,
  Data.SqlTimSt,  System.SysUtils,System.Variants,
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, Data.FMTBcd, Data.SqlExpr;

type
  TDataModuleF = class(TDataModule)
    Top5produitOLD: TFDQuery;
    TopClient: TFDQuery;
    TopClientcode_c: TIntegerField;
    TopClientbest_client: TLargeintField;
    TopClientnomclient: TStringField;
    TotalProduit: TFDQuery;
    Top5produitOLDnomp: TStringField;
    TopVerClient: TFDQuery;
    TopFour: TFDQuery;
    TopVerFour: TFDQuery;
    TopFourcode_f: TIntegerField;
    TopFourbest_four: TLargeintField;
    ToatalVerMonthVLIV: TFDQuery;
    GstockdcConnection02: TFDConnection;
    ToatalVerMonthVCTR: TFDQuery;
    ToatalVerMonthVFAC: TFDQuery;
    ToatalVerMonthAREC: TFDQuery;
    ToatalVerMonthAFAC: TFDQuery;
    Top5produitOLDcode_p: TIntegerField;
    Top5produit: TFDQuery;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    PSDBConfigConnection: TFDConnection;
    UsersTable: TFDQuery;
    CreateDBConfigTables: TFDScript;
    AddAdminUser: TFDScript;
    UsersTableDs: TDataSource;
    PZeroQCnotif: TFDQuery;
    PCloseZeroQCnotif: TFDQuery;
    PMoreMaxQCnotif: TFDQuery;
    PCloseDiedCnotif: TFDQuery;
    PDiedCnotif: TFDQuery;
    PZeroQCnotifDS: TDataSource;
    PCloseZeroQCnotifDS: TDataSource;
    PMoreMaxQCnotifDS: TDataSource;
    PCloseDiedCnotifDS: TDataSource;
    PDiedCnotifDS: TDataSource;
    PCloseDiedCnotifcode_famp: TIntegerField;
    PCloseDiedCnotifcode_sfamp: TIntegerField;
    PCloseDiedCnotifcode_f: TIntegerField;
    PCloseDiedCnotifdateperiss_p: TDateField;
    PCloseDiedCnotifcode_u: TSmallintField;
    PCloseDiedCnotifcode_l: TIntegerField;
    PCloseDiedCnotifalertdays_p: TSmallintField;
    PCloseDiedCnotifdaysleft: TIntegerField;
    PerisablePListTable: TFDQuery;
    PerisablePListTablecode_bafac: TIntegerField;
    PerisablePListTablecode_p: TIntegerField;
    PerisablePListTablecode_p_1: TIntegerField;
    PerisablePListTablecode_p_2: TIntegerField;
    ChargesTable: TFDQuery;
    Charge_typeTable: TFDQuery;
    Charge_s_typeTable: TFDQuery;
    PertesTable: TFDQuery;
    Perte_typeTable: TFDQuery;
    ChargesTablecode_ch: TIntegerField;
    ChargesTablenom_ch: TWideStringField;
    ChargesTabledate_ch: TDateField;
    ChargesTabletime_ch: TTimeField;
    ChargesTablenum_cheque_ch: TWideStringField;
    ChargesTablecode_mdpai: TSmallintField;
    ChargesTablecode_cmpt: TSmallintField;
    ChargesTablecode_ur: TIntegerField;
    PertesTablecode_pr: TIntegerField;
    PertesTabledate_pr: TDateField;
    PertesTabletime_pr: TTimeField;
    PertesTablecode_p: TIntegerField;
    PertesTabletva_p: TSmallintField;
    PertesTablecode_ur: TIntegerField;
    PertesTablecode_prt: TSmallintField;
    PertesTableAgent: TStringField;
    PertesTablePRType: TStringField;
    ChargesTableCompte: TStringField;
    ChargesTableCHType: TStringField;
    Charge_s_typeTablecode_chst: TSmallintField;
    Charge_s_typeTablenom_chst: TWideStringField;
    Charge_typeTablecode_cht: TSmallintField;
    Charge_typeTablenom_cht: TWideStringField;
    ChargesTablecode_cht: TSmallintField;
    ChargesTablecode_chst: TSmallintField;
    ChargesTableCHSType: TStringField;
    ChargesTablerefer_ch: TWideStringField;
    PertesTablerefer_pr: TWideStringField;
    ChargesTableAgent: TStringField;
    Transfer_comptesTable: TFDQuery;
    Transfer_comptesTablecode_transfer: TIntegerField;
    Transfer_comptesTabledate_transfer: TDateField;
    Transfer_comptesTabletime_transfer: TTimeField;
    Transfer_comptesTablenum_cheque_transfer: TWideStringField;
    Transfer_comptesTablecode_mdpai: TSmallintField;
    Transfer_comptesTablecode_cmpts: TSmallintField;
    Transfer_comptesTablecode_cmptd: TSmallintField;
    Transfer_comptesTablecode_ur: TIntegerField;
    Transfer_comptesTableCompteSource: TStringField;
    Transfer_comptesTableCompteDis: TStringField;
    Transfer_comptesTableAgent: TStringField;
    Transfer_comptesTablerefer_transfer: TWideStringField;
    ChargesTableobser_ch: TWideStringField;
    PertesTableobser_pr: TWideStringField;
    Transfer_comptesTableobser_transfer: TWideStringField;
    PZeroQCnotifcode_p: TIntegerField;
    PZeroQCnotifnom_p: TWideStringField;
    PZeroQCnotifrefer_p: TWideStringField;
    PZeroQCnotifcode_famp: TIntegerField;
    PZeroQCnotifcode_f: TIntegerField;
    PZeroQCnotifcode_l: TIntegerField;
    PZeroQCnotifcode_sfamp: TIntegerField;
    PZeroQCnotifcode_u: TSmallintField;
    PZeroQCnotifQutDispo: TFloatField;
    PCloseZeroQCnotifcode_p: TIntegerField;
    PCloseZeroQCnotifnom_p: TWideStringField;
    PCloseZeroQCnotifrefer_p: TWideStringField;
    PCloseZeroQCnotifcode_famp: TIntegerField;
    PCloseZeroQCnotifalertqut_p: TIntegerField;
    PCloseZeroQCnotifcode_f: TIntegerField;
    PCloseZeroQCnotifcode_l: TIntegerField;
    PCloseZeroQCnotifcode_sfamp: TIntegerField;
    PCloseZeroQCnotifcode_u: TSmallintField;
    PMoreMaxQCnotifcode_p: TIntegerField;
    PMoreMaxQCnotifnom_p: TWideStringField;
    PMoreMaxQCnotifrefer_p: TWideStringField;
    PMoreMaxQCnotifcode_famp: TIntegerField;
    PMoreMaxQCnotifcode_f: TIntegerField;
    PMoreMaxQCnotifcode_l: TIntegerField;
    PMoreMaxQCnotifcode_sfamp: TIntegerField;
    PMoreMaxQCnotifcode_u: TSmallintField;
    PCloseZeroQCnotifQutDispo: TFloatField;
    PMoreMaxQCnotifQutDispo: TFloatField;
    PDiedCnotifcode_famp: TIntegerField;
    PDiedCnotifcode_sfamp: TIntegerField;
    PDiedCnotifcode_f: TIntegerField;
    PDiedCnotifdateperiss_p: TDateField;
    PDiedCnotifcode_u: TSmallintField;
    PDiedCnotifcode_l: TIntegerField;
    PDiedCnotifdaysleft: TIntegerField;
    PZeroQCnotiffamp: TStringField;
    PZeroQCnotifsfamp: TStringField;
    PZeroQCnotifunit: TStringField;
    PZeroQCnotiffourp: TStringField;
    PZeroQCnotiflocal: TStringField;
    PCloseZeroQCnotiffamp: TStringField;
    PCloseZeroQCnotifsfamp: TStringField;
    PCloseZeroQCnotifunit: TStringField;
    PCloseZeroQCnotiffourp: TStringField;
    PCloseZeroQCnotiflocal: TStringField;
    PMoreMaxQCnotiffamp: TStringField;
    PMoreMaxQCnotifsfamp: TStringField;
    PMoreMaxQCnotifunit: TStringField;
    PMoreMaxQCnotiffourp: TStringField;
    PMoreMaxQCnotiflocal: TStringField;
    PCloseDiedCnotiffamp: TStringField;
    PCloseDiedCnotifsfamp: TStringField;
    PCloseDiedCnotifunit: TStringField;
    PCloseDiedCnotiffourp: TStringField;
    PCloseDiedCnotiflocal: TStringField;
    PDiedCnotiffamp: TStringField;
    PDiedCnotifsfamp: TStringField;
    PDiedCnotifunit: TStringField;
    PDiedCnotiffourp: TStringField;
    PDiedCnotiflocal: TStringField;
    PerissBona_recTable: TFDQuery;
    PerissBona_recTablecode_p: TIntegerField;
    PerissBona_recTabledateperiss_p: TDateField;
    PerissBona_recTabledaysleft: TIntegerField;
    PerissBona_recTablenumbrec: TStringField;
    PerissBona_recTablecode_barec: TIntegerField;
    PerissBona_facTable: TFDQuery;
    PerissBona_facTablecode_bafac: TIntegerField;
    PerissBona_facTablecode_p: TIntegerField;
    PerissBona_facTabledateperiss_p: TDateField;
    PerissBona_facTabledaysleft: TIntegerField;
    PerissBona_facTablenumfac: TStringField;
    PDiedCnotifcode_barec: TIntegerField;
    PDiedCnotifnum_barec: TWideStringField;
    PCloseDiedCnotifcode_barec: TIntegerField;
    PCloseDiedCnotifnum_barec: TWideStringField;
    ClientSituationQR: TFDQuery;
    ClientSituationQRnum: TWideStringField;
    ClientSituationQRsource: TWideStringField;
    ClientSituationQRmp: TWideStringField;
    ClientSituationQRagent: TIntegerField;
    ClientSituationQRAgentName: TStringField;
    FourSituationQR: TFDQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    WideStringField3: TWideStringField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    SQLQuery1: TFDQuery;
    AltersDBInfoChangesFDScript: TFDScript;
    ProduitMovementQR: TFDQuery;
    ProduitMovementQRsource: TWideStringField;
    ProduitMovementQRnum: TWideStringField;
    ProduitMovementQRtiers: TWideStringField;
    ProduitMovementQRdate: TDateField;
    ProduitMovementQRtime: TTimeField;
    ProduitMovementQRagent: TIntegerField;
    ProduitMovementQRAgentName: TStringField;
    AllProduitMovementQR: TFDQuery;
    AllProduitMovementQRrefer_p: TWideStringField;
    AllProduitMovementQRnom_p: TWideStringField;
    AllProduitMovementQRsource: TWideStringField;
    AllProduitMovementQRnum: TWideStringField;
    AllProduitMovementQRtiers: TWideStringField;
    AllProduitMovementQRdate: TDateField;
    AllProduitMovementQRtime: TTimeField;
    AllProduitMovementQRagent: TIntegerField;
    AllProduitMovementQRAgentName: TStringField;
    PCloseDiedCnotifrefer_p: TWideStringField;
    PCloseDiedCnotifnom_p: TWideStringField;
    PDiedCnotifrefer_p: TWideStringField;
    PDiedCnotifnom_p: TWideStringField;
    InventoryTable: TFDQuery;
    Inventory_listTable: TFDQuery;
    InventoryTableAgent: TStringField;
    InventoryTablecode_u: TIntegerField;
    Inventory_listTablecode_il: TIntegerField;
    Inventory_listTablecode_i: TIntegerField;
    Inventory_listTablecode_p: TIntegerField;
    Inventory_listTablerefer_p: TWideStringField;
    Inventory_listTablenom_p: TWideStringField;
    Inventory_listTablecode_u: TIntegerField;
    Inventory_listTablecode_l: TIntegerField;
    Inventory_listTablenom_u: TWideStringField;
    Inventory_listTablenom_l: TWideStringField;
    InventoryTablecode_i: TIntegerField;
    InventoryTablenum_i: TWideStringField;
    InventoryTabledate_i: TDateField;
    InventoryTabletime_i: TTimeField;
    InventoryTablenom_i: TWideStringField;
    InventoryTablevalider_i: TBooleanField;
    InventoryTableobser_i: TWideStringField;
    InventoryTablenump_i: TWideStringField;
    Bona_comTable: TFDQuery;
    Bona_comTablecode_bacom: TIntegerField;
    Bona_comTabledate_bacom: TDateField;
    Bona_comTabletime_bacom: TTimeField;
    Bona_comTablevalider_bacom: TBooleanField;
    Bona_comTablenum_bacom: TWideStringField;
    Bona_comTablenum_cheque_bacom: TWideStringField;
    Bona_comTablecode_mdpai: TSmallintField;
    Bona_comTablecode_cmpt: TSmallintField;
    Bona_comTableModePaie: TStringField;
    Bona_comTableCompte: TStringField;
    Bona_comTablecode_f: TIntegerField;
    Bona_comTablecode_ur: TIntegerField;
    Bona_comTablebon_or_no_bacom: TBooleanField;
    Bona_comTableAgent: TStringField;
    Bona_comTableobser_bacom: TWideStringField;
    Bona_com_listTable: TFDQuery;
    Bona_com_listTablecode_bacoml: TIntegerField;
    Bona_com_listTablecode_bacom: TIntegerField;
    Bona_com_listTablecond_p: TIntegerField;
    Bona_com_listTablecode_p: TIntegerField;
    Bona_com_listTabledateperiss_p: TDateField;
    Bona_com_listTabletva_p: TSmallintField;
    Bona_com_listTablenomp: TWideStringField;
    o: TWideStringField;
    BonComAListDataS: TDataSource;
    Bonv_comTable: TFDQuery;
    Bonv_comTablecode_bvcom: TIntegerField;
    Bonv_comTabledate_bvcom: TDateField;
    Bonv_comTabletime_bvcom: TTimeField;
    Bonv_comTablecode_c: TIntegerField;
    Bonv_comTablevalider_bvcom: TBooleanField;
    Bonv_comTablenum_bvcom: TWideStringField;
    Bonv_comTablenum_cheque_bvcom: TWideStringField;
    Bonv_comTablecode_mdpai: TSmallintField;
    Bonv_comTablecode_cmpt: TSmallintField;
    Bonv_comTableModePaie: TStringField;
    Bonv_comTableCompte: TStringField;
    Bonv_comTablecode_ur: TIntegerField;
    Bonv_comTableobser_bvcom: TWideStringField;
    Bonv_comTableAgent: TStringField;
    Bonv_com_listTable: TFDQuery;
    Bonv_com_listTablecode_bvcoml: TIntegerField;
    Bonv_com_listTablecode_bvcom: TIntegerField;
    Bonv_com_listTablecond_p: TIntegerField;
    Bonv_com_listTablecode_p: TIntegerField;
    Bonv_com_listTabletva_p: TSmallintField;
    Bonv_com_listTablecode_barec: TIntegerField;
    Bonv_com_listTablenomp: TWideStringField;
    Bonv_com_listTablereferp: TWideStringField;
    BonComVListDataS: TDataSource;
    Bona_retTable: TFDQuery;
    Bona_ret_listTable: TFDQuery;
    BonRetAListDataS: TDataSource;
    Bonv_retTable: TFDQuery;
    Bonv_retTablecode_bvret: TIntegerField;
    Bonv_retTabledate_bvret: TDateField;
    Bonv_retTabletime_bvret: TTimeField;
    Bonv_retTablecode_c: TIntegerField;
    Bonv_retTablevalider_bvret: TBooleanField;
    Bonv_retTablenum_bvret: TWideStringField;
    Bonv_retTablenum_cheque_bvret: TWideStringField;
    Bonv_retTablecode_mdpai: TSmallintField;
    Bonv_retTablecode_cmpt: TSmallintField;
    Bonv_retTableModePaie: TStringField;
    Bonv_retTableCompte: TStringField;
    Bonv_retTablecode_ur: TIntegerField;
    Bonv_retTableobser_bvret: TWideStringField;
    Bonv_retTableAgent: TStringField;
    Bonv_ret_listTable: TFDQuery;
    Bonv_ret_listTablecode_bvretl: TIntegerField;
    Bonv_ret_listTablecode_bvret: TIntegerField;
    Bonv_ret_listTablecond_p: TIntegerField;
    Bonv_ret_listTablecode_p: TIntegerField;
    Bonv_ret_listTabletva_p: TSmallintField;
    Bonv_ret_listTablecode_barec: TIntegerField;
    Bonv_ret_listTablenomp: TWideStringField;
    Bonv_ret_listTablereferp: TWideStringField;
    BonRetVListDataS: TDataSource;
    Bonv_ret_listTablelocalisation: TWideStringField;
    SQLQuery2: TFDQuery;
    Bona_com_listTablequt_p: TFMTBCDField;
    Bona_com_listTableprixht_p: TFMTBCDField;
    Bona_com_listTableprixvd_p: TFMTBCDField;
    Bona_com_listTableprixvr_p: TFMTBCDField;
    Bona_com_listTableprixvg_p: TFMTBCDField;
    Bona_com_listTableprixva_p: TFMTBCDField;
    Bona_com_listTableprixva2_p: TFMTBCDField;
    Bona_com_listTablequtinstock_p: TFMTBCDField;
    Bona_com_listTableprixattc: TFMTBCDField;
    Bona_com_listTablemontantht: TFMTBCDField;
    Bona_com_listTablemontantttc: TFMTBCDField;
    Bona_com_listTablemontanttva: TFMTBCDField;
    Bona_com_listTablemontantaht: TFMTBCDField;
    Bona_com_listTablemarged: TFMTBCDField;
    Bona_com_listTablemarger: TFMTBCDField;
    Bona_com_listTablemargeg: TFMTBCDField;
    Bona_com_listTablemargea: TFMTBCDField;
    Bona_com_listTablemargea2: TFMTBCDField;
    Bonv_com_listTablequt_p: TFMTBCDField;
    Bonv_com_listTableprixvd_p: TFMTBCDField;
    Bonv_com_listTableprixht_p: TFMTBCDField;
    Bonv_com_listTableprixvttc: TFMTBCDField;
    Bonv_com_listTablemontantht: TFMTBCDField;
    Bonv_com_listTablemontantttc: TFMTBCDField;
    Bonv_com_listTablemontanttva: TFMTBCDField;
    Bonv_com_listTablemontantaht: TFMTBCDField;
    Bonv_com_listTablemarge: TFMTBCDField;
    Bonv_com_listTablemargem: TFMTBCDField;
    Bonv_ret_listTablequt_p: TFMTBCDField;
    Bonv_ret_listTableprixvd_p: TFMTBCDField;
    Bonv_ret_listTableprixht_p: TFMTBCDField;
    Bonv_ret_listTableprixvttc: TFMTBCDField;
    Bonv_ret_listTablemontantht: TFMTBCDField;
    Bonv_ret_listTablemontantttc: TFMTBCDField;
    Bonv_ret_listTablemontanttva: TFMTBCDField;
    Bonv_ret_listTablemontantaht: TFMTBCDField;
    Bonv_ret_listTablemarge: TFMTBCDField;
    Bonv_ret_listTablemargem: TFMTBCDField;
    Inventory_listTablequttheo_il: TFMTBCDField;
    Inventory_listTablequtphys_il: TFMTBCDField;
    Inventory_listTablecalcgap_il: TFMTBCDField;
    Inventory_listTablevaltheo_il: TFMTBCDField;
    Inventory_listTablevalphys_il: TFMTBCDField;
    Inventory_listTablevalgap_il: TFMTBCDField;
    Inventory_listTablegap_il: TFMTBCDField;
    Inventory_listTableprixht_p: TFMTBCDField;
    PZeroQCnotifqut_p: TFMTBCDField;
    PZeroQCnotifqutini_p: TFMTBCDField;
    ChargesTablemontht_ch: TFMTBCDField;
    ChargesTablemonttva_ch: TFMTBCDField;
    ChargesTablemontttc_ch: TFMTBCDField;
    ChargesTabletimber_ch: TFMTBCDField;
    PertesTablequt_p: TFMTBCDField;
    PertesTableprixht_p: TFMTBCDField;
    PertesTablePrixATTC: TFMTBCDField;
    PertesTableMontantHT: TFMTBCDField;
    PertesTableMontantTVA: TFMTBCDField;
    PertesTableMontantTTC: TFMTBCDField;
    Bona_comTablemontht_bacom: TFMTBCDField;
    Bona_comTablemontver_bacom: TFMTBCDField;
    Bona_comTablemontttc_bacom: TFMTBCDField;
    Bona_comTableremise_bacom: TFMTBCDField;
    Bona_comTabletimber_bacom: TFMTBCDField;
    Bona_comTablemontanttva: TFMTBCDField;
    Bona_comTablemontantres: TFMTBCDField;
    Bona_comTableremiseperc: TFMTBCDField;
    Bona_comTablenetht: TFMTBCDField;
    Bona_retTablecode_baret: TIntegerField;
    Bona_retTabledate_baret: TDateField;
    Bona_retTabletime_baret: TTimeField;
    Bona_retTablecode_f: TIntegerField;
    Bona_retTablemontht_baret: TFMTBCDField;
    Bona_retTablemontver_baret: TFMTBCDField;
    Bona_retTablevalider_baret: TBooleanField;
    Bona_retTablenum_baret: TWideStringField;
    Bona_retTableobser_baret: TWideStringField;
    Bona_retTablemontttc_baret: TFMTBCDField;
    Bona_retTableremise_baret: TFMTBCDField;
    Bona_retTablenum_cheque_baret: TWideStringField;
    Bona_retTablecode_mdpai: TSmallintField;
    Bona_retTablecode_cmpt: TSmallintField;
    Bona_retTablecode_ur: TIntegerField;
    Bona_retTablebon_or_no_baret: TBooleanField;
    Bona_retTablemontanttva: TFMTBCDField;
    Bona_retTablemontantres: TFMTBCDField;
    Bona_retTableremiseperc: TFMTBCDField;
    Bona_retTablenetht: TFMTBCDField;
    Bona_ret_listTablecode_baret: TIntegerField;
    Bona_ret_listTablecode_baretl: TIntegerField;
    Bona_ret_listTablequt_p: TFloatField;
    Bona_ret_listTablecond_p: TIntegerField;
    Bona_ret_listTablecode_p: TIntegerField;
    Bona_ret_listTabletva_p: TSmallintField;
    Bona_ret_listTableprixht_p: TFMTBCDField;
    Bona_ret_listTablenomp: TWideStringField;
    Bona_ret_listTablereferp: TWideStringField;
    Bona_ret_listTableprixvd_p: TFMTBCDField;
    Bona_ret_listTableprixvr_p: TFMTBCDField;
    Bona_ret_listTableprixvg_p: TFMTBCDField;
    Bona_ret_listTableprixva_p: TFMTBCDField;
    Bona_ret_listTableprixva2_p: TFMTBCDField;
    Bona_ret_listTabledateperiss_p: TDateField;
    Bona_ret_listTablequtinstock_p: TFloatField;
    Bona_ret_listTableprixattc: TFMTBCDField;
    Bona_ret_listTablemontantht: TFloatField;
    Bona_ret_listTablemontantttc: TFloatField;
    Bona_ret_listTablemontanttva: TFloatField;
    Bona_ret_listTablemontantaht: TFloatField;
    Bona_ret_listTablemarged: TFMTBCDField;
    Bona_ret_listTablemarger: TFMTBCDField;
    Bona_ret_listTablemargeg: TFMTBCDField;
    Bona_ret_listTablemargea: TFMTBCDField;
    Bona_ret_listTablemargea2: TFMTBCDField;
    Bonv_comTablemontht_bvcom: TFMTBCDField;
    Bonv_comTablemontver_bvcom: TFMTBCDField;
    Bonv_comTablemontttc_bvcom: TFMTBCDField;
    Bonv_comTableremise_bvcom: TFMTBCDField;
    Bonv_comTablemarge_bvcom: TFMTBCDField;
    Bonv_comTablemontaht_bvcom: TFMTBCDField;
    Bonv_comTablemontanttva: TFMTBCDField;
    Bonv_comTablemontantres: TFMTBCDField;
    Bonv_comTableremiseperc: TFMTBCDField;
    Bonv_comTablenetht: TFMTBCDField;
    Bonv_retTablemontht_bvret: TFMTBCDField;
    Bonv_retTablemontver_bvret: TFMTBCDField;
    Bonv_retTablemontttc_bvret: TFMTBCDField;
    Bonv_retTableremise_bvret: TFMTBCDField;
    Bonv_retTablemarge_bvret: TFMTBCDField;
    Bonv_retTablemontaht_bvret: TFMTBCDField;
    Bonv_retTablemontanttva: TFMTBCDField;
    Bonv_retTablemontantres: TFMTBCDField;
    Bonv_retTableremiseperc: TFMTBCDField;
    Bonv_retTablenetht: TFMTBCDField;
    InventoryTabletotalpgap_i: TFMTBCDField;
    PCloseZeroQCnotifqut_p: TFMTBCDField;
    PCloseZeroQCnotifqutini_p: TFMTBCDField;
    PCloseZeroQCnotifqutmin_p: TFMTBCDField;
    PMoreMaxQCnotifqut_p: TFMTBCDField;
    PMoreMaxQCnotifqutini_p: TFMTBCDField;
    PMoreMaxQCnotifqutmax_p: TFMTBCDField;
    PCloseDiedCnotifqutinstock_p: TFMTBCDField;
    PDiedCnotifqutinstock_p: TFMTBCDField;
    PerissBona_recTablequtinstock_p: TFMTBCDField;
    PerissBona_facTablequtinstock_p: TFMTBCDField;
    Transfer_comptesTablemont_transfer: TFMTBCDField;
    UsersTablecode_ur: TIntegerField;
    UsersTablenom_ur: TWideStringField;
    UsersTablepassword_ur: TWideStringField;
    UsersTablebl_ur: TBooleanField;
    UsersTablefcv_ur: TBooleanField;
    UsersTablergc_ur: TBooleanField;
    UsersTablebr_ur: TBooleanField;
    UsersTablefca_ur: TBooleanField;
    UsersTablergf_ur: TBooleanField;
    UsersTablecaisse_ur: TBooleanField;
    UsersTablebank_ur: TBooleanField;
    UsersTableclient_ur: TBooleanField;
    UsersTablefour_ur: TBooleanField;
    UsersTabletype_ur: TSmallintField;
    UsersTablectr_ur: TBooleanField;
    UsersTableproduit_ur: TBooleanField;
    UsersTablefamp_ur: TBooleanField;
    UsersTablesfamp_ur: TBooleanField;
    UsersTablemdpai_ur: TBooleanField;
    UsersTablecmpt_ur: TBooleanField;
    UsersTableunit_ur: TBooleanField;
    UsersTablelocal_ur: TBooleanField;
    UsersTabletotaux_ur: TBooleanField;
    UsersTableviewprixa_ur: TBooleanField;
    UsersTablestock_ur: TBooleanField;
    SQLQuery3: TFDQuery;
    ProduitMovementQRqut: TFMTBCDField;
    ProduitMovementQRprixuva: TFMTBCDField;
    ProduitMovementQRmontant: TFMTBCDField;
    ProduitMovementQRmarge: TFMTBCDField;
    ClientSituationQRtotal: TFMTBCDField;
    ClientSituationQRversemt: TFMTBCDField;
    ClientSituationQRrest: TFMTBCDField;
    FourSituationQRtotal: TFMTBCDField;
    FourSituationQRversemt: TFMTBCDField;
    FourSituationQRrest: TFMTBCDField;
    AllProduitMovementQRqut: TFMTBCDField;
    AllProduitMovementQRprixuva: TFMTBCDField;
    AllProduitMovementQRmontant: TFMTBCDField;
    AllProduitMovementQRmarge: TFMTBCDField;
    Bonv_comTableclientbvcom: TWideStringField;
    Bonv_retTableclientbvret: TWideStringField;
    Bona_retTableclientbaret: TWideStringField;
    Bona_comTablefourbacom: TWideStringField;
    PertesTablenomp2: TWideStringField;
    PertesTablereferp: TWideStringField;
    ClientSituationQRdate_bvliv: TDateField;
    ClientSituationQRtime_bvliv: TTimeField;
    FastProduitTable: TFDQuery;
    FastProduitTablecode_p: TIntegerField;
    FastProduitTablecode_famp: TIntegerField;
    FastProduitTablecode_sfamp: TIntegerField;
    FastProduitTablefamp: TStringField;
    FastProduitTablesfamp: TStringField;
    FastProduitTabletva_p: TSmallintField;
    FastProduitTableprixht_p: TFMTBCDField;
    FastProduitTableprixvd_p: TFMTBCDField;
    FastProduitTableprixvr_p: TFMTBCDField;
    FastProduitTableprixvg_p: TFMTBCDField;
    FastProduitTableprixva_p: TFMTBCDField;
    FastProduitTableprixva2_p: TFMTBCDField;
    FastProduitTablequt_p: TFMTBCDField;
    FastProduitTablequtini_p: TFMTBCDField;
    FastProduitTablepmp_p: TFMTBCDField;
    FastProduitTablecode_mrkp: TSmallintField;
    FastProduitTableprixattc: TFMTBCDField;
    FastProduitTableprixvttcd: TFMTBCDField;
    FastProduitTableprixvttcr: TFMTBCDField;
    FastProduitTableprixvttcg: TFMTBCDField;
    FastProduitTableprixvttca: TFMTBCDField;
    FastProduitTableprixvttca2: TFMTBCDField;
    FastProduitTablequtdispo: TFMTBCDField;
    FastProduitTableperissable_p: TBooleanField;
    FastProduitTablecode_u: TSmallintField;
    FastProduitTableunit: TStringField;
    FastProduitTablerefer_p: TWideStringField;
    FastProduitTablenom_p: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure PZeroQCnotifCalcFields(DataSet: TDataSet);
    procedure PCloseZeroQCnotifCalcFields(DataSet: TDataSet);
    procedure PMoreMaxQCnotifCalcFields(DataSet: TDataSet);
    procedure PCloseDiedCnotifCalcFields(DataSet: TDataSet);
    procedure PertesTableCalcFields(DataSet: TDataSet);
    procedure CheckdbVersionAndAlterDb;
    procedure Inventory_listTablequtphys_ilChange(Sender: TField);
    procedure Bona_com_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_com_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bona_com_listTablequt_pChange(Sender: TField);
    procedure Bona_com_listTableprixht_pChange(Sender: TField);
    procedure Bona_com_listTablecond_pChange(Sender: TField);
    procedure Bonv_com_listTablequt_pChange(Sender: TField);
    procedure Bonv_com_listTableprixvd_pChange(Sender: TField);
    procedure Bonv_com_listTablecond_pChange(Sender: TField);
    procedure Bona_ret_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_ret_listTableAfterRefresh(DataSet: TDataSet);
    procedure Bonv_ret_listTablequt_pChange(Sender: TField);
    procedure Bonv_ret_listTableprixvd_pChange(Sender: TField);
    procedure Bonv_ret_listTablecond_pChange(Sender: TField);
  private
    procedure CheckAppVersionForFirstRun;
    procedure deleteOldGridsparams;
    function dbInfoExist(tableName: string): Boolean;


  public
    procedure ConnectToDB;
    function  MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;
    Buttons: TMsgDlgButtons; Captions: array of string): Integer;


  end;

var
  DataModuleF: TDataModuleF;

implementation

uses
  UMainF, ULogoSplashForm, ULogin, UInventory, UBonComAGestion, UBonComVGestion,
  UBonRetVGestion;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


 function TDataModuleF.MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; Captions: array of string): Integer;
  var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
         { Create the Dialog }
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  captionIndex := 0;
  { Loop through Objects in Dialog }
  for i := 0 to aMsgDlg.ComponentCount - 1 do
  begin
   { If the object is of type TButton, then }
    if (aMsgDlg.Components[i] is TButton) then
    begin
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then Break;
      { Give a new caption from our Captions array}
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;


procedure TDataModuleF.CheckdbVersionAndAlterDb();
Var dbVersion : Integer;
begin

     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Text:= 'SELECT dbversion FROM dbinfo WHERE apptype = ''S'' ';
     SQLQuery1.Active:= True;

     dbVersion:=  StrToInt(SQLQuery1.FieldByName('dbversion').AsString);

     if dbVersion < 2 then
     begin
      AltersDBInfoChangesFDScript.ExecuteAll;

      MainForm.AltersDBChangesFDScript.ExecuteAll;


//      SQLQuery1.Edit;
//      SQLQuery1.FieldByName('dbversion').AsString:='2';
//      SQLQuery1.Post;

     end;

     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;

end;


procedure TDataModuleF.Bona_com_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,NewHT,BonRTotalHT: Double;
InvoiceID :Integer;
  begin

       if Assigned(BonComAGestionF) then
       begin

         MainForm.SQLQuery3.Active:= False;
         MainForm.SQLQuery3.SQL.Clear;
//         MainForm.SQLQuery3.SQL.Text:= BonComAGestionF.BCFLSQL
         MainForm.SQLQuery3.SQL.Text:= ' SELECT BCFL.code_bacom,BCFL.code_bacoml,BCFL.tva_p, '
      +'   (((BCFL.prixht_p * BCFL.tva_p)/100)+BCFL.prixht_p) AS PrixATTC, '
      +'   ((BCFL.prixht_p * BCFL.qut_p) * cond_p) AS MontantHT, '
      +'   (((((BCFL.prixht_p * BCFL.tva_p)/100)+BCFL.prixht_p) * BCFL.qut_p)*cond_p) AS MontantTTC, '
      +'   (((((((BCFL.prixht_p * BCFL.tva_p)/100)+BCFL.prixht_p) * BCFL.qut_p)*cond_p) )-(((BCFL.prixht_p * BCFL.qut_p) * cond_p))) AS MontantTVA, '
      +'   ((BCFL.prixht_p * BCFL.qut_p)* cond_p) AS MontantAHT '
      +' FROM bona_com_list as BCFL '
      +' LEFT JOIN produit as P   '
      +'  ON BCFL.code_p = P.code_p '
         + ' WHERE code_bacom= '+ IntToStr(Bona_comTable.FieldByName('code_bacom').AsInteger) +' ORDER BY code_bacoml ';
         MainForm.SQLQuery3.Active:= True;

          MainForm.SQLQuery3.First;
          while not MainForm.SQLQuery3.Eof do
          begin
            TotalHT:= TotalHT + (MainForm.SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + MainForm.SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + MainForm.SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + MainForm.SQLQuery3.FieldByName('tva_p').Value ;
            LeReste:= TotalTTC - StrToFloat(StringReplace(BonComAGestionF.BonComRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            MainForm.SQLQuery3.Next;
          end;

         MainForm.SQLQuery3.Active:=false;
         MainForm.SQLQuery3.SQL.Clear;

         InvoiceID := Bona_com_listTable.FieldByName('code_bacoml').AsInteger;
         Bona_com_listTable.Active:=false;
         Bona_com_listTable.SQL.Clear;
         Bona_com_listTable.SQL.Text:= BonComAGestionF.BCFLSQL+ ' ORDER BY code_bacoml ' ;
         Bona_com_listTable.Active:=True;

         Bona_com_listTable.Locate('code_bacoml',InvoiceID,[]);



    BonComAGestionF.BonComTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonComAGestionF.BonComTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonComAGestionF.BonComTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonComAGestionF.BonComResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonComAGestionF.BonCATotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonComAGestionF.BonCATotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonComAGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;

    if Bona_comTable.FieldByName('montver_bacom').Value<> Null then
    begin
    Regle:= Bona_comTable.FieldByName('montver_bacom').Value;
    BonComAGestionF.BonComRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bona_com_listTable.IsEmpty) then
    begin
//    if BonRecGestionF.FournisseurBonRecGCbx.Text<>'' then
//    begin
//    BonRecGestionF.BonRecGFourNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonRecGestionF.BonRecGFourOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;

//     BonRecGestionF.RemisePerctageBonRecGEdt.Text:='';
//    BonRecGestionF.RemiseBonRecGEdtChange(Self);

              BonComAGestionF.RemisePerctageBonComGEdtChange(Self);

            if BonComAGestionF.BonCATotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonComAGestionF.BonCATotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonComAGestionF.BonComTotalHTLbl.Caption<>'' then
            begin
            BonRTotalHT:=StrToFloat (StringReplace(BonComAGestionF.BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonComAGestionF.RemiseBonComGEdt.Text:=FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);
    end;
       end;


end;

procedure TDataModuleF.Bona_com_listTablecond_pChange(Sender: TField);
begin
if (Bona_com_listTablecond_p.Value > 9999999) OR (Bona_com_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_com_listTable.Edit;
  Bona_com_listTablecond_p.Value := 1;
  Bona_com_listTable.Post;

 end else if Bona_com_listTablecond_p.IsNull then
     begin

      Bona_com_listTable.Edit;
      Bona_com_listTablecond_p.Value := 0;
      Bona_com_listTable.Post;

     end;
end;

procedure TDataModuleF.Bona_com_listTableprixht_pChange(Sender: TField);
begin
if (Bona_com_listTableprixht_p.Value > 9999999) OR (Bona_com_listTableprixht_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_com_listTable.Edit;
  Bona_com_listTableprixht_p.Value := 1;
  Bona_com_listTable.Post;

 end else if Bona_com_listTableprixht_p.IsNull then
     begin

      Bona_com_listTable.Edit;
      Bona_com_listTableprixht_p.Value := 0;
      Bona_com_listTable.Post;

     end;
end;

procedure TDataModuleF.Bona_com_listTablequt_pChange(Sender: TField);
begin
 if (Bona_com_listTablequt_p.Value > 9999999) OR (Bona_com_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bona_com_listTable.Edit;
  Bona_com_listTablequt_p.Value := 1;
  Bona_com_listTable.Post;

 end else if Bona_com_listTablequt_p.IsNull then
     begin

      Bona_com_listTable.Edit;
      Bona_com_listTablequt_p.Value := 0;
      Bona_com_listTable.Post;

     end;
end;

procedure TDataModuleF.Bona_ret_listTableAfterRefresh(DataSet: TDataSet);
begin
//
end;

procedure TDataModuleF.Bonv_com_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,Marge,NewHT,BonCVTotalHT: Double;
InvoiceID :Integer;
  begin
       if Assigned(BonComVGestionF) then
       begin

          MainForm.SQLQuery3.Active:= False;
          MainForm.SQLQuery3.SQL.Clear;
//          MainForm.SQLQuery3.SQL.Text:= BonComVGestionF.BCCLSQL
          MainForm.SQLQuery3.SQL.Text:= 'Select BCCL.code_bvcom,BCCL.code_bvcoml,BCCL.tva_p, '
          +' (((BCCL.prixvd_p * BCCL.tva_p)/100)+BCCL.prixvd_p) AS PrixVTTC, '
          +' ((BCCL.prixht_p * BCCL.qut_p) * cond_p) AS MontantAHT, '
          +' ((BCCL.prixvd_p * BCCL.qut_p) * cond_p) AS MontantHT, '
          +' (((((BCCL.prixvd_p * BCCL.tva_p)/100)+BCCL.prixvd_p) * BCCL.qut_p)*cond_p) AS MontantTTC, '
          +' (((((((BCCL.prixvd_p * BCCL.tva_p)/100)+BCCL.prixvd_p) * BCCL.qut_p)*cond_p) )-(((BCCL.prixvd_p * BCCL.qut_p) * cond_p))) AS MontantTVA, '
          +' ((P.prixht_p * BCCL.qut_p)* cond_p) AS MontantAHT, '
          +' (((BCCL.prixvd_p * BCCL.qut_p) * cond_p) - ((P.prixht_p * BCCL.qut_p)* cond_p) ) AS MargeM '
          +' FROM bonv_com_list as BCCL '
          +' LEFT JOIN produit as P '
          +' ON BCCL.code_p = P.code_p '
          + ' WHERE code_bvcom= '+ IntToStr(Bonv_comTable.FieldByName('code_bvcom').AsInteger) +' ORDER BY code_bvcoml ';
          MainForm.SQLQuery3.Active:= True;

          MainForm.SQLQuery3.First;
          while not MainForm.SQLQuery3.Eof do
          begin
            TotalAHT:= TotalAHT + (MainForm.SQLQuery3.FieldByName('MontantAHT').Value );
            TotalHT:= TotalHT + (MainForm.SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + MainForm.SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + MainForm.SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + MainForm.SQLQuery3.FieldByName('tva_p').AsInteger;
            Marge:=Marge + MainForm.SQLQuery3.FieldByName('MargeM').Value ;
            LeReste:= TotalTTC - StrToFloat(StringReplace(BonComVGestionF.BonComRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            MainForm.SQLQuery3.Next;
          end;

         MainForm.SQLQuery3.Active:=false;
         MainForm.SQLQuery3.SQL.Clear;

         InvoiceID := Bonv_com_listTable.FieldByName('code_bvcoml').AsInteger;

         Bonv_com_listTable.Active:=false;
         Bonv_com_listTable.SQL.Clear;
         Bonv_com_listTable.SQL.Text:= BonComVGestionF.BCCLSQL+' ORDER BY code_bvcoml ' ;
         Bonv_com_listTable.Active:=True;

         Bonv_com_listTable.Locate('code_bvcoml',InvoiceID,[]);


    BonComVGestionF.BonComTotalAHTLbl.Caption :=    CurrToStrF((TotalAHT),ffNumber,2) ;
    BonComVGestionF.BonComTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonComVGestionF.BonComTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonComVGestionF.BonComTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonComVGestionF.BonComResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonComVGestionF.BonCVTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonComVGestionF.BonCVTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonComVGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
    BonComVGestionF.BonComTotalMargeLbl.Caption := CurrToStrF(((Marge)),ffNumber,2) ;

    if Bonv_comTable.FieldByName('montver_bvcom').Value <> Null then
    begin
    Regle:= Bonv_comTable.FieldByName('montver_bvcom').Value;
    BonComVGestionF.BonComRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_com_listTable.IsEmpty) then
    begin
//    if BonComVGestionF.ClientBonLivGCbx.Text<>'' then
//    begin
//    BonComVGestionF.BonLivGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonComVGestionF.BonLivGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;
//         if  (Bonv_livTable.FieldValues['RemisePerc']= null) OR (Bonv_livTable.FieldValues['remise_bvcom']= 0) then
//         begin
//         BonComVGestionF.RemisePerctageBonLivGEdt.Text:='';
//         end else
//         begin
//            BonComVGestionF.RemisePerctageBonLivGEdtChange(Self);
//         end;

            BonComVGestionF.RemisePerctageBonComGEdtChange(Self);

            if BonComVGestionF.BonCVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonComVGestionF.BonCVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonComVGestionF.BonComTotalHTLbl.Caption<>'' then
            begin
            BonCVTotalHT:=StrToFloat (StringReplace(BonComVGestionF.BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonComVGestionF.RemiseBonComGEdt.Text:=FloatToStrF((BonCVTotalHT - NewHT),ffNumber,14,2);
    end;
       end;

end;

procedure TDataModuleF.Bonv_com_listTablecond_pChange(Sender: TField);
begin
if (Bonv_com_listTablecond_p.Value > 9999999) OR (Bonv_com_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_com_listTable.Edit;
  Bonv_com_listTablecond_p.Value := 1;
  Bonv_com_listTable.Post;

 end else if Bonv_com_listTablecond_p.IsNull then
     begin

      Bonv_com_listTable.Edit;
      Bonv_com_listTablecond_p.Value := 0;
      Bonv_com_listTable.Post;

     end;
end;

procedure TDataModuleF.Bonv_com_listTableprixvd_pChange(Sender: TField);
begin
if (Bonv_com_listTableprixvd_p.Value > 9999999) OR (Bonv_com_listTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_com_listTable.Edit;
  Bonv_com_listTableprixvd_p.Value := 1;
  Bonv_com_listTable.Post;

 end else if Bonv_com_listTableprixvd_p.IsNull then
     begin

      Bonv_com_listTable.Edit;
      Bonv_com_listTableprixvd_p.Value := 0;
      Bonv_com_listTable.Post;

     end;
end;

procedure TDataModuleF.Bonv_com_listTablequt_pChange(Sender: TField);
begin
if (Bonv_com_listTablequt_p.Value > 9999999) OR (Bonv_com_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_com_listTable.Edit;
  Bonv_com_listTablequt_p.Value := 1;
  Bonv_com_listTable.Post;

 end else if Bonv_com_listTablequt_p.IsNull then
     begin

      Bonv_com_listTable.Edit;
      Bonv_com_listTablequt_p.Value := 0;
      Bonv_com_listTable.Post;

     end;
end;

procedure TDataModuleF.Bonv_ret_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,Marge,NewHT,BonCVTotalHT: Double;
InvoiceID :Integer;
  begin
       if Assigned(BonRetVGestionF) then
       begin

          MainForm.SQLQuery3.Active:= False;
          MainForm.SQLQuery3.SQL.Clear;
//          MainForm.SQLQuery3.SQL.Text:= BonRetVGestionF.BRVLSQL
          MainForm.SQLQuery3.SQL.Text:= 'Select BRVL.code_bvret,BRVL.code_bvretl,BRVL.tva_p,'
          +' (((BRVL.prixvd_p * BRVL.tva_p)/100)+BRVL.prixvd_p) AS PrixVTTC, '
          +' ((BRVL.prixht_p * BRVL.qut_p) * cond_p) AS MontantAHT, '
          +' ((BRVL.prixvd_p * BRVL.qut_p) * cond_p) AS MontantHT, '
          +' (((((BRVL.prixvd_p * BRVL.tva_p)/100)+BRVL.prixvd_p) * BRVL.qut_p)*cond_p) AS MontantTTC, '
          +' (((((((BRVL.prixvd_p * BRVL.tva_p)/100)+BRVL.prixvd_p) * BRVL.qut_p)*cond_p) )-(((BRVL.prixvd_p * BRVL.qut_p) * cond_p))) AS MontantTVA, '
          +' ((P.prixht_p * BRVL.qut_p)* cond_p) AS MontantAHT '
          +' FROM bonv_ret_list as BRVL '
          +' LEFT JOIN produit as P '
          +' ON BRVL.code_p = P.code_p '
          + ' WHERE code_bvret= '+ IntToStr(Bonv_retTable.FieldByName('code_bvret').AsInteger) +' ORDER BY code_bvretl ';
          MainForm.SQLQuery3.Active:= True;

          MainForm.SQLQuery3.First;
          while not MainForm.SQLQuery3.Eof do
          begin
            TotalAHT:= TotalAHT + (MainForm.SQLQuery3.FieldByName('MontantAHT').Value );
            TotalHT:= TotalHT + (MainForm.SQLQuery3.FieldByName('MontantHT').Value );
            TotalTVA:= TotalTVA + MainForm.SQLQuery3.FieldByName('MontantTVA').Value;
            TotalTTC:= TotalTTC + MainForm.SQLQuery3.FieldByName('MontantTTC').Value;
            TVA:=TVA + MainForm.SQLQuery3.FieldByName('tva_p').AsInteger;
            Marge:=Marge + MainForm.SQLQuery3.FieldByName('MargeM').Value ;
            LeReste:= TotalTTC - StrToFloat(StringReplace(BonRetVGestionF.BonRetRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            MainForm.SQLQuery3.Next;
          end;

         MainForm.SQLQuery3.Active:=false;
         MainForm.SQLQuery3.SQL.Clear;

         InvoiceID := Bonv_ret_listTable.FieldByName('code_bvretl').AsInteger;

         Bonv_ret_listTable.Active:=false;
         Bonv_ret_listTable.SQL.Clear;
         Bonv_ret_listTable.SQL.Text:= BonRetVGestionF.BRVLSQL+' ORDER BY code_bvretl ' ;
         Bonv_ret_listTable.Active:=True;

         Bonv_ret_listTable.Locate('code_bvretl',InvoiceID,[]);


//    BonRetVGestionF.BonRetTotalAHTLbl.Caption :=    CurrToStrF((TotalAHT),ffNumber,2) ;
    BonRetVGestionF.BonRetTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonRetVGestionF.BonRetTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonRetVGestionF.BonRetTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonRetVGestionF.BonRetResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonRetVGestionF.BonRVTotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonRetVGestionF.BonRVTotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonRetVGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;
//    BonRetVGestionF.BonRetTotalMargeLbl.Caption := CurrToStrF(((Marge)),ffNumber,2) ;

    if Bonv_retTable.FieldByName('montver_bvret').Value <> Null then
    begin
    Regle:= Bonv_retTable.FieldByName('montver_bvret').Value ;
    BonRetVGestionF.BonRetRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_ret_listTable.IsEmpty) then
    begin
//    if BonRetVGestionF.ClientBonRetCbx.Text<>'' then
//    begin
//    BonRetVGestionF.BonRetGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToFloat(StringReplace(BonRetVGestionF.BonRetGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
//    end ;
//         if  (Bonv_retTable.FieldValues['RemisePerc']= null) OR (Bonv_retTable.FieldValues['remise_bvret']= 0) then
//         begin
//         BonRetVGestionF.RemisePerctageBonLivGEdt.Text:='';
//         end else
//         begin
//            BonRetVGestionF.RemisePerctageBonLivGEdtChange(Self);
//         end;

            BonRetVGestionF.RemisePerctageBonRetVGEdtChange(Self);

            if BonRetVGestionF.BonRVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRetVGestionF.BonRVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;

             if BonRetVGestionF.BonRetTotalHTLbl.Caption<>'' then
            begin
            BonCVTotalHT:=StrToFloat (StringReplace(BonRetVGestionF.BonRetTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;

            BonRetVGestionF.RemiseBonRetVGEdt.Text:=FloatToStrF((BonCVTotalHT - NewHT),ffNumber,14,2);
    end;
       end;

end;

procedure TDataModuleF.Bonv_ret_listTablecond_pChange(Sender: TField);
begin
if (Bonv_ret_listTablecond_p.Value > 9999999) OR (Bonv_ret_listTablecond_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_ret_listTable.Edit;
  Bonv_ret_listTablecond_p.Value := 1;
  Bonv_ret_listTable.Post;

 end else if Bonv_ret_listTablecond_p.IsNull then
     begin

      Bonv_ret_listTable.Edit;
      Bonv_ret_listTablecond_p.Value := 0;
      Bonv_ret_listTable.Post;

     end;
end;

procedure TDataModuleF.Bonv_ret_listTableprixvd_pChange(Sender: TField);
begin
if (Bonv_ret_listTableprixvd_p.Value > 9999999) OR (Bonv_ret_listTableprixvd_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_ret_listTable.Edit;
  Bonv_ret_listTableprixvd_p.Value := 1;
  Bonv_ret_listTable.Post;

 end else if Bonv_ret_listTableprixvd_p.IsNull then
     begin

      Bonv_ret_listTable.Edit;
      Bonv_ret_listTableprixvd_p.Value := 0;
      Bonv_ret_listTable.Post;

     end;
end;

procedure TDataModuleF.Bonv_ret_listTablequt_pChange(Sender: TField);
begin
 if (Bonv_ret_listTablequt_p.Value > 9999999) OR (Bonv_ret_listTablequt_p.Value < -9999999)  then
 begin

  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  Bonv_ret_listTable.Edit;
  Bonv_ret_listTablequt_p.Value := 1;
  Bonv_ret_listTable.Post;

 end else if Bonv_ret_listTablequt_p.IsNull then
     begin

      Bonv_ret_listTable.Edit;
      Bonv_ret_listTablequt_p.Value := 0;
      Bonv_ret_listTable.Post;

     end;
end;

procedure TDataModuleF.CheckAppVersionForFirstRun();

Var appVersion : String;
begin


  if  dbInfoExist('dbinfo')  then
  begin
     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Text:= 'SELECT appversion,firstrun FROM dbinfo WHERE apptype = ''S'' ';
     SQLQuery1.Active:= True;


     if NOT SQLQuery1.IsEmpty then
     begin

      appVersion:= SQLQuery1.FieldByName('appversion').AsString;

      if appVersion <> LogoSplashF.Label7.Caption then
      begin

       with SQLQuery1 do
       begin

        edit;
//        FieldByName('firstrun').AsBoolean:= True; //Cumment this for now
        FieldByName('appversion').AsString:= LogoSplashF.Label7.Caption;;
        post;

       end;

        deleteOldGridsparams();

      end;


     end;

      SQLQuery1.Active:= false;
      SQLQuery1.SQL.Clear;

  end else
  begin

     deleteOldGridsparams();

  end;

end;

function TDataModuleF.dbInfoExist(tableName: string) : Boolean;
begin
     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Text:= 'SELECT EXISTS ( SELECT 1 FROM   information_schema.tables WHERE table_name = '''+ tableName +''' ); ';
     SQLQuery1.Active:= True;

     Result := SQLQuery1.FieldByName('exists').AsBoolean;

     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;


end;


procedure TDataModuleF.deleteOldGridsparams();
begin

   if FileExists(GetCurrentDir +'\bin\gc_bllst') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_bllst');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_bl') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_bl');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_fcvlst') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_fcvlst');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_fcv') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_fcv');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_fcplst') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_fcplst');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_fcp') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_fcp');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_ctrlst') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_ctrlst');
   end;

   if FileExists(GetCurrentDir +'\bin\gc_ctr') then
   begin
    DeleteFile(GetCurrentDir +'\bin\gc_ctr');
   end;


end;

procedure TDataModuleF.Inventory_listTablequtphys_ilChange(Sender: TField);
begin
 if Inventory_listTablequtphys_il.IsNull then
 begin

  Inventory_listTable.Edit;
  Inventory_listTablequtphys_il.Value := 0;
  Inventory_listTable.Post;

 end;
end;



procedure TDataModuleF.ConnectToDB;
var
 buttonSelected : Integer;
begin
 try
  //if MainForm.sImage1.Tag = 0 then
  GstockdcConnection02.DriverName := 'PG';
  GstockdcConnection02.Params.Values['Server'] :='localhost'; // your server name'';
//  GstockdcConnection02.Params.Values['Database'] := 'GSTOCKDC';
  GstockdcConnection02.Params.Values['user_name'] := 'postgres';    // adjust to suit
  GstockdcConnection02.Params.Values['password'] := ''; // ditto
  GstockdcConnection02.Params.Values['Port'] := '5432';
  GstockdcConnection02.Params.Values['CharacterSet'] := 'SQL_ASCII';
  GstockdcConnection02.LoginPrompt := False;


// CreateTablesFDScript.ExecuteAll;


  GstockdcConnection02.Params.Values['Database'] := 'GSTOCKDC';
  GstockdcConnection02.Connected:= True;


  CheckAppVersionForFirstRun();


  CreateDBConfigTables.ExecuteAll;

  UsersTable.Active:= True;

  if UsersTable.IsEmpty then
  begin
   AddAdminUser.ExecuteAll;
  end;

  SQLQuery1.Active:= False;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Text:= 'SELECT * FROM dbinfo WHERE hddserial ='''+ LoginF.GetWMIstring('Win32_PhysicalMedia','SerialNumber') +'''';
  SQLQuery1.Active:= true;

  if SQLQuery1.IsEmpty then
  with SQLQuery1 do
  begin

    SQL.Text := 'INSERT INTO dbinfo (dbversion, apptype, appversion, create_date, modified_date, activated, appserial, appkey, hddserial, developer, owner) '+
    ' VALUES (:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11)';
    ParamByName('1').AsString  := '1';
    ParamByName('2').AsString  := 'S';
    ParamByName('3').AsString  := LogoSplashF.Label7.Caption;
    ParamByName('4').AsSQLTimeStamp := VarToSQLTimeStamp(VarSQLTimeStampCreate(now));
    ParamByName('5').AsSQLTimeStamp := VarToSQLTimeStamp(VarSQLTimeStampCreate(now));
    ParamByName('6').AsBoolean := LoginF.LoginFmx.IsRegistered ;
    ParamByName('7').AsString  := LoginF.cxTextEdit114.Text;
    ParamByName('8').AsString  := LoginF.cxTextEdit22.Text;
    ParamByName('9').AsString  := LoginF.GetWMIstring('Win32_PhysicalMedia','SerialNumber');
    ParamByName('10').AsString := 'Hamza Benzaoui';
    ParamByName('11').AsString := 'Hamza Benzaoui';
    ExecSQL(true);

  end;

  SQLQuery1.Active:= False;
  SQLQuery1.SQL.Clear;

  CheckdbVersionAndAlterDb();


             except

    // Show a custom dialog

    on E: Exception do
    begin

     ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
    buttonSelected := MyMessageDialog('Le serveur ne répond pas Assurer-tu que le serveur est activé'
    ,mtCustom,[mbRetry,mbCancel],
                              ['Annuler','Réessayer']);


          if buttonSelected = mrRetry then
          begin

              ConnectToDB;

          end;

          if buttonSelected = mrCancel then
           begin

            MainForm.GstockdcConnection.Connected:=False;
            GstockdcConnection02.Connected:=False;
            PSDBConfigConnection.Connected:=False;

           Application.Terminate;


          end;

    end;



 end;

end;

procedure TDataModuleF.DataModuleCreate(Sender: TObject);
begin

    ConnectToDB;

end;

procedure TDataModuleF.PCloseDiedCnotifCalcFields(DataSet: TDataSet);
begin
//    PCloseDiedCnotif.FieldValues['QutDispo']:=
// (PCloseDiedCnotif.FieldValues['qut_p'] + PCloseDiedCnotif.FieldValues['qutini_p']);
end;

procedure TDataModuleF.PCloseZeroQCnotifCalcFields(DataSet: TDataSet);
begin
    PCloseZeroQCnotif.FieldByName('QutDispo').AsFloat:=
 (PCloseZeroQCnotif.FieldByName('qut_p').AsFloat + PCloseZeroQCnotif.FieldByName('qutini_p').AsFloat);
end;

procedure TDataModuleF.PertesTableCalcFields(DataSet: TDataSet);
begin
  PertesTable.FieldByName('PrixATTC').AsFloat:=
 (((PertesTable.FieldByName('prixht_p').AsFloat * PertesTable.FieldByName('tva_p').AsFloat)/100) + (PertesTable.FieldByName('prixht_p').AsFloat)) ;

  PertesTable.FieldByName('MontantHT').AsFloat:=
 (PertesTable.FieldByName('prixht_p').AsFloat * PertesTable.FieldByName('qut_p').AsFloat ) ;

  PertesTable.FieldByName('MontantTTC').AsFloat:=
 (PertesTable.FieldByName('PrixATTC').AsFloat * PertesTable.FieldByName('qut_p').AsFloat ) ;

   PertesTable.FieldByName('MontantTVA').AsFloat:=
 ((PertesTable.FieldByName('MontantTTC').AsFloat) - (PertesTable.FieldByName('MontantHT').AsFloat)) ;

 
end;

procedure TDataModuleF.PMoreMaxQCnotifCalcFields(DataSet: TDataSet);
begin
    PMoreMaxQCnotif.FieldByName('QutDispo').AsFloat:=
 (PMoreMaxQCnotif.FieldByName('qut_p').AsFloat + PMoreMaxQCnotif.FieldByName('qutini_p').AsFloat);
end;

procedure TDataModuleF.PZeroQCnotifCalcFields(DataSet: TDataSet);
begin

    PZeroQCnotif.FieldByName('QutDispo').AsFloat:=
 (PZeroQCnotif.FieldByName('qut_p').AsFloat + PZeroQCnotif.FieldByName('qutini_p').AsFloat);
end;

end.
