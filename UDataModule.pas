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
    procedure DataModuleCreate(Sender: TObject);
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

end.
