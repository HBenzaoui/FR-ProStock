unit USplashVersement;

interface

uses
  Winapi.Windows,System.DateUtils,System.IniFiles,
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
    Label29: TLabel;
    Edit1: TEdit;
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
    procedure AdvSmoothTouchKeyBoard1KeyClick(Sender: TObject; Index: Integer);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
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
    procedure DisableBonComA;
    procedure DisableBonComV;
    procedure DisableBonRetV;

  end;

var
  FSplashVersement: TFSplashVersement;

implementation

uses System.Contnrs,
  UMainF, UClientGestion, UBonRecGestion, UBonLivGestion, UBonFacVGestion,
  UBonFacAGestion, UComptoir, UDataModule, UBonFacPGestion, UBonComAGestion, UBonComVGestion, UBonRetVGestion;

{$R *.dfm}


 var
    gGrayForms: TComponentList;

procedure GrayFormsVer;
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

procedure NormalFormsVer;
begin
  FreeAndNil(gGrayForms);
end;


procedure TFSplashVersement.FormCreate(Sender: TObject);
begin
 GrayFormsVer  ;
 end;

procedure TFSplashVersement.FormDestroy(Sender: TObject);
begin
  NormalFormsVer;
end;


procedure TFSplashVersement.DisableBonComV;
begin


          BonComVGestionF.DateBonComGD.Enabled:= False;
          BonComVGestionF.ObserBonComGMem.Enabled:= False;
          BonComVGestionF.ClientBonComGCbx.Enabled:= False;
          BonComVGestionF.ListClientBonComGBtn.Enabled:= False;
          BonComVGestionF.ListClientBonComGBtn.ImageIndex:= 61;
          BonComVGestionF.AddClientBonComGBtn.Enabled:= False ; //
          BonComVGestionF.AddClientBonComGBtn.ImageIndex:=35;//10 fo A
          BonComVGestionF.ModePaieBonComGCbx.Enabled:= False;
          BonComVGestionF.AddModePaieBonComGBtn.Enabled:= False ;
          BonComVGestionF.AddModePaieBonComGBtn.ImageIndex:=35;//10 fo A
          BonComVGestionF.CompteBonComGCbx.Enabled:= False;
          BonComVGestionF.AddCompteBonComGBtn.Enabled:= False ;
          BonComVGestionF.AddCompteBonComGBtn.ImageIndex:=35;//10 fo A
          BonComVGestionF.NChequeBonComGCbx.Enabled:= False;
          BonComVGestionF.ProduitBonComGCbx.Enabled:= False;
          BonComVGestionF.EnterAddProduitBonComGBtn.Enabled:= False;
          BonComVGestionF.EnterAddProduitBonComGBtn.ImageIndex:=40;//15 fo A
          BonComVGestionF.ListAddProduitBonComGBtn.Enabled:= False;
          BonComVGestionF.ListAddProduitBonComGBtn.ImageIndex:=41;//13 fo A
          BonComVGestionF.NewAddProduitBonComGBtn.Enabled:= False;
          BonComVGestionF.NewAddProduitBonComGBtn.ImageIndex:=28;//4 fo A
          BonComVGestionF.DeleteProduitBonComGBtn.Enabled:= False;
          BonComVGestionF.DeleteProduitBonComGBtn.ImageIndex:=36;//14 fo A
          BonComVGestionF.ClearProduitBonComGBtn.Enabled:= False;
          BonComVGestionF.ClearProduitBonComGBtn.ImageIndex:=39;//16 fo A
//          BonComVGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonComVGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonComVGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonComVGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonComVGestionF.ProduitsListDBGridEh.Options:=
          BonComVGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonComVGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonComVGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonComVGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonComVGestionF.RemisePerctageBonComGEdt.Enabled:=False;//True for A
          BonComVGestionF.RemiseBonComGEdt.Enabled:=False;//True for A
          BonComVGestionF.RemiseTypeBonComGCbx.Enabled:= False;//True for A;

          BonComVGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonComVGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonComVGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonComVGestionF.ValiderBVComBonComGImg.ImageIndex:=0;//1 fo A
          BonComVGestionF.ValiderBVComBonComGLbl.Color:=$004AC38B;// $007374FF for A
          BonComVGestionF.ValiderBVComBonComGLbl.Font.Color:= clBlack;// clWhite for A
          BonComVGestionF.ValiderBVComBonComGLbl.Caption:='Ce bon est Valid�';// 'Ce bon n''est pas encore Valid�' for A

          BonComVGestionF.AddBVComBonComGBtn.Enabled:= True;
          BonComVGestionF.AddBVComBonComGBtn.ImageIndex:=4;// 28 For A
          BonComVGestionF.EditBVComBonComGBtn.Enabled:= True;
          BonComVGestionF.EditBVComBonComGBtn.ImageIndex:=5; // 29 For A
          BonComVGestionF.ValiderBVComBonComGBtn.ImageIndex:=30; // 12 For A
          BonComVGestionF.ValiderBVComBonComGBtn.Enabled:= False;
end;

procedure TFSplashVersement.DisableBonRetV;
begin


          BonRetVGestionF.DateBonRetVGD.Enabled:= False;
          BonRetVGestionF.ObserBonRetVGMem.Enabled:= False;
          BonRetVGestionF.ClientBonRetVGCbx.Enabled:= False;
          BonRetVGestionF.ListClientBonRetGBtn.Enabled:= False;
          BonRetVGestionF.ListClientBonRetGBtn.ImageIndex:= 61;
          BonRetVGestionF.AddClientBonRetGBtn.Enabled:= False ; //
          BonRetVGestionF.AddClientBonRetGBtn.ImageIndex:=35;//10 fo A
          BonRetVGestionF.ModePaieBonRetVGCbx.Enabled:= False;
          BonRetVGestionF.AddModePaieBonRetGBtn.Enabled:= False ;
          BonRetVGestionF.AddModePaieBonRetGBtn.ImageIndex:=35;//10 fo A
          BonRetVGestionF.CompteBonRetVGCbx.Enabled:= False;
          BonRetVGestionF.AddCompteBonRetGBtn.Enabled:= False ;
          BonRetVGestionF.AddCompteBonRetGBtn.ImageIndex:=35;//10 fo A
          BonRetVGestionF.NChequeBonRetVGCbx.Enabled:= False;
          BonRetVGestionF.ProduitBonRetGCbx.Enabled:= False;
          BonRetVGestionF.EnterAddProduitBonRetGBtn.Enabled:= False;
          BonRetVGestionF.EnterAddProduitBonRetGBtn.ImageIndex:=40;//15 fo A
          BonRetVGestionF.ListAddProduitBonRetGBtn.Enabled:= False;
          BonRetVGestionF.ListAddProduitBonRetGBtn.ImageIndex:=41;//13 fo A
          BonRetVGestionF.NewAddProduitBonRetGBtn.Enabled:= False;
          BonRetVGestionF.NewAddProduitBonRetGBtn.ImageIndex:=28;//4 fo A
          BonRetVGestionF.DeleteProduitBonRetGBtn.Enabled:= False;
          BonRetVGestionF.DeleteProduitBonRetGBtn.ImageIndex:=36;//14 fo A
          BonRetVGestionF.ClearProduitBonRetGBtn.Enabled:= False;
          BonRetVGestionF.ClearProduitBonRetGBtn.ImageIndex:=39;//16 fo A
//          BonRetVGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonRetVGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonRetVGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonRetVGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonRetVGestionF.ProduitsListDBGridEh.Options:=
          BonRetVGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonRetVGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonRetVGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonRetVGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonRetVGestionF.RemisePerctageBonRetVGEdt.Enabled:=False;//True for A
          BonRetVGestionF.RemiseBonRetVGEdt.Enabled:=False;//True for A
          BonRetVGestionF.RemiseTypeBonRetGCbx.Enabled:= False;//True for A;

          BonRetVGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonRetVGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonRetVGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonRetVGestionF.ValiderBVRetBonRetGImg.ImageIndex:=0;//1 fo A
          BonRetVGestionF.ValiderBVRetBonRetGLbl.Color:=$004AC38B;// $007374FF for A
          BonRetVGestionF.ValiderBVRetBonRetGLbl.Font.Color:= clBlack;// clWhite for A
          BonRetVGestionF.ValiderBVRetBonRetGLbl.Caption:='Ce bon est Valid�';// 'Ce bon n''est pas encore Valid�' for A

          BonRetVGestionF.AddBVRetBonRetGBtn.Enabled:= True;
          BonRetVGestionF.AddBVRetBonRetGBtn.ImageIndex:=4;// 28 For A
          BonRetVGestionF.EditBVRetBonRetGBtn.Enabled:= True;
          BonRetVGestionF.EditBVRetBonRetGBtn.ImageIndex:=5; // 29 For A
          BonRetVGestionF.ValiderBVRetBonRetGBtn.ImageIndex:=30; // 12 For A
          BonRetVGestionF.ValiderBVRetBonRetGBtn.Enabled:= False;
end;



