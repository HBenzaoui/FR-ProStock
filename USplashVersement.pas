unit USplashVersement;

interface

uses
  Winapi.Windows,System.DateUtils,
   Winapi.Messages,MMSystem, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, AdvToolBtn,DBGridEh,
  sPanel, acSlider, AdvSmoothTouchKeyBoard;

type
  TFSplashVersement = class(TForm)
    Label3: TLabel;
    OldCreditVersementSLbl: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ResteVersementSLbl: TLabel;
    OKVersementSBtn: TAdvToolButton;
    CancelVersementSBtn: TAdvToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    TotalVersementSLbl: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    VerVersementSEdt: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    MontantTTCVersementSLbl: TLabel;
    Panel6: TPanel;
    VerVersementSErrorP: TPanel;
    RequiredVerVersementSlbl: TLabel;
    RequiredStarVerVersementSLbl: TLabel;
    RegleVersementSGSlider: TsSlider;
    RegleVersementSGLbl: TLabel;
    AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKVersementSBtnClick(Sender: TObject);
    procedure CancelVersementSBtnClick(Sender: TObject);
    procedure VerVersementSEdtKeyPress(Sender: TObject; var Key: Char);
    procedure VerVersementSEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VerVersementSEdtChange(Sender: TObject);
    procedure VerVersementSEdtExit(Sender: TObject);
    procedure VerVersementSEdtClick(Sender: TObject);
    procedure RegleVersementSGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations }

  public
    { Public declarations }
    procedure DisableBonRec;
    procedure DisableBonLiv;
    procedure DisableBonFacV;
    procedure DisableBonFacA;
    procedure DisableBonCtr;
    procedure DisableBonFacP;

  end;

var
  FSplashVersement: TFSplashVersement;

implementation

uses
  UMainF, UClientGestion, UBonRecGestion, UBonLivGestion, UBonFacVGestion,
  UBonFacAGestion, UComptoir, UDataModule, UBonFacPGestion;

{$R *.dfm}

procedure TFSplashVersement.FormCreate(Sender: TObject);
begin
 GrayForms  ;
 end;

procedure TFSplashVersement.FormDestroy(Sender: TObject);
begin
  NormalForms;
end;

procedure TFSplashVersement.DisableBonCtr;
begin


          BonCtrGestionF.DateBonCtrGD.Enabled:= False;
//          BonCtrGestionF.ObserBonCtrGMem.Enabled:= False;
          BonCtrGestionF.ClientBonCtrGCbx.Enabled:= False;
          BonCtrGestionF.AddClientBonCtrGBtn.Enabled:= False ; //
          BonCtrGestionF.AddClientBonCtrGBtn.ImageIndex:=35;//10 fo A


          BonCtrGestionF.ProduitBonCtrGCbx.Enabled:= False;
          BonCtrGestionF.EnterAddProduitBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.EnterAddProduitBonCtrGBtn.ImageIndex:=40;//15 fo A
          BonCtrGestionF.ListAddProduitBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ListAddProduitBonCtrGBtn.ImageIndex:=41;//13 fo A
          BonCtrGestionF.NewAddProduitBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.NewAddProduitBonCtrGBtn.ImageIndex:=28;//4 fo A
          BonCtrGestionF.DeleteProduitBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.DeleteProduitBonCtrGBtn.ImageIndex:=36;//14 fo A
          BonCtrGestionF.ClearProduitBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ClearProduitBonCtrGBtn.ImageIndex:=39;//16 fo A
          BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonCtrGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonCtrGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonCtrGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonCtrGestionF.ProduitsListDBGridEh.Options:=
          BonCtrGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonCtrGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonCtrGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonCtrGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonCtrGestionF.RemisePerctageBonCtrGEdt.Enabled:=False;//True for A
          BonCtrGestionF.RemiseBonCtrGEdt.Enabled:=False;//True for A

          BonCtrGestionF.CtrTop10PRODUITDBGridEh.Enabled:=False;//True for A
          BonCtrGestionF.CtrTop10PRODUITDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonCtrGestionF.CtrTop10PRODUITDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonCtrGestionF.CtrTop10PRODUITDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A

          BonCtrGestionF.ValiderBVCtrBonCtrGImg.ImageIndex:=0;//1 fo A
          BonCtrGestionF.ValiderBVCtrBonCtrGLbl.Color:=$004AC38B;// $007374FF for A
          BonCtrGestionF.ValiderBVCtrBonCtrGLbl.Font.Color:= clBlack;// clWhite for A
          BonCtrGestionF.ValiderBVCtrBonCtrGLbl.Caption:='Ce bon est Validé';// 'Ce bon n''est pas encore Validé' for A


          BonCtrGestionF.AddBVCtrBonCtrGBtn.Enabled:= True;
          BonCtrGestionF.AddBVCtrBonCtrGBtn.ImageIndex:=7;// 8 For A
          BonCtrGestionF.EditBVCtrBonCtrGBtn.Enabled:= True;
          BonCtrGestionF.EditBVCtrBonCtrGBtn.ImageIndex:=9; // 10 For A
          BonCtrGestionF.ValiderBVCtrBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ValiderBVCtrBonCtrGBtn.ImageIndex:=12; // 11 For A
          BonCtrGestionF.ExValiderBVCtrBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ExValiderBVCtrBonCtrGBtn.ImageIndex:=14;//13 for D
end;

procedure TFSplashVersement.DisableBonFacA;
begin


          BonFacAGestionF.DateBonFacAGD.Enabled:= False;
          BonFacAGestionF.ObserBonFacAGMem.Enabled:= False;
          BonFacAGestionF.FourBonFacAGCbx.Enabled:= False;
          BonFacAGestionF.AddFourBonFacAGBtn.Enabled:= False ; //
          BonFacAGestionF.AddFourBonFacAGBtn.ImageIndex:=35;//10 fo A
          BonFacAGestionF.ModePaieBonFacAGCbx.Enabled:= False;
          BonFacAGestionF.AddModePaieBonFacAGBtn.Enabled:= False ;
          BonFacAGestionF.AddModePaieBonFacAGBtn.ImageIndex:=35;//10 fo A
          BonFacAGestionF.CompteBonFacAGCbx.Enabled:= False;
          BonFacAGestionF.AddCompteBonFacAGBtn.Enabled:= False ;
          BonFacAGestionF.AddCompteBonFacAGBtn.ImageIndex:=35;//10 fo A
          BonFacAGestionF.NChequeBonFacAGCbx.Enabled:= False;
          BonFacAGestionF.ProduitBonFacAGCbx.Enabled:= False;
          BonFacAGestionF.EnterAddProduitBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.EnterAddProduitBonFacAGBtn.ImageIndex:=40;//15 fo A
          BonFacAGestionF.ListAddProduitBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.ListAddProduitBonFacAGBtn.ImageIndex:=41;//13 fo A
          BonFacAGestionF.NewAddProduitBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.NewAddProduitBonFacAGBtn.ImageIndex:=28;//4 fo A
          BonFacAGestionF.DeleteProduitBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.DeleteProduitBonFacAGBtn.ImageIndex:=36;//14 fo A
          BonFacAGestionF.ClearProduitBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.ClearProduitBonFacAGBtn.ImageIndex:=39;//16 fo A
          BonFacAGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonFacAGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonFacAGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonFacAGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonFacAGestionF.ProduitsListDBGridEh.Options:=
          BonFacAGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonFacAGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonFacAGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonFacAGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonFacAGestionF.RemisePerctageBonFacAGEdt.Enabled:=False;//True for A
          BonFacAGestionF.RemiseBonFacAGEdt.Enabled:=False;//True for A
          BonFacAGestionF.RemiseTypeBonFacAGCbx.Enabled:= False;//True for A;

          BonFacAGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonFacAGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore validé
          BonFacAGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonFacAGestionF.ValiderBAFacBonFacAGImg.ImageIndex:=0;//1 fo A
          BonFacAGestionF.ValiderBAFacBonFacAGLbl.Color:=$004AC38B;// $007374FF for A
          BonFacAGestionF.ValiderBAFacBonFacAGLbl.Font.Color:= clBlack;// clWhite for A
          BonFacAGestionF.ValiderBAFacBonFacAGLbl.Caption:='Ce Facture est Validé';// 'Ce bon n''est pas encore Validé' for A



          BonFacAGestionF.AddBAFacBonFacAGBtn.Enabled:= True;
          BonFacAGestionF.AddBAFacBonFacAGBtn.ImageIndex:=4;// 28 For A
          BonFacAGestionF.EditBAFacBonFacAGBtn.Enabled:= True;
          BonFacAGestionF.EditBAFacBonFacAGBtn.ImageIndex:=5; // 29 For A
          BonFacAGestionF.ValiderBAFacBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.ValiderBAFacBonFacAGBtn.ImageIndex:=30; // 12 For A
