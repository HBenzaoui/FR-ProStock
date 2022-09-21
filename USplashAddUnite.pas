unit USplashAddUnite;

interface

uses
  Winapi.Windows, Winapi.Messages,MMSystem, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvToolBtn, System.ImageList,
  Vcl.ImgList, acAlphaImageList, Vcl.ExtCtrls, Vcl.StdCtrls, acPNG, acImage,
  Data.DB, sPanel, acSlider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxActivityIndicator;

type
  TFSplashAddUnite = class(TForm)
    NameAddUniteSLbl: TLabel;
    Panel1: TPanel;
    OKAddUniteSBtn: TAdvToolButton;
    CancelAddUniteSBtn: TAdvToolButton;
    LineP: TPanel;
    FormCaptionAddUniteSLbl: TLabel;
    RequiredAddUniteSlbl: TLabel;
    RequiredStarAddUniteSLbl: TLabel;
    NameAddUniteSEdt: TEdit;
    NameAddUniteSErrorP: TPanel;
    Image1: TsImage;
    CompteAddUniteSCbx: TComboBox;
    CompteAddUniteSBtn: TAdvToolButton;
    CompteAddUniteSLbl: TLabel;
    DBActivityIndicator: TdxActivityIndicator;
    procedure NameAddUniteSEdtChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelAddUniteSBtnClick(Sender: TObject);
    procedure OKAddUniteSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CompteAddUniteSCbxEnter(Sender: TObject);
    procedure CompteAddUniteSBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplashAddUnite: TFSplashAddUnite;

implementation

{$R *.dfm}

uses System.IniFiles, Contnrs, Types,Winapi.ShellAPI, Threading,
  UProduitGestion,UMainF, UBonRecGestion, UFastProduitsList,
  USplashAddCompte, UBonLivGestion, UBonFacVGestion, UBonFacAGestion,
  UComptoir, UReglementCGestion, UReglementFGestion, UDataModule,
  UChargesGestion, UChargesFList, UPertesGestion, UBonFacPGestion,
  UTransferComptesGestion, UBonComAGestion, UBonComVGestion, ULoginUser;

var
  gGrayForms: TComponentList;

procedure GrayFormsAddUnit;
var
   loop : integer;
   uScrnFrm : TForm;
   UForm : TForm;
//   uPoint : TPoint;
   uScreens : TList;

begin
   if not assigned(gGrayForms) then
   begin
      gGrayForms := TComponentList.Create;
      gGrayForms.OwnsObjects := true;

      uScreens := TList.create;
      try
         for loop := 0 to 0 do
            uScreens.Add(Screen.Forms[loop]);

         for loop := 0 to 0 do

         begin
            uScrnFrm := uScreens[loop];

            if uScrnFrm.Visible then
            begin
               UForm := TForm.Create(uScrnFrm);
               UForm.WindowState:= wsMaximized;
               gGrayForms.Add(UForm);
               UForm.Position := MainForm.Position;
               UForm.AlphaBlend := true;
               UForm.AlphaBlendValue := 80;
               UForm.Color := clBlack;
               UForm.BorderStyle := bsNone;
               UForm.StyleElements:= [];
               UForm.Enabled := false;
               UForm.BoundsRect := uScrnFrm.BoundsRect;
               SetWindowLong(UForm.Handle, GWL_HWNDPARENT, uScrnFrm.Handle);
               SetWindowPos(UForm.handle, uScrnFrm.handle, 0,0,0,0, SWP_NOSIZE or SWP_NOMOVE);
               UForm.Visible := true;
            end;
         end;
      finally
         uScreens.free;
      end;
   end;
end;

procedure NormalFormsAddUnit;
begin
  FreeAndNil(gGrayForms);
end;

procedure TFSplashAddUnite.CancelAddUniteSBtnClick(Sender: TObject);
var CodeBR,CodeCB,CodeP : integer;

begin

//      MainForm.SQLQuery.Active:=False;
//      MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')' ;
//      MainForm.SQLQuery.Active:=True;
//
//      if NOT MainForm.SQLQuery.IsEmpty then
//      begin
//       CodeP:=  MainForm.SQLQuery.FieldByName('code_p').AsInteger;
//      end;

 //---- This Tag = 5  ingoring when add the same prodect to bon reception add anyway -----//
   if OKAddUniteSBtn.Tag = 5 then
    begin

    if FSplashAddUnite.Tag = 0 then
    begin
     if BonRecGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonRecGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonRecGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonRecGestionF.ProduitBonRecGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

        MainForm.Bona_recPlistTable.DisableControls;
        MainForm.Bona_recPlistTable.IndexFieldNames:='';
        MainForm.Bona_recPlistTable.Active:=False;
        MainForm.Bona_recPlistTable.SQL.Clear;
        MainForm.Bona_recPlistTable.SQL.Text:=  BonRecGestionF.BRLSQL+ ' ORDER by code_barecl' ;
        MainForm.Bona_recPlistTable.Active:=True;
     //   MainForm.Bona_recPlistTable.Last;

       if  MainForm.Bona_recPlistTable.IsEmpty then
       begin
         MainForm.Bona_recPlistTable.Last;
         CodeBR := 1;
       end else
           begin
            MainForm.Bona_recPlistTable.Last;
            CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
           end;

       MainForm.Bona_recPlistTable.Last;
       MainForm.Bona_recPlistTable.Append;
       MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR;
       MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
       if Assigned(FastProduitsListF) then
       begin
        MainForm.Bona_recPlistTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             MainForm.Bona_recPlistTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
       MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.SQLQuery3.FieldValues['prixht_p'];
       MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
       MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvd_p').AsCurrency;
       MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvr_p').AsCurrency;
       MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvg_p').AsCurrency;
       MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixva_p').AsCurrency;
       MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency:= MainForm.SQLQuery3.FieldByName('prixva2_p').AsCurrency;
       MainForm.Bona_recPlistTable.Post ;
       MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

       MainForm.Bona_recPlistTable.Active:=False;
       MainForm.Bona_recPlistTable.SQL.Clear;
       MainForm.Bona_recPlistTable.SQL.Text:= BonRecGestionF.BRLSQL+ ' WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
       MainForm.Bona_recPlistTable.Active:=True;

       BonRecGestionF.ProduitBonRecGCbx.Text:='';

       BonRecGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonRecGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bona_recPlistTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       MainForm.Bona_recPlistTable.Refresh;
//       MainForm.Bona_recPlistTable.Last;
       MainForm.Bona_recPlistTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 1 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 0 then
       begin
        BonRecGestionF.ProduitsListDBGridEh.SetFocus;
       end;

   end else



 //---- This Tag = 10  ingoring when add the same prodect to bon livration add anyway -----//
  if OKAddUniteSBtn.Tag = 10 then
   begin
       if FSplashAddUnite.Tag = 2 then
    begin
     if BonLivGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonLivGestionF.ProduitBonLivGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonLivGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonLivGestionF.ProduitBonLivGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonLivGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonLivGestionF.ProduitBonLivGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonLivGestionF.ProduitBonLivGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

        MainForm.Bonv_liv_listTable.DisableControls;
        MainForm.Bonv_liv_listTable.IndexFieldNames:='';
        MainForm.Bonv_liv_listTable.Active:=False;
        MainForm.Bonv_liv_listTable.SQL.Clear;
        MainForm.Bonv_liv_listTable.SQL.Text:= BonLivGestionF.BLLSQL+' ORDER by code_bvlivl' ;
        MainForm.Bonv_liv_listTable.Active:=True;
     //   MainForm.Bonv_liv_listTable.Last;


      if BonLivGestionF.ClientBonLivGCbx.Text<> '' then
     begin
       MainForm.ClientTable.DisableControls;
        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonLivGestionF.ClientBonLivGCbx.Text )+')'  ;
        MainForm.ClientTable.Active:=True;

     end;

       if  MainForm.Bonv_liv_listTable.IsEmpty then
       begin
         MainForm.Bonv_liv_listTable.Last;
         CodeBR := 1;
       end else
           begin
            MainForm.Bonv_liv_listTable.Last;
            CodeBR:= MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl'] + 1 ;
           end;

       MainForm.Bonv_liv_listTable.Last;
       MainForm.Bonv_liv_listTable.Append;
       MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl']:= CodeBR;
       MainForm.Bonv_liv_listTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
       if Assigned(FastProduitsListF) then
       begin
        MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
       MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonv_liv_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       MainForm.Bonv_liv_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery3.FieldValues['prixht_p'] ;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonLivGestionF.ClientBonLivGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
                 end;

       MainForm.Bonv_liv_listTable.Post ;
       MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

       MainForm.Bonv_liv_listTable.Active:=False;
       MainForm.Bonv_liv_listTable.SQL.Clear;
       MainForm.Bonv_liv_listTable.SQL.Text:= BonLivGestionF.BLLSQL+' WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
       MainForm.Bonv_liv_listTable.Active:=True;

       BonLivGestionF.ProduitBonLivGCbx.Text:='';

       BonLivGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonLivGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonv_liv_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       MainForm.Bonv_liv_listTable.Refresh;
       MainForm.Bonv_liv_listTable.Last;
       MainForm.Bonv_liv_listTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 3 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 2 then
       begin
        BonLivGestionF.ProduitsListDBGridEh.SetFocus;
       end;


      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;

   end else

 //---------- THIS TAG OKBTN = 15 AND FSPLSH = 3 IS FOR INGORING WHEN ADDING FROM BON FACTURE DE VENTE --------
