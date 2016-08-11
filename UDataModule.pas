unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