procedure TFSplashVersement.DisableBonComA;
begin


          BonComAGestionF.DateBonComGD.Enabled:= False;
          BonComAGestionF.ObserBonComGMem.Enabled:= False;
          BonComAGestionF.FournisseurBonComGCbx.Enabled:= False;
          BonComAGestionF.ListFourBonComGBtn.Enabled:= False;
          BonComAGestionF.ListFourBonComGBtn.ImageIndex:= 61;
          BonComAGestionF.AddFourBonComGBtn.Enabled:= False ; //
          BonComAGestionF.AddFourBonComGBtn.ImageIndex:=35;//10 fo A
          BonComAGestionF.ModePaieBonComGCbx.Enabled:= False;
          BonComAGestionF.AddModePaieBonComGBtn.Enabled:= False ;
          BonComAGestionF.AddModePaieBonComGBtn.ImageIndex:=35;//10 fo A
          BonComAGestionF.CompteBonComGCbx.Enabled:= False;
          BonComAGestionF.AddCompteBonComGBtn.Enabled:= False ;
          BonComAGestionF.AddCompteBonComGBtn.ImageIndex:=35;//10 fo A
          BonComAGestionF.NChequeBonComGCbx.Enabled:= False;
          BonComAGestionF.ProduitBonComGCbx.Enabled:= False;
          BonComAGestionF.EnterAddProduitBonComGBtn.Enabled:= False;
          BonComAGestionF.EnterAddProduitBonComGBtn.ImageIndex:=40;//15 fo A
          BonComAGestionF.ListAddProduitBonComGBtn.Enabled:= False;
          BonComAGestionF.ListAddProduitBonComGBtn.ImageIndex:=41;//13 fo A
          BonComAGestionF.NewAddProduitBonComGBtn.Enabled:= False;
          BonComAGestionF.NewAddProduitBonComGBtn.ImageIndex:=28;//4 fo A
          BonComAGestionF.DeleteProduitBonComGBtn.Enabled:= False;
          BonComAGestionF.DeleteProduitBonComGBtn.ImageIndex:=36;//14 fo A
          BonComAGestionF.ClearProduitBonComGBtn.Enabled:= False;
          BonComAGestionF.ClearProduitBonComGBtn.ImageIndex:=39;//16 fo A
//          BonComAGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
          BonComAGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=False;//True for A
          BonComAGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=False;//True for A
          BonComAGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
          BonComAGestionF.ProduitsListDBGridEh.Options:=
          BonComAGestionF.ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
          BonComAGestionF.ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
          BonComAGestionF.ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
          BonComAGestionF.ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A
          BonComAGestionF.RemisePerctageBonComGEdt.Enabled:=False;//True for A
          BonComAGestionF.RemiseBonComGEdt.Enabled:=False;//True for A
          BonComAGestionF.RemiseTypeBonComGCbx.Enabled:= False;//True for A;

          BonComAGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= False;//True for A
          BonComAGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonComAGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonComAGestionF.ValiderBAComBonComGImg.ImageIndex:=0;//1 fo A
          BonComAGestionF.ValiderBAComBonComGLbl.Color:=$004AC38B;// $007374FF for A
          BonComAGestionF.ValiderBAComBonComGLbl.Font.Color:= clBlack;// clWhite for A
          BonComAGestionF.ValiderBAComBonComGLbl.Caption:='Ce bon est Valid�';// 'Ce bon n''est pas encore Valid�' for A

          BonComAGestionF.AddBAComBonComGBtn.Enabled:= True;
          BonComAGestionF.AddBAComBonComGBtn.ImageIndex:=4;// 28 For A
          BonComAGestionF.EditBAComBonComGBtn.Enabled:= True;
          BonComAGestionF.EditBAComBonComGBtn.ImageIndex:=5; // 29 For A
          BonComAGestionF.ValiderBAComBonComGBtn.ImageIndex:=30; // 12 For A
          BonComAGestionF.ValiderBAComBonComGBtn.Enabled:= False;
end;

procedure TFSplashVersement.DisableBonCtr;
begin


          BonCtrGestionF.DateBonCtrGD.Enabled:= False;
//          BonCtrGestionF.ObserBonCtrGMem.Enabled:= False;
          BonCtrGestionF.ClientBonCtrGCbx.Enabled:= False;
          BonCtrGestionF.AddClientBonCtrGBtn.Enabled:= False ; //
          BonCtrGestionF.AddClientBonCtrGBtn.ImageIndex:=35;//10 fo A
          BonCtrGestionF.ListClientBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ListClientBonCtrGBtn.ImageIndex:= 60;


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
//          BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
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
          BonCtrGestionF.ValiderBVCtrBonCtrGLbl.Caption:='Ce bon est Valid�';// 'Ce bon n''est pas encore Valid�' for A


          BonCtrGestionF.AddBVCtrBonCtrGBtn.Enabled:= True;
          BonCtrGestionF.AddBVCtrBonCtrGBtn.ImageIndex:=7;// 8 For A
          BonCtrGestionF.EditBVCtrBonCtrGBtn.Enabled:= True;
          BonCtrGestionF.EditBVCtrBonCtrGBtn.ImageIndex:=9; // 10 For A
          BonCtrGestionF.ValiderBVCtrBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ValiderBVCtrBonCtrGBtn.ImageIndex:=12; // 11 For A
          BonCtrGestionF.ExValiderBVCtrBonCtrGBtn.Enabled:= False;
          BonCtrGestionF.ExValiderBVCtrBonCtrGBtn.ImageIndex:=14;//13 for D

          BonCtrGestionF.CameraBonCtrGBtn.Enabled:= False;

          // Disable Fav Panel
          BonCtrGestionF.FavList1Grd.Color:= $00EFE9E8;
          BonCtrGestionF.FavList2Grd.Color:= $00EFE9E8;
          BonCtrGestionF.FavList3Grd.Color:= $00EFE9E8;
          BonCtrGestionF.FavList4Grd.Color:= $00EFE9E8;
          BonCtrGestionF.FavList5Grd.Color:= $00EFE9E8;
          BonCtrGestionF.DisableFavBtns;
          BonCtrGestionF.FavProduitCTRPgControl.Enabled:= False;


end;

procedure TFSplashVersement.DisableBonFacA;
begin


          BonFacAGestionF.DateBonFacAGD.Enabled:= False;
          BonFacAGestionF.ObserBonFacAGMem.Enabled:= False;
          BonFacAGestionF.FourBonFacAGCbx.Enabled:= False;
          BonFacAGestionF.ListFourBonFacAGBtn.Enabled:= False;
          BonFacAGestionF.ListFourBonFacAGBtn.ImageIndex:= 61;
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
//          BonFacAGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
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
          BonFacAGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonFacAGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonFacAGestionF.ValiderBAFacBonFacAGImg.ImageIndex:=0;//1 fo A
          BonFacAGestionF.ValiderBAFacBonFacAGLbl.Color:=$004AC38B;// $007374FF for A
          BonFacAGestionF.ValiderBAFacBonFacAGLbl.Font.Color:= clBlack;// clWhite for A
          BonFacAGestionF.ValiderBAFacBonFacAGLbl.Caption:='Ce Facture est Valid�';// 'Ce bon n''est pas encore Valid�' for A



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
          BonRecGestionF.ListFourBonRecGBtn.Enabled:= False;
          BonRecGestionF.ListFourBonRecGBtn.ImageIndex:= 61;
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
          BonRecGestionF.SNumberProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.SNumberProduitBonRecGBtn.ImageIndex:=64;//63 fo A
          BonRecGestionF.DeleteProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.DeleteProduitBonRecGBtn.ImageIndex:=36;//14 fo A
          BonRecGestionF.ClearProduitBonRecGBtn.Enabled:= False;
          BonRecGestionF.ClearProduitBonRecGBtn.ImageIndex:=39;//16 fo A
//          BonRecGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
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
          BonRecGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonRecGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonRecGestionF.ValiderBARecBonRecGImg.ImageIndex:=0;//1 fo A
          BonRecGestionF.ValiderBARecBonRecGLbl.Color:=$004AC38B;// $007374FF for A
          BonRecGestionF.ValiderBARecBonRecGLbl.Font.Color:= clBlack;// clWhite for A
          BonRecGestionF.ValiderBARecBonRecGLbl.Caption:='Ce bon est Valid�';// 'Ce bon n''est pas encore Valid�' for A

          BonRecGestionF.AddBARecBonRecGBtn.Enabled:= True;
          BonRecGestionF.AddBARecBonRecGBtn.ImageIndex:=4;// 28 For A
          BonRecGestionF.EditBARecBonRecGBtn.Enabled:= True;
          BonRecGestionF.EditBARecBonRecGBtn.ImageIndex:=5; // 29 For A
          BonRecGestionF.ValiderBARecBonRecGBtn.ImageIndex:=30; // 12 For A
          BonRecGestionF.ValiderBARecBonRecGBtn.Enabled:= False;
end;



procedure TFSplashVersement.Edit1Change(Sender: TObject);
begin
       TotalVersementSLbl.Caption:= Edit1.Text;
end;

procedure TFSplashVersement.Edit1KeyPress(Sender: TObject; var Key: Char);
const
   F = ['+','-'];
   N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.','+','-', Char(VK_back)];
   V = ['.'];