//-------------------------------------------------------------------------------------------------------------
   if OKAddUniteSBtn.Tag = 15 then
   begin
     if FSplashAddUnite.Tag = 3 then
     begin
     if BonFacVGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonFacVGestionF.ProduitBonFacVGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonFacVGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonFacVGestionF.ProduitBonFacVGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonFacVGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonFacVGestionF.ProduitBonFacVGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonFacVGestionF.ProduitBonFacVGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

       MainForm.Bonv_fac_listTable.DisableControls;
        MainForm.Bonv_fac_listTable.IndexFieldNames:='';
        MainForm.Bonv_fac_listTable.Active:=False;
        MainForm.Bonv_fac_listTable.SQL.Clear;
        MainForm.Bonv_fac_listTable.SQL.Text:= BonFacVGestionF.FVLSQL +' ORDER by code_bvfacl' ;
        MainForm.Bonv_fac_listTable.Active:=True;
     //   MainForm.Bonv_fac_listTable.Last;



        if BonFacVGestionF.ClientBonFacVGCbx.Text<> '' then
       begin
         MainForm.ClientTable.DisableControls;
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacVGestionF.ClientBonFacVGCbx.Text )+')'  ;
         MainForm.ClientTable.Active:=True;
        end;

       if  MainForm.Bonv_fac_listTable.IsEmpty then
       begin
         MainForm.Bonv_fac_listTable.Last;
         CodeBR := 1;
       end else
           begin
            MainForm.Bonv_fac_listTable.Last;
            CodeBR:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
           end;

       MainForm.Bonv_fac_listTable.Last;
       MainForm.Bonv_fac_listTable.Append;
       MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeBR;
       MainForm.Bonv_fac_listTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
       if Assigned(FastProduitsListF) then
       begin
        MainForm.Bonv_fac_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             MainForm.Bonv_fac_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       MainForm.Bonv_fac_listTable.FieldValues['qut_p'] :=  01;
       MainForm.Bonv_fac_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       MainForm.Bonv_fac_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery3.FieldValues['prixht_p'] ;

       if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacVGestionF.ClientBonFacVGCbx.Text<> '' ) then
       begin
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvr_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvg_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva2_p'];
         end;
         end else
             begin
              MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
             end;

       MainForm.Bonv_fac_listTable.Post ;
       MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

       MainForm.Bonv_fac_listTable.Active:=False;
       MainForm.Bonv_fac_listTable.SQL.Clear;
       MainForm.Bonv_fac_listTable.SQL.Text:= BonFacVGestionF.FVLSQL +' WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
       MainForm.Bonv_fac_listTable.Active:=True;

       BonFacVGestionF.ProduitBonFacVGCbx.Text:='';

       BonFacVGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonFacVGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonv_fac_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       MainForm.Bonv_fac_listTable.Refresh;
       MainForm.Bonv_fac_listTable.Last;
       MainForm.Bonv_fac_listTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 4 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 3 then
       begin
        BonFacVGestionF.ProduitsListDBGridEh.SetFocus;
       end;

        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;

   end else

    //---------- THIS TAG OKBTN = 20 AND FSPLSH = 4 IS FOR INGORING WHEN ADDING FROM BON FACTURE D''ACHAT ------
//------------------------------------------------------------------------------------
   if OKAddUniteSBtn.Tag = 20 then
   begin
     if FSplashAddUnite.Tag = 4 then
     begin
     if BonFacAGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonFacAGestionF.ProduitBonFacAGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonFacAGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonFacAGestionF.ProduitBonFacAGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonFacAGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonFacAGestionF.ProduitBonFacAGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonFacAGestionF.ProduitBonFacAGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

       MainForm.Bona_fac_listTable.DisableControls;
        MainForm.Bona_fac_listTable.IndexFieldNames:='';
        MainForm.Bona_fac_listTable.Active:=False;
        MainForm.Bona_fac_listTable.SQL.Clear;
        MainForm.Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL +' ORDER by code_bafacl' ;
        MainForm.Bona_fac_listTable.Active:=True;
     //   MainForm.Bonv_fac_listTable.Last;

       if  MainForm.Bona_fac_listTable.IsEmpty then
       begin
         MainForm.Bona_fac_listTable.Last;
         CodeBR := 1;
       end else
           begin
            MainForm.Bona_fac_listTable.Last;
            CodeBR:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
           end;

       MainForm.Bona_fac_listTable.Last;
       MainForm.Bona_fac_listTable.Append;
       MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeBR;
       MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
       if Assigned(FastProduitsListF) then
       begin
        MainForm.Bona_fac_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             MainForm.Bona_fac_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
       MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery3.FieldValues['prixht_p'];
       MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvd_p').AsCurrency;
       MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvr_p').AsCurrency;
       MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvg_p').AsCurrency;
       MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixva_p').AsCurrency;
       MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.SQLQuery3.FieldByName('prixva2_p').AsCurrency;
       MainForm.Bona_fac_listTable.Post ;
       MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';

       MainForm.Bona_fac_listTable.Active:=False;
       MainForm.Bona_fac_listTable.SQL.Clear;
       MainForm.Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL +' WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
       MainForm.Bona_fac_listTable.Active:=True;

       BonFacAGestionF.ProduitBonFacAGCbx.Text:='';

       BonFacAGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonFacAGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bona_fac_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       MainForm.Bona_fac_listTable.Refresh;
       MainForm.Bona_fac_listTable.Last;
       MainForm.Bona_fac_listTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 5 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 4 then
       begin
        BonFacAGestionF.ProduitsListDBGridEh.SetFocus;
       end;
   end else






       //---------- THIS TAG OKBTN = 23 AND FSPLSH = 5 IS FOR INGORING WHEN ADDING FROM comptoir ------
//------------------------------------------------------------------------------------
   if OKAddUniteSBtn.Tag = 23 then
   begin
     if FSplashAddUnite.Tag = 5 then
     begin
  //   if BonCtrGestionF.ResherchPARDesProduitsRdioBtn.Checked then

//      MainForm.SQLQuery3.Active:=False;
//      MainForm.SQLQuery3.SQL.Clear;
//      MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonCtrGestionF.ProduitBonCtrGCbx.Text)+')' ;
//      MainForm.SQLQuery3.Active:=True;


// this is for adddinf from combobox or pupilaire
       if BonCtrGestionF.ProduitsListDBGridEh.Tag <> 1 then
       begin
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit where code_p = '+ IntToStr(MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger );
        MainForm.SQLQuery3.Active:=True;
       end else
            if BonCtrGestionF.ProduitsListDBGridEh.Tag = 1 then
           begin
            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
            MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit where code_p = '+ IntToStr(DataModuleF.Top5produit.FieldByName('code_p').AsInteger );
            MainForm.SQLQuery3.Active:=True;
           end;

      if Not (MainForm.SQLQuery3.IsEmpty) then
      begin
      CodeCB:= MainForm.SQLQuery3.FieldByName('code_p').AsInteger ;
      end else

      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonCtrGestionF.ProduitBonCtrGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonCtrGestionF.ProduitBonCtrGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
//      If BonCtrGestionF.FormStyle = fsNormal  then
//      begin
//         BonCtrGestionF.FormStyle := fsStayOnTop;
//      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

       MainForm.Bonv_ctr_listTable.DisableControls;
        MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
        MainForm.Bonv_ctr_listTable.Active:=False;
        MainForm.Bonv_ctr_listTable.SQL.Clear;
        MainForm.Bonv_ctr_listTable.SQL.Text:= BonCtrGestionF.BCLSQL +' ORDER by code_bvctrl' ;
        MainForm.Bonv_ctr_listTable.Active:=True;
     //   MainForm.Bonv_ctr_listTable.Last;

       if  MainForm.Bonv_ctr_listTable.IsEmpty then
       begin
         MainForm.Bonv_ctr_listTable.Last;
         CodeBR := 1;
       end else
           begin
            MainForm.Bonv_ctr_listTable.Last;
            CodeBR:= MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] + 1 ;
           end;

       MainForm.Bonv_ctr_listTable.Last;
       MainForm.Bonv_ctr_listTable.Append;
       MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl']:= CodeBR;
       MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
       if Assigned(FastProduitsListF) then
       begin
        MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             MainForm.Bonv_ctr_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;
       MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonv_ctr_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       MainForm.Bonv_ctr_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery3.FieldValues['prixht_p'];

       if  NOT (MainForm.ClientTable.IsEmpty) AND (BonCtrGestionF.ClientBonCtrGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
                 end;

       MainForm.Bonv_ctr_listTable.Post ;
       MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

       MainForm.Bonv_ctr_listTable.Active:=False;
       MainForm.Bonv_ctr_listTable.SQL.Clear;
       MainForm.Bonv_ctr_listTable.SQL.Text:= BonCtrGestionF.BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
       MainForm.Bonv_ctr_listTable.Active:=True;

       BonCtrGestionF.ProduitBonCtrGCbx.Text:='';

       BonCtrGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonCtrGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonv_ctr_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       MainForm.Bonv_ctr_listTable.Refresh;
       MainForm.Bonv_ctr_listTable.Last;
       MainForm.Bonv_ctr_listTable.EnableControls;



       if FSplashAddUnite.Tag = 6 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
//      if FSplashAddUnite.Tag = 5 then
//       begin
//        BonCtrGestionF.ProduitsListDBGridEh.SetFocus;
//       end;

//      If BonCtrGestionF.FormStyle = fsNormal  then
//      begin
//         BonCtrGestionF.FormStyle := fsStayOnTop;
//      end;

       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
       FSplashAddUnite.Release;

   end else



    //---------- THIS TAG OKBTN = 37 AND FSPLSH = 6 IS FOR INGORING WHEN ADDING FROM BON FACTURE PROFORMA--------
//-------------------------------------------------------------------------------------------------------------
   if OKAddUniteSBtn.Tag = 37 then
   begin
     if FSplashAddUnite.Tag = 6 then
     begin
     if BonFacPGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonFacPGestionF.ProduitBonFacVGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonFacPGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonFacPGestionF.ProduitBonFacVGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonFacPGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonFacPGestionF.ProduitBonFacVGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonFacPGestionF.ProduitBonFacVGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

       MainForm.Bonp_fac_listTable.DisableControls;
        MainForm.Bonp_fac_listTable.IndexFieldNames:='';
        MainForm.Bonp_fac_listTable.Active:=False;
        MainForm.Bonp_fac_listTable.SQL.Clear;
        MainForm.Bonp_fac_listTable.SQL.Text:= BonFacPGestionF.FPLSQL +' ORDER by code_bpfacl' ;
        MainForm.Bonp_fac_listTable.Active:=True;
     //   MainForm.Bonv_fac_listTable.Last;



        if BonFacPGestionF.ClientBonFacVGCbx.Text<> '' then
       begin
         MainForm.ClientTable.DisableControls;
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacPGestionF.ClientBonFacVGCbx.Text )+')'  ;
         MainForm.ClientTable.Active:=True;
        end;

       if  MainForm.Bonp_fac_listTable.IsEmpty then
       begin
         MainForm.Bonp_fac_listTable.Last;
         CodeBR := 1;
       end else
           begin
            MainForm.Bonp_fac_listTable.Last;
            CodeBR:= MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl'] + 1 ;
           end;

       MainForm.Bonp_fac_listTable.Last;
       MainForm.Bonp_fac_listTable.Append;
       MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl']:= CodeBR;
       MainForm.Bonp_fac_listTable.FieldValues['code_bpfac']:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
       if Assigned(FastProduitsListF) then
       begin
        MainForm.Bonp_fac_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             MainForm.Bonp_fac_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       MainForm.Bonp_fac_listTable.FieldValues['qut_p'] :=  01;
       MainForm.Bonp_fac_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonp_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       MainForm.Bonp_fac_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery3.FieldValues['prixht_p'] ;

       if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacPGestionF.ClientBonFacVGCbx.Text<> '' ) then
       begin
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
         begin
         MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
         begin
         MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvr_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
         begin
         MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvg_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
         begin
         MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
         begin
         MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva2_p'];
         end;
         end else
             begin
              MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
             end;

       MainForm.Bonp_fac_listTable.Post ;
       MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';

       MainForm.Bonp_fac_listTable.Active:=False;
       MainForm.Bonp_fac_listTable.SQL.Clear;
       MainForm.Bonp_fac_listTable.SQL.Text:= BonFacPGestionF.FPLSQL +' WHERE code_bpfac = ' + QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldValues['code_bpfac']));
       MainForm.Bonp_fac_listTable.Active:=True;

       BonFacPGestionF.ProduitBonFacVGCbx.Text:='';

       BonFacPGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonFacPGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonp_fac_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.ProduitTable.Active := True;

       MainForm.Bonp_fac_listTable.Refresh;
       MainForm.Bonp_fac_listTable.Last;
       MainForm.Bonp_fac_listTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 7 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 6 then
       begin
        BonFacPGestionF.ProduitsListDBGridEh.SetFocus;
       end;

        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;

   end else

   //---- This Tag = 45  ingoring when add the same prodect to bon de command add anyway -----//
   if OKAddUniteSBtn.Tag = 45 then
    begin

    if FSplashAddUnite.Tag = 7 then
    begin
     if BonComAGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonComAGestionF.ProduitBonComGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonComAGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonComAGestionF.ProduitBonComGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonComAGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonComAGestionF.ProduitBonComGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonComAGestionF.ProduitBonComGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

        DataModuleF.Bona_com_listTable.DisableControls;
        DataModuleF.Bona_com_listTable.IndexFieldNames:='';
        DataModuleF.Bona_com_listTable.Active:=False;
        DataModuleF.Bona_com_listTable.SQL.Clear;
        DataModuleF.Bona_com_listTable.SQL.Text:=  BonComAGestionF.BCFLSQL+ ' ORDER by code_bacoml' ;
        DataModuleF.Bona_com_listTable.Active:=True;
     //   DataModuleF.Bona_com_listTable.Last;

       if  DataModuleF.Bona_com_listTable.IsEmpty then
       begin
         DataModuleF.Bona_com_listTable.Last;
         CodeBR := 1;
       end else
           begin
            DataModuleF.Bona_com_listTable.Last;
            CodeBR:= DataModuleF.Bona_com_listTable.FieldValues['code_bacoml'] + 1 ;
           end;

       DataModuleF.Bona_com_listTable.Last;
       DataModuleF.Bona_com_listTable.Append;
       DataModuleF.Bona_com_listTable.FieldValues['code_bacoml']:= CodeBR;
       DataModuleF.Bona_com_listTable.FieldValues['code_bacom']:= DataModuleF.Bona_comTable.FieldValues['code_bacom'];
       if Assigned(FastProduitsListF) then
       begin
        DataModuleF.Bona_com_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             DataModuleF.Bona_com_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       DataModuleF.Bona_com_listTable.FieldValues['qut_p'] :=  01;
       DataModuleF.Bona_com_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery3.FieldValues['prixht_p'];
       DataModuleF.Bona_com_listTable.FieldValues['cond_p']:= 01;
       DataModuleF.Bona_com_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvd_p').AsCurrency;
       DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvr_p').AsCurrency;
       DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixvg_p').AsCurrency;
       DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.SQLQuery3.FieldByName('prixva_p').AsCurrency;
       DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.SQLQuery3.FieldByName('prixva2_p').AsCurrency;
       DataModuleF.Bona_com_listTable.Post ;
       DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

       DataModuleF.Bona_com_listTable.Active:=False;
       DataModuleF.Bona_com_listTable.SQL.Clear;
       DataModuleF.Bona_com_listTable.SQL.Text:= BonComAGestionF.BCFLSQL+ ' WHERE code_bacom = ' + QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldValues['code_bacom']));
       DataModuleF.Bona_com_listTable.Active:=True;

       BonComAGestionF.ProduitBonComGCbx.Text:='';

       BonComAGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonComAGestionF.ProduitsListDBGridEh.EditorMode:=True;

       DataModuleF.Bona_com_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       DataModuleF.Bona_com_listTable.Refresh;