end;


procedure TFSplashVersement.DisableBonRec;
begin


          BonRecGestionF.DateBonRecGD.Enabled:= False;
          BonRecGestionF.ObserBonRecGMem.Enabled:= False;
          BonRecGestionF.FournisseurBonRecGCbx.Enabled:= False;
          BonRecGestionF.AddFourBonRecGBtn.Enabled:= False ; //
          BonRecGestionF.AddFourBonRecGBtn.ImageIndex:=35;//10 fo A
          BonRecGestionF.ModePaieBonRecGCbx.Enabled:= False;
          BonRecGestionF.AddModePaieBonRecGBtn.Enabled:= False ;
          BonRecGestionF.AddModePaieBonRecGBtn.ImageIndex:=35;//10 fo A
          BonRecGestionF.CompteBonRecGCbx.Enabled:= False;
          BonRecGestionF.AddCompteBonRecGBtn.Enabled:= False ;
          BonRecGestionF.AddCompteBonRecGBtn.ImageIndex:=35;//10 fo A
          BonRecGestionF.NChequeBonRecGCbx.Enabled:= False;
          BonRecGestionF.ProduitBonRecGCbx.Enabled:= False;
          BonRecGestionF.EnterAddProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.EnterAddProduitBonRecGBtn.ImageIndex:=40;//15 fo A
          BonRecGestionF.ListAddProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.ListAddProduitBonRecGBtn.ImageIndex:=41;//13 fo A
          BonRecGestionF.NewAddProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.NewAddProduitBonRecGBtn.ImageIndex:=28;//4 fo A
          BonRecGestionF.DeleteProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.DeleteProduitBonRecGBtn.ImageIndex:=36;//14 fo A
          BonRecGestionF.ClearProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.ClearProduitBonRecGBtn.ImageIndex:=39;//16 fo A
          BonRecGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonRecGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonRecGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonRecGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonRecGestionF.ProduitsListDBGridEh.Options:=
          BonRecGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonRecGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonRecGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonRecGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonRecGestionF.RemisePerctageBonRecGEdt.Enabled:=False;//True for A
          BonRecGestionF.RemiseBonRecGEdt.Enabled:=False;//True for A
          BonRecGestionF.RemiseTypeBonRecGCbx.Enabled:= False;//True for A;

          BonRecGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonRecGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore validé
          BonRecGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonRecGestionF.ValiderBARecBonRecGImg.ImageIndex:=0;//1 fo A
          BonRecGestionF.ValiderBARecBonRecGLbl.Color:=$004AC38B;// $007374FF for A
          BonRecGestionF.ValiderBARecBonRecGLbl.Font.Color:= clBlack;// clWhite for A
          BonRecGestionF.ValiderBARecBonRecGLbl.Caption:='Ce bon est Validé';// 'Ce bon n''est pas encore Validé' for A

          BonRecGestionF.AddBARecBonRecGBtn.Enabled:= True;
          BonRecGestionF.AddBARecBonRecGBtn.ImageIndex:=4;// 28 For A
          BonRecGestionF.EditBARecBonRecGBtn.Enabled:= True;
          BonRecGestionF.EditBARecBonRecGBtn.ImageIndex:=5; // 29 For A
          BonRecGestionF.ValiderBARecBonRecGBtn.ImageIndex:=30; // 12 For A
          BonRecGestionF.ValiderBARecBonRecGBtn.Enabled:= False;
end;



procedure TFSplashVersement.DisableBonLiv;
begin


          BonLivGestionF.DateBonLivGD.Enabled:= False;
          BonLivGestionF.ObserBonLivGMem.Enabled:= False;
          BonLivGestionF.ClientBonLivGCbx.Enabled:= False;
          BonLivGestionF.AddClientBonLivGBtn.Enabled:= False ; //
          BonLivGestionF.AddClientBonLivGBtn.ImageIndex:=35;//10 fo A
          BonLivGestionF.ModePaieBonLivGCbx.Enabled:= False;
          BonLivGestionF.AddModePaieBonLivGBtn.Enabled:= False ;
          BonLivGestionF.AddModePaieBonLivGBtn.ImageIndex:=35;//10 fo A
          BonLivGestionF.CompteBonLivGCbx.Enabled:= False;
          BonLivGestionF.AddCompteBonLivGBtn.Enabled:= False ;
          BonLivGestionF.AddCompteBonLivGBtn.ImageIndex:=35;//10 fo A
          BonLivGestionF.NChequeBonLivGCbx.Enabled:= False;
          BonLivGestionF.ProduitBonLivGCbx.Enabled:= False;
          BonLivGestionF.EnterAddProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.EnterAddProduitBonLivGBtn.ImageIndex:=40;//15 fo A
          BonLivGestionF.ListAddProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.ListAddProduitBonLivGBtn.ImageIndex:=41;//13 fo A
          BonLivGestionF.NewAddProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.NewAddProduitBonLivGBtn.ImageIndex:=28;//4 fo A
          BonLivGestionF.DeleteProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.DeleteProduitBonLivGBtn.ImageIndex:=36;//14 fo A
          BonLivGestionF.ClearProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.ClearProduitBonLivGBtn.ImageIndex:=39;//16 fo A
          BonLivGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonLivGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonLivGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonLivGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonLivGestionF.ProduitsListDBGridEh.Options:=
          BonLivGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonLivGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonLivGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonLivGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonLivGestionF.RemisePerctageBonLivGEdt.Enabled:=False;//True for A
          BonLivGestionF.RemiseBonLivGEdt.Enabled:=False;//True for A
          BonLivGestionF.RemiseTypeBonLivGCbx.Enabled:= False;//True for A;

          BonLivGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonLivGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore validé
          BonLivGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonLivGestionF.ValiderBVLivBonLivGImg.ImageIndex:=0;//1 fo A
          BonLivGestionF.ValiderBVLivBonLivGLbl.Color:=$004AC38B;// $007374FF for A
          BonLivGestionF.ValiderBVLivBonLivGLbl.Font.Color:= clBlack;// clWhite for A
          BonLivGestionF.ValiderBVLivBonLivGLbl.Caption:='Ce bon est Validé';// 'Ce bon n''est pas encore Validé' for A

          BonLivGestionF.AddBVLivBonLivGBtn.Enabled:= True;
          BonLivGestionF.AddBVLivBonLivGBtn.ImageIndex:=4;// 28 For A
          BonLivGestionF.EditBVLivBonLivGBtn.Enabled:= True;
          BonLivGestionF.EditBVLivBonLivGBtn.ImageIndex:=5; // 29 For A

          BonLivGestionF.ValiderBVLivBonLivGBtn.ImageIndex:=30; // 12 For A
          BonLivGestionF.ValiderBVLivBonLivGBtn.Enabled:= False;
