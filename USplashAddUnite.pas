unit USplashAddUnite;

interface

uses
  Winapi.Windows, Winapi.Messages,MMSystem, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvToolBtn, System.ImageList,
  Vcl.ImgList, acAlphaImageList, Vcl.ExtCtrls, Vcl.StdCtrls, acPNG, acImage,
  Data.DB;

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
    AddUnitCompteDataS: TDataSource;
    procedure NameAddUniteSEdtChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelAddUniteSBtnClick(Sender: TObject);
    procedure OKAddUniteSBtnClick(Sender: TObject);
    procedure NameAddUniteSEdtKeyPress(Sender: TObject; var Key: Char);
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

uses Contnrs, Types, UProduitGestion, UMainF, UBonRecGestion, UFastProduitsList,
  USplashAddCompte, UBonLivGestion, UBonFacVGestion, UBonFacAGestion,
  UComptoir, UReglementCGestion, UReglementFGestion;

var
  gGrayForms: TComponentList;

procedure GrayForms;
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
               gGrayForms.Add(UForm);
               UForm.Position := poOwnerFormCenter;
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

procedure NormalForms;
begin
  FreeAndNil(gGrayForms);
end;

procedure TFSplashAddUnite.CancelAddUniteSBtnClick(Sender: TObject);
var CodeBR,CodeCB : integer;
begin
 //---- This Tag = 5  ingoring when add the same prodect to bon reception add anyway -----//
   if OKAddUniteSBtn.Tag = 5 then
    begin

    if FSplashAddUnite.Tag = 0 then
    begin
     if BonRecGestionF.ResherchPARDesProduitsRdioBtn.Checked then
      begin
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')' ;
      MainForm.ProduitTable.Active:=True;
      end;
     if BonRecGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')' ;
       MainForm.ProduitTable.Active:=True;
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
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonRecGestionF.ProduitBonRecGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
      end;
     end;

        MainForm.Bona_recPlistTable.DisableControls;
        MainForm.Bona_recPlistTable.IndexFieldNames:='';
        MainForm.Bona_recPlistTable.Active:=False;
        MainForm.Bona_recPlistTable.SQL.Clear;
        MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list ORDER by code_barecl' ;
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
       MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
       MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
       MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
       MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
       MainForm.Bona_recPlistTable.Post ;
       MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

       MainForm.Bona_recPlistTable.Active:=False;
       MainForm.Bona_recPlistTable.SQL.Clear;
       MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
       MainForm.Bona_recPlistTable.Active:=True;

       BonRecGestionF.ProduitBonRecGCbx.Text:='';

       BonRecGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonRecGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bona_recPlistTable.Last;

       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
       MainForm.ProduitTable.Active := True;

       MainForm.Bona_recPlistTable.Refresh;
       MainForm.Bona_recPlistTable.Last;
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
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonLivGestionF.ProduitBonLivGCbx.Text)+')' ;
      MainForm.ProduitTable.Active:=True;
      end;
     if BonLivGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonLivGestionF.ProduitBonLivGCbx.Text)+')' ;
       MainForm.ProduitTable.Active:=True;
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
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonLivGestionF.ProduitBonLivGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
      end;
     end;

        MainForm.Bonv_liv_listTable.DisableControls;
        MainForm.Bonv_liv_listTable.IndexFieldNames:='';
        MainForm.Bonv_liv_listTable.Active:=False;
        MainForm.Bonv_liv_listTable.SQL.Clear;
        MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list ORDER by code_bvlivl' ;
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
       MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
       MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonLivGestionF.ClientBonLivGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;
       MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonv_liv_listTable.Post ;
       MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

       MainForm.Bonv_liv_listTable.Active:=False;
       MainForm.Bonv_liv_listTable.SQL.Clear;
       MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
       MainForm.Bonv_liv_listTable.Active:=True;

       BonLivGestionF.ProduitBonLivGCbx.Text:='';

       BonLivGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonLivGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonv_liv_listTable.Last;

       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
       MainForm.ProduitTable.Active := True;

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
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonFacVGestionF.ProduitBonFacVGCbx.Text)+')' ;
      MainForm.ProduitTable.Active:=True;
      end;
     if BonFacVGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonFacVGestionF.ProduitBonFacVGCbx.Text)+')' ;
       MainForm.ProduitTable.Active:=True;
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
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonFacVGestionF.ProduitBonFacVGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
      end;
     end;
       MainForm.Bonv_fac_listTable.DisableControls;
        MainForm.Bonv_fac_listTable.IndexFieldNames:='';
        MainForm.Bonv_fac_listTable.Active:=False;
        MainForm.Bonv_fac_listTable.SQL.Clear;
        MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list ORDER by code_bvfacl' ;
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
       MainForm.Bonv_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
       MainForm.Bonv_fac_listTable.FieldValues['qut_p'] :=  01;
       if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacVGestionF.ClientBonFacVGCbx.Text<> '' ) then
       begin
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
         end;
         if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
         begin
         MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
         end;
         end else
             begin
              MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
       MainForm.Bonv_fac_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonv_fac_listTable.Post ;
       MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

       MainForm.Bonv_fac_listTable.Active:=False;
       MainForm.Bonv_fac_listTable.SQL.Clear;
       MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
       MainForm.Bonv_fac_listTable.Active:=True;

       BonFacVGestionF.ProduitBonFacVGCbx.Text:='';

       BonFacVGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonFacVGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonv_fac_listTable.Last;

       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
       MainForm.ProduitTable.Active := True;

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
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonFacAGestionF.ProduitBonFacAGCbx.Text)+')' ;
      MainForm.ProduitTable.Active:=True;
      end;
     if BonFacAGestionF.ResherchPARRefProduitsRdioBtn.Checked then
      begin
       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(BonFacAGestionF.ProduitBonFacAGCbx.Text)+')' ;
       MainForm.ProduitTable.Active:=True;
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
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonFacAGestionF.ProduitBonFacAGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
      end;
     end;
       MainForm.Bona_fac_listTable.DisableControls;
        MainForm.Bona_fac_listTable.IndexFieldNames:='';
        MainForm.Bona_fac_listTable.Active:=False;
        MainForm.Bona_fac_listTable.SQL.Clear;
        MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list ORDER by code_bafacl' ;
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
       MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
       MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
       MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
       MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bona_fac_listTable.Post ;
       MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';

       MainForm.Bona_fac_listTable.Active:=False;
       MainForm.Bona_fac_listTable.SQL.Clear;
       MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
       MainForm.Bona_fac_listTable.Active:=True;

       BonFacAGestionF.ProduitBonFacAGCbx.Text:='';

       BonFacAGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonFacAGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bona_fac_listTable.Last;

       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
       MainForm.ProduitTable.Active := True;

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