//       DataModuleF.Bona_com_listTable.Last;
       DataModuleF.Bona_com_listTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 1 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 0 then
       begin
        BonComAGestionF.ProduitsListDBGridEh.SetFocus;
       end;

   end else


   //---- This Tag = 50  ingoring when add the same prodect to Commande Clientadd anyway -----//

   if OKAddUniteSBtn.Tag = 50 then
   begin
       if FSplashAddUnite.Tag = 2 then
    begin
     if BonComVGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.SQLQuery3.Active:=False;
      MainForm.SQLQuery3.SQL.Clear;
      MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonComVGestionF.ProduitBonComGCbx.Text)+')' ;
      MainForm.SQLQuery3.Active:=True;
      end;
     if BonComVGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
       MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonComVGestionF.ProduitBonComGCbx.Text)+')' ;
       MainForm.SQLQuery3.Active:=True;
      end;
      if BonComVGestionF.ResherchPARCBProduitsRdioBtn.Checked then
      begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( BonComVGestionF.ProduitBonComGCbx.Text )+')' ;
        MainForm.SQLQuery.Active:=True;
        if MainForm.SQLQuery.FieldValues['code_p'] <> null then
        begin
        CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
        end;
        MainForm.SQLQuery3.Active:=False;
        MainForm.SQLQuery3.SQL.Clear;
        MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonComVGestionF.ProduitBonComGCbx.Text)+')';
        MainForm.SQLQuery3.Active:=True;
      end;
     end else
         begin
          CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
          MainForm.SQLQuery3.Active:=False;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) ;
          MainForm.SQLQuery3.Active:=True;
         end;

        DataModuleF.Bonv_com_listTable.DisableControls;
        DataModuleF.Bonv_com_listTable.IndexFieldNames:='';
        DataModuleF.Bonv_com_listTable.Active:=False;
        DataModuleF.Bonv_com_listTable.SQL.Clear;
        DataModuleF.Bonv_com_listTable.SQL.Text:= BonComVGestionF.BCCLSQL+' ORDER by code_bvcoml' ;
        DataModuleF.Bonv_com_listTable.Active:=True;
     //   DataModuleF.Bonv_com_listTable.Last;


      if BonComVGestionF.ClientBonComGCbx.Text<> '' then
     begin
       MainForm.ClientTable.DisableControls;
        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonComVGestionF.ClientBonComGCbx.Text )+')'  ;
        MainForm.ClientTable.Active:=True;

     end;

       if  DataModuleF.Bonv_com_listTable.IsEmpty then
       begin
         DataModuleF.Bonv_com_listTable.Last;
         CodeBR := 1;
       end else
           begin
            DataModuleF.Bonv_com_listTable.Last;
            CodeBR:= DataModuleF.Bonv_com_listTable.FieldValues['code_bvcoml'] + 1 ;
           end;

       DataModuleF.Bonv_com_listTable.Last;
       DataModuleF.Bonv_com_listTable.Append;
       DataModuleF.Bonv_com_listTable.FieldValues['code_bvcoml']:= CodeBR;
       DataModuleF.Bonv_com_listTable.FieldValues['code_bvcom']:= DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
       if Assigned(FastProduitsListF) then
       begin
        DataModuleF.Bonv_com_listTable.FieldValues['code_p']:=  FastProduitsListF.CodePForFastPList;// MainForm.SQLQuery3.FieldValues['code_p'] ;
       end else
           begin
             DataModuleF.Bonv_com_listTable.FieldValues['code_p']:= MainForm.SQLQuery3.FieldValues['code_p'] ;
           end;
       DataModuleF.Bonv_com_listTable.FieldValues['qut_p'] :=  01;
       DataModuleF.Bonv_com_listTable.FieldValues['cond_p']:= 01;
       DataModuleF.Bonv_com_listTable.FieldValues['tva_p']:= MainForm.SQLQuery3.FieldValues['tva_p'];
       DataModuleF.Bonv_com_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery3.FieldValues['prixht_p'] ;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonComVGestionF.ClientBonComGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             DataModuleF.Bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             DataModuleF.Bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             DataModuleF.Bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             DataModuleF.Bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             DataModuleF.Bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  DataModuleF.Bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery3.FieldValues['prixvd_p'];
                 end;

       DataModuleF.Bonv_com_listTable.Post ;
       DataModuleF.Bonv_com_listTable.IndexFieldNames:='code_bvcom';

       DataModuleF.Bonv_com_listTable.Active:=False;
       DataModuleF.Bonv_com_listTable.SQL.Clear;
       DataModuleF.Bonv_com_listTable.SQL.Text:= BonComVGestionF.BCCLSQL+' WHERE code_bvcom = ' + QuotedStr(IntToStr(DataModuleF.Bonv_comTable.FieldValues['code_bvcom']));
       DataModuleF.Bonv_com_listTable.Active:=True;

       BonComVGestionF.ProduitBonComGCbx.Text:='';

       BonComVGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonComVGestionF.ProduitsListDBGridEh.EditorMode:=True;

       DataModuleF.Bonv_com_listTable.Last;

       MainForm.SQLQuery3.Active:=False;
       MainForm.SQLQuery3.SQL.Clear;
//       MainForm.SQLQuery3.SQL.Text:= 'SELECT * FROM produit';
//       MainForm.SQLQuery3.Active := True;

       DataModuleF.Bonv_com_listTable.Refresh;
       DataModuleF.Bonv_com_listTable.Last;
       DataModuleF.Bonv_com_listTable.EnableControls;


       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       if FSplashAddUnite.Tag = 3 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 2 then
       begin
        BonComVGestionF.ProduitsListDBGridEh.SetFocus;
       end;


      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;

   end else 


//------------------------------------------------------------------------------------------
       if CancelAddUniteSBtn.Tag= 0 then

       begin
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
          FSplashAddUnite.Release;
       end;

end;