end;


procedure TFSplashVersement.DisableBonFacV ;
begin


          BonFacVGestionF.DateBonFacVGD.Enabled:= False;
          BonFacVGestionF.ObserBonFacVGMem.Enabled:= False;
          BonFacVGestionF.ClientBonFacVGCbx.Enabled:= False;
          BonFacVGestionF.AddClientBonFacVGBtn.Enabled:= False ; //
          BonFacVGestionF.AddClientBonFacVGBtn.ImageIndex:=35;//10 fo A
          BonFacVGestionF.ModePaieBonFacVGCbx.Enabled:= False;
          BonFacVGestionF.AddModePaieBonFacVGBtn.Enabled:= False ;
          BonFacVGestionF.AddModePaieBonFacVGBtn.ImageIndex:=35;//10 fo A
          BonFacVGestionF.CompteBonFacVGCbx.Enabled:= False;
          BonFacVGestionF.AddCompteBonFacVGBtn.Enabled:= False ;
          BonFacVGestionF.AddCompteBonFacVGBtn.ImageIndex:=35;//10 fo A
          BonFacVGestionF.NChequeBonFacVGCbx.Enabled:= False;
          BonFacVGestionF.ProduitBonFacVGCbx.Enabled:= False;
          BonFacVGestionF.EnterAddProduitBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.EnterAddProduitBonFacVGBtn.ImageIndex:=40;//15 fo A
          BonFacVGestionF.ListAddProduitBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.ListAddProduitBonFacVGBtn.ImageIndex:=41;//13 fo A
          BonFacVGestionF.NewAddProduitBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.NewAddProduitBonFacVGBtn.ImageIndex:=28;//4 fo A
          BonFacVGestionF.DeleteProduitBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.DeleteProduitBonFacVGBtn.ImageIndex:=36;//14 fo A
          BonFacVGestionF.ClearProduitBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.ClearProduitBonFacVGBtn.ImageIndex:=39;//16 fo A
          BonFacVGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonFacVGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonFacVGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonFacVGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonFacVGestionF.ProduitsListDBGridEh.Options:=
          BonFacVGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonFacVGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonFacVGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonFacVGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonFacVGestionF.RemisePerctageBonFacVGEdt.Enabled:=False;//True for A
          BonFacVGestionF.RemiseBonFacVGEdt.Enabled:=False;//True for A
          BonFacVGestionF.RemiseTypeBonFacVGCbx.Enabled:= False;//True for A;

          BonFacVGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonFacVGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore validé
          BonFacVGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonFacVGestionF.ValiderBVFacBonFacVGImg.ImageIndex:=0;//1 fo A
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Color:=$004AC38B;// $007374FF for A
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Font.Color:= clBlack;// clWhite for A
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Caption:='Ce Facture est Validé';// 'Ce bon n''est pas encore Validé' for A

          BonFacVGestionF.AddBVFacBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.AddBVFacBonFacVGBtn.ImageIndex:=4;// 28 For A
          BonFacVGestionF.EditBVFacBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.EditBVFacBonFacVGBtn.ImageIndex:=5; // 29 For A
          BonFacVGestionF.ValiderBVFacBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.ValiderBVFacBonFacVGBtn.ImageIndex:=30; // 12 For A
end;





procedure TFSplashVersement.DisableBonFacP ;
begin


          BonFacPGestionF.DateBonFacVGD.Enabled:= False;
          BonFacPGestionF.ObserBonFacVGMem.Enabled:= False;
          BonFacPGestionF.ClientBonFacVGCbx.Enabled:= False;
          BonFacPGestionF.AddClientBonFacVGBtn.Enabled:= False ; //
          BonFacPGestionF.AddClientBonFacVGBtn.ImageIndex:=35;//10 fo A
          BonFacPGestionF.ModePaieBonFacVGCbx.Enabled:= False;
          BonFacPGestionF.AddModePaieBonFacVGBtn.Enabled:= False ;
          BonFacPGestionF.AddModePaieBonFacVGBtn.ImageIndex:=35;//10 fo A
          BonFacPGestionF.CompteBonFacVGCbx.Enabled:= False;
          BonFacPGestionF.AddCompteBonFacVGBtn.Enabled:= False ;
          BonFacPGestionF.AddCompteBonFacVGBtn.ImageIndex:=35;//10 fo A
          BonFacPGestionF.NChequeBonFacVGCbx.Enabled:= False;
          BonFacPGestionF.ProduitBonFacVGCbx.Enabled:= False;
          BonFacPGestionF.EnterAddProduitBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.EnterAddProduitBonFacVGBtn.ImageIndex:=40;//15 fo A
          BonFacPGestionF.ListAddProduitBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.ListAddProduitBonFacVGBtn.ImageIndex:=41;//13 fo A
          BonFacPGestionF.NewAddProduitBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.NewAddProduitBonFacVGBtn.ImageIndex:=28;//4 fo A
          BonFacPGestionF.DeleteProduitBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.DeleteProduitBonFacVGBtn.ImageIndex:=36;//14 fo A
          BonFacPGestionF.ClearProduitBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.ClearProduitBonFacVGBtn.ImageIndex:=39;//16 fo A
          BonFacPGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonFacPGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonFacPGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonFacPGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonFacPGestionF.ProduitsListDBGridEh.Options:=
          BonFacPGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonFacPGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonFacPGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonFacPGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonFacPGestionF.RemisePerctageBonFacVGEdt.Enabled:=False;//True for A
          BonFacPGestionF.RemiseBonFacVGEdt.Enabled:=False;//True for A
          BonFacPGestionF.RemiseTypeBonFacVGCbx.Enabled:= False;//True for A;

          BonFacPGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonFacPGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore validé
          BonFacPGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonFacPGestionF.ValiderBVFacBonFacVGImg.ImageIndex:=0;//1 fo A
          BonFacPGestionF.ValiderBVFacBonFacVGLbl.Color:=$004AC38B;// $007374FF for A
          BonFacPGestionF.ValiderBVFacBonFacVGLbl.Font.Color:= clBlack;// clWhite for A
          BonFacPGestionF.ValiderBVFacBonFacVGLbl.Caption:='Ce Facture est Validé';// 'Ce bon n''est pas encore Validé' for A

          BonFacPGestionF.AddBVFacBonFacVGBtn.Enabled:= True;
          BonFacPGestionF.AddBVFacBonFacVGBtn.ImageIndex:=4;// 28 For A
          BonFacPGestionF.EditBVFacBonFacVGBtn.Enabled:= True;
          BonFacPGestionF.EditBVFacBonFacVGBtn.ImageIndex:=5; // 29 For A
          BonFacPGestionF.ValiderBVFacBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.ValiderBVFacBonFacVGBtn.ImageIndex:=30; // 12 For A
