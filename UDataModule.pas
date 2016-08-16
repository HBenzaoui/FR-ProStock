unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait;

type
  TDataModuleF = class(TDataModule)
    Top5produit: TFDQuery;
    TopClient: TFDQuery;
    TopClientcode_c: TIntegerField;
    TopClientbest_client: TLargeintField;
    TopClientnomclient: TStringField;
    TotalProduit: TFDQuery;
    TotalProduittotat: TFloatField;
    Top5produitcode_p: TIntegerField;
    Top5produitsum: TLargeintField;
    Top5produitnomp: TStringField;
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

end.