procedure TFSplashAddUnite.FormCreate(Sender: TObject);
begin
       GrayFormsAddUnit  ;
 if Assigned(ProduitGestionF) then
 begin
     SetWindowPos(ProduitGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
 end;


  if Assigned(FastProduitsListF) then
 begin
     SetWindowPos(FastProduitsListF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
 end;

end;

procedure TFSplashAddUnite.FormDestroy(Sender: TObject);
begin
 if Assigned(ProduitGestionF) then
 begin
 SetWindowPos(ProduitGestionF.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
 end;
 if Assigned(FastProduitsListF) then
 begin
  SetWindowPos(FastProduitsListF.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
 end;


  NormalFormsAddUnit  ;

end;

procedure TFSplashAddUnite.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
 //CleaningProduitGEdt;

//  OKproduitGBtn.Enabled := false;
//  OKproduitGBtn.ImageIndex := 1;

//  RandomCBProduitGBtn.Tag := 0;
//   CancelProduitGBtnClick(Sender);
    CancelAddUniteSBtnClick(Sender);
 // Close;

 end;

  //Add forms where we dont need space button to act as return button
 if (OKAddUniteSBtn.Tag <> 0) AND (OKAddUniteSBtn.Tag <> 1) AND (OKAddUniteSBtn.Tag <> 2) AND (OKAddUniteSBtn.Tag <> 3) AND
    (OKAddUniteSBtn.Tag <> 28)AND (OKAddUniteSBtn.Tag <> 7) AND (OKAddUniteSBtn.Tag <> 11)AND (OKAddUniteSBtn.Tag <> 18)AND
    (OKAddUniteSBtn.Tag <> 19)AND (OKAddUniteSBtn.Tag <> 30)AND (OKAddUniteSBtn.Tag <> 31)AND (OKAddUniteSBtn.Tag <> 38)AND
    (OKAddUniteSBtn.Tag <> 33)     then
 begin
    if (key = #13)
     OR ( (key = #32) AND ( (CompteAddUniteSCbx.Visible = False) AND (NameAddUniteSEdt.Visible = False) {Tag=4 for delete produit from ProduitList})) //used the space button only whne there is no typing in TEdit or so
    then
 begin
     key := #0;
   OKAddUniteSBtnClick(Sender);

 end;
 end else
     begin
          if (key = #13)  then
       begin
          key := #0;
         OKAddUniteSBtnClick(Sender);

       end;
     end;
;

end;

procedure TFSplashAddUnite.FormShow(Sender: TObject);
begin
    SetWindowPos(FSplashAddUnite.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TFSplashAddUnite.NameAddUniteSEdtChange(Sender: TObject);
begin
  OKAddUniteSBtn.Enabled := true;
  OKAddUniteSBtn.ImageIndex := 17;
  NameAddUniteSEdt.BorderStyle:= bsSingle;
  NameAddUniteSEdt.StyleElements:= [seClient,seBorder];
  RequiredAddUniteSlbl.Visible:= False;
  NameAddUniteSErrorP.Visible:= False;
end;

procedure TFSplashAddUnite.OKAddUniteSBtnClick(Sender: TObject);
var codeP,CodeMDPai,codeBR,CodeF,CodeUNIT: Integer;

  Ini: TIniFile;
  I: Integer;
  aCmdLine : PChar;
  DBName :String;
  CreateDBTask: ITask;
begin
  //---This TAG = 0 for Add in Produit Famille--///
  if OKAddUniteSBtn.Tag = 0 then
  begin
      if NameAddUniteSEdt.Text <> '' then
   begin
        with MainForm.FamproduitTable do  begin

          if Image1.Tag = 0 then
         begin
            if NOT (IsEmpty) then
            begin
            Last;
            CodeUNIT:= FieldByName('code_famp').AsInteger + 1;
            end else
                begin
                 CodeUNIT:= 1;
                end;
          Append;
          fieldbyname('code_famp').Value := CodeUNIT;
          fieldbyname('nom_famp').Value := NameAddUniteSEdt.Text;
          post;

           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_famp').Value := NameAddUniteSEdt.Text;
          post;
           end;
           end;
        NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(ProduitGestionF) then
       begin
//        ProduitGestionF.FamilleProduitGCbx.Text:= NameAddUniteSEdt.Text;
        ProduitGestionF.FamilleProduitGCbx.Items.Clear;
        ProduitGestionF.FamilleProduitGCbx.Items.Add(NameAddUniteSEdt.Text);
        ProduitGestionF.FamilleProduitGCbx.ItemIndex:= 0;
        ProduitGestionF.FamilleProduitGCbx.SetFocus;
        end;   end   else
       try
       NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
    end;
  end;
//---------------------------------------------------------
   //---This TAG = 1 for Add in Produit Sous Famille--///
  if OKAddUniteSBtn.Tag = 1 then
  begin
     if NameAddUniteSEdt.Text <> '' then
   begin
         with MainForm.SfamproduitTable do  begin
           if Image1.Tag = 0 then
           begin
            if NOT (IsEmpty) then
            begin
            Last;
            CodeUNIT:= FieldByName('code_sfamp').AsInteger + 1;
            end else
                begin
                 CodeUNIT:= 1;
                end;
            Append;
            fieldbyname('code_sfamp').Value := CodeUNIT;
            fieldbyname('nom_sfamp').Value := NameAddUniteSEdt.Text;
            post;

             end;
           if Image1.Tag = 1 then
           begin
            Edit;
            fieldbyname('nom_sfamp').Value := NameAddUniteSEdt.Text;
            post;
             end;
         end;

       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
         sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(ProduitGestionF) then
       begin
//        ProduitGestionF.SFamilleProduitGCbx.Text:= NameAddUniteSEdt.Text;
        ProduitGestionF.SFamilleProduitGCbx.Items.Clear;
        ProduitGestionF.SFamilleProduitGCbx.Items.Add(NameAddUniteSEdt.Text);
        ProduitGestionF.SFamilleProduitGCbx.ItemIndex:= 0;
        ProduitGestionF.SFamilleProduitGCbx.SetFocus;
       end;
         end
        else
      try
       NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
    end;
  end;
//----------------------------------------------------------
   //---This TAG = 2 for Add in Produit Unite--///
  if OKAddUniteSBtn.Tag = 2 then
  begin
    if NameAddUniteSEdt.Text <> '' then
  begin
        with MainForm.UniteTable do  begin
          if Image1.Tag = 0 then
         begin
          if NOT (IsEmpty) then
          begin
          Last;
          CodeUNIT:= FieldValues['code_u'] + 1;
          end else
              begin
               CodeUNIT:= 1;
              end;
          Append;
          fieldbyname('code_u').Value := CodeUNIT;
          fieldbyname('nom_u').Value := NameAddUniteSEdt.Text;
          post;

           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_u').Value := NameAddUniteSEdt.Text;
          post;
           end;
       end;

       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
        sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
       if Assigned(ProduitGestionF) then
       begin
//       ProduitGestionF.UniteProduitGCbx.Text:= NameAddUniteSEdt.Text;
        ProduitGestionF.UniteProduitGCbx.Items.Clear;
        ProduitGestionF.UniteProduitGCbx.Items.Add(NameAddUniteSEdt.Text);
        ProduitGestionF.UniteProduitGCbx.ItemIndex:= 0;
        ProduitGestionF.UniteProduitGCbx.SetFocus;
       end;
       end
      else
      try
      NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
  end;
  end;
  //----------------------------------------------------------
   //---This TAG = 3 for Add in Produit Localisation--///
  if OKAddUniteSBtn.Tag = 3 then
  begin
    if NameAddUniteSEdt.Text <> '' then
   begin
        with MainForm.LocalisationTable do  begin
          if Image1.Tag = 0 then
         begin
          if NOT (IsEmpty) then
          begin
          Last;
          CodeUNIT:= FieldValues['code_l'] + 1;
          end else
              begin
               CodeUNIT:= 1;
              end;
          Append;
          fieldbyname('code_l').Value := CodeUNIT;
          fieldbyname('nom_l').Value := NameAddUniteSEdt.Text;
          post;
           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_l').Value := NameAddUniteSEdt.Text;
          post;
           end;
       end;


       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
        sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(ProduitGestionF) then
       begin
       ProduitGestionF.LocalisationProduitGCbx.Text:= NameAddUniteSEdt.Text;
       ProduitGestionF.LocalisationProduitGCbx.SetFocus;
       end;
       end
      else
      try
      NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
  end;
  end;
  //----------------------------------------------------------
   //---This TAG = 4 for deltting  Produit--///
    if OKAddUniteSBtn.Tag = 4  then
    begin

      // Delete produit from Fav
      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
      for I := 1 to 60 do
      begin

         if Ini.ReadString('','Fav '+IntToStr(I), '') = MainForm.ProduitTable.FieldByName('nom_p').AsString then
         begin
          Ini.WriteString('','Fav '+IntToStr(I), '');
          Break
         end;

      end;
      Ini.UpdateFile;
      Ini.Free;

      // MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeP:= MainForm.ProduitTable.FieldValues['code_p'];
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM codebarres where codebarres.code_p = ' + IntToStr(codeP));
      MainForm.ProduitTable.Delete ;



    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;
    end;

 //---------------------------------------------------
   //---- This Tag = 5 for adding or ingoring when add the same prodect to bon reception  -----//
    if OKAddUniteSBtn.Tag = 5  then
    begin

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
    FSplashAddUnite.Release;

    end;
//------------------------------------------------------
//---- this tag = 6 is for empty the bon reception
   if OKAddUniteSBtn.Tag = 6 then
   begin
   MainForm.SQLQuery.ExecSQL('DELETE FROM n_series WHERE sold_ns = false AND code_barec = ' +QuotedStr(IntToStr(MainForm.Bona_recTable.FieldByName('code_barec').AsInteger)));
   MainForm.SQLQuery.ExecSQL('DELETE FROM bona_rec_list WHERE code_barec = ' +QuotedStr(IntToStr(MainForm.Bona_recTable.FieldByName('code_barec').AsInteger)));
   MainForm.Bona_recPlistTable.Refresh;
   BonRecGestionF.BonRecGFourNEWCredit.Caption:= BonRecGestionF.BonRecTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;
//---- this tag = 7 is for adding the mpde de paiement from bon rec ------///
   if OKAddUniteSBtn.Tag = 7 then
   begin
    if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       BonRecGestionF.ModePaieBonRecGCbx.Text:= NameAddUniteSEdt.Text;
       BonRecGestionF.ModePaieBonRecGCbx.SetFocus;
       BonRecGestionF.ModePaieBonRecGCbxClick(Sender);
       end
      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

   //---- this tag = 8 is for Delting Bon de recption ------///
   if OKAddUniteSBtn.Tag = 8 then
   begin

       //    MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
      //----- this is to delte the old ciredit when we delte the bon rec
//      if (MainForm.Bona_recTable.FieldByName('code_f').AsInteger <> 0) AND (MainForm.Bona_recTable.FieldByName('code_f').AsInteger <> null)  then
//      begin
//      CodeF:=  MainForm.Bona_recTable.FieldByName('code_f').AsInteger;
//      end;
//      MainForm.FournisseurTable.DisableControls;
//      MainForm.FournisseurTable.Active:= false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur WHERE code_f ='+ Inttostr(codeF) ;
//      MainForm.FournisseurTable.Active:= True;
//      if MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency <> 0 then
//      begin
//      MainForm.FournisseurTable.Edit;
//      MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency:= (MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency) - (MainForm.Bona_recTable.FieldByName('MontantRes').AsCurrency);
//      MainForm.FournisseurTable.Post;
//      end;

      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bona_rec_list where code_barec = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM n_series WHERE sold_ns = false AND code_barec = ' +IntToStr(codeBR));
      MainForm.Bona_recTable.Delete ;
      MainForm.Bona_recTable.Refresh ;
      MainForm.RegfournisseurTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

//      MainForm.FournisseurTable.Active:= false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur ';
//      MainForm.FournisseurTable.Active:= True;
//      MainForm.FournisseurTable.EnableControls;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;


   end;

//---- this tag = 9 is for Delting Bon de livration ------///
   if OKAddUniteSBtn.Tag = 9 then
   begin

          //    MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
      //----- this is to delte the old ciredit when we delte the bon liv


//     if (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0) AND (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> null)  then
//      begin
//      CodeF:=  MainForm.Bonv_livTable.FieldByName('code_c').AsInteger;
//      end;
//
//      MainForm.ClientTable.DisableControls;
//      MainForm.ClientTable.Active:= false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
//      MainForm.ClientTable.Active:= True;
//      if MainForm.ClientTable.FieldByName('credit_c').AsCurrency <> 0 then
//      begin
//      MainForm.ClientTable.Edit;
//      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - (MainForm.Bonv_livTable.FieldByName('MontantRes').AsCurrency);
//      MainForm.ClientTable.Post;
//      end;


      //Here we delete all serial numbers related to this product
      DataModuleF.SQLQuery3.Active:=false;
      DataModuleF.SQLQuery3.SQL.Clear;
      DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,code_bvliv FROM n_series WHERE code_bvliv = '+ IntToStr(codeBR);
      DataModuleF.SQLQuery3.Active:=True;

      if (NOT DataModuleF.SQLQuery3.IsEmpty) then
      begin
        DataModuleF.SQLQuery3.First;
        while NOT DataModuleF.SQLQuery3.Eof do
        begin
         DataModuleF.SQLQuery3.Edit;
         DataModuleF.SQLQuery3.FieldByName('code_bvliv').AsInteger:= 0;
         DataModuleF.SQLQuery3.Post;

         DataModuleF.SQLQuery3.Next;
        end;


      end;
      MainForm.SQLQuery3.Active:=false;
      MainForm.SQLQuery3.SQL.Clear;


      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_liv_list where code_bvliv = ' + IntToStr(codeBR));




      MainForm.Bonv_livTable.Delete ;
      MainForm.Bonv_livTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

//      MainForm.ClientTable.Active:= false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client ';
//      MainForm.ClientTable.Active:= True;
//
//      MainForm.ClientTable.EnableControls;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;

   end;

 //---- this tag = 10 is for adding or ingeoring the same produit in bon liv ------///
   if OKAddUniteSBtn.Tag = 10 then
   begin

        AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;

 //---- this tag = 11 is for adding the mpde de paiement from bon liv  ------///
   if OKAddUniteSBtn.Tag = 11 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       BonLivGestionF.ModePaieBonLivGCbx.Text:= NameAddUniteSEdt.Text;
       BonLivGestionF.ModePaieBonLivGCbx.SetFocus;
       BonLivGestionF.ModePaieBonLivGCbxClick(Sender);
       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

 //---- this tag = 12 is for empty the bon livration   ------///
   if OKAddUniteSBtn.Tag = 12 then
   begin

    //Here we delete all serial numbers related to this product
        DataModuleF.SQLQuery3.Active:=false;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,code_bvliv FROM n_series WHERE code_bvliv = '
        + IntToStr(MainForm.Bonv_liv_listTable.FieldByName('code_bvliv').AsInteger);
        DataModuleF.SQLQuery3.Active:=True;

        if (NOT DataModuleF.SQLQuery3.IsEmpty) then
        begin
          DataModuleF.SQLQuery3.First;
          while NOT DataModuleF.SQLQuery3.Eof do
          begin
           DataModuleF.SQLQuery3.Edit;
           DataModuleF.SQLQuery3.FieldByName('code_bvliv').AsInteger:= 0;
           DataModuleF.SQLQuery3.Post;

           DataModuleF.SQLQuery3.Next;
          end;


        end;

    MainForm.SQLQuery3.Active:=false;
    MainForm.SQLQuery3.SQL.Clear;

    MainForm.SQLQuery.ExecSQL('DELETE FROM bonv_liv_list WHERE code_bvliv = ' +QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger)));
    MainForm.Bonv_liv_listTable.Refresh;
    BonLivGestionF.BonLivGClientNEWCredit.Caption:= BonLivGestionF.BonLivTotalTTCLbl.Caption;
    sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;


 //---- this tag = 13 is for deleting facture de vente ------///
   if OKAddUniteSBtn.Tag = 13 then
   begin
               //    MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
      //----- this is to delte the old ciredit when we delte the bon liv
//      if (MainForm.Bonv_facTable.FieldByName('code_c').AsInteger <> 0) AND (MainForm.Bonv_facTable.FieldByName('code_c').AsInteger <> null)  then
//      begin
//      CodeF:=  MainForm.Bonv_facTable.FieldByName('code_c').AsInteger;
//      end;

//      MainForm.ClientTable.DisableControls;
//      MainForm.ClientTable.Active:= false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
//      MainForm.ClientTable.Active:= True;
//
//      if MainForm.ClientTable.FieldValues['credit_c'] <> 0 then
//      begin
//      MainForm.ClientTable.Edit;
//      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - (MainForm.Bonv_facTable.FieldByName('MontantRes').AsCurrency);
//      MainForm.ClientTable.Post;
//      end;

      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_fac_list where code_bvfac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvfac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvfac = ' + IntToStr(codeBR));
      MainForm.Bonv_facTable.Delete ;
      MainForm.Bonv_facTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

//      MainForm.ClientTable.Active:= false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client ';
//      MainForm.ClientTable.Active:= True;
//
//      MainForm.ClientTable.EnableControls;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;
   end;

    //---- this tag = 14 is for empty the facture de vente------///
   if OKAddUniteSBtn.Tag = 14 then
   begin
     MainForm.SQLQuery.ExecSQL('DELETE FROM bonv_fac_list WHERE code_bvfac = ' +QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldByName('code_bvfac').AsInteger)));
   MainForm.Bonv_fac_listTable.Refresh;
   BonFacVGestionF.BonFacVGClientNEWCredit.Caption:= BonFacVGestionF.BonFacVTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;

    //---- this tag = 15 is for adding or ingeoring the same produit in facture de vente ------///
   if OKAddUniteSBtn.Tag = 15 then
   begin

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;


    //---- this tag = 16 is for deleting facture d''achat ------///
   if OKAddUniteSBtn.Tag = 16 then
   begin
                  //    MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= MainForm.Bona_facTable.FieldValues['code_bafac'];
      //----- this is to delte the old ciredit when we delte the bon liv
//      if (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0) AND (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> null)  then
//      begin
//      CodeF:=  MainForm.Bona_facTable.FieldByName('code_f').AsInteger;
//      end;
//
//      MainForm.FournisseurTable.DisableControls;
//      MainForm.FournisseurTable.Active:= false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur WHERE code_f ='+ Inttostr(codeF) ;
//      MainForm.FournisseurTable.Active:= True;


//      if MainForm.ClientTable.FieldByName('credit_c').AsCurrency <> 0 then
//      begin
//      MainForm.ClientTable.Edit;
//      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - (MainForm.Bona_facTable.FieldByName('MontantRes').AsCurrency);
//      MainForm.ClientTable.Post;
//      end;

      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bona_fac_list where code_bafac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(codeBR));
      MainForm.Bona_facTable.Delete ;
      MainForm.Bona_facTable.Refresh ;
      MainForm.RegfournisseurTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

//      MainForm.FournisseurTable.Active:= false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur ';
//      MainForm.FournisseurTable.Active:= True;
//      MainForm.FournisseurTable.EnableControls;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;

   end;


    //---- this tag = 17 is for for empty the facture d''achat ------///
   if OKAddUniteSBtn.Tag = 17 then
   begin
           MainForm.SQLQuery.ExecSQL('DELETE FROM bona_fac_list WHERE code_bafac = ' +QuotedStr(IntToStr(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger)));
   MainForm.Bona_fac_listTable.Refresh;
   BonFacAGestionF.BonFacAGFourNEWCredit.Caption:= BonFacAGestionF.BonFacATotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;

 //---- this tag = 18 is for adding the mpde de paiement from facture de vente  ------///
   if OKAddUniteSBtn.Tag = 18 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       BonFacVGestionF.ModePaieBonFacVGCbx.Text:= NameAddUniteSEdt.Text;
       BonFacVGestionF.ModePaieBonFacVGCbx.SetFocus;
       BonFacVGestionF.ModePaieBonFacVGCbxClick(Sender);
       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

  //---- this tag = 19 is for adding the mpde de paiement from facture d''achat  ------///
   if OKAddUniteSBtn.Tag = 19 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')';
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;

//-------- use ths tag to inore the next code when adding from the modepai form-----
         if RequiredStarAddUniteSLbl.Tag = 0 then
         begin
          BonFacAGestionF.ModePaieBonFacAGCbx.Text:= NameAddUniteSEdt.Text;
          BonFacAGestionF.ModePaieBonFacAGCbx.SetFocus;
          BonFacAGestionF.ModePaieBonFacAGCbxClick(Sender);
         end;
       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

       //---- this tag = 20 is for adding or ingeoring the same produit in facture D''ACHAT------///
   if OKAddUniteSBtn.Tag = 20 then
   begin

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;


//---- this tag = 21 is for Delting Bon de comptoir de vente ------///
   if OKAddUniteSBtn.Tag = 21 then
   begin

          //    MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
      //----- this is to delte the old ciredit when we delte the bon liv
    //  CodeF:=  MainForm.Bonv_ctrTable.FieldValues['code_c'];
     {
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:= false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
      MainForm.ClientTable.Active:= True;
      if MainForm.ClientTable.FieldValues['oldcredit_c'] <> 0 then
      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldValues['oldcredit_c']:= (MainForm.ClientTable.FieldValues['oldcredit_c']) - (MainForm.Bonv_ctrTable.FieldValues['MontantRes']);
      MainForm.ClientTable.Post;
      end;
      MainForm.ClientTable.EnableControls;
      }
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_ctr_list where code_bvctr = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr = ' + IntToStr(codeBR));
      MainForm.Bonv_ctrTable.Delete ;
      MainForm.Bonv_ctrTable.Refresh ;
//      MainForm.Bonv_ctr_listTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;

   end;


    //---- this tag = 22 is for empty the comptior   ------///
   if OKAddUniteSBtn.Tag = 22 then
   begin
        MainForm.SQLQuery.ExecSQL('DELETE FROM bonv_ctr_list WHERE code_bvctr = ' +QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldByName('code_bvctr').AsInteger)));
   MainForm.Bonv_ctr_listTable.Refresh;
    BonCtrGestionF.FormStyle:= fsStayOnTop;
//   BonCtrGestionF.BonCtrGClientNEWCredit.Caption:= BonCtrGestionF.BonCtrSTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;


       //---- this tag = 23 is for adding or ingeoring the same produit in comptoir------///
   if OKAddUniteSBtn.Tag = 23 then
   begin

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
    FSplashAddUnite.Release;

   end;
          //---- this tag = 24 is for Delleting reglement four  ------///
   if OKAddUniteSBtn.Tag = 24 then
   begin
      CodeF:=  MainForm.RegfournisseurTable.FieldValues['code_f'];
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:= false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur WHERE code_f ='+ Inttostr(codeF) ;
      MainForm.FournisseurTable.Active:= True;
//      if MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency <> 0 then
      begin
      MainForm.FournisseurTable.Edit;
      MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency:= (MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency) + (MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency);
      MainForm.FournisseurTable.Post;
      end;

        MainForm.SQLQuery.ExecSQL('DELETE FROM regfournisseur WHERE code_rf = ' +IntToStr(MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger));
        MainForm.SQLQuery.ExecSQL('DELETE FROM opt_cas_bnk WHERE code_rf = ' +IntToStr(MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger));
        MainForm.RegfournisseurTable.Refresh;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;


      MainForm.FournisseurTable.Active:= false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur ';
      MainForm.FournisseurTable.Active:= True;
      MainForm.FournisseurTable.EnableControls;

//   BonCtrGestionF.BonCtrGClientNEWCredit.Caption:= BonCtrGestionF.BonCtrSTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;


             //---- this tag = 25 is for Delleting reglement client  ------///
   if OKAddUniteSBtn.Tag = 25 then
   begin
         CodeF:=  MainForm.RegclientTable.FieldValues['code_c'];
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:= false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
      MainForm.ClientTable.Active:= True;
//      if MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency <> 0 then
      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) + (MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency);
      MainForm.ClientTable.Post;
      end;

        MainForm.SQLQuery.ExecSQL('DELETE FROM regclient WHERE code_rc = ' +IntToStr(MainForm.RegclientTable.FieldByName('code_rc').AsInteger));
        MainForm.SQLQuery.ExecSQL('DELETE FROM opt_cas_bnk WHERE code_rc = ' +IntToStr(MainForm.RegclientTable.FieldByName('code_rc').AsInteger));
        MainForm.RegclientTable.Refresh;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;

      MainForm.ClientTable.Active:= false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client ';
      MainForm.ClientTable.Active:= True;
      MainForm.ClientTable.EnableControls;

//   BonCtrGestionF.BonCtrGClientNEWCredit.Caption:= BonCtrGestionF.BonCtrSTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;



   //---- this tag = 26 is for adding the mpde de paiement from reg four  ------///
   if OKAddUniteSBtn.Tag = 26 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       ReglementFGestionF.ModePaieRegFGCbx.Text:= NameAddUniteSEdt.Text;
       ReglementFGestionF.ModePaieRegFGCbx.SetFocus;
       ReglementFGestionF.ModePaieRegFGCbxClick(Sender);
       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

      //---- this tag = 27 is for adding the mpde de paiement from reg client  ------///
   if OKAddUniteSBtn.Tag = 27 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       ReglementCGestionF.ModePaieRegCGCbx.Text:= NameAddUniteSEdt.Text;
       ReglementCGestionF.ModePaieRegCGCbx.SetFocus;
       ReglementCGestionF.ModePaieRegCGCbxClick(Sender);
       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;



    //---- this tag = 28 is for adding the mpde de paiement from mode paie form  ------///
   if OKAddUniteSBtn.Tag = 28 then
   begin
     if NameAddUniteSEdt.Text <> '' then
  begin
//      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')';
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end else
              begin
              fieldbyname('code_cmpt').AsInteger:= 0;
              end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end else
              begin
              fieldbyname('code_cmpt').AsInteger:= 0;
              end;
          post;
         end;
      end;
//       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
//       MainForm.Mode_paiementTable.IndexesActive:=True;
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

//-------- use ths tag to inore the next code when adding from the modepai form-----
//         if RequiredStarAddUniteSLbl.Tag = 0 then
//         begin
//          BonFacAGestionF.ModePaieBonFacAGCbx.Text:= NameAddUniteSEdt.Text;
//          BonFacAGestionF.ModePaieBonFacAGCbx.SetFocus;
//          BonFacAGestionF.ModePaieBonFacAGCbxClick(Sender);
//         end;
       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

     //---- this tag = 29 is for editing from mode paie list form  ------///
   if OKAddUniteSBtn.Tag = 29 then
   begin
     if NameAddUniteSEdt.Text <> '' then
  begin
//      MainForm.Mode_paiementTable.Active:=false;
//      MainForm.Mode_paiementTable.SQL.Clear;
//      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
//      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')';
      MainForm.CompteTable.Active:=True;
       with MainForm.Mode_paiementTable do  begin

          Edit;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end else
              begin
              fieldbyname('code_cmpt').AsInteger:= 0;
              end;
          post;
           end;
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       end

      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;

   end;


  //---This TAG = 30 for Add in Charge type--///
  if OKAddUniteSBtn.Tag = 30 then
  begin
      if NameAddUniteSEdt.Text <> '' then
   begin
        with DataModuleF.Charge_typeTable do  begin

          if Image1.Tag = 0 then
         begin
            if NOT (IsEmpty) then
            begin
            Last;
            CodeUNIT:= FieldValues['code_cht'] + 1;
            end else
                begin
                 CodeUNIT:= 1;
                end;
          Append;
          fieldbyname('code_cht').Value := CodeUNIT;
          fieldbyname('nom_cht').Value := NameAddUniteSEdt.Text;
          post;

           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_cht').Value := NameAddUniteSEdt.Text;
          post;
           end;
           end;
        NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(ChargesGestionF) then
       begin
        ChargesGestionF.TypeChargeGCbx.Text:= NameAddUniteSEdt.Text;
        ChargesGestionF.TypeChargeGCbx.SetFocus;
        end;   end   else
       try
       NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
    end;
  end;


    //---This TAG = 31 for Add in sous type charge--///
  if OKAddUniteSBtn.Tag = 31 then
  begin
     if NameAddUniteSEdt.Text <> '' then
   begin
        with DataModuleF.Charge_s_typeTable do  begin

          if Image1.Tag = 0 then
         begin
            if NOT (IsEmpty) then
            begin
            Last;
            CodeUNIT:= FieldValues['code_chst'] + 1;
            end else
                begin
                 CodeUNIT:= 1;
                end;
          Append;
          fieldbyname('code_chst').Value := CodeUNIT;
          fieldbyname('nom_chst').Value := NameAddUniteSEdt.Text;
          post;

           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_chst').Value := NameAddUniteSEdt.Text;
          post;
           end;
           end;
        NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(ChargesGestionF) then
       begin
        ChargesGestionF.STypeChargeGCbx.Text:= NameAddUniteSEdt.Text;
        ChargesGestionF.STypeChargeGCbx.SetFocus;
        end;   end   else
       try
       NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
    end;
  end;


            //---- this tag = 32 is for Delleting Charge  ------///
   if OKAddUniteSBtn.Tag = 32 then
   begin
      CodeF:=  DataModuleF.ChargesTable.FieldValues['code_ch'];

        MainForm.SQLQuery.ExecSQL('DELETE FROM charges WHERE code_ch = ' +IntToStr(DataModuleF.ChargesTable.FieldByName('code_ch').AsInteger));
        MainForm.SQLQuery.ExecSQL('DELETE FROM opt_cas_bnk WHERE code_ch = ' +IntToStr(DataModuleF.ChargesTable.FieldByName('code_ch').AsInteger));
//        DataModuleF.ChargesTable.Refresh;
        DataModuleF.ChargesTable.Close;
        DataModuleF.ChargesTable.Open;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
//        ChargesFListF.ChargesListDBGridEh.Refresh;

   sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;


     //---This TAG = 33 for Add in Perte type--///
  if OKAddUniteSBtn.Tag = 33 then
  begin
      if NameAddUniteSEdt.Text <> '' then
   begin
        with DataModuleF.Perte_typeTable do  begin

          if Image1.Tag = 0 then
         begin
            if NOT (IsEmpty) then
            begin
            Last;
            CodeUNIT:= FieldValues['code_prt'] + 1;
            end else
                begin
                 CodeUNIT:= 1;
                end;
          Append;
          fieldbyname('code_prt').Value := CodeUNIT;
          fieldbyname('nom_prt').Value := NameAddUniteSEdt.Text;
          post;

           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_prt').Value := NameAddUniteSEdt.Text;
          post;
           end;
           end;
        NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(PertesGestionF) then
       begin
        PertesGestionF.TypePerteGCbx.Text:= NameAddUniteSEdt.Text;
        PertesGestionF.TypePerteGCbx.SetFocus;
        end;   end   else
       try
       NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
    end;
  end;

 //---- this tag = 34 is for Delleting Perte  ------///
   if OKAddUniteSBtn.Tag = 34 then
   begin
      CodeF:=  DataModuleF.PertesTable.FieldValues['code_pr'];
      CodeP:=  DataModuleF.PertesTable.FieldByName('code_p').AsInteger ;

             MainForm.SQLQuery.Active:= False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.SQLQuery.SQL.Text:='SELECT code_p, qut_p FROM produit WHERE code_p = ' +IntToStr(CodeP) + ' GROUP BY code_p, qut_p'  ;
             MainForm.SQLQuery.Active:= True;

             MainForm.SQLQuery.Edit;
             MainForm.SQLQuery.FieldValues['qut_p']:= (MainForm.SQLQuery.FieldValues['qut_p'] + DataModuleF.PertesTable.FieldValues['qut_p'] );
             MainForm.SQLQuery.Post;
             
             MainForm.SQLQuery.Active:=False;
             MainForm.SQLQuery.SQL.Clear;

        MainForm.SQLQuery.ExecSQL('DELETE FROM pertes WHERE code_pr = ' +IntToStr(DataModuleF.PertesTable.FieldByName('code_pr').AsInteger));

        DataModuleF.PertesTable.Close;
        DataModuleF.PertesTable.Open;

   sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;

   //---- this tag = 35 is for deleting facture Proforma ------///
   if OKAddUniteSBtn.Tag = 35 then
   begin
               //    MainForm.ProduitTable.Last ;
      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
      //----- this is to delte the old ciredit when we delte the bon liv
//      if (MainForm.Bonv_facTable.FieldByName('code_c').AsInteger <> 0) AND (MainForm.Bonv_facTable.FieldByName('code_c').AsInteger <> null)  then
//      begin
//      CodeF:=  MainForm.Bonv_facTable.FieldByName('code_c').AsInteger;
//      end;

//      MainForm.ClientTable.DisableControls;
//      MainForm.ClientTable.Active:= false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
//      MainForm.ClientTable.Active:= True;
//
//      if MainForm.ClientTable.FieldValues['credit_c'] <> 0 then
//      begin
//      MainForm.ClientTable.Edit;
//      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - (MainForm.Bonv_facTable.FieldByName('MontantRes').AsCurrency);
//      MainForm.ClientTable.Post;
//      end;

      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonp_fac_list where code_bpfac = ' + IntToStr(codeBR));
//      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvfac = ' + IntToStr(codeBR));
//      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvfac = ' + IntToStr(codeBR));
      MainForm.Bonp_facTable.Delete ;
      MainForm.Bonp_facTable.Refresh ;
//      MainForm.RegclientTable.Refresh ;
//      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

//      MainForm.ClientTable.Active:= false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client ';
//      MainForm.ClientTable.Active:= True;
//
//      MainForm.ClientTable.EnableControls;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;
   end;

    //---- this tag = 36 is for empty the facture Proforma------///
   if OKAddUniteSBtn.Tag = 36 then
   begin
     MainForm.SQLQuery.ExecSQL('DELETE FROM bonp_fac_list WHERE code_bpfac = ' +QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldByName('code_bpfac').AsInteger)));
   MainForm.Bonp_fac_listTable.Refresh;
   BonFacPGestionF.BonFacVGClientNEWCredit.Caption:= BonFacPGestionF.BonFacVTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;
   //---- this tag = 37 is for adding or ingeoring the same produit in facture  proforma ------///
   if OKAddUniteSBtn.Tag = 37 then
   begin
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;
   //---- this tag = 38 is for adding the mpde de paiement from charge  ------///
   if OKAddUniteSBtn.Tag = 38 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')';
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;