end;


procedure TFSplashVersement.FormShow(Sender: TObject);
 var OLDCredit,TotalTTC: Currency;
begin
//--------------------------- this tag = 0 is for valdating from bon recption --------
  if FSplashVersement.OKVersementSBtn.Tag = 0 then
  begin

    BonRecGestionF.FournisseurBonRecGCbx.StyleElements:= [seFont,seClient,seBorder];
    BonRecGestionF.RequiredFourGlbl.Visible:= False;
    BonRecGestionF.NameFourGErrorP.Visible:= False;

    OLDCredit:=StrToFloat(StringReplace(OldCreditVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalTTC:=StrToFloat(StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll]));
  //  if BonRecGestionF.tag=0 then
  //  begin
    TotalVersementSLbl.Caption:= FloatToStrF((OLDCredit + TotalTTC),ffNumber,14,2);
  //  end;
  //  if BonRecGestionF.tag=1then
  //  begin
  //  TotalVersementSLbl.Caption:= FloatToStrF((TotalTTC),ffNumber,14,2);
  //  end;

    ResteVersementSLbl.Caption:=TotalVersementSLbl.Caption;
    if TotalVersementSLbl.Width > 290 then
     begin
       TotalVersementSLbl.Font.Height:= 43;
       TotalVersementSLbl.Top:= 40;
     end;
    if (TotalVersementSLbl.Width >290 ) AND (TotalVersementSLbl.Font.Height = 43)  then
      begin
       TotalVersementSLbl.Font.Height:= 35;
       TotalVersementSLbl.Top:= 43;
     end;

     if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
        OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='À terme' )  then
     begin
      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
      VerVersementSEdt.Enabled:= False;
      RegleVersementSGSlider.Enabled:=False;
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      end;

  FSplashVersement.VerVersementSEdtChange(Sender);

  end;


//--------------------------- this tag = 1 is for valdating from bon livrartion --------
  if FSplashVersement.OKVersementSBtn.Tag = 1 then
  begin
       BonLivGestionF.ClientBonLivGCbx.StyleElements:= [seFont,seClient,seBorder];
    BonLivGestionF.RequiredClientGlbl.Visible:= False;
    BonLivGestionF.NameClientGErrorP.Visible:= False;

    OLDCredit:=StrToFloat(StringReplace(OldCreditVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalTTC:=StrToFloat(StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll]));
  //  if BonRecGestionF.tag=0 then
  //  begin
    TotalVersementSLbl.Caption:= FloatToStrF((OLDCredit + TotalTTC),ffNumber,14,2);
  //  end;
  //  if BonRecGestionF.tag=1then
  //  begin
  //  TotalVersementSLbl.Caption:= FloatToStrF((TotalTTC),ffNumber,14,2);
  //  end;

    ResteVersementSLbl.Caption:=TotalVersementSLbl.Caption;
    if TotalVersementSLbl.Width > 290 then
     begin
       TotalVersementSLbl.Font.Height:= 43;
       TotalVersementSLbl.Top:= 40;
     end;
    if (TotalVersementSLbl.Width >290 ) AND (TotalVersementSLbl.Font.Height = 43)  then
      begin
       TotalVersementSLbl.Font.Height:= 35;
       TotalVersementSLbl.Top:= 43;
     end;

     if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
        OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' )  then
     begin
      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
      VerVersementSEdt.Enabled:= False;
      RegleVersementSGSlider.Enabled:=False;
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      end;

   FSplashVersement.VerVersementSEdtChange(Sender);
   end;

   //--------------------------- this tag = 3 is for valdating from comptoir --------
  if FSplashVersement.OKVersementSBtn.Tag = 3 then
  begin

    OLDCredit:=StrToFloat(StringReplace(OldCreditVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalTTC:=StrToFloat(StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll]));
  //  if BonRecGestionF.tag=0 then
  //  begin
    TotalVersementSLbl.Caption:= FloatToStrF((TotalTTC - OLDCredit),ffNumber,14,2);
  //  end;
  //  if BonRecGestionF.tag=1then
  //  begin
  //  TotalVersementSLbl.Caption:= FloatToStrF((TotalTTC),ffNumber,14,2);
  //  end;

  ResteVersementSLbl.Caption:=FloatToStrF(0,ffNumber,14,2);

    if TotalVersementSLbl.Width > 290 then
     begin
       TotalVersementSLbl.Font.Height:= 43;
       TotalVersementSLbl.Top:= 40;
     end;
    if (TotalVersementSLbl.Width >290 ) AND (TotalVersementSLbl.Font.Height = 43)  then
      begin
       TotalVersementSLbl.Font.Height:= 35;
       TotalVersementSLbl.Top:= 43;
     end;

//     if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
//        OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' )  then
//     begin
//      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
//      VerVersementSEdt.Enabled:= False;
//      RegleVersementSGSlider.Enabled:=False;
//      OKVersementSBtn.Enabled := true;
//      OKVersementSBtn.ImageIndex := 17;
//      end;

//   FSplashVersement.VerVersementSEdtChange(Sender);

  end;

end;

procedure TFSplashVersement.FormKeyPress(Sender: TObject; var Key: Char);
Const
 F = ['r','R'];
