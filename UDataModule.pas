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
    TotalProduittotat: TFloatField;
    Top5produitOLDnomp: TStringField;
    TopVerClient: TFDQuery;
    TopFour: TFDQuery;
    TopVerFour: TFDQuery;
    TopFourcode_f: TIntegerField;
    TopFourbest_four: TLargeintField;
    ToatalVerMonthVLIV: TFDQuery;
    ToatalVerMonthVLIVmon: TStringField;
    ToatalVerMonthVLIVyyyy: TFloatField;
    ToatalVerMonthVLIVsales: TCurrencyField;
    GstockdcConnection02: TFDConnection;
    ToatalVerMonthVCTR: TFDQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    ToatalVerMonthVFAC: TFDQuery;
    StringField2: TStringField;
    FloatField2: TFloatField;
    CurrencyField2: TCurrencyField;
    ToatalVerMonthAREC: TFDQuery;
    StringField3: TStringField;
    FloatField3: TFloatField;
    CurrencyField3: TCurrencyField;
    ToatalVerMonthAFAC: TFDQuery;
    StringField4: TStringField;
    FloatField4: TFloatField;
    CurrencyField4: TCurrencyField;
    Top5produitOLDcode_p: TIntegerField;
    Top5produitOLDsum: TFloatField;
    Top5produit: TFDQuery;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    Top5produittotalall: TFloatField;
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
    ChargesTablemontht_ch: TCurrencyField;
    ChargesTablemontttc_ch: TCurrencyField;
    ChargesTablenum_cheque_ch: TWideStringField;
    ChargesTablecode_mdpai: TSmallintField;
    ChargesTablecode_cmpt: TSmallintField;
    ChargesTablecode_ur: TIntegerField;
    ChargesTabletimber_ch: TCurrencyField;
    PertesTablecode_pr: TIntegerField;
    PertesTabledate_pr: TDateField;
    PertesTabletime_pr: TTimeField;
    PertesTablecode_p: TIntegerField;
    PertesTablequt_p: TFloatField;
    PertesTableprixht_p: TCurrencyField;
    PertesTabletva_p: TSmallintField;
    PertesTablecode_ur: TIntegerField;
    PertesTablecode_prt: TSmallintField;
    PertesTableAgent: TStringField;
    PertesTablePRType: TStringField;
    PertesTablenomp: TStringField;
    PertesTablereferp: TStringField;
    PertesTableMontantHT: TCurrencyField;
    PertesTableMontantTVA: TCurrencyField;
    PertesTableMontantTTC: TCurrencyField;
    ChargesTablemonttva_ch: TCurrencyField;
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
    PertesTablePrixATTC: TCurrencyField;
    Transfer_comptesTable: TFDQuery;
    Transfer_comptesTablecode_transfer: TIntegerField;
    Transfer_comptesTabledate_transfer: TDateField;
    Transfer_comptesTabletime_transfer: TTimeField;
    Transfer_comptesTablemont_transfer: TCurrencyField;
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
    PZeroQCnotifqut_p: TFloatField;
    PZeroQCnotifcode_famp: TIntegerField;
    PZeroQCnotifcode_f: TIntegerField;
    PZeroQCnotifcode_l: TIntegerField;
    PZeroQCnotifcode_sfamp: TIntegerField;
    PZeroQCnotifcode_u: TSmallintField;
    PZeroQCnotifqutini_p: TFloatField;
    PZeroQCnotifQutDispo: TFloatField;
    PCloseZeroQCnotifcode_p: TIntegerField;
    PCloseZeroQCnotifnom_p: TWideStringField;
    PCloseZeroQCnotifrefer_p: TWideStringField;
    PCloseZeroQCnotifqut_p: TFloatField;
    PCloseZeroQCnotifcode_famp: TIntegerField;
    PCloseZeroQCnotifalertqut_p: TIntegerField;
    PCloseZeroQCnotifcode_f: TIntegerField;
    PCloseZeroQCnotifcode_l: TIntegerField;
    PCloseZeroQCnotifcode_sfamp: TIntegerField;
    PCloseZeroQCnotifqutmin_p: TFloatField;
    PCloseZeroQCnotifcode_u: TSmallintField;
    PCloseZeroQCnotifqutini_p: TFloatField;
    PMoreMaxQCnotifcode_p: TIntegerField;
    PMoreMaxQCnotifnom_p: TWideStringField;
    PMoreMaxQCnotifrefer_p: TWideStringField;
    PMoreMaxQCnotifqut_p: TFloatField;
    PMoreMaxQCnotifcode_famp: TIntegerField;
    PMoreMaxQCnotifcode_f: TIntegerField;
    PMoreMaxQCnotifcode_l: TIntegerField;
    PMoreMaxQCnotifcode_sfamp: TIntegerField;
    PMoreMaxQCnotifqutmax_p: TFloatField;
    PMoreMaxQCnotifcode_u: TSmallintField;
    PMoreMaxQCnotifqutini_p: TFloatField;
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
    PerissBona_recTablequtinstock_p: TFloatField;
    PerissBona_recTabledateperiss_p: TDateField;
    PerissBona_recTabledaysleft: TIntegerField;
    PerissBona_recTablenumbrec: TStringField;
    PerissBona_recTablecode_barec: TIntegerField;
    PerissBona_facTable: TFDQuery;
    PerissBona_facTablecode_bafac: TIntegerField;
    PerissBona_facTablecode_p: TIntegerField;
    PerissBona_facTablequtinstock_p: TFloatField;
    PerissBona_facTabledateperiss_p: TDateField;
    PerissBona_facTabledaysleft: TIntegerField;
    PerissBona_facTablenumfac: TStringField;
    PDiedCnotifcode_barec: TIntegerField;
    PDiedCnotifnum_barec: TWideStringField;
    PDiedCnotifqutinstock_p: TFloatField;
    PCloseDiedCnotifcode_barec: TIntegerField;
    PCloseDiedCnotifnum_barec: TWideStringField;
    PCloseDiedCnotifqutinstock_p: TFloatField;
    ClientSituationQR: TFDQuery;
    ClientSituationQRnum: TWideStringField;
    ClientSituationQRsource: TWideStringField;
    ClientSituationQRdate_bvcom: TDateField;
    ClientSituationQRtime_bvcom: TTimeField;
    ClientSituationQRtotal: TCurrencyField;
    ClientSituationQRversemt: TCurrencyField;
    ClientSituationQRrest: TCurrencyField;
    ClientSituationQRmp: TWideStringField;
    ClientSituationQRagent: TIntegerField;
    ClientSituationQRAgentName: TStringField;
    FourSituationQR: TFDQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
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
    ProduitMovementQRqut: TFloatField;
    ProduitMovementQRprixuva: TCurrencyField;
    ProduitMovementQRmontant: TCurrencyField;
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
    AllProduitMovementQRqut: TFloatField;
    AllProduitMovementQRprixuva: TCurrencyField;
    AllProduitMovementQRmontant: TCurrencyField;
    AllProduitMovementQRagent: TIntegerField;
    AllProduitMovementQRAgentName: TStringField;
    PCloseDiedCnotifrefer_p: TWideStringField;
    PCloseDiedCnotifnom_p: TWideStringField;
    PDiedCnotifrefer_p: TWideStringField;
    PDiedCnotifnom_p: TWideStringField;
    ProduitMovementQRmarge: TCurrencyField;
    AllProduitMovementQRmarge: TCurrencyField;
    InventoryTable: TFDQuery;
    Inventory_listTable: TFDQuery;
    InventoryTableAgent: TStringField;
    InventoryTablecode_u: TIntegerField;
    Inventory_listTablecode_il: TIntegerField;
    Inventory_listTablecode_i: TIntegerField;
    Inventory_listTablecode_p: TIntegerField;
    Inventory_listTablerefer_p: TWideStringField;
    Inventory_listTablenom_p: TWideStringField;
    Inventory_listTablequttheo_il: TFloatField;
    Inventory_listTablequtphys_il: TFloatField;
    Inventory_listTableprixht_p: TCurrencyField;
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
    InventoryTabletotalpgap_i: TFloatField;
    InventoryTableobser_i: TWideStringField;
    InventoryTablenump_i: TWideStringField;
    Inventory_listTablecalcgap_il: TFloatField;
    Inventory_listTablegap_il: TFloatField;
    Bona_comTable: TFDQuery;
    Bona_comTablecode_bacom: TIntegerField;
    Bona_comTabledate_bacom: TDateField;
    Bona_comTabletime_bacom: TTimeField;
    Bona_comTablemontht_bacom: TCurrencyField;
    rr: TCurrencyField;
    Bona_comTablevalider_bacom: TBooleanField;
    Bona_comTablenum_bacom: TWideStringField;
    Bona_comTablefourbacom: TStringField;
    Bona_comTablemonttc_bacom: TCurrencyField;
    Bona_comTableremise_bacom: TCurrencyField;
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
    Bona_comTablemontanttva: TCurrencyField;
    Bona_comTablemontantres: TCurrencyField;
    Bona_comTableremiseperc: TFMTBCDField;
    Bona_comTablenetht: TCurrencyField;
    Bona_com_listTable: TFDQuery;
    Bona_com_listTablecode_bacoml: TIntegerField;
    Bona_com_listTablecode_bacom: TIntegerField;
    Bona_com_listTablequt_p: TFloatField;
    Bona_com_listTableprixht_p: TCurrencyField;
    Bona_com_listTablecond_p: TIntegerField;
    Bona_com_listTablecode_p: TIntegerField;
    Bona_com_listTableprixvd_p: TCurrencyField;
    Bona_com_listTableprixvr_p: TCurrencyField;
    Bona_com_listTableprixvg_p: TCurrencyField;
    Bona_com_listTableprixva_p: TCurrencyField;
    Bona_com_listTableprixva2_p: TCurrencyField;
    Bona_com_listTabledateperiss_p: TDateField;
    Bona_com_listTablequtinstock_p: TFloatField;
    Bona_com_listTabletva_p: TSmallintField;
    Bona_com_listTablenomp: TWideStringField;
    Bona_com_listTablereferp: TWideStringField;
    Bona_com_listTableprixattc: TCurrencyField;
    Bona_com_listTablemontantht: TCurrencyField;
    Bona_com_listTablemontantttc: TCurrencyField;
    Bona_com_listTablemontanttva: TCurrencyField;
    Bona_com_listTablemontantaht: TCurrencyField;
    Bona_com_listTablemarged: TFloatField;
    Bona_com_listTablemarger: TFloatField;
    Bona_com_listTablemargeg: TFloatField;
    Bona_com_listTablemargea: TFloatField;
    Bona_com_listTablemargea2: TFloatField;
    BonComAListDataS: TDataSource;
    Bonv_comTable: TFDQuery;
    Bonv_comTablecode_bvcom: TIntegerField;
    Bonv_comTabledate_bvcom: TDateField;
    Bonv_comTabletime_bvcom: TTimeField;
    Bonv_comTablecode_c: TIntegerField;
    Bonv_comTablemontaht_bvcom: TCurrencyField;
    Bonv_comTablemontht_bvcom: TCurrencyField;
    Bonv_comTablemontver_bvcom: TCurrencyField;
    Bonv_comTablevalider_bvcom: TBooleanField;
    Bonv_comTablenum_bvcom: TWideStringField;
    Bonv_comTableclientbvcom: TStringField;
    Bonv_comTablemontttc_bvcom: TCurrencyField;
    Bonv_comTableremise_bvcom: TCurrencyField;
    Bonv_comTablenum_cheque_bvcom: TWideStringField;
    Bonv_comTablecode_mdpai: TSmallintField;
    Bonv_comTablecode_cmpt: TSmallintField;
    Bonv_comTableModePaie: TStringField;
    Bonv_comTableCompte: TStringField;
    Bonv_comTableNEWTTC: TCurrencyField;
    Bonv_comTablecode_ur: TIntegerField;
    Bonv_comTablemarge_bvcom: TCurrencyField;
    Bonv_comTablemontanttva: TCurrencyField;
    Bonv_comTablemontantres: TCurrencyField;
    Bonv_comTableremiseperc: TFMTBCDField;
    Bonv_comTablenetht: TCurrencyField;
    Bonv_comTableobser_bvcom: TWideStringField;
    Bonv_comTableAgent: TStringField;
    Bonv_com_listTable: TFDQuery;
    Bonv_com_listTablecode_bvcoml: TIntegerField;
    Bonv_com_listTablecode_bvcom: TIntegerField;
    Bonv_com_listTablequt_p: TFloatField;
    Bonv_com_listTableprixvd_p: TCurrencyField;
    Bonv_com_listTablecond_p: TIntegerField;
    Bonv_com_listTablecode_p: TIntegerField;
    Bonv_com_listTabletva_p: TSmallintField;
    Bonv_com_listTablecode_barec: TIntegerField;
    Bonv_com_listTableprixvttc: TCurrencyField;
    Bonv_com_listTablemontantht: TCurrencyField;
    Bonv_com_listTablemontantttc: TCurrencyField;
    Bonv_com_listTablemontanttva: TCurrencyField;
    Bonv_com_listTablemontantaht: TCurrencyField;
    Bonv_com_listTablemarge: TFloatField;
    Bonv_com_listTablemargem: TCurrencyField;
    Bonv_com_listTableprixht_p: TCurrencyField;
    Bonv_com_listTablenomp: TWideStringField;
    Bonv_com_listTablereferp: TWideStringField;
    BonComVListDataS: TDataSource;
    Inventory_listTablevaltheo_il: TCurrencyField;
    Inventory_listTablevalphys_il: TCurrencyField;
    Inventory_listTablevalgap_il: TCurrencyField;
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
  UMainF, ULogoSplashForm, ULogin, UInventory, UBonComAGestion, UBonComVGestion;

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
Var dbVersion : String;
begin

     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Text:= 'SELECT dbversion FROM dbinfo WHERE apptype = ''S'' ';
     SQLQuery1.Active:= True;

     dbVersion:= SQLQuery1.FieldByName('dbversion').AsString;

     if dbVersion = '1' then
     begin
      AltersDBInfoChangesFDScript.ExecuteAll;

      MainForm.AltersDBChangesFDScript.ExecuteAll;


     end;

     SQLQuery1.Active:= false;
     SQLQuery1.SQL.Clear;