//-------- use ths tag to inore the next code when adding from the modepai form-----
         if RequiredStarAddUniteSLbl.Tag = 0 then
         begin
          ChargesGestionF.ModePaieChargeGCbx.Text:= NameAddUniteSEdt.Text;
          ChargesGestionF.ModePaieChargeGCbx.SetFocus;
          ChargesGestionF.ModePaieChargeGCbxClick(Sender);
         end;
       end


      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;
   //---- this tag = 39 is for adding the mpde de paiement from transfer enter les comptes  ------///
   if OKAddUniteSBtn.Tag = 39 then
   begin
      if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')';
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;

//-------- use ths tag to inore the next code when adding from the modepai form-----
         if RequiredStarAddUniteSLbl.Tag = 0 then
         begin
          TransferComptesGestionF.ModePaieTransferGCbx.Text:= NameAddUniteSEdt.Text;
          TransferComptesGestionF.ModePaieTransferGCbx.SetFocus;
//          TransferComptesGestionF.ModePaieTransferGCbxClick(Sender);
         end;
       end


      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;
   //---- this tag = 40 is for Delleting transfer  ------///
   if OKAddUniteSBtn.Tag = 40 then
   begin
      CodeF:=  DataModuleF.Transfer_comptesTable.FieldValues['code_transfer'];

        MainForm.SQLQuery.ExecSQL('DELETE FROM transfer_comptes WHERE code_transfer = ' +IntToStr(DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger));
        MainForm.SQLQuery.ExecSQL('DELETE FROM opt_cas_bnk WHERE code_transfer = ' +IntToStr(DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger));