Var CanChange  : Boolean;
begin

 if (key = #27) then
 begin
 key := #0;
    CancelVersementSBtnClick(Sender);
 end;
 if (key = #13) OR (key = #32) then
 begin
   OKVersementSBtnClick(Sender);
 end;


  if (key in F) then
 begin
  key := #0;

    if RegleVersementSGSlider.Tag = 0 then
    begin
      CanChange:= True;
      RegleVersementSGSliderChanging(Sender, CanChange);
      RegleVersementSGSlider.SliderOn:= True;
      RegleVersementSGSlider.Tag := 1
    end else
        begin
          CanChange:= False;
          RegleVersementSGSliderChanging(Sender, CanChange);
          RegleVersementSGSlider.SliderOn:= False;
          RegleVersementSGSlider.Tag := 0
        end;


 end;



end;

procedure TFSplashVersement.OKVersementSBtnClick(Sender: TObject);
var CodeOCB,CodeRF: Integer;
begin
//--------- this tag = 1 is for validating a bon recption-------------------

  if FSplashVersement.Tag = 1 then
  begin
     if VerVersementSEdt.Text<>'' then
     begin
     BonRecGestionF.BonRecRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);
     BonRecGestionF.BonRecResteLbl.Caption:=  FloatToStrF((
             (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
             -
             (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

     BonRecGestionF.BonRecGFourNEWCredit.Caption := ResteVersementSLbl.Caption;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
     FSplashVersement.Release;
     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     DisableBonRec;

//--- this is for adding to the priduit
      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_barecl,code_p,  qut_p, cond_p , prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,qutinstock_p FROM bona_rec_list WHERE code_barec =  '
                                                 + IntToStr (MainForm.Bona_recTable.FieldValues['code_barec'])
                                                 + 'GROUP BY code_barecl, code_p, qut_p, cond_p,prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,qutinstock_p' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;

           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;

            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))
                                                         + MainForm.ProduitTable.FieldValues['qut_p']);
            MainForm.ProduitTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
            MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixva_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency:= MainForm.SQLQuery.FieldByName('prixva2_p').AsCurrency;
            MainForm.ProduitTable.Post;

             MainForm.SQLQuery.Edit;   
             MainForm.SQLQuery.FieldValues['qutinstock_p']:= 
             (MainForm.SQLQuery.FieldValues['qut_p'])*(MainForm.SQLQuery.FieldValues['cond_p']);
             MainForm.SQLQuery.Post;  
             
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bona_recTable.Refresh;
           DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the bon reception fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr(BonRecGestionF.FournisseurBonRecGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(BonRecGestionF.ModePaieBonRecGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(BonRecGestionF.CompteBonRecGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

     //     MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Edit;
          MainForm.Bona_recTable.FieldValues['code_f']:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
          MainForm.Bona_recTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

          if BonRecGestionF.Tag = 0 then
          begin
          MainForm.Bona_recTable.FieldValues['date_barec']:= BonRecGestionF.DateBonRecGD.DateTime;
           MainForm.Bona_recTable.FieldValues['time_barec']:=TimeOf(Now);
          end;

          MainForm.Bona_recTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_recTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_recTable.FieldValues['obser_barec']:= BonRecGestionF.ObserBonRecGMem.Text;
          MainForm.Bona_recTable.FieldValues['num_cheque_barec']:= BonRecGestionF.NChequeBonRecGCbx.Text;
          MainForm.Bona_recTable.FieldByName('montht_barec').AsCurrency:= StrToCurr(StringReplace(BonRecGestionF.BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonRecGestionF.RemiseBonRecGEdt.Text<>'' then
          begin
          MainForm.Bona_recTable.FieldByName('remise_barec').AsCurrency:=StrToCurr(StringReplace(BonRecGestionF.RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_recTable.FieldByName('remise_barec').AsCurrency:=0;
                   end;

          MainForm.Bona_recTable.FieldByName('montver_barec').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('montttc_barec').AsCurrency:=StrToCurr(StringReplace(BonRecGestionF.BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean:= True;
          MainForm.Bona_recTable.FieldByName('bon_or_no_barec').AsBoolean:= True;

          if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
          begin
           MainForm.Bona_recTable.FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
          begin
           MainForm.Bona_recTable.FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
             OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='À terme' ) then
          begin
           MainForm.Bona_recTable.FieldValues['code_mdpai']:=3 ;
          end;
          if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
          begin
           MainForm.Bona_recTable.FieldValues['code_mdpai']:=4 ;
          end;

          MainForm.Bona_recTable.Post;
     //     MainForm.Bona_recTable.EnableControls;

    //-----------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then
        begin
          if BonRecGestionF.Tag = 0 then
          begin
             if NOT (MainForm.RegfournisseurTable.IsEmpty) then
            begin
            MainForm.RegfournisseurTable.Last;
            CodeRF:= MainForm.RegfournisseurTable.FieldValues['code_rf'] + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegfournisseurTable.Append;
            MainForm.RegfournisseurTable.FieldValues['code_rf']:= CodeRF;
            MainForm.RegfournisseurTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
            MainForm.RegfournisseurTable.FieldValues['nom_rf']:= BonRecGestionF.NumBonRecGEdt.Caption;
            MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
            MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
            MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
            MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegfournisseurTable.FieldValues['obser_rf']:= BonRecGestionF.ObserBonRecGMem.Text;
            MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= BonRecGestionF.NChequeBonRecGCbx.Text;
            MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 2;
            MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
            end;
             if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
            end;
            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
               OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='À terme' ) then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
            end;
            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=4 ;
            end;

            MainForm.RegfournisseurTable.Post;
            MainForm.RegfournisseurTable.Refresh;

          end else
              begin
                    MainForm.RegfournisseurTable.DisableControls;
                    MainForm.RegfournisseurTable.Active:=false;
                    MainForm.RegfournisseurTable.SQL.Clear;
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_barec ='+IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']);
                    MainForm.RegfournisseurTable.Active:=True;

                 if NOT (MainForm.RegfournisseurTable.IsEmpty) then
                  begin
                  MainForm.RegfournisseurTable.Edit;
                  MainForm.RegfournisseurTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
                  MainForm.RegfournisseurTable.FieldValues['nom_rf']:= BonRecGestionF.NumBonRecGEdt.Caption;
                  MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                  MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
                  MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
                  MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegfournisseurTable.FieldValues['obser_rf']:= BonRecGestionF.ObserBonRecGMem.Text;
                  MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= BonRecGestionF.NChequeBonRecGCbx.Text;
                  MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 2;
                  MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
                  end;
                   if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
                  end;
                  if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
                     OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='À terme' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
                  end;
                  if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=4 ;
                  end;

                  MainForm.RegfournisseurTable.Post;
                  MainForm.RegfournisseurTable.Refresh;

                  end else
                      begin
                         MainForm.RegfournisseurTable.Active:=false;
                         MainForm.RegfournisseurTable.SQL.Clear;
                         MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur ';
                         MainForm.RegfournisseurTable.Active:=True;

                                if NOT (MainForm.RegfournisseurTable.IsEmpty) then
                            begin
                            MainForm.RegfournisseurTable.Last;
                            CodeRF:= MainForm.RegfournisseurTable.FieldValues['code_rf'] + 1;
                            end else
                                begin
                                 CodeRF:= 1;
                                end;

                            MainForm.RegfournisseurTable.Append;
                            MainForm.RegfournisseurTable.FieldValues['code_rf']:= CodeRF;
                            MainForm.RegfournisseurTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
                            MainForm.RegfournisseurTable.FieldValues['nom_rf']:= BonRecGestionF.NumBonRecGEdt.Caption;
                            MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                            MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
                            MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
                            MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                            MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                            MainForm.RegfournisseurTable.FieldValues['obser_rf']:= BonRecGestionF.ObserBonRecGMem.Text;
                            MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= BonRecGestionF.NChequeBonRecGCbx.Text;
                            MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 2;
                            MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                            MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
                            begin
                             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
                            end;
                             if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
                            begin
                             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
                            end;
                            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
                               OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='À terme' ) then
                            begin
                             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
                            end;
                            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                            begin
                             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=4 ;
                            end;

                            MainForm.RegfournisseurTable.Post;
                            MainForm.RegfournisseurTable.Refresh;
                      end;

                    MainForm.RegfournisseurTable.Active:=false;
                    MainForm.RegfournisseurTable.SQL.Clear;
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur ';
                    MainForm.RegfournisseurTable.Active:=True;
                    MainForm.RegfournisseurTable.EnableControls;
              end;
    //-----------------------------------------------------------------------------------------------------------------------------------
          end;

          MainForm.SQLQuery.Edit;
          MainForm.SQLQuery.FieldByName('credit_f').AsCurrency:=
          ((StrToCurr(StringReplace(BonRecGestionF.BonRecGFourNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//          MainForm.SQLQuery.Active:=True;
//          MainForm.SQLQuery.EnableControls;

         //--- this is for adding the money to the caisse----
         begin
         if BonRecGestionF.Tag=0 then
           begin
            MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

            if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
            begin
            MainForm.Opt_cas_bnk_CaisseTable.Last;
            CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
            end else
                begin
                 CodeOCB:= 1;
                end;
              MainForm.Opt_cas_bnk_CaisseTable.Append;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur pièce N° '+BonRecGestionF.NumBonRecGEdt.Caption;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonRecGestionF.FournisseurBonRecGCbx.Text;
      //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

               if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espece') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
              end;
               if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='cheque') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
              end;
              if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='a terme' )
                 OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='À terme' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
              end;
              if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
              end;

              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
              MainForm.Opt_cas_bnk_CaisseTable.Post;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh;
              MainForm.Opt_cas_bnk_BankTable.Refresh;

              MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
              MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
              MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
              MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
              MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

          end else
              begin
                    MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_barec ='+IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']); ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) Then
                begin
                     MainForm.Opt_cas_bnk_CaisseTable.Edit;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur pièce N° '+BonRecGestionF.NumBonRecGEdt.Caption;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonRecGestionF.FournisseurBonRecGCbx.Text;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                       if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                      end;
                       if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                      end;
                      if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='a terme' )
                         OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='À terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                      end;
                      if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                      end;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;

                 end else
                   begin
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk ' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                      if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                      begin
                      MainForm.Opt_cas_bnk_CaisseTable.Last;
                      CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                      end else
                          begin
                           CodeOCB:= 1;
                          end;
                        MainForm.Opt_cas_bnk_CaisseTable.Append;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur pièce N° '+BonRecGestionF.NumBonRecGEdt.Caption;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonRecGestionF.FournisseurBonRecGCbx.Text;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                         if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espece') then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                        end;
                         if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='cheque') then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                        end;
                        if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='a terme' )
                           OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='À terme' ) then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                        end;
                        if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                        end;

                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
                        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
                        MainForm.Opt_cas_bnk_CaisseTable.Post;
                        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                        MainForm.Opt_cas_bnk_BankTable.Refresh;

                        MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                   end;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
              end;
         end;

          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
          MainForm.Mode_paiementTable.Active:=True;
          MainForm.Mode_paiementTable.EnableControls;

          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
          MainForm.CompteTable.Active:=True;
          MainForm.CompteTable.EnableControls;
       end;

   end else
      begin
      try
        VerVersementSEdt.BorderStyle := bsNone;
        VerVersementSEdt.StyleElements := [];
        RequiredVerVersementSlbl.Visible := true;
        VerVersementSErrorP.Visible := true;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
          SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        OKVersementSBtn.Enabled := false;
        OKVersementSBtn.ImageIndex := 18;
      finally
        VerVersementSEdt.SetFocus;
      end;
     end;

   end;