end;


procedure TDataModuleF.Bona_com_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,NewHT,BonRTotalHT: Currency;
InvoiceID :Integer;
  begin

       if Assigned(BonComAGestionF) then
       begin

         MainForm.SQLQuery3.Active:= False;
         MainForm.SQLQuery3.SQL.Clear;
         MainForm.SQLQuery3.SQL.Text:= BonComAGestionF.BCALSQL+ ' WHERE code_bacom= '+ IntToStr(Bona_comTable.FieldByName('code_bacom').AsInteger) +' ORDER BY code_bacoml ';
         MainForm.SQLQuery3.Active:= True;

          MainForm.SQLQuery3.First;
          while not MainForm.SQLQuery3.Eof do
          begin
            TotalHT:= TotalHT + (MainForm.SQLQuery3.FieldValues['MontantHT'] );
            TotalTVA:= TotalTVA + MainForm.SQLQuery3.FieldValues['MontantTVA'];
            TotalTTC:= TotalTTC + MainForm.SQLQuery3.FieldValues['MontantTTC'];
            TVA:=TVA + MainForm.SQLQuery3.FieldValues['tva_p'] ;
            LeReste:= TotalTTC - StrToCurr(StringReplace(BonComAGestionF.BonComRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            MainForm.SQLQuery3.Next;
          end;

         MainForm.SQLQuery3.Active:=false;
         MainForm.SQLQuery3.SQL.Clear;

         InvoiceID := Bona_com_listTable.FieldByName('code_bacoml').AsInteger;
         Bona_com_listTable.Active:=false;
         Bona_com_listTable.SQL.Clear;
         Bona_com_listTable.SQL.Text:= BonComAGestionF.BCALSQL+ ' ORDER BY code_bacoml ' ;
         Bona_com_listTable.Active:=True;

         Bona_com_listTable.Locate('code_bacoml',InvoiceID,[]);



    BonComAGestionF.BonComTotalHTLbl.Caption :=    CurrToStrF((TotalHT),ffNumber,2) ;
    BonComAGestionF.BonComTotalTVALbl.Caption :=   CurrToStrF((TotalTVA),ffNumber,2) ;
    BonComAGestionF.BonComTotalTTCLbl.Caption :=   CurrToStrF((TotalTTC),ffNumber,2) ;
    BonComAGestionF.BonComResteLbl.Caption :=      CurrToStrF((LeReste),ffNumber,2) ;
    BonComAGestionF.BonCATotalTTCNewLbl.Caption :=  CurrToStrF(((TotalTTC)),ffNumber,2) ;
    BonComAGestionF.BonCATotalHTNewLbl.Caption :=   CurrToStrF(((TotalHT)),ffNumber,2) ;
    BonComAGestionF.TotalTVANewLbl.Caption :=      CurrToStrF(((TotalTVA)),ffNumber,2) ;

    if Bona_comTable.FieldValues['montver_bacom']<> Null then
    begin
    Regle:= Bona_comTable.FieldValues['montver_bacom'];
    BonComAGestionF.BonComRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bona_com_listTable.IsEmpty) then
    begin
//    if BonRecGestionF.FournisseurBonRecGCbx.Text<>'' then
//    begin
//    BonRecGestionF.BonRecGFourNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonRecGestionF.BonRecGFourOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
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

procedure TDataModuleF.Bonv_com_listTableAfterRefresh(DataSet: TDataSet);
var TotalHT,TotalAHT,TotalTVA,TVA,TotalTTC,LeReste,Regle,Marge,NewHT,BonCVTotalHT: Currency;
InvoiceID :Integer;
  begin
       if Assigned(BonComVGestionF) then
       begin

          MainForm.SQLQuery3.Active:= False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= BonComVGestionF.BCVLSQL+ ' WHERE code_bvcom= '+ IntToStr(Bonv_comTable.FieldByName('code_bvcom').AsInteger) +' ORDER BY code_bvcoml ';
          MainForm.SQLQuery3.Active:= True;

          MainForm.SQLQuery3.First;
          while not MainForm.SQLQuery3.Eof do
          begin
            TotalAHT:= TotalAHT + (MainForm.SQLQuery3.FieldByName('MontantAHT').AsCurrency );
            TotalHT:= TotalHT + (MainForm.SQLQuery3.FieldByName('MontantHT').AsCurrency );
            TotalTVA:= TotalTVA + MainForm.SQLQuery3.FieldByName('MontantTVA').AsCurrency;
            TotalTTC:= TotalTTC + MainForm.SQLQuery3.FieldByName('MontantTTC').AsCurrency;
            TVA:=TVA + MainForm.SQLQuery3.FieldByName('tva_p').AsInteger;
            Marge:=Marge + MainForm.SQLQuery3.FieldByName('MargeM').AsCurrency ;
            LeReste:= TotalTTC - StrToCurr(StringReplace(BonComVGestionF.BonComRegleLbl.Caption, #32, '', [rfReplaceAll]))  ;
            MainForm.SQLQuery3.Next;
          end;

         MainForm.SQLQuery3.Active:=false;
         MainForm.SQLQuery3.SQL.Clear;

         InvoiceID := Bonv_com_listTable.FieldByName('code_bvcoml').AsInteger;

         Bonv_com_listTable.Active:=false;
         Bonv_com_listTable.SQL.Clear;
         Bonv_com_listTable.SQL.Text:= BonComVGestionF.BCVLSQL+' ORDER BY code_bvcoml ' ;
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

    if Bonv_comTable.FieldByName('montver_bvcom').AsCurrency<> Null then
    begin
    Regle:= Bonv_comTable.FieldByName('montver_bvcom').AsCurrency;
    BonComVGestionF.BonComRegleLbl.Caption :=      CurrToStrF(((Regle)),ffNumber,2) ;
    end;

    if NOT (Bonv_com_listTable.IsEmpty) then
    begin
//    if BonComVGestionF.ClientBonLivGCbx.Text<>'' then
//    begin
//    BonComVGestionF.BonLivGClientNEWCredit.Caption:=
//    CurrToStrF((LeReste + ((StrToCurr(StringReplace(BonComVGestionF.BonLivGClientOLDCredit.Caption, #32, '', [rfReplaceAll]))))),ffNumber,2) ;
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

  if SQLQuery1.IsEmpty then with SQLQuery1 do
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
    buttonSelected := MyMessageDialog('Le serveur ne r�pond pas! Assurer-tu que le serveur est activ�'
    ,mtCustom,[mbRetry,mbCancel],
                              ['Annuler','R�essayer']);


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
    PCloseZeroQCnotif.FieldValues['QutDispo']:=
 (PCloseZeroQCnotif.FieldValues['qut_p'] + PCloseZeroQCnotif.FieldValues['qutini_p']);
end;

procedure TDataModuleF.PertesTableCalcFields(DataSet: TDataSet);
begin
  PertesTable.FieldValues['PrixATTC']:=
 (((PertesTable.FieldValues['prixht_p'] * PertesTable.FieldValues['tva_p'])/100) + (PertesTable.FieldValues['prixht_p'])) ;

  PertesTable.FieldValues['MontantHT']:=
 (PertesTable.FieldValues['prixht_p'] * PertesTable.FieldValues['qut_p'] ) ;
 
  PertesTable.FieldValues['MontantTTC']:=
 (PertesTable.FieldValues['PrixATTC'] * PertesTable.FieldValues['qut_p'] ) ;

   PertesTable.FieldValues['MontantTVA']:=
 ((PertesTable.FieldValues['MontantTTC']) - (PertesTable.FieldValues['MontantHT'])) ;

 
end;

procedure TDataModuleF.PMoreMaxQCnotifCalcFields(DataSet: TDataSet);
begin
    PMoreMaxQCnotif.FieldValues['QutDispo']:=
 (PMoreMaxQCnotif.FieldValues['qut_p'] + PMoreMaxQCnotif.FieldValues['qutini_p']);
end;

procedure TDataModuleF.PZeroQCnotifCalcFields(DataSet: TDataSet);
begin

    PZeroQCnotif.FieldValues['QutDispo']:=
 (PZeroQCnotif.FieldValues['qut_p'] + PZeroQCnotif.FieldValues['qutini_p']);
end;

end.