//        DataModuleF.ChargesTable.Refresh;
        DataModuleF.Transfer_comptesTable.Close;
        DataModuleF.Transfer_comptesTable.Open;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;
//        ChargesFListF.ChargesListDBGridEh.Refresh;

   sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;
    //---- this tag = 41 is for empty the inventaire  ------///
   if OKAddUniteSBtn.Tag = 41 then
   begin
     MainForm.SQLQuery.ExecSQL('DELETE FROM inventory_list WHERE code_i = ' +QuotedStr(IntToStr(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger)));
     DataModuleF.Inventory_listTable.Close;
     DataModuleF.Inventory_listTable.Open;
     sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
     FSplashAddUnite.Release;
   end;


   //---- this tag = 42 is for Deleteing Inventaire  ------///
   if OKAddUniteSBtn.Tag = 42 then
   begin

      if DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean = True then
      begin

         //Update gap_il
          DataModuleF.Inventory_listTable.DisableControls;
          DataModuleF.Inventory_listTable.First;
          while NOT DataModuleF.Inventory_listTable.Eof do
          begin

            CodeP:= DataModuleF.Inventory_listTable.FieldByName('code_p').AsInteger;

            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:='SELECT code_p, qut_p FROM produit WHERE code_p ='+ IntToStr(codeP);
            MainForm.SQLQuery.Active:=True;

            MainForm.SQLQuery.Edit;
            MainForm.SQLQuery.FieldByName('qut_p').AsFloat:=
            MainForm.SQLQuery.FieldByName('qut_p').AsFloat + DataModuleF.Inventory_listTable.FieldByName('gap_il').AsFloat;
            MainForm.SQLQuery.Post;

            DataModuleF.Inventory_listTable.Next;
          end;
          DataModuleF.Inventory_listTable.EnableControls;

         MainForm.ProduitTable.Refresh;

         MainForm.SQLQuery.ExecSQL('DELETE FROM inventory_list WHERE code_i = ' +IntToStr(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger));
         MainForm.SQLQuery.ExecSQL('DELETE FROM inventory WHERE code_i = ' +IntToStr(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger));

      end else
          begin

           MainForm.SQLQuery.ExecSQL('DELETE FROM inventory_list WHERE code_i = ' +IntToStr(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger));
           MainForm.SQLQuery.ExecSQL('DELETE FROM inventory WHERE code_i = ' +IntToStr(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger));

          end;

        DataModuleF.InventoryTable.Close;
        DataModuleF.InventoryTable.Open;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;

     sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
     FSplashAddUnite.Release;
   end;


   //------------------------------------------------------