//--------- this tag = 2 is for validating a bon livration-------------------

 if FSplashVersement.Tag = 2 then
  begin
        if VerVersementSEdt.Text<>'' then
     begin


     BonLivGestionF.BonLivRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);

     BonLivGestionF.BonLivResteLbl.Caption:=  FloatToStrF((
             (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
             -
             (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

     BonLivGestionF.BonLivGClientNEWCredit.Caption := ResteVersementSLbl.Caption;

      DisableBonLiv;
      BonLivGestionF.Timer1.Enabled:=False;
      BonLivGestionF.Label20.Visible:=False;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
     FSplashVersement.Release;
     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);


//--- this is for adding to the priduit
      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvlivl,code_p,  qut_p, cond_p , prixvd_p,tva_p FROM bonv_liv_list WHERE code_bvliv =  '
                                                 + IntToStr (MainForm.Bonv_livTable.FieldValues['code_bvliv'])
                                                 + 'GROUP BY code_bvlivl, code_p, qut_p, cond_p,prixvd_p,tva_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_livTable.Refresh;
           DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the bon livration fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(BonLivGestionF.ClientBonLivGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(BonLivGestionF.ModePaieBonLivGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(BonLivGestionF.CompteBonLivGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

          MainForm.Bonv_livTable.Edit;
          MainForm.Bonv_livTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
          MainForm.Bonv_livTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          if BonLivGestionF.Tag = 0 then
          begin
          MainForm.Bonv_livTable.FieldByName('date_bvliv').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
          MainForm.Bonv_livTable.FieldValues['time_bvliv']:=TimeOf(Now);
          end;
          MainForm.Bonv_livTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_livTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_livTable.FieldValues['obser_bvliv']:= BonLivGestionF.ObserBonLivGMem.Text;
          MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv']:= BonLivGestionF.NChequeBonLivGCbx.Text;
          MainForm.Bonv_livTable.FieldByName('montht_bvliv').AsCurrency:= StrToCurr(StringReplace(BonLivGestionF.BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonLivGestionF.RemiseBonLivGEdt.Text<>'' then
          begin
          MainForm.Bonv_livTable.FieldByName('remise_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivGestionF.RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_livTable.FieldByName('remise_bvliv').AsCurrency:=0;
                   end;

          MainForm.Bonv_livTable.FieldByName('montver_bvliv').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montttc_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivGestionF.BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('marge_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivGestionF.BonLivTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean:= True;

          if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
          begin
           MainForm.Bonv_livTable.FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
          begin
           MainForm.Bonv_livTable.FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
             OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
          begin
           MainForm.Bonv_livTable.FieldValues['code_mdpai']:=3 ;
          end;
          if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
          begin
           MainForm.Bonv_livTable.FieldValues['code_mdpai']:=4 ;
          end;

          MainForm.Bonv_livTable.Post;
     //     MainForm.Bona_recTable.EnableControls;

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 )
             OR (VerVersementSEdt.Enabled = False) Then
        begin
          if BonLivGestionF.Tag = 0 then
          begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
            MainForm.RegclientTable.Last;
            CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            Mainform.Regclienttable.Append;
            MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
            MainForm.RegclientTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
            MainForm.RegclientTable.FieldValues['nom_rc']:= BonLivGestionF.NumBonLivGEdt.Caption;
            MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
            MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
            MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldValues['obser_rc']:= BonLivGestionF.ObserBonLivGMem.Text;
            MainForm.RegclientTable.FieldValues['num_cheque_rc']:= BonLivGestionF.NChequeBonLivGCbx.Text;
            MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 2;
            MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
            end;
             if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
            end;
            if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
               OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
            end;
            if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=4 ;
            end;

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvliv ='+IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']) ;
                MainForm.RegclientTable.Active:=True;

                if NOT (MainForm.RegclientTable.IsEmpty) then
                begin
                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
                  MainForm.RegclientTable.FieldValues['nom_rc']:= BonLivGestionF.NumBonLivGEdt.Caption;
                  MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                  MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                  MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldValues['obser_rc']:= BonLivGestionF.ObserBonLivGMem.Text;
                  MainForm.RegclientTable.FieldValues['num_cheque_rc']:= BonLivGestionF.NChequeBonLivGCbx.Text;
                  MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 2;
                  MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
                  end;
                   if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                     OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=4 ;
                  end;

                  MainForm.RegclientTable.Post;
                  MainForm.RegclientTable.Refresh;

                end else
                    begin
                      MainForm.RegclientTable.Active:=false;
                      MainForm.RegclientTable.SQL.Clear;
                      MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ' ;
                      MainForm.RegclientTable.Active:=True;

                      if NOT (MainForm.RegclientTable.IsEmpty) then
                      begin
                      MainForm.RegclientTable.Last;
                      CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
                      end else
                          begin
                           CodeRF:= 1;
                          end;

                      Mainform.Regclienttable.Append;
                      MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
                      MainForm.RegclientTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
                      MainForm.RegclientTable.FieldValues['nom_rc']:= BonLivGestionF.NumBonLivGEdt.Caption;
                      MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                      MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                      MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                      MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.RegclientTable.FieldValues['obser_rc']:= BonLivGestionF.ObserBonLivGMem.Text;
                      MainForm.RegclientTable.FieldValues['num_cheque_rc']:= BonLivGestionF.NChequeBonLivGCbx.Text;
                      MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 2;
                      MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                      begin
                       MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
                      end;
                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                      begin
                       MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                         OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
                      begin
                       MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                      begin
                       MainForm.RegclientTable.FieldValues['code_mdpai']:=4 ;
                      end;

                      MainForm.RegclientTable.Post;
                      MainForm.RegclientTable.Refresh;

                    end;

                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ' ;
                MainForm.RegclientTable.Active:=True;
                MainForm.RegclientTable.EnableControls;

              end;

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------
        end;

        //-------- this is to set the credit for the client -----------------
          if  MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1 then
          begin
          MainForm.SQLQuery.Edit;
          MainForm.SQLQuery.FieldByName('credit_c').AsCurrency:=
          ((StrToCurr(StringReplace(BonLivGestionF.BonLivGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;
          end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//          MainForm.SQLQuery.Active:=True;
//          MainForm.SQLQuery.EnableControls;

                    //--- this is for adding the money to the caisse----
         begin
             if BonLivGestionF.Tag = 0 then
              begin
                MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                begin
                MainForm.Opt_cas_bnk_CaisseTable.Last;
                CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                end else
                    begin
                     CodeOCB:= 1;
                    end;
                  MainForm.Opt_cas_bnk_CaisseTable.Append;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Règlement  Pièce N° '+BonLivGestionF.NumBonLivGEdt.Caption;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonLivGestionF.ClientBonLivGCbx.Text;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

                   if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                  end;
                   if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                     OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                  end;

                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.Opt_cas_bnk_CaisseTable.Post;
                  MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                  MainForm.Opt_cas_bnk_BankTable.Refresh;

                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                  MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

              end else
                  begin
                    MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvliv ='+IntToStr(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger) ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                    if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                     begin

                      MainForm.Opt_cas_bnk_CaisseTable.Edit;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Règlement  Pièce N° '+BonLivGestionF.NumBonLivGEdt.Caption;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonLivGestionF.ClientBonLivGCbx.Text;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
              //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                      end;
                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                         OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                      end;

                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;
                       end else
                     begin
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                        if  NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                      begin
                      MainForm.Opt_cas_bnk_CaisseTable.Last;
                      CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                      end else
                          begin
                           CodeOCB:= 1;
                          end;

                      MainForm.Opt_cas_bnk_CaisseTable.Append;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Règlement  Pièce N° '+BonLivGestionF.NumBonLivGEdt.Caption;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonLivGestionF.ClientBonLivGCbx.Text;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
              //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                      end;
                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                         OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='À terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                      end;

                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;
                     end;
                      MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                      MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                      MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                      MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                      MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
                  end;

         end;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
          MainForm.Mode_paiementTable.Active:=True;
          MainForm.Mode_paiementTable.EnableControls;

          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
          MainForm.CompteTable.Active:=True;
          MainForm.CompteTable.EnableControls;
       end;
   end else
      begin
      try
        VerVersementSEdt.BorderStyle := bsNone;
        VerVersementSEdt.StyleElements := [];
        RequiredVerVersementSlbl.Visible := true;
        VerVersementSErrorP.Visible := true;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
          SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        OKVersementSBtn.Enabled := false;
        OKVersementSBtn.ImageIndex := 18;
      finally
        VerVersementSEdt.SetFocus;
      end;
     end;

  end;

  //--------- this tag = 3 is for validating a comptoir-------------------

 if FSplashVersement.Tag = 3 then
  begin
   if VerVersementSEdt.Text<>'' then
     begin
    BonCtrGestionF.BonCtrRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);

     BonCtrGestionF.BonCtrRenduLbl.Caption:=  FloatToStrF((
              (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
             -
              (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

//     BonCtrGestionF.BonCtrGClientNEWCredit.Caption := ResteVersementSLbl.Caption;

//--- this is for adding to the priduit
      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p,tva_p FROM bonv_ctr_list WHERE code_bvctr =  '
                                                 + IntToStr (MainForm.Bonv_ctrTable.FieldValues['code_bvctr'])
                                                 + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p,tva_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_ctrTable.Refresh;
           DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the bon ctrration fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(BonCtrGestionF.ClientBonCtrGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          if BonCtrGestionF.Tag = 0 then
          begin
           MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
           MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:=TimeOf(Now);
          end;
          MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').AsCurrency:= StrToCurr(StringReplace(BonCtrGestionF.BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonCtrGestionF.RemiseBonCtrGEdt.Text<>'' then
          begin
          MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrGestionF.RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency:=0;
                   end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrGestionF.BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('marge_bvctr').AsCurrency:=StrToCurr(StringReplace(BonCtrGestionF.BonCTRTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean:= True;
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;

          MainForm.Bonv_ctrTable.Post;

                 DisableBonCtr;

                 BonCtrGestionF.Timer1.Enabled:=False;
                 BonCtrGestionF.Label20.Visible:=False;

        BonCtrGestionF.FormStyle:=fsStayOnTop;

           if BonCtrGestionF.APrintBVCtrBonCtrGSlider.SliderOn = True then
           begin
              BonCtrGestionF.PrintTicketBVCtrBonCtrGBtnClick(Sender);
           end;
           AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
           FSplashVersement.Release;

           sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 )
           OR (VerVersementSEdt.Enabled = False) Then
        begin
           if BonCtrGestionF.Tag = 0 then
          begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
            MainForm.RegclientTable.Last;
            CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegclientTable.Append;
            MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
            MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
            MainForm.RegclientTable.FieldValues['nom_rc']:= BonCtrGestionF.NumBonCtrGEdt.Caption;
            MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
            MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
            MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;
            MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) ;
                MainForm.RegclientTable.Active:=True;
                if NOT(MainForm.RegclientTable.IsEmpty) then
                begin

                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                  MainForm.RegclientTable.FieldValues['nom_rc']:= BonCtrGestionF.NumBonCtrGEdt.Caption;
                  MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                  MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                  MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;
                  MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  MainForm.RegclientTable.Post;
                  MainForm.RegclientTable.Refresh;

                end  else
                     begin
                        MainForm.RegclientTable.Active:=false;
                        MainForm.RegclientTable.SQL.Clear;
                        MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ' ;
                        MainForm.RegclientTable.Active:=True;

                        if NOT (MainForm.RegclientTable.IsEmpty) then
                        begin
                        MainForm.RegclientTable.Last;
                        CodeRF:= MainForm.RegclientTable.FieldValues['code_rc'] + 1;
                        end else
                            begin
                             CodeRF:= 1;
                            end;

                        MainForm.RegclientTable.Append;
                        MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
                        MainForm.RegclientTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
                        MainForm.RegclientTable.FieldValues['nom_rc']:= BonCtrGestionF.NumBonCtrGEdt.Caption;
                        MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                        MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                        MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                        MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                        MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                        MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 4;
                        MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                        MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                        MainForm.RegclientTable.Post;
                        MainForm.RegclientTable.Refresh;
                     end;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ' ;
                MainForm.RegclientTable.Active:=True;
                MainForm.RegclientTable.EnableControls;
              end;
        end;
     //-----------------------------------------------------------------------------------------------------------------------------------------------------------
                //-------- this is to set the credit for the client -----------------
          if  MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1 then
          begin
          MainForm.SQLQuery.Edit;
          MainForm.SQLQuery.FieldByName('credit_c').AsCurrency:= (-1) *
          ((StrToCurr(StringReplace(BonCtrGestionF.BonCtrRenduLbl.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;
          end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//          MainForm.SQLQuery.Active:=True;
//          MainForm.SQLQuery.EnableControls;

                              //--- this is for adding the money to the caisse----
         begin

            if BonCtrGestionF.Tag=0 then
              begin
                MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                begin
                MainForm.Opt_cas_bnk_CaisseTable.Last;
                CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                end else
                    begin
                     CodeOCB:= 1;
                    end;

                  MainForm.Opt_cas_bnk_CaisseTable.Append;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+BonCtrGestionF.NumBonCtrGEdt.Caption;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonCtrGestionF.ClientBonCtrGCbx.Text;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];;

                  MainForm.Opt_cas_bnk_CaisseTable.Post;
                  MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                  MainForm.Opt_cas_bnk_BankTable.Refresh;

                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                  MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

              end else
                  begin
                    MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']) ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                    if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                    begin

                    MainForm.Opt_cas_bnk_CaisseTable.Edit;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+BonCtrGestionF.NumBonCtrGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonCtrGestionF.ClientBonCtrGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;

                    end  else
                         begin
                          MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                          MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                          MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                          MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                          if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                          begin
                          MainForm.Opt_cas_bnk_CaisseTable.Last;
                          CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
                          end else
                              begin
                               CodeOCB:= 1;
                              end;

                            MainForm.Opt_cas_bnk_CaisseTable.Append;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Vente au Comptoir N° '+BonCtrGestionF.NumBonCtrGEdt.Caption;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= BonCtrGestionF.ClientBonCtrGCbx.Text;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption) ;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];;

                            MainForm.Opt_cas_bnk_CaisseTable.Post;
                            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                            MainForm.Opt_cas_bnk_BankTable.Refresh;


                            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                         end;

                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                    MainForm.Opt_cas_bnk_CaisseTable.EnableControls
                  end;
         end;
       end;

   end else
      begin
      try
        VerVersementSEdt.BorderStyle := bsNone;
        VerVersementSEdt.StyleElements := [];
        RequiredVerVersementSlbl.Visible := true;
        VerVersementSErrorP.Visible := true;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
          SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        OKVersementSBtn.Enabled := false;
        OKVersementSBtn.ImageIndex := 18;
      finally
        VerVersementSEdt.SetFocus;
      end;
     end;
  end;



end;

procedure TFSplashVersement.CancelVersementSBtnClick(Sender: TObject);
begin
   if FSplashVersement.Tag = 3 then
   begin
    BonCtrGestionF.FormStyle:=fsStayOnTop;
   end;

    AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashVersement.Release;
end;

procedure TFSplashVersement.VerVersementSEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
  F = ['.'];
begin

  if not(Key in N) then
  begin
     key := #0;
  end;
  if (Key in F) then
  begin

    key :=  #44;

  end;
end;

procedure TFSplashVersement.VerVersementSEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_RETURN then
SelectNext(ActiveControl as TWinControl, True,True );
end;

procedure TFSplashVersement.VerVersementSEdtChange(Sender: TObject);
var TOTAL,VER,ResteVersement : Currency;
begin
  if FSplashVersement.Tag <> 3 then
  begin
    if VerVersementSEdt.Text<>'' then
     begin
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      VerVersementSEdt.BorderStyle:= bsSingle;
      VerVersementSEdt.StyleElements:= [seClient,seBorder];
      RequiredVerVersementSlbl.Visible:= False;
      VerVersementSErrorP.Visible:= False;
      TOTAL:=StrToFloat(StringReplace(TotalVersementSLbl.Caption, #32, '', [rfReplaceAll]));
      VER  :=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

      if VerVersementSEdt.Text<>'' then
      begin
         ResteVersement:=  (Total - VER) ;
         if ResteVersement <= 0 then
         begin
          ResteVersementSLbl.Font.Color:= $001B1A1C;
         end else
             begin
                ResteVersementSLbl.Font.Color:= $004735F9;
             end;
         ResteVersementSLbl.Caption := FloatToStrF(ResteVersement,ffNumber,14,2);
      end else
          begin
           ResteVersementSLbl.Caption:=FloatToStrF(TOTAL,ffNumber,14,2);
          end;

     end else
           ResteVersementSLbl.Caption:=FloatToStrF((StrToFloat(StringReplace(TotalVersementSLbl.Caption, #32, '', [rfReplaceAll]))),ffNumber,14,2);

  end;

 if FSplashVersement.Tag = 3 then
   begin

    if VerVersementSEdt.Text<>'' then
     begin
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      VerVersementSEdt.BorderStyle:= bsSingle;
      VerVersementSEdt.StyleElements:= [seClient,seBorder];
      RequiredVerVersementSlbl.Visible:= False;
      VerVersementSErrorP.Visible:= False;
      TOTAL:=StrToFloat(StringReplace(TotalVersementSLbl.Caption, #32, '', [rfReplaceAll]));
      VER  :=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

      if VerVersementSEdt.Text<>'' then
      begin
        if VER > Total then
        begin
         ResteVersement:=  (VER - Total) ;
         end else
             begin
               ResteVersement:= 0;
             end;
//         if ResteVersement <= 0 then
//         begin
//          ResteVersementSLbl.Font.Color:= $001B1A1C;
//         end else
//             begin
//                ResteVersementSLbl.Font.Color:= $004735F9;
//             end;
         ResteVersementSLbl.Caption := FloatToStrF(ResteVersement,ffNumber,14,2);
      end else
          begin
           ResteVersementSLbl.Caption:=FloatToStrF(TOTAL,ffNumber,14,2);
          end;

     end;// else
         //  ResteVersementSLbl.Caption:=FloatToStrF((StrToFloat(StringReplace(TotalVersementSLbl.Caption, #32, '', [rfReplaceAll]))),ffNumber,14,2);
   end;
end;

procedure TFSplashVersement.VerVersementSEdtExit(Sender: TObject);
var
Versement: Currency;
begin
    if VerVersementSEdt.Text<>'' then
    begin
    Versement:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
    VerVersementSEdt.Text := FloatToStrF(Versement,ffNumber,14,2);
    end;
end;

procedure TFSplashVersement.VerVersementSEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
VerVersementSEdt.Text := StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]);
VerVersementSEdt.SelectAll;
end;

procedure TFSplashVersement.RegleVersementSGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if RegleVersementSGSlider.SliderOn = False then
 begin
    VerVersementSEdt.Text:=
     FloatToStrF((StrToFloat(StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll]))),ffNumber,14,2);
 end
  else
  begin
    VerVersementSEdt.Text:= '';//CurrToStrF(0,ffNumber,2)
  end;
end;



procedure TFSplashVersement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if FSplashVersement.Tag = 3 then
   begin
    BonCtrGestionF.FormStyle:=fsStayOnTop;
   end;
end;

end.