begin


  if NOT(Key in N) then
  begin
     key := #0;
  end;

  if (Key in V) then
  begin
    if Edit1.Text <> '' then
    begin
     key :=  #44;
    end else
        begin
          key:=#0;
        end;
  end;

  if (Key = ',') AND (Pos(Key, (Edit1.Text)) > 0) Then
  begin
      Key := #0;
  end;

  if (Key In F) AND ( (Pos(#43, (Edit1.Text)) > 0) OR ( Pos(#45, (Edit1.Text)) > 0 ) ) Then
  begin

        if Key = #45 then
        begin
        Edit1.Text:= IntToStr( StrToInt(Edit1.Text) * -1 );
        end;

        Key := #0;
  end
   else
      if (Key In F) AND ( (Pos(#43, (Edit1.Text)) > 0) OR ( Pos(#45, (Edit1.Text)) > 0 )) Then
      begin
          Key := #0;

      end;


  if key = #13 then
  begin
    key:=#0;
  end;


end;

procedure TFSplashVersement.DisableBonLiv;
begin


          BonLivGestionF.DateBonLivGD.Enabled:= False;
          BonLivGestionF.ObserBonLivGMem.Enabled:= False;
          BonLivGestionF.ClientBonLivGCbx.Enabled:= False;
          BonLivGestionF.ListClientBonLivGBtn.Enabled:= False;
          BonLivGestionF.ListClientBonLivGBtn.ImageIndex:= 60;
          BonLivGestionF.AddClientBonLivGBtn.Enabled:= False ; 
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
          BonLivGestionF.SNumberProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.SNumberProduitBonLivGBtn.ImageIndex:=64;//63 fo A
          BonLivGestionF.DeleteProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.DeleteProduitBonLivGBtn.ImageIndex:=36;//14 fo A
          BonLivGestionF.ClearProduitBonLivGBtn.Enabled:= False;
          BonLivGestionF.ClearProduitBonLivGBtn.ImageIndex:=39;//16 fo A
//          BonLivGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
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
          BonLivGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonLivGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonLivGestionF.ValiderBVLivBonLivGImg.ImageIndex:=0;//1 fo A
          BonLivGestionF.ValiderBVLivBonLivGLbl.Color:=$004AC38B;// $007374FF for A
          BonLivGestionF.ValiderBVLivBonLivGLbl.Font.Color:= clBlack;// clWhite for A
          BonLivGestionF.ValiderBVLivBonLivGLbl.Caption:='Ce bon est Valid�';// 'Ce bon n''est pas encore Valid�' for A

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
          BonFacVGestionF.ListClientBonFacVGBtn.Enabled:= False;
          BonFacVGestionF.ListClientBonFacVGBtn.ImageIndex:= 60;
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
//          BonFacVGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
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
          BonFacVGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonFacVGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonFacVGestionF.ValiderBVFacBonFacVGImg.ImageIndex:=0;//1 fo A
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Color:=$004AC38B;// $007374FF for A
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Font.Color:= clBlack;// clWhite for A
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Caption:='Ce Facture est Valid�';// 'Ce bon n''est pas encore Valid�' for A

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
          BonFacPGestionF.ListClientBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.ListClientBonFacVGBtn.ImageIndex:= 60;
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
//          BonFacPGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;//EnableControls    For A
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
          BonFacPGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= False;//True for A                                   Ce bon n'est pas encore valid�
          BonFacPGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= False;//True for A

          BonFacPGestionF.ValiderBVFacBonFacVGImg.ImageIndex:=0;//1 fo A
          BonFacPGestionF.ValiderBVFacBonFacVGLbl.Color:=$004AC38B;// $007374FF for A
          BonFacPGestionF.ValiderBVFacBonFacVGLbl.Font.Color:= clBlack;// clWhite for A
          BonFacPGestionF.ValiderBVFacBonFacVGLbl.Caption:='Ce Facture est Valid�';// 'Ce bon n''est pas encore Valid�' for A

          BonFacPGestionF.AddBVFacBonFacVGBtn.Enabled:= True;
          BonFacPGestionF.AddBVFacBonFacVGBtn.ImageIndex:=4;// 28 For A
          BonFacPGestionF.EditBVFacBonFacVGBtn.Enabled:= True;
          BonFacPGestionF.EditBVFacBonFacVGBtn.ImageIndex:=5; // 29 For A
          BonFacPGestionF.ValiderBVFacBonFacVGBtn.Enabled:= False;
          BonFacPGestionF.ValiderBVFacBonFacVGBtn.ImageIndex:=30; // 12 For A
end;



procedure AutoRegleBons;
begin


  FSplashVersement.RegleVersementSGSlider.SliderOn:= True;
  FSplashVersement.VerVersementSEdt.SetFocus;
  FSplashVersement.VerVersementSEdt.SelectAll;

end;

procedure TFSplashVersement.FormShow(Sender: TObject);
 var OLDCredit,TotalTTC: Double;
begin
//--------------------------- this tag = 0 is for valdating from bon recption --------
  if OKVersementSBtn.Tag = 0 then
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
        OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='� terme' )  then
     begin
      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
      VerVersementSEdt.Enabled:= False;
      RegleVersementSGSlider.Enabled:=False;
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      end;

    VerVersementSEdtChange(Sender);
    AutoRegleBons();
  end;


//--------------------------- this tag = 1 is for valdating from bon livrartion --------
  if OKVersementSBtn.Tag = 1 then
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
        OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' )  then
     begin
      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
      VerVersementSEdt.Enabled:= False;
      RegleVersementSGSlider.Enabled:=False;
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      end;

   VerVersementSEdtChange(Sender);
   AutoRegleBons();
   end;

   //--------------------------- this tag = 3 is for valdating from comptoir --------
  if OKVersementSBtn.Tag = 3 then
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


  end;


 //--------- this tag = 4 is for Changing QUT OR Addin DIVERS in comptoir-------------------
  if (OKVersementSBtn.Tag = 4) OR (OKVersementSBtn.Tag = 6) then
  begin
      Edit1.Visible:= True;
      Edit1.Left:= 310;
      Edit1.SetFocus;
  end;


 //--------- this tag = 5 is for Changing PRRIX in comptoir-------------------
  if OKVersementSBtn.Tag = 5 then
  begin
      Edit1.Visible:= True;
      Edit1.Left:= 310;
//      Edit1.Text:= FloatToStr(MainForm.Bonv_ctr_listTable.FieldByName('prixvd_p').AsFloat);
//      Edit1.SelectAll;
      TotalVersementSLbl.Caption:= FloatToStr(MainForm.Bonv_ctr_listTable.FieldByName('prixvd_p').AsFloat);
      Edit1.SetFocus;
  end;

  //--------------------------- this tag = 7 is for valdating from bon commande --------
  if OKVersementSBtn.Tag = 7 then
  begin

    BonComAGestionF.FournisseurBonComGCbx.StyleElements:= [seFont,seClient,seBorder];
    BonComAGestionF.RequiredFourGlbl.Visible:= False;
    BonComAGestionF.NameFourGErrorP.Visible:= False;

    OLDCredit:=StrToFloat(StringReplace(OldCreditVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalTTC:=StrToFloat(StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalVersementSLbl.Caption:= FloatToStrF((OLDCredit + TotalTTC),ffNumber,14,2);

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

     if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='a terme' )
        OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='� terme' )  then
     begin
      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
      VerVersementSEdt.Enabled:= False;
      RegleVersementSGSlider.Enabled:=False;
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      end;

    VerVersementSEdtChange(Sender);
    AutoRegleBons();

  end;


  //--------------------------- this tag = 9 is for valdating from commande client --------
  if OKVersementSBtn.Tag = 9 then
  begin

    BonComVGestionF.ClientBonComGCbx.StyleElements:= [seFont,seClient,seBorder];
    BonComVGestionF.RequiredClientGlbl.Visible:= False;
    BonComVGestionF.NameClientGErrorP.Visible:= False;

    OLDCredit:=StrToFloat(StringReplace(OldCreditVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalTTC:=StrToFloat(StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll]));
    TotalVersementSLbl.Caption:= FloatToStrF((OLDCredit + TotalTTC),ffNumber,14,2);

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

     if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
        OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' )  then
     begin
      VerVersementSEdt.Text:= FloatToStrF(0,ffNumber,14,2);
      VerVersementSEdt.Enabled:= False;
      RegleVersementSGSlider.Enabled:=False;
      OKVersementSBtn.Enabled := true;
      OKVersementSBtn.ImageIndex := 17;
      end;

    VerVersementSEdtChange(Sender);
    AutoRegleBons();

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

function CalcPMPonRec(CodeP: Integer): Double;
begin



   MainForm.Sqlquery3.Active:=False;
   MainForm.Sqlquery3.Sql.Clear;
   MainForm.Sqlquery3.Sql.Text:='SELECT prixht_p, qut_p ,qutini_p from produit WHERE code_p =' + IntToStr (CodeP) ;
   MainForm.Sqlquery3.Active:=True;

  Result:=
  ((MainForm.Sqlquery3.FieldValues['prixht_p'] * (MainForm.Sqlquery3.FieldValues['qut_p'] + MainForm.Sqlquery3.FieldValues['qutini_p']))
  +(MainForm.FDQuery2.FieldValues['prixht_p'] * MainForm.FDQuery2.FieldValues['qut_p']))
  / (MainForm.Sqlquery3.FieldValues['qut_p'] + MainForm.Sqlquery3.FieldValues['qutini_p'] + MainForm.FDQuery2.FieldValues['qut_p']);

   MainForm.Sqlquery3.Active:=False;
   MainForm.Sqlquery3.Sql.Clear;



end;

procedure TFSplashVersement.OKVersementSBtnClick(Sender: TObject);
var CodeOCB,CodeRF: Integer;

Ini: TIniFile;
PoleA,CaisseA : Boolean;
PORT,Msg2 : string;
Total: Integer;
PMP_P : Double;
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
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_barecl,code_p, qut_p, cond_p, prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,qutinstock_p FROM bona_rec_list WHERE code_barec =  '
                                                 + IntToStr (MainForm.Bona_recTable.FieldByName('code_barec').AsInteger)
                                                 + 'GROUP BY code_barecl, code_p, qut_p, cond_p,prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,qutinstock_p' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;

           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.FDQuery2.Active:=False;
            MainForm.FDQuery2.SQL.Clear;
            MainForm.FDQuery2.SQL.Text:='SELECT code_p,qut_p,prixht_p,pmp_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p FROM produit WHERE code_p = '
            +IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) ;
            MainForm.FDQuery2.Active:=True;



            MainForm.FDQuery2.Edit;
            MainForm.FDQuery2.FieldByName('qut_p').Value:= ((MainForm.SQLQuery.FieldByName('qut_p').Value) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger))
                                                         + MainForm.FDQuery2.FieldByName('qut_p').Value);
//            we dont change prix achter bcuz we use pmp
            MainForm.FDQuery2.FieldByName('prixht_p').Value:= MainForm.SQLQuery.FieldByName('prixht_p').Value;
            MainForm.FDQuery2.FieldByName('pmp_p').Value:=  CalcPMPonRec(MainForm.SQLQuery.FieldByName('code_p').AsInteger);
            MainForm.FDQuery2.FieldByName('tva_p').Value:= MainForm.SQLQuery.FieldByName('tva_p').Value;
            MainForm.FDQuery2.FieldByName('prixvd_p').Value:=  MainForm.SQLQuery.FieldByName('prixvd_p').Value;
            MainForm.FDQuery2.FieldByName('prixvr_p').Value:=  MainForm.SQLQuery.FieldByName('prixvr_p').Value;
            MainForm.FDQuery2.FieldByName('prixvg_p').Value:=  MainForm.SQLQuery.FieldByName('prixvg_p').Value;
            MainForm.FDQuery2.FieldByName('prixva_p').Value:=  MainForm.SQLQuery.FieldByName('prixva_p').Value;
            MainForm.FDQuery2.FieldByName('prixva2_p').Value:= MainForm.SQLQuery.FieldByName('prixva2_p').Value;
            MainForm.FDQuery2.Post;

             MainForm.SQLQuery.Edit;
             MainForm.SQLQuery.FieldByName('qutinstock_p').Value:=
             (MainForm.SQLQuery.FieldByName('qut_p').Value)*(MainForm.SQLQuery.FieldByName('cond_p').AsInteger);
             MainForm.SQLQuery.Post;  

            MainForm.SQLQuery.Next;
           end;

           MainForm.FDQuery2.Active:=False;
           MainForm.FDQuery2.SQL.Clear;
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
          MainForm.SQLQuery.SQL.Text:='Select code_f,credit_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr(BonRecGestionF.FournisseurBonRecGCbx.Text )+')'  ;
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
          MainForm.Bona_recTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
          MainForm.Bona_recTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime:= BonRecGestionF.DateBonRecGD.DateTime;
          MainForm.Bona_recTable.FieldByName('time_barec').AsDateTime:=TimeOf(Now);
          MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_recTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_recTable.FieldByName('obser_barec').AsWideString:= BonRecGestionF.ObserBonRecGMem.Text;
          MainForm.Bona_recTable.FieldByName('num_cheque_barec').AsString:= BonRecGestionF.NChequeBonRecGCbx.Text;
          MainForm.Bona_recTable.FieldByName('montht_barec').Value:= StrToFloat(StringReplace(BonRecGestionF.BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonRecGestionF.RemiseBonRecGEdt.Text<>'' then
          begin
          MainForm.Bona_recTable.FieldByName('remise_barec').Value:=StrToFloat(StringReplace(BonRecGestionF.RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_recTable.FieldByName('remise_barec').Value:=0;
                   end;

          MainForm.Bona_recTable.FieldByName('montver_barec').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('montttc_barec').Value:=StrToFloat(StringReplace(BonRecGestionF.BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean:= True;
          MainForm.Bona_recTable.FieldByName('bon_or_no_barec').AsBoolean:= True;

          if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
          begin
           MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger:=1 ;
          end;
           if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
          begin
           MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger:=2 ;
          end;
          if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
             OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) then
          begin
           MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger:=3 ;
          end;
          if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
          begin
           MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger:=4 ;
          end;

          MainForm.Bona_recTable.Post;
          MainForm.Bona_recTable.Refresh;
     //     MainForm.Bona_recTable.EnableControls;

    //-----------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then
        begin
          if BonRecGestionF.Tag = 0 then
          begin
             if NOT (MainForm.RegfournisseurTable.IsEmpty) then
            begin
            MainForm.RegfournisseurTable.Last;
            CodeRF:= MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegfournisseurTable.Append;
            MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger:= CodeRF;
            MainForm.RegfournisseurTable.FieldByName('code_barec').AsInteger:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= BonRecGestionF.NumBonRecGEdt.Caption;
            MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= DateOf(Today);
            MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
            MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= BonRecGestionF.ObserBonRecGMem.Text;
            MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= BonRecGestionF.NChequeBonRecGCbx.Text;
            MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 2;
            MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
            end;
             if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
            end;
            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
               OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
            end;
            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
            end;

            MainForm.RegfournisseurTable.Post;
            MainForm.RegfournisseurTable.Refresh;

          end else
              begin
                    MainForm.RegfournisseurTable.DisableControls;
                    MainForm.RegfournisseurTable.Active:=false;
                    MainForm.RegfournisseurTable.SQL.Clear;
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_barec ='+IntToStr(MainForm.Bona_recTable.FieldByName('code_barec').AsInteger);
                    MainForm.RegfournisseurTable.Active:=True;

                 if NOT (MainForm.RegfournisseurTable.IsEmpty) then
                  begin
                  MainForm.RegfournisseurTable.Edit;
                  MainForm.RegfournisseurTable.FieldByName('code_barec').AsInteger:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= BonRecGestionF.NumBonRecGEdt.Caption;
                  MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= BonRecGestionF.DateBonRecGD.DateTime;
                  MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
                  MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= BonRecGestionF.ObserBonRecGMem.Text;
                  MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= BonRecGestionF.NChequeBonRecGCbx.Text;
                  MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 2;
                  MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
                     OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;
                  if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
                            CodeRF:= MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger + 1;
                            end else
                                begin
                                 CodeRF:= 1;
                                end;

                            MainForm.RegfournisseurTable.Append;
                            MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger:= CodeRF;
                            MainForm.RegfournisseurTable.FieldByName('code_barec').AsInteger:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= BonRecGestionF.NumBonRecGEdt.Caption;
                            MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= BonRecGestionF.DateBonRecGD.DateTime;;
                            MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
                            MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= BonRecGestionF.ObserBonRecGMem.Text;
                            MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= BonRecGestionF.NChequeBonRecGCbx.Text;
                            MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 2;
                            MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                            MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='espece') then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
                            end;
                             if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='cheque') then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
                            end;
                            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='a terme' )
                               OR (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='à terme' ) then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
                            end;
                            if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
          MainForm.SQLQuery.FieldByName('credit_f').Value:=
          ((StrToFloat(StringReplace(BonRecGestionF.BonRecGFourNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;

          MainForm.FournisseurTable.Refresh;
//          BonRecGestionF.BonRecGFourNEWCredit.Caption:=FloatToStrF(0,ffNumber,14,2);

         //--- this is for adding the money to the caisse----
         begin
         if BonRecGestionF.Tag=0 then
           begin
            MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
            MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

            if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
            begin
            MainForm.Opt_cas_bnk_CaisseTable.Last;
            CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
            end else
                begin
                 CodeOCB:= 1;
                end;
              MainForm.Opt_cas_bnk_CaisseTable.Append;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonRecGestionF.DateBonRecGD.DateTime;;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pièce N° '+BonRecGestionF.NumBonRecGEdt.Caption;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonRecGestionF.FournisseurBonRecGCbx.Text;
      //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb']:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
             MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

               if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espece') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
              end;
               if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='cheque') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
              end;
              if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='a terme' )
                 OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
              end;
              if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
              end;

              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_barec').AsInteger:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
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
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_barec ='+IntToStr(MainForm.Bona_recTable.FieldByName('code_barec').AsInteger); ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) Then
                begin
                     MainForm.Opt_cas_bnk_CaisseTable.Edit;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonRecGestionF.DateBonRecGD.DateTime;;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pièce N° '+BonRecGestionF.NumBonRecGEdt.Caption;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonRecGestionF.FournisseurBonRecGCbx.Text;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                       if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='a terme' )
                         OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_barec').AsInteger:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;

                 end else
                   begin
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk ' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                      if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                      begin
                      MainForm.Opt_cas_bnk_CaisseTable.Last;
                      CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                      end else
                          begin
                           CodeOCB:= 1;
                          end;
                        MainForm.Opt_cas_bnk_CaisseTable.Append;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonRecGestionF.DateBonRecGD.DateTime;;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pièce N° '+BonRecGestionF.NumBonRecGEdt.Caption;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonRecGestionF.FournisseurBonRecGCbx.Text;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                         if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espèce') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='espece') then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                        end;
                         if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='chèque') OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='cheque') then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                        end;
                        if (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='a terme' )
                           OR (LowerCase(BonRecGestionF.ModePaieBonrecGCbx.Text)='à terme' ) then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                        end;
                        if (LowerCase(BonRecGestionF.ModePaieBonRecGCbx.Text)='virement' ) then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                        end;

                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_barec').AsInteger:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                        MainForm.Opt_cas_bnk_CaisseTable.Post;
                        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                        MainForm.Opt_cas_bnk_BankTable.Refresh;

                        MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                   end;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
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


       MainForm.ProduitTable.Refresh;

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
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvlivl,code_p,  qut_p, cond_p , prixvd_p,tva_p,code_barec FROM bonv_liv_list WHERE code_bvliv =  '
                                                 + IntToStr (MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger)
                                                 + 'GROUP BY code_bvlivl, code_p, qut_p, cond_p,prixvd_p,tva_p,code_barec ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
            MainForm.SQLQuery3.SQL.Text:='SELECT code_p,qut_p,tva_p FROM produit WHERE code_p = ' +IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) ;
            MainForm.SQLQuery3.Active:=True;
            MainForm.SQLQuery3.Edit;
            MainForm.SQLQuery3.FieldByName('qut_p').Value:= ( MainForm.SQLQuery3.FieldByName('qut_p').Value
                                                         - ((MainForm.SQLQuery.FieldByName('qut_p').Value) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger))));
            MainForm.SQLQuery3.FieldByName('tva_p').Value:= MainForm.SQLQuery.FieldByName('tva_p').Value;
            MainForm.SQLQuery3.Post;

            Mainform.FDQuery2.Active:=False;
            Mainform.FDQuery2.Sql.Clear;
            Mainform.FDQuery2.Sql.Text:='SELECT code_barec, code_p,qutinstock_p FROM bona_rec_list  WHERE code_barec =' +IntToStr(MainForm.SQLQuery.FieldByName('code_barec').AsInteger) ;
            MainForm.FDQuery2.Active:=True;
            if NOT (MainForm.FDQuery2.IsEmpty) then
            begin
              MainForm.FDQuery2.Edit;
              MainForm.FDQuery2.FieldByName('qutinstock_p').Value := ( MainForm.FDQuery2.FieldByName('qutinstock_p').Value
                                                              - ((MainForm.SQLQuery.FieldByName('qut_p').Value ) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger ))));
              MainForm.FDQuery2.Post;

            end;

            MainForm.SQLQuery.Next;
           end;


            //Here we validate the vente with the serial numbers related to this bon
            DataModuleF.SQLQuery3.Active:=false;
            DataModuleF.SQLQuery3.SQL.Clear;
            DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,sold_ns FROM n_series WHERE code_bvliv = '
            + IntToStr(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger);
            DataModuleF.SQLQuery3.Active:=True;

            if (NOT DataModuleF.SQLQuery3.IsEmpty) then
            begin
              DataModuleF.SQLQuery3.First;
              while NOT DataModuleF.SQLQuery3.Eof do
              begin
               DataModuleF.SQLQuery3.Edit;
               DataModuleF.SQLQuery3.FieldByName('sold_ns').AsBoolean:= true;
               DataModuleF.SQLQuery3.Post;

               DataModuleF.SQLQuery3.Next;
              end;


            end;
            MainForm.SQLQuery3.Active:=false;
            MainForm.SQLQuery3.SQL.Clear;


           MainForm.SQLQuery3.Active:=False;
           MainForm.SQLQuery3.SQL.Clear;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
            Mainform.FDQuery2.Active:=False;
            Mainform.FDQuery2.Sql.Clear;
           MainForm.Bonv_livTable.Refresh;
           DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the bon livration fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select code_c,credit_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(BonLivGestionF.ClientBonLivGCbx.Text )+')'  ;
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
          MainForm.Bonv_livTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
          MainForm.Bonv_livTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bonv_livTable.FieldByName('date_bvliv').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
          MainForm.Bonv_livTable.FieldByName('time_bvliv').AsDateTime:=TimeOf(Now);
          MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_livTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_livTable.FieldByName('obser_bvliv').AsWideString:= BonLivGestionF.ObserBonLivGMem.Text;
          MainForm.Bonv_livTable.FieldByName('num_cheque_bvliv').AsString:= BonLivGestionF.NChequeBonLivGCbx.Text;
          MainForm.Bonv_livTable.FieldByName('montaht_bvliv').Value:= StrToFloat(StringReplace(BonLivGestionF.BonLivTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montht_bvliv').Value:= StrToFloat(StringReplace(BonLivGestionF.BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonLivGestionF.RemiseBonLivGEdt.Text<>'' then
          begin
          MainForm.Bonv_livTable.FieldByName('remise_bvliv').Value:=StrToFloat(StringReplace(BonLivGestionF.RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_livTable.FieldByName('remise_bvliv').Value:=0;
                   end;

          MainForm.Bonv_livTable.FieldByName('montver_bvliv').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montttc_bvliv').Value:=StrToFloat(StringReplace(BonLivGestionF.BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('marge_bvliv').Value:=StrToFloat(StringReplace(BonLivGestionF.BonLivTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean:= True;

          if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
          begin
           MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:=1 ;
          end;
           if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
          begin
           MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:=2 ;
          end;
          if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
             OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
          begin
           MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:=3 ;
          end;
          if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
          begin
           MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:=4 ;
          end;

          MainForm.Bonv_livTable.Post;
          MainForm.Bonv_livTable.Refresh;
     //     MainForm.Bona_recTable.EnableControls;

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 )
             OR (VerVersementSEdt.Enabled = False) Then
        begin
          if BonLivGestionF.Tag = 0 then
          begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
            MainForm.RegclientTable.Last;
            CodeRF:= MainForm.RegclientTable.FieldByName('code_rc').AsInteger + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            Mainform.Regclienttable.Append;
            MainForm.RegclientTable.FieldByName('code_rc').AsInteger:= CodeRF;
            MainForm.RegclientTable.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
            MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonLivGestionF.NumBonLivGEdt.Caption;
            MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
            MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
            MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldByName('obser_rc').AsWideString:= BonLivGestionF.ObserBonLivGMem.Text;
            MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString:= BonLivGestionF.NChequeBonLivGCbx.Text;
            MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 2;
            MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').AsFloat:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=1 ;
            end;
             if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=2 ;
            end;
            if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
               OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=3 ;
            end;
            if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=4 ;
            end;

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvliv ='+IntToStr(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger) ;
                MainForm.RegclientTable.Active:=True;

                if NOT (MainForm.RegclientTable.IsEmpty) then
                begin
                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                  MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonLivGestionF.NumBonLivGEdt.Caption;
                  MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
                  MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
                  MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldByName('obser_rc').AsWideString:= BonLivGestionF.ObserBonLivGMem.Text;
                  MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString:= BonLivGestionF.NChequeBonLivGCbx.Text;
                  MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 2;
                  MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldByName('montver_rc').AsFloat:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                     OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
                      CodeRF:= MainForm.RegclientTable.FieldByName('code_rc').AsInteger + 1;
                      end else
                          begin
                           CodeRF:= 1;
                          end;

                      Mainform.Regclienttable.Append;
                      MainForm.RegclientTable.FieldByName('code_rc').AsInteger:= CodeRF;
                      MainForm.RegclientTable.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                      MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonLivGestionF.NumBonLivGEdt.Caption;
                      MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                      MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
                      MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
                      MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.RegclientTable.FieldByName('obser_rc').AsWideString:= BonLivGestionF.ObserBonLivGMem.Text;
                      MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString:= BonLivGestionF.NChequeBonLivGCbx.Text;
                      MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 2;
                      MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.RegclientTable.FieldByName('montver_rc').AsFloat:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                         OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
          MainForm.SQLQuery.FieldByName('credit_c').Value:=
          ((StrToFloat(StringReplace(BonLivGestionF.BonLivGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;
          end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//          MainForm.SQLQuery.Active:=True;
          MainForm.ClientTable.Refresh;

                    //--- this is for adding the money to the caisse----
         begin
             if BonLivGestionF.Tag = 0 then
              begin
                MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                begin
                MainForm.Opt_cas_bnk_CaisseTable.Last;
                CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                end else
                    begin
                     CodeOCB:= 1;
                    end;
                  MainForm.Opt_cas_bnk_CaisseTable.Append;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Règlement  Pièce N° '+BonLivGestionF.NumBonLivGEdt.Caption;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonLivGestionF.ClientBonLivGCbx.Text;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb']:= ;

                   if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                     OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;
                  if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                  end;

                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

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
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvliv ='+IntToStr(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger) ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                    if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                     begin

                      MainForm.Opt_cas_bnk_CaisseTable.Edit;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Règlement  Pièce N° '+BonLivGestionF.NumBonLivGEdt.Caption;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonLivGestionF.ClientBonLivGCbx.Text;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
              //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb']:= ;

                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                         OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;

                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;
                       end else
                     begin
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                        if  NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                      begin
                      MainForm.Opt_cas_bnk_CaisseTable.Last;
                      CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                      end else
                          begin
                           CodeOCB:= 1;
                          end;

                      MainForm.Opt_cas_bnk_CaisseTable.Append;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonLivGestionF.DateBonLivGD.DateTime;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Règlement  Pièce N° '+BonLivGestionF.NumBonLivGEdt.Caption;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonLivGestionF.ClientBonLivGCbx.Text;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
              //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb']:= ;

                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espèce') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='chèque') OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='à terme' ) OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='a terme' )
                         OR (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='� terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonLivGestionF.ModePaieBonLivGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;

                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;
                     end;
                      MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                      MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
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

       MainForm.ProduitTable.Refresh;

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

      //--- this is to show data on Pole displayer
        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
       PoleA:= Ini.ReadBool('', 'Afficheur client Active',PoleA);

       if PoleA = True then
       begin
         try
           PORT:= Ini.ReadString('',  'Afficheur client PORT', PORT);
           Msg2:= Ini.ReadString('',  'Afficheur client Msg2', Msg2);

          BonCtrGestionF.ComPort1.Port := PORT;// 'COM7';
          BonCtrGestionF.ComPort1.Events := [];
//          BonCtrGestionF.ComPort1.FlowControl.ControlDTR := dtrEnable;
//          BonCtrGestionF.ComPort1.FlowControl.ControlRTS := rtsEnable;
          BonCtrGestionF.ComPort1.Open; // open port
          BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
          BonCtrGestionF.ComPort1.WriteUnicodeString('                                        '#13#10);
         BonCtrGestionF. ComPort1.WriteUnicodeString(Msg2+#13#10); // send test command

          Total:= Ini.ReadInteger('', 'Afficheur client Fin msg', Total) ;
          if Total = 0 then
          begin
          BonCtrGestionF.ComPort1.WriteUnicodeString('Total: '+StringReplace(BonCtrGestionF.BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll])+ ' DA'#13#10);
          end else
          if Total = 1 then
          begin
          BonCtrGestionF.ComPort1.WriteUnicodeString('Rendu: '+StringReplace(BonCtrGestionF.BonCtrRenduLbl.Caption, #32, '', [rfReplaceAll])+ ' DA'#13#10);
          end else
              begin
                BonCtrGestionF.ComPort1.WriteUnicodeString('Total: '+StringReplace(BonCtrGestionF.BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll])+ ' DA'#13#10);
              end;


          BonCtrGestionF.ComPort1.Close;
          except
//           ShowMessage('Svp, brancher l''Afficheur Client ou d�sactiver le dans la configuration->utilites');
         end;
         end;

        Ini.Free;

        BonCtrGestionF.PoleDisplayerTimerimer.Interval:=10000;
        BonCtrGestionF.PoleDisplayerTimerimer.Enabled:= True;


//     BonCtrGestionF.BonCtrGClientNEWCredit.Caption := ResteVersementSLbl.Caption;

//--- this is for adding to the priduit
      begin
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvctrl,code_p,  qut_p, cond_p , prixvd_p,tva_p,code_barec FROM bonv_ctr_list WHERE code_bvctr =  '
                                                 + IntToStr (MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger)
                                                 + 'GROUP BY code_bvctrl, code_p, qut_p, cond_p,prixvd_p,tva_p,code_barec ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
            MainForm.SQLQuery3.SQL.Text:='SELECT code_p, qut_p, tva_p  FROM produit WHERE code_p = ' +IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) ;
            MainForm.SQLQuery3.Active:=True;

            if not MainForm.SQLQuery3.IsEmpty then
            begin
            MainForm.SQLQuery3.Edit;
            MainForm.SQLQuery3.FieldByName('qut_p').Value:= ( MainForm.SQLQuery3.FieldByName('qut_p').Value
                                                         - ((MainForm.SQLQuery.FieldByName('qut_p').Value) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger))));
            MainForm.SQLQuery3.FieldByName('tva_p').Value:= MainForm.SQLQuery.FieldByName('tva_p').Value;
            MainForm.SQLQuery3.Post;
            end;


            Mainform.FDQuery2.Active:=False;
            Mainform.FDQuery2.Sql.Clear;
            Mainform.FDQuery2.Sql.Text:='SELECT code_barec, code_p,qutinstock_p FROM bona_rec_list  WHERE code_barec =' +IntToStr(MainForm.SQLQuery.FieldByName('code_barec').AsInteger) ;
            MainForm.FDQuery2.Active:=True;
            if NOT (MainForm.FDQuery2.IsEmpty) then
            begin
              MainForm.FDQuery2.Edit;
              MainForm.FDQuery2.FieldByName('qutinstock_p').Value := ( MainForm.FDQuery2.FieldByName('qutinstock_p').Value
                                                              - ((MainForm.SQLQuery.FieldByName('qut_p').Value ) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger ))));
              MainForm.FDQuery2.Post;

            end;

            MainForm.SQLQuery.Next;
           end;

           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;

           MainForm.SQLQuery3.Active:=False;
           MainForm.SQLQuery3.SQL.Clear;

           MainForm.FDQuery2.Active:=False;
           MainForm.FDQuery2.SQL.Clear;

           MainForm.Bonv_ctrTable.Refresh;
           DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the bon ctrration fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select code_c,credit_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(BonCtrGestionF.ClientBonCtrGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Bonv_ctrTable.Edit;
          MainForm.Bonv_ctrTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
          MainForm.Bonv_ctrTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bonv_ctrTable.FieldByName('date_bvctr').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
          MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime:=TimeOf(Now);
          MainForm.Bonv_ctrTable.FieldByName('montaht_bvctr').Value := StrToFloat(StringReplace(BonCtrGestionF.BonCtrTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montht_bvctr').Value:= StrToFloat(StringReplace(BonCtrGestionF.BonCtrTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonCtrGestionF.RemiseBonCtrGEdt.Text<>'' then
          begin
          MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').Value:=StrToFloat(StringReplace(BonCtrGestionF.RemiseBonCtrGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').Value:=0;
                   end;

          MainForm.Bonv_ctrTable.FieldByName('montver_bvctr').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('montttc_bvctr').Value:=StrToFloat(StringReplace(BonCtrGestionF.BonCtrTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('marge_bvctr').Value:=StrToFloat(StringReplace(BonCtrGestionF.BonCTRTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean:= True;
          MainForm.Bonv_ctrTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption) ;

          MainForm.Bonv_ctrTable.Post;
          MainForm.Bonv_ctrTable.Refresh;

          BonCtrGestionF.HourBonCtrGD.Caption:= TimeToStr(MainForm.Bonv_ctrTable.FieldByName('time_bvctr').AsDateTime);

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
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 )
           OR (VerVersementSEdt.Enabled = False) Then
        begin
           if BonCtrGestionF.Tag = 0 then
          begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
            MainForm.RegclientTable.Last;
            CodeRF:= MainForm.RegclientTable.FieldByName('code_rc').AsInteger + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegclientTable.Append;
            MainForm.RegclientTable.FieldByName('code_rc').AsInteger:= CodeRF;
            MainForm.RegclientTable.FieldByName('code_bvctr').AsInteger:= MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
            MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonCtrGestionF.NumBonCtrGEdt.Caption;
            MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
            MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
            MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 4;
            MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger) ;
                MainForm.RegclientTable.Active:=True;
                if NOT(MainForm.RegclientTable.IsEmpty) then
                begin

                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldByName('code_bvctr').AsInteger:= MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
                  MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonCtrGestionF.NumBonCtrGEdt.Caption;
                  MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
                  MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
                  MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 4;
                  MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldByName('montver_rc').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

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
                        CodeRF:= MainForm.RegclientTable.FieldByName('code_rc').AsInteger + 1;
                        end else
                            begin
                             CodeRF:= 1;
                            end;

                        MainForm.RegclientTable.Append;
                        MainForm.RegclientTable.FieldByName('code_rc').AsInteger:= CodeRF;
                        MainForm.RegclientTable.FieldByName('code_bvctr').AsInteger:= MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;
                        MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonCtrGestionF.NumBonCtrGEdt.Caption;
                        MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                        MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
                        MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
                        MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                        MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                        MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 4;
                        MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                        MainForm.RegclientTable.FieldByName('montver_rc').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

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
          MainForm.SQLQuery.FieldByName('credit_c').Value:= (-1) *
          ((StrToFloat(StringReplace(BonCtrGestionF.BonCtrRenduLbl.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;
          end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//          MainForm.SQLQuery.Active:=True;
          MainForm.ClientTable.Refresh;

                              //--- this is for adding the money to the caisse----
         begin

            if BonCtrGestionF.Tag=0 then
              begin
                MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                begin
                MainForm.Opt_cas_bnk_CaisseTable.Last;
                CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                end else
                    begin
                     CodeOCB:= 1;
                    end;

                  MainForm.Opt_cas_bnk_CaisseTable.Append;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Vente au Comptoir N° '+BonCtrGestionF.NumBonCtrGEdt.Caption;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonCtrGestionF.ClientBonCtrGCbx.Text;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption) ;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvctr').AsInteger:= MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;

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
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvctr ='+IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger) ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                    if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                    begin

                    MainForm.Opt_cas_bnk_CaisseTable.Edit;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Vente au Comptoir N° '+BonCtrGestionF.NumBonCtrGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonCtrGestionF.ClientBonCtrGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption) ;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvctr').AsInteger:= MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;

                    end  else
                         begin
                          MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                          MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                          MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                          MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                          MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                          if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                          begin
                          MainForm.Opt_cas_bnk_CaisseTable.Last;
                          CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                          end else
                              begin
                               CodeOCB:= 1;
                              end;

                            MainForm.Opt_cas_bnk_CaisseTable.Append;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonCtrGestionF.DateBonCtrGD.DateTime;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Vente au Comptoir N° '+BonCtrGestionF.NumBonCtrGEdt.Caption;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonCtrGestionF.ClientBonCtrGCbx.Text;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption) ;
                            MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvctr').AsInteger:= MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger;

                            MainForm.Opt_cas_bnk_CaisseTable.Post;
                            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                            MainForm.Opt_cas_bnk_BankTable.Refresh;


                            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                            MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                         end;

                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
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

//--------- this tag = 4 is for Changing QUT in comptoir-------------------

 if FSplashVersement.Tag = 4 then
  begin

     MainForm.Bonv_ctr_listTable.Edit;
     MainForm.Bonv_ctr_listTable.FieldByName('qut_p').Value:= StrToFloat(StringReplace(TotalVersementSLbl.Caption, #32, '', [rfReplaceAll]));
     MainForm.Bonv_ctr_listTable.Post;
     MainForm.Bonv_ctr_listTable.Refresh;

     BonCtrGestionF.FormStyle:=fsStayOnTop;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
     FSplashVersement.Release;

     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  end;

//--------- this tag = 5 is for Changing PRIX in comptoir-------------------

 if FSplashVersement.Tag = 5 then
  begin

     MainForm.Bonv_ctr_listTable.Edit;
     MainForm.Bonv_ctr_listTable.FieldByName('prixvd_p').Value:= StrToFloat(StringReplace(TotalVersementSLbl.Caption, #32, '', [rfReplaceAll]));
     MainForm.Bonv_ctr_listTable.Post;
     MainForm.Bonv_ctr_listTable.Refresh;

     BonCtrGestionF.FormStyle:=fsStayOnTop;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
     FSplashVersement.Release;

     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
  end;

  //--------- this tag = 6 is for Adding DIVERS in comptoir-------------------

 if FSplashVersement.Tag = 6 then
  begin

    if (Pos('+', (Edit1.Text)) > 0) OR (Pos('-', (Edit1.Text)) > 0)then
    begin

     BonCtrGestionF.ProduitBonCtrGCbx.Text:= TotalVersementSLbl.Caption;

    end else
         begin
           BonCtrGestionF.ProduitBonCtrGCbx.Text:= '+' + TotalVersementSLbl.Caption;
         end;

     BonCtrGestionF.EnterAddProduitBonCtrGBtnClick(Sender);
     BonCtrGestionF.ProduitBonCtrGCbx.Text:='';


     BonCtrGestionF.FormStyle:=fsStayOnTop;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
     FSplashVersement.Release;

  end;


//--------- this tag = 8 is for validating a bon Commande-------------------

  if FSplashVersement.Tag = 8 then
  begin
     if VerVersementSEdt.Text<>'' then
     begin
     BonComAGestionF.BonComRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);
     BonComAGestionF.BonComResteLbl.Caption:=  FloatToStrF((
             (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
             -
             (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

     BonComAGestionF.BonComGFourNEWCredit.Caption := ResteVersementSLbl.Caption;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
     FSplashVersement.Release;
     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     DisableBonComA;

//--- this is for adding to the priduit
//--- we dont need to add in stock becuxz it just a bon commande 
      // begin
      // end;

//--- this is to set the bon command fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select code_f,credit_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr(BonComAGestionF.FournisseurBonComGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(BonComAGestionF.ModePaieBonComGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(BonComAGestionF.CompteBonComGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

     //     DataModuleF.Bona_comTable.DisableControls;
          DataModuleF.Bona_comTable.Edit;
          DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
          DataModuleF.Bona_comTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
          DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime:= BonComAGestionF.DateBonComGD.DateTime;
          DataModuleF.Bona_comTable.FieldByName('time_bacom').AsDateTime:=TimeOf(Now);
          DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          DataModuleF.Bona_comTable.FieldByName('obser_bacom').AsWideString:= BonComAGestionF.ObserBonComGMem.Text;
          DataModuleF.Bona_comTable.FieldByName('num_cheque_bacom').AsString:= BonComAGestionF.NChequeBonComGCbx.Text;
          DataModuleF.Bona_comTable.FieldByName('montht_bacom').Value:= StrToFloat(StringReplace(BonComAGestionF.BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonComAGestionF.RemiseBonComGEdt.Text<>'' then
          begin
          DataModuleF.Bona_comTable.FieldByName('remise_bacom').Value:=StrToFloat(StringReplace(BonComAGestionF.RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    DataModuleF.Bona_comTable.FieldByName('remise_bacom').Value:=0;
                   end;

          DataModuleF.Bona_comTable.FieldByName('montver_bacom').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          DataModuleF.Bona_comTable.FieldByName('montttc_bacom').Value:=StrToFloat(StringReplace(BonComAGestionF.BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean:= True;
          DataModuleF.Bona_comTable.FieldByName('bon_or_no_bacom').AsBoolean:= True;

          if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espece') then
          begin
           DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:=1 ;
          end;
           if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='cheque') then
          begin
           DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:=2 ;
          end;
          if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='a terme' )
             OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
          begin
           DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:=3 ;
          end;
          if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
          begin
           DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:=4 ;
          end;

          DataModuleF.Bona_comTable.Post;
          DataModuleF.Bona_comTable.Refresh;
     //     DataModuleF.Bona_comTable.EnableControls;

    //-----------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then
        begin
          if BonComAGestionF.Tag = 0 then
          begin
             if NOT (MainForm.RegfournisseurTable.IsEmpty) then
            begin
            MainForm.RegfournisseurTable.Last;
            CodeRF:= MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegfournisseurTable.Append;
            MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger:= CodeRF;
            MainForm.RegfournisseurTable.FieldByName('code_bacom').AsInteger:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= BonComAGestionF.NumBonComGEdt.Caption;
            MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= DateOf(Today);
            MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
            MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= BonComAGestionF.ObserBonComGMem.Text;
            MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= BonComAGestionF.NChequeBonComGCbx.Text;
            MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 5;
            MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espece') then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
            end;
             if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='cheque') then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
            end;
            if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='a terme' )
               OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
            end;
            if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
            end;

            MainForm.RegfournisseurTable.Post;
            MainForm.RegfournisseurTable.Refresh;

          end else
              begin
                    MainForm.RegfournisseurTable.DisableControls;
                    MainForm.RegfournisseurTable.Active:=false;
                    MainForm.RegfournisseurTable.SQL.Clear;
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_bacom ='+IntToStr(DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger);
                    MainForm.RegfournisseurTable.Active:=True;

                 if NOT (MainForm.RegfournisseurTable.IsEmpty) then
                  begin
                  MainForm.RegfournisseurTable.Edit;
                  MainForm.RegfournisseurTable.FieldByName('code_bacom').AsInteger:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= BonComAGestionF.NumBonComGEdt.Caption;
                  MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= BonComAGestionF.DateBonComGD.DateTime;
                  MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
                  MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= BonComAGestionF.ObserBonComGMem.Text;
                  MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= BonComAGestionF.NChequeBonComGCbx.Text;
                  MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 5;
                  MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espece') then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='cheque') then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='a terme' )
                     OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;
                  if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
                            CodeRF:= MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger + 1;
                            end else
                                begin
                                 CodeRF:= 1;
                                end;

                            MainForm.RegfournisseurTable.Append;
                            MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger:= CodeRF;
                            MainForm.RegfournisseurTable.FieldByName('code_bacom').AsInteger:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= BonComAGestionF.NumBonComGEdt.Caption;
                            MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= BonComAGestionF.DateBonComGD.DateTime;;
                            MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
                            MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                            MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= BonComAGestionF.ObserBonComGMem.Text;
                            MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= BonComAGestionF.NChequeBonComGCbx.Text;
                            MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 5;
                            MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                            MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                            if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='espece') then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
                            end;
                             if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='cheque') then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
                            end;
                            if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='a terme' )
                               OR (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
                            end;
                            if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                            begin
                             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
          MainForm.SQLQuery.FieldByName('credit_f').Value:=
          ((StrToFloat(StringReplace(BonComAGestionF.BonComGFourNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//          MainForm.SQLQuery.Active:=True;
         MainForm.FournisseurTable.Refresh;

         //--- this is for adding the money to the caisse----
         begin
         if BonComAGestionF.Tag=0 then
           begin
            MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
            MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

            if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
            begin
            MainForm.Opt_cas_bnk_CaisseTable.Last;
            CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
            end else
                begin
                 CodeOCB:= 1;
                end;
              MainForm.Opt_cas_bnk_CaisseTable.Append;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonComAGestionF.DateBonComGD.DateTime;;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pièce N° '+BonComAGestionF.NumBonComGEdt.Caption;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonComAGestionF.FournisseurBonComGCbx.Text;
      //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb']:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
             MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

               if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='espece') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
              end;
               if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='cheque') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
              end;
              if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='a terme' )
                 OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='� terme' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
              end;
              if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
              end;

              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bacom').AsInteger:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
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
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bacom ='+IntToStr(DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger); ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) Then
                begin
                     MainForm.Opt_cas_bnk_CaisseTable.Edit;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonComAGestionF.DateBonComGD.DateTime;;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pièce N° '+BonComAGestionF.NumBonComGEdt.Caption;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonComAGestionF.FournisseurBonComGCbx.Text;
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                       if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='a terme' )
                         OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='� terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bacom').AsInteger:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;

                 end else
                   begin
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk ' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                      if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                      begin
                      MainForm.Opt_cas_bnk_CaisseTable.Last;
                      CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                      end else
                          begin
                           CodeOCB:= 1;
                          end;
                        MainForm.Opt_cas_bnk_CaisseTable.Append;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonComAGestionF.DateBonComGD.DateTime;;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pièce N° '+BonComAGestionF.NumBonComGEdt.Caption;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonComAGestionF.FournisseurBonComGCbx.Text;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                         if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='espèce') OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='espece') then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                        end;
                         if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='chèque') OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='cheque') then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                        end;
                        if (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='à terme' ) OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='a terme' )
                           OR (LowerCase(BonComAGestionF.ModePaieBoncomGCbx.Text)='� terme' ) then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                        end;
                        if (LowerCase(BonComAGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                        begin
                         MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                        end;

                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bacom').AsInteger:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
                        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                        MainForm.Opt_cas_bnk_CaisseTable.Post;
                        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                        MainForm.Opt_cas_bnk_BankTable.Refresh;

                        MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                   end;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
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

//========================Validating Commande Client==============//
 if FSplashVersement.Tag = 10 then
  begin
        if VerVersementSEdt.Text<>'' then
     begin


     BonComVGestionF.BonComRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2);

     BonComVGestionF.BonComResteLbl.Caption:=  FloatToStrF((
             (StrToFloat (StringReplace(MontantTTCVersementSLbl.Caption, #32, '', [rfReplaceAll])))
             -
             (StrToFloat (StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

     BonComVGestionF.BonComGClientNEWCredit.Caption := ResteVersementSLbl.Caption;

      DisableBonComV;
      BonComVGestionF.Timer1.Enabled:=False;
      BonComVGestionF.Label20.Visible:=False;

     AnimateWindow(FSplashVersement.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
     FSplashVersement.Release;
     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);


//--- this is for adding to the priduit
//--- we dont need to add in stock becuxz it just a commande client 
      // begin
      // end;

//--- this is to set the commande client fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select code_c,credit_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(BonComVGestionF.ClientBonComGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(BonComVGestionF.ModePaieBonComGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(BonComVGestionF.CompteBonComGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

          DataModuleF.Bonv_comTable.Edit;
          DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
          DataModuleF.Bonv_comTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
          DataModuleF.Bonv_comTable.FieldByName('date_bvcom').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
          DataModuleF.Bonv_comTable.FieldByName('time_bvcom').AsDateTime:=TimeOf(Now);
          DataModuleF.Bonv_comTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          DataModuleF.Bonv_comTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          DataModuleF.Bonv_comTable.FieldByName('obser_bvcom').AsWideString:= BonComVGestionF.ObserBonComGMem.Text;
          DataModuleF.Bonv_comTable.FieldByName('num_cheque_bvcom').AsString:= BonComVGestionF.NChequeBonComGCbx.Text;
          DataModuleF.Bonv_comTable.FieldByName('montaht_bvcom').Value:= StrToFloat(StringReplace(BonComVGestionF.BonComTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('montht_bvcom').Value:= StrToFloat(StringReplace(BonComVGestionF.BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          if BonComVGestionF.RemiseBonComGEdt.Text<>'' then
          begin
          DataModuleF.Bonv_comTable.FieldByName('remise_bvcom').Value:=StrToFloat(StringReplace(BonComVGestionF.RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    DataModuleF.Bonv_comTable.FieldByName('remise_bvcom').Value:=0;
                   end;

          DataModuleF.Bonv_comTable.FieldByName('montver_bvcom').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('montttc_bvcom').Value:=StrToFloat(StringReplace(BonComVGestionF.BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('marge_bvcom').Value:=StrToFloat(StringReplace(BonComVGestionF.BonComTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean:= True;

          if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
          begin
           DataModuleF.Bonv_comTable.FieldByName('code_mdpai').AsInteger:=1 ;
          end;
           if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
          begin
           DataModuleF.Bonv_comTable.FieldByName('code_mdpai').AsInteger:=2 ;
          end;
          if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
             OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
          begin
           DataModuleF.Bonv_comTable.FieldByName('code_mdpai').AsInteger:=3 ;
          end;
          if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
          begin
           DataModuleF.Bonv_comTable.FieldByName('code_mdpai').AsInteger:=4 ;
          end;

          DataModuleF.Bonv_comTable.Post;
          DataModuleF.Bonv_comTable.Refresh;
     //     MainForm.Bona_recTable.EnableControls;

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------
        if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 )
             OR (VerVersementSEdt.Enabled = False) Then
        begin
          if BonComVGestionF.Tag = 0 then
          begin

            if NOT (MainForm.RegclientTable.IsEmpty) then
            begin
            MainForm.RegclientTable.Last;
            CodeRF:= MainForm.RegclientTable.FieldByName('code_rc').AsInteger + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            Mainform.Regclienttable.Append;
            MainForm.RegclientTable.FieldByName('code_rc').AsInteger:= CodeRF;
            MainForm.RegclientTable.FieldByName('code_bvcom').AsInteger:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
            MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonComVGestionF.NumBonComGEdt.Caption;
            MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
            MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
            MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldByName('obser_rc').AsWideString:= BonComVGestionF.ObserBonComGMem.Text;
            MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString:= BonComVGestionF.NChequeBonComGCbx.Text;
            MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 5;
            MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

            if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=1 ;
            end;
             if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=2 ;
            end;
            if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
               OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=3 ;
            end;
            if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
            begin
             MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=4 ;
            end;

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin

                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvcom ='+IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger) ;
                MainForm.RegclientTable.Active:=True;

                if NOT (MainForm.RegclientTable.IsEmpty) then
                begin
                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldByName('code_bvcom').AsInteger:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
                  MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonComVGestionF.NumBonComGEdt.Caption;
                  MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
                  MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
                  MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldByName('obser_rc').AsWideString:= BonComVGestionF.ObserBonComGMem.Text;
                  MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString:= BonComVGestionF.NChequeBonComGCbx.Text;
                  MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 5;
                  MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldByName('montver_rc').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                  if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
                     OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;
                  if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                  begin
                   MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
                      CodeRF:= MainForm.RegclientTable.FieldByName('code_rc').AsInteger + 1;
                      end else
                          begin
                           CodeRF:= 1;
                          end;

                      Mainform.Regclienttable.Append;
                      MainForm.RegclientTable.FieldByName('code_rc').AsInteger:= CodeRF;
                      MainForm.RegclientTable.FieldByName('code_bvcom').AsInteger:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
                      MainForm.RegclientTable.FieldByName('nom_rc').AsString:= BonComVGestionF.NumBonComGEdt.Caption;
                      MainForm.RegclientTable.FieldByName('code_c').AsInteger:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                      MainForm.RegclientTable.FieldByName('date_rc').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
                      MainForm.RegclientTable.FieldByName('time_rc').AsDateTime:=TimeOf(Now);
                      MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.RegclientTable.FieldByName('obser_rc').AsWideString:= BonComVGestionF.ObserBonComGMem.Text;
                      MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString:= BonComVGestionF.NChequeBonComGCbx.Text;
                      MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger:= 5;
                      MainForm.RegclientTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.RegclientTable.FieldByName('montver_rc').Value:=StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));

                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
                         OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                      begin
                       MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger:=4 ;
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
          MainForm.SQLQuery.FieldByName('credit_c').Value:=
          ((StrToFloat(StringReplace(BonComVGestionF.BonComGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;
          end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//          MainForm.SQLQuery.Active:=True;
          MainForm.ClientTable.Refresh;

                    //--- this is for adding the money to the caisse----
         begin
             if BonComVGestionF.Tag = 0 then
              begin
                MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                begin
                MainForm.Opt_cas_bnk_CaisseTable.Last;
                CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                end else
                    begin
                     CodeOCB:= 1;
                    end;
                  MainForm.Opt_cas_bnk_CaisseTable.Append;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Règlement  Pièce N° '+BonComVGestionF.NumBonComGEdt.Caption;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonComVGestionF.ClientBonComGCbx.Text;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
          //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb']:= ;

                   if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
                     OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;
                  if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                  begin
                   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                  end;

                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvcom').AsInteger:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
                  MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

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
                    MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvcom ='+IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger) ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                    if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                     begin

                      MainForm.Opt_cas_bnk_CaisseTable.Edit;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Règlement  Pièce N° '+BonComVGestionF.NumBonComGEdt.Caption;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonComVGestionF.ClientBonComGCbx.Text;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
              //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb']:= ;

                       if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
                         OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;

                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvcom').AsInteger:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;
                       end else
                     begin
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                        if  NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                      begin
                      MainForm.Opt_cas_bnk_CaisseTable.Last;
                      CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger + 1;
                      end else
                          begin
                           CodeOCB:= 1;
                          end;

                      MainForm.Opt_cas_bnk_CaisseTable.Append;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ocb').AsInteger:= CodeOCB;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= BonComVGestionF.DateBonComGD.DateTime;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Règlement  Pièce N° '+BonComVGestionF.NumBonComGEdt.Caption;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= BonComVGestionF.ClientBonComGCbx.Text;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb').Value:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
              //        MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb']:= ;

                       if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espèce') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='espece') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='chèque') OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='cheque') then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='à terme' ) OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='a terme' )
                         OR (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='� terme' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(BonComVGestionF.ModePaieBonComGCbx.Text)='virement' ) then
                      begin
                       MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;

                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bvcom').AsInteger:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
                      MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.Opt_cas_bnk_CaisseTable.Post;
                      MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                      MainForm.Opt_cas_bnk_BankTable.Refresh;
                     end;
                      MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                      MainForm.Opt_cas_bnk_CaisseTable.Filtered:=false;
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

end;

procedure TFSplashVersement.AdvSmoothTouchKeyBoard1KeyClick(Sender: TObject;
  Index: Integer);
begin

  if Tag = 4 then
  begin
   TotalVersementSLbl.Caption:= Edit1.Text;
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
var TOTAL,VER,ResteVersement : Double;
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
Versement: Double;
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