//---- this tag = 43 is for empty the bon commande
   if OKAddUniteSBtn.Tag = 43 then
   begin
   MainForm.SQLQuery.ExecSQL('DELETE FROM bona_com_list WHERE code_bacom = ' +QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger)));
   DataModuleF.Bona_com_listTable.Refresh;
   BonComAGestionF.BonComGFourNEWCredit.Caption:= BonComAGestionF.BonComTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;
   //---- this tag = 44 is for Delting Bon de commande ------///
   if OKAddUniteSBtn.Tag = 44 then
   begin

      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
      //----- this is to delte the old ciredit when we delte the bon com
      if (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> 0) AND (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> null)  then
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bona_com_list where code_bacom = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bacom = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bacom = ' + IntToStr(codeBR));
      DataModuleF.Bona_comTable.Delete ;
      DataModuleF.Bona_comTable.Refresh ;
      MainForm.RegfournisseurTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;

   end;

   //---- this tag = 45 is for adding or ingeoring the same produit in bon command ------///
   if OKAddUniteSBtn.Tag = 45 then
   begin
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;

   end;


     //---- this tag = 46 is for Delting commande Client ------///
   if OKAddUniteSBtn.Tag = 46 then
   begin

      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
      //----- this is to delte the old ciredit when we delte the bon com
      if (DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger <> 0) AND (DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger <> null)  then
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_com_list where code_bvcom = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvcom = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvcom = ' + IntToStr(codeBR));
      DataModuleF.Bonv_comTable.Delete ;
      DataModuleF.Bonv_comTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;

   end;


   //---- this tag = 47 is for adding the mpde de paiement from Bon de Command Four ------///
   if OKAddUniteSBtn.Tag = 47 then
   begin
    if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       BonComAGestionF.ModePaieBonComGCbx.Text:= NameAddUniteSEdt.Text;
       BonComAGestionF.ModePaieBonComGCbx.SetFocus;
       BonComAGestionF.ModePaieBonComGCbxClick(Sender);
       end
      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;


   //---- this tag = 48 is for adding the mpde de paiement from Commande Client ------///
   if OKAddUniteSBtn.Tag = 48 then
   begin
    if NameAddUniteSEdt.Text <> '' then
  begin
      MainForm.Mode_paiementTable.IndexFieldNames:='';
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ORDER BY code_mdpai'  ;
      MainForm.Mode_paiementTable.Active:=True;

      MainForm.CompteTable.Active:=false;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteAddUniteSCbx.Text )+')'  ;
      MainForm.CompteTable.Active:=True;

     if MainForm.Mode_paiementTable.IsEmpty then
      begin
       with MainForm.Mode_paiementTable do  begin

          Append;
          fieldbyname('code_mdpai').AsInteger:= 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
           fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
           end;
      end else
      begin
        with MainForm.Mode_paiementTable do  begin
          MainForm.Mode_paiementTable.Last;
          CodeMDPai:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger ;
          Insert;
          fieldbyname('code_mdpai').AsInteger:= CodeMDPai + 1;
          fieldbyname('nom_mdpai').AsString := NameAddUniteSEdt.Text;
          if CompteAddUniteSCbx.Text <> '' then
          begin
          fieldbyname('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          end;
          post;
         end;
      end;
       MainForm.Mode_paiementTable.IndexFieldNames:='code_cmpt';
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       BonComVGestionF.ModePaieBonComGCbx.Text:= NameAddUniteSEdt.Text;
       BonComVGestionF.ModePaieBonComGCbx.SetFocus;
       BonComVGestionF.ModePaieBonComGCbxClick(Sender);
       end
      else
    try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
    end;
   end;

     //------------------------------------------------------
//---- this tag = 49 is for empty the Commande Client
   if OKAddUniteSBtn.Tag = 49 then
   begin
   MainForm.SQLQuery.ExecSQL('DELETE FROM bonv_com_list WHERE code_bvcom = ' +QuotedStr(IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger)));
   DataModuleF.Bonv_com_listTable.Refresh;
   BonComVGestionF.BonComGClientNEWCredit.Caption:= BonComVGestionF.BonComTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;


      //---- this tag = 50 is for Delting Bon de retur ------///
   if OKAddUniteSBtn.Tag = 50 then
   begin

      //------ this is a executable SQL use it for quick delete code barres in the DB when we cancel
      codeBR:= DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;
      //----- this is to delte the old ciredit when we delte the bon rec
      if (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> 0) AND (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> null)  then

      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_ret_list where code_bvret = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvret = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvret = ' + IntToStr(codeBR));
      DataModuleF.Bonv_retTable.Delete ;
      DataModuleF.Bonv_retTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

    sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
      FSplashAddUnite.Release;


   end;


         //---- this tag = 51 is for creating a new databse folder ------///
   if OKAddUniteSBtn.Tag = 51 then
   begin

     if NameAddUniteSEdt.Text <> '' then
     begin

       DBActivityIndicator.Visible:= True;
       DBActivityIndicator.Active:= True;
       OKAddUniteSBtn.Enabled:=False;
       CreateDBTask := TTask.Create (
       procedure ()
       begin

          DBName:= Copy(StringReplace(LowerCase (NameAddUniteSEdt.Text), ' ', '', [rfReplaceAll]),1,10);

          //--- here we check if the database name is doenst exist already-----
          DataModuleF.SQLQuery1.Active:= False;
          DataModuleF.SQLQuery1.SQL.Clear;
          DataModuleF.SQLQuery1.SQL.Text:= 'SELECT code_db,dbname_db,dbdesc_db,createdate_db FROM dblist WHERE dbname_db LIKE '+
              QuotedStr(DBName  +'~'+CompteAddUniteSCbx.Text) ;
          DataModuleF.SQLQuery1.Active:= true;

          if DataModuleF.SQLQuery1.IsEmpty then
          begin

              //--- Here we create the database and it double db
              with DataModuleF.PSDBConfigConnection do  begin
               ExecSQL(                    //--- Here we remove the spaces and take only the fisrt 10 charactars for the db name
                        'CREATE DATABASE "'+ DBName +'~'+
                        CompteAddUniteSCbx.Text  +
                        '" WITH OWNER = postgres '+
                             'ENCODING = ''UTF8'' '+
                             'TABLESPACE = pg_default '+
                             'CONNECTION LIMIT = -1; '
                       );
               ExecSQL(                    //--- Here we remove the spaces and take only the fisrt 10 charactars for the db name
                        'CREATE DATABASE "'+ DBName +'~2~'+
                        CompteAddUniteSCbx.Text  +
                        '" WITH OWNER = postgres '+
                             'ENCODING = ''UTF8'' '+
                             'TABLESPACE = pg_default '+
                             'CONNECTION LIMIT = -1;'
                       );
              end;

              //--- here we add the db name to dblist table in DBConfig-----
              DataModuleF.SQLQuery1.insert;
              DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString:=
                //--- Here we remove the spaces and take only the fisrt 10 charactars for the db name
                DBName +'~'+ CompteAddUniteSCbx.Text ;
              DataModuleF.SQLQuery1.FieldByName('dbdesc_db').AsString:= NameAddUniteSEdt.Text ;

              DataModuleF.SQLQuery1.FieldByName('createdate_db').AsDateTime:= Now;
              DataModuleF.SQLQuery1.Post;

              //----here we check which table were checked so we can dump the contanet into the new database
              if  //---chek if any of the silders is on so we create the tables here
                (Assigned(LoginUserF.DBProduitSdr) and  LoginUserF.DBProduitSdr.SliderOn) OR
                (Assigned(LoginUserF.DBClientSdr) and  LoginUserF.DBClientSdr.SliderOn) OR
                (Assigned(LoginUserF.DBFourSdr) and  LoginUserF.DBFourSdr.SliderOn)
              then
              begin

                  MainForm.GstockdcConnection.DriverName := 'PG';
                  MainForm.GstockdcConnection.Params.Values['Server'] :='localhost';
                  MainForm.GstockdcConnection.Params.Values['user_name'] := 'postgres';
                  MainForm.GstockdcConnection.Params.Values['password'] := ''; // ditto
                  MainForm.GstockdcConnection.Params.Values['Port'] := '5432';
                  MainForm.GstockdcConnection.LoginPrompt := False;

                  MainForm.GstockdcConnection.Params.Values['Database'] :=
                    DBName +'~'+ CompteAddUniteSCbx.Text;

                  MainForm.GstockdcConnection.Connected:= True;

//                  MainForm.CreateTablesFDScript.ExecuteAll;
//                  MainForm.InsertDataFDScript.ExecuteAll;
//                  MainForm.FunctionsTriggesFDScript.ExecuteAll;
//                  MainForm.AltersDBChangesFDScript.ExecuteAll;



                //--- get the source database name-----
                DataModuleF.SQLQuery1.Active:= False;
                DataModuleF.SQLQuery1.SQL.Clear;
                DataModuleF.SQLQuery1.SQL.Text:= 'SELECT dbname_db FROM dblist WHERE dbdesc_db LIKE '+ QuotedStr(LoginUserF.DBSourceDBCbx.Text) ;
//                QuotedStr(Copy(StringReplace(NameAddUniteSEdt.Text, ' ', '', [rfReplaceAll]),1,10)  +'~'+CompteAddUniteSCbx.Text) ;
                DataModuleF.SQLQuery1.Active:= true;

                if Assigned(LoginUserF.DBProduitSdr) and  LoginUserF.DBProduitSdr.SliderOn then
                begin
 //""C:\Program Files (x86)\PostgreSQL\10\bin\pg_dump.exe" -U postgres -t produit "GSTOCKDC"|"C:\Program Files (x86)\PostgreSQL\10\bin\psql.exe" -U postgres "hamza~2022""

                  //---List des produits
                  aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t produit "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);

                  //---List des produit code barres
                  aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t codebarres "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);

                  //---List des familles
                  aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t famproduit "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);

                  //---List des sous familes
                   aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t sfamproduit "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);

                  //---List des units
                   aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t unite "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);

                  //---List des locations
                   aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t localisation "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);
                end;

                if Assigned(LoginUserF.DBClientSdr) and  LoginUserF.DBClientSdr.SliderOn then
                begin
                    aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t client "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);
                end;

                if Assigned(LoginUserF.DBFourSdr) and  LoginUserF.DBFourSdr.SliderOn then
                begin
                   aCmdLine:= PChar('/c ""'+GetCurrentDir+'\bin\pg_dump.exe" -U postgres -t fournisseur "'+ DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString +
                  '"|"'+GetCurrentDir+'\bin\psql.exe" -U postgres "'+ DBName +'~'+ CompteAddUniteSCbx.Text +'""');

                  ShellExecute(Handle,nil,'CMD',aCmdLine,nil,SW_HIDE);
                end;

              end;

              //---here we make sure that we select the created db and set focus on pasword edt--
              LoginUserF.FolderCbxEnter(Sender);
              LoginUserF.FolderCbx.ItemIndex:= LoginUserF.FolderCbx.Items.Count -1 ;
              LoginUserF.PasswordEdt.SetFocus;

              NameAddUniteSErrorP.Visible:=False;
              RequiredAddUniteSlbl.Visible:=False;
              AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
              FSplashAddUnite.Release;
              sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);


          end else
              begin
                 try
                    NameAddUniteSEdt.BorderStyle:= bsNone;
                    NameAddUniteSEdt.StyleElements:= [];
                    RequiredAddUniteSlbl.Visible:= True;
                    RequiredAddUniteSlbl.Caption:= 'Ce nom de dossier existe déjà';

                    NameAddUniteSErrorP.Visible:= True;
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                   OKAddUniteSBtn.Enabled := False;
                   OKAddUniteSBtn.ImageIndex := 18;
                    finally
                    NameAddUniteSEdt.SetFocus;
                 end;
              end;

        DBActivityIndicator.Visible:= False;
        DBActivityIndicator.Active:= False;
        OKAddUniteSBtn.Enabled;
       end);
       CreateDBTask.Start;


        DataModuleF.SQLQuery1.Active:= False;
        DataModuleF.SQLQuery1.SQL.Clear;




         end
        else
        try
        NameAddUniteSEdt.BorderStyle:= bsNone;
        NameAddUniteSEdt.StyleElements:= [];
        RequiredAddUniteSlbl.Visible:= True;
        NameAddUniteSErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
       OKAddUniteSBtn.Enabled := False;
       OKAddUniteSBtn.ImageIndex := 18;
        finally
        NameAddUniteSEdt.SetFocus;
     end;

   end;

  //---This TAG = 52 for Add in Produit mark--///
  if OKAddUniteSBtn.Tag = 52 then
  begin
      if NameAddUniteSEdt.Text <> '' then
   begin

        with DataModuleF.MrkProduitTable do  begin

          if Image1.Tag = 0 then
         begin
            if NOT (IsEmpty) then
            begin
            Last;
            CodeUNIT:= FieldByName('code_mrkp').AsInteger + 1;
            end else
                begin
                 CodeUNIT:= 1;
                end;
          Append;
          fieldbyname('code_mrkp').AsInteger := CodeUNIT;
          fieldbyname('nom_mrkp').AsString := NameAddUniteSEdt.Text;
          post;

           end;
         if Image1.Tag = 1 then
         begin
          Edit;
          fieldbyname('nom_mrkp').AsString := NameAddUniteSEdt.Text;
          post;
           end;
        end;

        NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

       if Assigned(ProduitGestionF) then
       begin