//      MainForm.ProduitTable.Active:=False;
//      MainForm.ProduitTable.SQL.Clear;
//      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(BonCtrGestionF.ProduitBonCtrGCbx.Text)+')' ;
//      MainForm.ProduitTable.Active:=True;


// this is for adddinf from combobox or pupilaire
       if BonCtrGestionF.ProduitsListDBGridEh.Tag <> 1 then
       begin
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit where code_p = '+ IntToStr(MainForm.Bonv_ctr_listTable.FieldByName('code_p').AsInteger );
        MainForm.ProduitTable.Active:=True;
       end else
            if BonCtrGestionF.ProduitsListDBGridEh.Tag = 1 then
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit where code_p = '+ IntToStr(MainForm.Bonv_ctr_Top10produit.FieldByName('code_p').AsInteger );
            MainForm.ProduitTable.Active:=True;
           end;



      if Not (MainForm.ProduitTable.IsEmpty) then
      begin
      CodeCB:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
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
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(BonCtrGestionF.ProduitBonCtrGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
      end;
//      If BonCtrGestionF.FormStyle = fsNormal  then
//      begin
//         BonCtrGestionF.FormStyle := fsStayOnTop;
//      end;
     end;
       MainForm.Bonv_ctr_listTable.DisableControls;
        MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
        MainForm.Bonv_ctr_listTable.Active:=False;
        MainForm.Bonv_ctr_listTable.SQL.Clear;
        MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list ORDER by code_bvctrl' ;
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
       MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
       MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;

       if  NOT (MainForm.ClientTable.IsEmpty) AND (BonCtrGestionF.ClientBonCtrGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;
       MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:= 01;
       MainForm.Bonv_ctr_listTable.Post ;
       MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

       MainForm.Bonv_ctr_listTable.Active:=False;
       MainForm.Bonv_ctr_listTable.SQL.Clear;
       MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
       MainForm.Bonv_ctr_listTable.Active:=True;

       BonCtrGestionF.ProduitBonCtrGCbx.Text:='';

       BonCtrGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
       BonCtrGestionF.ProduitsListDBGridEh.EditorMode:=True;

       MainForm.Bonv_ctr_listTable.Last;

       MainForm.ProduitTable.Active:=False;
       MainForm.ProduitTable.SQL.Clear;
       MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
       MainForm.ProduitTable.Active := True;

       MainForm.Bonv_ctr_listTable.Refresh;
       MainForm.Bonv_ctr_listTable.Last;
       MainForm.Bonv_ctr_listTable.EnableControls;



       if FSplashAddUnite.Tag = 6 then
       begin
         FastProduitsListF.BringToFront;
         FastProduitsListF.SetFocus;
         FastProduitsListF.ResearchProduitsEdt.SelectAll;
       end;
      if FSplashAddUnite.Tag = 5 then
       begin
        BonCtrGestionF.ProduitsListDBGridEh.SetFocus;
       end;

//      If BonCtrGestionF.FormStyle = fsNormal  then
//      begin
//         BonCtrGestionF.FormStyle := fsStayOnTop;
//      end;

       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_BLEND OR AW_HIDE);
       FSplashAddUnite.Release;

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
       GrayForms  ;
 if Assigned(ProduitGestionF) then
 begin
     SetWindowPos(ProduitGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
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


  NormalForms  ;

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

  if (key = #13) OR (key = #32) then
 begin

   OKAddUniteSBtnClick(Sender);

 end;

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

procedure TFSplashAddUnite.NameAddUniteSEdtKeyPress(Sender: TObject;
  var Key: Char);
begin
//---- close the form when i press Esc -----//

  if key = #27 then
 begin
 key := #0;
  CancelAddUniteSBtnClick(Sender);


 end;

 //---- jump to the next edit when i press enter-----//

if key = #13 then

begin
 key := #0;
OKAddUniteSBtnClick(Sender);

end;

end;

procedure TFSplashAddUnite.OKAddUniteSBtnClick(Sender: TObject);
var codeP,CodeMDPai,codeBR,CodeF: Integer;

begin
  //---This TAG = 0 for Add in Produit Famille--///
  if OKAddUniteSBtn.Tag = 0 then
  begin
      if NameAddUniteSEdt.Text <> '' then
   begin
    with MainForm.FamproduitTable do  begin
      Last;
      Insert;
      fieldbyname('nom_famp').Value := NameAddUniteSEdt.Text;
      post;
       end;
        NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       ProduitGestionF.FamilleProduitGCbx.Text:= NameAddUniteSEdt.Text;
       ProduitGestionF.FamilleProduitGCbx.SetFocus;
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
//---------------------------------------------------------
   //---This TAG = 1 for Add in Produit Sous Famille--///
  if OKAddUniteSBtn.Tag = 1 then
  begin
       if NameAddUniteSEdt.Text <> '' then
  begin
    with MainForm.SfamproduitTable do  begin
       Last;
      Insert;
      fieldbyname('nom_sfamp').Value := NameAddUniteSEdt.Text;
      post;
      end;
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       ProduitGestionF.SFamilleProduitGCbx.Text:= NameAddUniteSEdt.Text;
       ProduitGestionF.SFamilleProduitGCbx.SetFocus;
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
      Last;
      Insert;
      fieldbyname('nom_u').Value := NameAddUniteSEdt.Text;
      post;
      end;
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       ProduitGestionF.UniteProduitGCbx.Text:= NameAddUniteSEdt.Text;
       ProduitGestionF.UniteProduitGCbx.SetFocus;
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
      Last;
      Insert;
      fieldbyname('nom_l').Value := NameAddUniteSEdt.Text;
      post;
      end;
       NameAddUniteSErrorP.Visible:=False;
       RequiredAddUniteSlbl.Visible:=False;
       AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddUnite.Release;
       ProduitGestionF.LocalisationProduitGCbx.Text:= NameAddUniteSEdt.Text;
       ProduitGestionF.LocalisationProduitGCbx.SetFocus;
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
   //    MainForm.ProduitTable.Last ;
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
      codeBR:= MainForm.Bona_recTable.FieldValues['code_barec'];
      //----- this is to delte the old ciredit when we delte the bon rec
      CodeF:=  MainForm.Bona_recTable.FieldValues['code_f'];
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:= false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur WHERE code_f ='+ Inttostr(codeF) ;
      MainForm.FournisseurTable.Active:= True;
      if MainForm.FournisseurTable.FieldValues['oldcredit_f'] <> 0 then
      begin
      MainForm.FournisseurTable.Edit;
      MainForm.FournisseurTable.FieldValues['oldcredit_f']:= (MainForm.FournisseurTable.FieldValues['oldcredit_f']) - (MainForm.Bona_recTable.FieldValues['MontantRes']);
      MainForm.FournisseurTable.Post;
      end;
      MainForm.FournisseurTable.EnableControls;
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bona_rec_list where code_barec = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
      MainForm.Bona_recTable.Delete ;
      MainForm.Bona_recTable.Refresh ;
      MainForm.RegfournisseurTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

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
      CodeF:=  MainForm.Bonv_livTable.FieldValues['code_c'];
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:= false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
      MainForm.ClientTable.Active:= True;
      if MainForm.ClientTable.FieldValues['oldcredit_c'] <> 0 then
      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldValues['oldcredit_c']:= (MainForm.ClientTable.FieldValues['oldcredit_c']) - (MainForm.Bonv_livTable.FieldValues['MontantRes']);
      MainForm.ClientTable.Post;
      end;
      MainForm.ClientTable.EnableControls;
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_liv_list where code_bvliv = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBR));
      MainForm.Bonv_livTable.Delete ;
      MainForm.Bonv_livTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

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
      CodeF:=  MainForm.Bonv_facTable.FieldValues['code_c'];
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:= false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:= 'SELECT * FROM client WHERE code_c ='+ Inttostr(codeF) ;
      MainForm.ClientTable.Active:= True;
      if MainForm.ClientTable.FieldValues['oldcredit_c'] <> 0 then
      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldValues['oldcredit_c']:= (MainForm.ClientTable.FieldValues['oldcredit_c']) - (MainForm.Bonv_facTable.FieldValues['MontantRes']);
      MainForm.ClientTable.Post;
      end;
      MainForm.ClientTable.EnableControls;
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bonv_fac_list where code_bvfac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvfac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvfac = ' + IntToStr(codeBR));
      MainForm.Bonv_facTable.Delete ;
      MainForm.Bonv_facTable.Refresh ;
      MainForm.RegclientTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

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

    //---- this tag = 15 is for adding or ingeoring the same produit in facture de vente  ------///
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
      CodeF:=  MainForm.Bona_facTable.FieldValues['code_f'];
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:= false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur WHERE code_f ='+ Inttostr(codeF) ;
      MainForm.FournisseurTable.Active:= True;
      if MainForm.FournisseurTable.FieldValues['oldcredit_f'] <> 0 then
      begin
      MainForm.FournisseurTable.Edit;
      MainForm.FournisseurTable.FieldValues['oldcredit_f']:= (MainForm.FournisseurTable.FieldValues['oldcredit_f']) - (MainForm.Bona_facTable.FieldValues['MontantRes']);
      MainForm.FournisseurTable.Post;
      end;
      MainForm.FournisseurTable.EnableControls;
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM bona_fac_list where code_bafac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(codeBR));
      MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(codeBR));
      MainForm.Bona_facTable.Delete ;
      MainForm.Bona_facTable.Refresh ;
      MainForm.RegfournisseurTable.Refresh ;
      MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

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
      MainForm.Bonv_ctr_listTable.Refresh ;
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
        MainForm.SQLQuery.ExecSQL('DELETE FROM regfournisseur WHERE code_rf = ' +IntToStr(MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger));
        MainForm.SQLQuery.ExecSQL('DELETE FROM opt_cas_bnk WHERE code_rf = ' +IntToStr(MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger));
        MainForm.RegfournisseurTable.Refresh;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;

//   BonCtrGestionF.BonCtrGClientNEWCredit.Caption:= BonCtrGestionF.BonCtrSTotalTTCLbl.Caption;
   sndPlaySound('C:\Windows\Media\recycle.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddUnite.Release;
   end;


             //---- this tag = 25 is for Delleting reglement client  ------///
   if OKAddUniteSBtn.Tag = 25 then
   begin
        MainForm.SQLQuery.ExecSQL('DELETE FROM regclient WHERE code_rc = ' +IntToStr(MainForm.RegclientTable.FieldByName('code_rc').AsInteger));
        MainForm.SQLQuery.ExecSQL('DELETE FROM opt_cas_bnk WHERE code_rc = ' +IntToStr(MainForm.RegclientTable.FieldByName('code_rc').AsInteger));
        MainForm.RegclientTable.Refresh;
        MainForm.Opt_cas_bnk_CaisseTable.Refresh;

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

