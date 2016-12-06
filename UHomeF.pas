unit UHomeF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvToolBtn, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, acPNG;

type
  THomeF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    GridPanel1: TGridPanel;
    BLFaceBtn: TAdvToolButton;
    FCVFaceBtn: TAdvToolButton;
    CTRFaceBtn: TAdvToolButton;
    BRFaceBtn: TAdvToolButton;
    FCAFaceBtn: TAdvToolButton;
    AdvToolButton1: TAdvToolButton;
    CaisseFaceBtn: TAdvToolButton;
    BankFaceBtn: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    ClientFaceBtn: TAdvToolButton;
    FourFaceBtn: TAdvToolButton;
    ProduitFaceBtn: TAdvToolButton;
    Image2: TImage;
    procedure BLFaceBtnClick(Sender: TObject);
    procedure FCVFaceBtnClick(Sender: TObject);
    procedure CTRFaceBtnClick(Sender: TObject);
    procedure BRFaceBtnClick(Sender: TObject);
    procedure FCAFaceBtnClick(Sender: TObject);
    procedure CaisseFaceBtnClick(Sender: TObject);
    procedure BankFaceBtnClick(Sender: TObject);
    procedure ClientFaceBtnClick(Sender: TObject);
    procedure FourFaceBtnClick(Sender: TObject);
    procedure ProduitFaceBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomeF: THomeF;

implementation

{$R *.dfm}
uses
  UMainF, UClientsList, UFournisseurList, UProduitsList, UBonRec,
   UBonLiv,  UBonFacV,  UBonFacA, UComptoir, UBonCtr, UCaisseList,
  UBankList, UUsersList,  UReglementFList, UReglementCList,
    UDashboard, UDataModule;


procedure THomeF.BLFaceBtnClick(Sender: TObject);
begin
MainForm.BLMainFMmnClick(Sender);
BonLivF.AddBVLivBtnClick(Sender);
end;

procedure THomeF.FCVFaceBtnClick(Sender: TObject);
begin
MainForm.FactureV2MainFMnmClick(Sender);
BonFacVF.AddBVFacBtnClick(Sender);
end;

procedure THomeF.CTRFaceBtnClick(Sender: TObject);
begin
BonCtrF.AddBVCtrBtnClick(Self);
end;

procedure THomeF.BRFaceBtnClick(Sender: TObject);
begin
MainForm.BRMainFMmnClick(Sender);
BonRecF.AddBARecBtnClick(Sender);
end;

procedure THomeF.FCAFaceBtnClick(Sender: TObject);
begin
MainForm.FactureAMainFMnmClick(Sender);
BonFacAF.AddBAFacBtnClick(Sender);
end;

procedure THomeF.CaisseFaceBtnClick(Sender: TObject);
begin
MainForm.CaisseMainFMnmClick(Sender);
end;

procedure THomeF.BankFaceBtnClick(Sender: TObject);
begin
MainForm.BankMainFMnmClick(Sender);
end;

procedure THomeF.ClientFaceBtnClick(Sender: TObject);
begin
MainForm.ClientMainFBtnClick(Sender);
end;

procedure THomeF.FourFaceBtnClick(Sender: TObject);
begin
MainForm.FourMainFBtnClick(Sender);
end;

procedure THomeF.ProduitFaceBtnClick(Sender: TObject);
begin
MainForm.ProduitMainFBtnClick(Sender);
end;

end.