//        ProduitGestionF.FamilleProduitGCbx.Text:= NameAddUniteSEdt.Text;
        ProduitGestionF.MarkProduitGCbx.Items.Clear;
        ProduitGestionF.MarkProduitGCbx.Items.Add(NameAddUniteSEdt.Text);
        ProduitGestionF.MarkProduitGCbx.ItemIndex:= 0;
        ProduitGestionF.MarkProduitGCbx.SetFocus;
        end;   end   else
       try
       NameAddUniteSEdt.BorderStyle:= bsNone;
      NameAddUniteSEdt.StyleElements:= [];
      RequiredAddUniteSlbl.Visible:= True;
      NameAddUniteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddUniteSBtn.Enabled := False;
     OKAddUniteSBtn.ImageIndex := 18;
      finally
      NameAddUniteSEdt.SetFocus;
    end;
  end;

end;

procedure TFSplashAddUnite.CompteAddUniteSCbxEnter(Sender: TObject);
var
I : Integer;
  begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte  ';
      MainForm.CompteTable.Active := True;
      MainForm.CompteTable.Refresh;
      CompteAddUniteSCbx.Items.Clear;
      MainForm.CompteTable.first;
     begin
     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteAddUniteSCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TFSplashAddUnite.CompteAddUniteSBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(FSplashAddUnite);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + FSplashAddUnite.Height +5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 0 ;
end;

end.
