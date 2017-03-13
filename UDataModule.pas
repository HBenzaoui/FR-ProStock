unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script;

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
    CreatAndaddAdmin: TFDScript;
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
    PCloseDiedCnotifcode_p: TIntegerField;
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
    PDiedCnotifcode_p: TIntegerField;
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
    PDiedCnotifnomp: TStringField;
    PDiedCnotifreferp: TStringField;
    PDiedCnotifcode_barec: TIntegerField;
    PDiedCnotifnum_barec: TWideStringField;
    PDiedCnotifqutinstock_p: TFloatField;
    PCloseDiedCnotifcode_barec: TIntegerField;
    PCloseDiedCnotifnum_barec: TWideStringField;
    PCloseDiedCnotifqutinstock_p: TFloatField;
    PCloseDiedCnotifnomp: TStringField;
    PCloseDiedCnotifreferp: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure PZeroQCnotifCalcFields(DataSet: TDataSet);
    procedure PCloseZeroQCnotifCalcFields(DataSet: TDataSet);
    procedure PMoreMaxQCnotifCalcFields(DataSet: TDataSet);
    procedure PCloseDiedCnotifCalcFields(DataSet: TDataSet);
    procedure PertesTableCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleF: TDataModuleF;

implementation

uses
  UMainF;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleF.DataModuleCreate(Sender: TObject);
begin

//if MainForm.sImage1.Tag = 0 then
 begin
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
 
  CreatAndaddAdmin.ExecuteAll;
  UsersTable.Active:= True;
  if UsersTable.IsEmpty then
  begin
   AddAdminUser.ExecuteAll; 
  end;
 end;
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
