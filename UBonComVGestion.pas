unit UBonComVGestion;

interface

uses
  Winapi.Windows,System.DateUtils,Winapi.MMSystem, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  EhLibFireDAC,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, acImage, frxClass,
  frxDBSet, frxExportXLS, frxExportPDF, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  Vcl.AppEvnts, frxExportBaseDialog;

type
  TBonComVGestionF = class(TForm)
    Panel3: TPanel;
    TopP2: TPanel;
    Shape1: TShape;
    EditBVComBonComGBtn: TAdvToolButton;
    AddBVComBonComGBtn: TAdvToolButton;
    Label4: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    NumBonComGEdt: TLabel;
    AddClientBonComGBtn: TAdvToolButton;
    Label8: TLabel;
    ValiderBVComBonComGBtn: TAdvToolButton;
    Label7: TLabel;
    AddModePaieBonComGBtn: TAdvToolButton;
    Label16: TLabel;
    AddCompteBonComGBtn: TAdvToolButton;
    ListAddProduitBonComGBtn: TAdvToolButton;
    DeleteProduitBonComGBtn: TAdvToolButton;
    NewAddProduitBonComGBtn: TAdvToolButton;
    RequiredClientGlbl: TLabel;
    EnterAddProduitBonComGBtn: TAdvToolButton;
    ClearProduitBonComGBtn: TAdvToolButton;
    ValiderBVComBonComGImg: TsImage;
    Shape5: TShape;
    BonCVTotalTTCNewLbl: TLabel;
    BonCVTotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    Label19: TLabel;
    ObserBonComGLbl: TLabel;
    BonCVRemiseHTNewLbl: TLabel;
    ValiderBVComBonComGLbl: TLabel;
    NameClientGErrorP: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonComGD: TDateTimePicker;
    ClientBonComGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    Panel2: TPanel;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonComGCbx: TComboBox;
    CompteBonComGCbx: TComboBox;
    Panel5: TPanel;
    BonComGClientOLDCredit: TLabel;
    BonComGClientNEWCredit: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Panel15: TPanel;
    NChequeBonComGCbx: TEdit;
    ObserBonComGMem: TMemo;
    ProduitsListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    label13: TLabel;
    label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BonComTotalTVALbl: TLabel;
    BonComRegleLbl: TLabel;
    BonComResteLbl: TLabel;
    BonComTotalHTLbl: TLabel;
    BonComTotalTTCLbl: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel14: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    RemisePerctageBonComGEdt: TEdit;
    RemiseBonComGEdt: TEdit;
    Panel1: TPanel;
    RemiseTypeBonComGCbx: TComboBox;
    BonComPListDataS: TDataSource;
    Label21: TLabel;
    Label22: TLabel;
    BonComGOLDStock: TLabel;
    BonComGNEWStock: TLabel;
    Label20: TLabel;
    Timer1: TTimer;
    BonComPListfrxRprt: TfrxReport;
    frxBonComPListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxBonComDT: TfrxDBDataset;
    frxClientDB: TfrxDBDataset;
    BonComTotalMargeLbl: TLabel;
    sImage1: TsImage;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    ProduitBonComGCbx: TcxComboBox;
    RequiredStarProduitGLbl: TLabel;
    ModepPaiGErrorP: TPanel;
    Label23: TLabel;
    CompteGErrorP: TPanel;
    Label24: TLabel;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeRception1: TMenuItem;
    BondeCaisseSimple1: TMenuItem;
    BonComPListSansTaxfrxRprt: TfrxReport;
    BonComPListBonCaissefrxRprt: TfrxReport;
    N1: TMenuItem;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
    BondeCommande1: TMenuItem;
    BondeCommandehorstaxe1: TMenuItem;
    BondeCaisseSimple2: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Label25: TLabel;
    Timer2: TTimer;
    BonComPListfrxRprtA5: TfrxReport;
    BondeCommande2: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    N2: TMenuItem;
    BondeCommande3: TMenuItem;
    BonComPListComSimplefrxRprt: TfrxReport;
    ListClientBonComGBtn: TAdvToolButton;
    BonComTotalAHTLbl: TLabel;
    Bondecaissesimple3: TMenuItem;
    BonComPListfrxCaisseRprtA5: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ProduitBonComGCbxEnter(Sender: TObject);
    procedure ProduitBonComGCbxExit(Sender: TObject);
    procedure ProduitBonComGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonComGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ClientBonComGCbxEnter(Sender: TObject);
    procedure ClientBonComGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ClientBonComGCbxExit(Sender: TObject);
    procedure ClientBonComGCbxChange(Sender: TObject);
    procedure ModePaieBonComGCbxDropDown(Sender: TObject);
    procedure ModePaieBonComGCbxClick(Sender: TObject);
    procedure CompteBonComGCbxChange(Sender: TObject);
    procedure CompteBonComGCbxEnter(Sender: TObject);
    procedure AddClientBonComGBtnClick(Sender: TObject);
    procedure AddModePaieBonComGBtnClick(Sender: TObject);
    procedure AddCompteBonComGBtnClick(Sender: TObject);
    procedure EnterAddProduitBonComGBtnClick(Sender: TObject);
    procedure ListAddProduitBonComGBtnClick(Sender: TObject);
    procedure NewAddProduitBonComGBtnClick(Sender: TObject);
    procedure DeleteProduitBonComGBtnClick(Sender: TObject);
    procedure ClearProduitBonComGBtnClick(Sender: TObject);
    procedure BonComPListDataSDataChange(Sender: TObject; Field: TField);
    procedure RemiseTypeBonComGCbxChange(Sender: TObject);
    procedure RemisePerctageBonComGEdtChange(Sender: TObject);
    procedure RemisePerctageBonComGEdtClick(Sender: TObject);
    procedure RemisePerctageBonComGEdtEnter(Sender: TObject);
    procedure RemisePerctageBonComGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonComGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonComGEdtExit(Sender: TObject);
    procedure RemiseBonComGEdtEnter(Sender: TObject);
    procedure RemiseBonComGEdtClick(Sender: TObject);
    procedure RemiseBonComGEdtChange(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure AddBVComBonComGBtnClick(Sender: TObject);
    procedure EditBVComBonComGBtnClick(Sender: TObject);
    procedure ValiderBVComBonComGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure B1Click(Sender: TObject);
    procedure BondeRception1Click(Sender: TObject);
    procedure BondeCaisseSimple1Click(Sender: TObject);
    procedure ModePaieBonComGCbxChange(Sender: TObject);
    procedure BondeCommande1Click(Sender: TObject);
    procedure BondeCommandehorstaxe1Click(Sender: TObject);
    procedure BondeCaisseSimple2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure Timer2Timer(Sender: TObject);
    procedure BondeCommande2Click(Sender: TObject);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure BondeCommande3Click(Sender: TObject);
    procedure ListClientBonComGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Bondecaissesimple3Click(Sender: TObject);
  private
    { Private declarations }
    procedure GettingData;
    procedure GettingDataSansTax;
    procedure GettingDataBonCaisse;
    procedure GettingDataBonCaisseA5;
    procedure GettingDataA5;
    procedure GettingDataBCVSimple;
  public
     
     const BCVLSQL = 'Select BCVL.code_bvcom,BCVL.code_bvcoml,BCVL.qut_p,BCVL.prixht_p,BCVL.prixvd_p,BCVL.cond_p,BCVL.code_p,BCVL.tva_p,BCVL.code_barec,P.prixht_p,P.nom_p as nomp, P.refer_p as referp, '
          +' (((BCVL.prixvd_p * BCVL.tva_p)/100)+BCVL.prixvd_p) AS PrixVTTC, '
          +' ((BCVL.prixht_p * BCVL.qut_p) * cond_p) AS MontantAHT, '
          +' ((BCVL.prixvd_p * BCVL.qut_p) * cond_p) AS MontantHT, '
          +' (((((BCVL.prixvd_p * BCVL.tva_p)/100)+BCVL.prixvd_p) * BCVL.qut_p)*cond_p) AS MontantTTC, '
          +' (((((((BCVL.prixvd_p * BCVL.tva_p)/100)+BCVL.prixvd_p) * BCVL.qut_p)*cond_p) )-(((BCVL.prixvd_p * BCVL.qut_p) * cond_p))) AS MontantTVA, '
          +' ((P.prixht_p * BCVL.qut_p)* cond_p) AS MontantAHT, '
          +' CASE '
          +'      WHEN BCVL.prixvd_p <> ''0''  THEN '
          +'   CASE WHEN ((P.prixht_p * BCVL.qut_p)* cond_p) <> ''0'' '
          +'     THEN ( ( (((BCVL.prixvd_p * BCVL.qut_p) * cond_p) - ((P.prixht_p * BCVL.qut_p)* cond_p)) / ((P.prixht_p * BCVL.qut_p)* cond_p) ) *100) '
          +'     ELSE ''100'' '
          +'   END '
          +' END AS Marge, '
          +' (((BCVL.prixvd_p * BCVL.qut_p) * cond_p) - ((P.prixht_p * BCVL.qut_p)* cond_p) ) AS MargeM '
          +' FROM bonv_com_list as BCVL '
          +' INNER JOIN produit as P '
          +' ON BCVL.code_p = P.code_p ';
     procedure EnableBonComV;
  end;

var
  BonComVGestionF : TBonComVGestionF;

implementation

uses   WinSpool,Vcl.Imaging.jpeg, IniFiles,
  StringTool, UMainF, USplashAddUnite, UClientsList, UClientGestion, USplashAddCompte,
  UFastProduitsList, UProduitsList, USplashVersement, UBonComV, UProduitGestion,
  UDataModule, UPerissableProduit ;

  {$R *.dfm}

//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin

   BonComVGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonComVGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonComVGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
//     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
//     EnableControls;
     end;

   BonComVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

 procedure TBonComVGestionF.EnableBonComV;
  begin
      AddBVComBonComGBtn.Enabled:= False;
      AddBVComBonComGBtn.ImageIndex:=28;// 4 For D
      EditBVComBonComGBtn.Enabled:= False;
      EditBVComBonComGBtn.ImageIndex:=29;// 5 for D
      ValiderBVComBonComGBtn.Enabled:= True;
      ValiderBVComBonComGBtn.ImageIndex:=12;//30 for D

      DateBonComGD.Enabled:= True;
      ObserBonComGMem.Enabled:= True;
      ClientBonComGCbx.Enabled:= True;
      AddClientBonComGBtn.Enabled:= True ; //
      AddClientBonComGBtn.ImageIndex:=10;//35 fo D
      ListClientBonComGBtn.Enabled:= True;
      ListClientBonComGBtn.ImageIndex:= 58;
      ModePaieBonComGCbx.Enabled:= True;
      AddModePaieBonComGBtn.Enabled:= True ;
      AddModePaieBonComGBtn.ImageIndex:=10;// 35 fo D
      CompteBonComGCbx.Enabled:= True;
      AddCompteBonComGBtn.Enabled:= True ;
      AddCompteBonComGBtn.ImageIndex:=10;// 35 fo D
      NChequeBonComGCbx.Enabled:= True;
      ProduitBonComGCbx.Enabled:= True;
      EnterAddProduitBonComGBtn.Enabled:= True;
      EnterAddProduitBonComGBtn.ImageIndex:=15;// 40 fo D
      ListAddProduitBonComGBtn.Enabled:= True;
      ListAddProduitBonComGBtn.ImageIndex:=13;//41 fo D
      NewAddProduitBonComGBtn.Enabled:= True;
      NewAddProduitBonComGBtn.ImageIndex:=4;//28 fo D
      DeleteProduitBonComGBtn.Enabled:= True;
      DeleteProduitBonComGBtn.ImageIndex:=14;//36 fo D
      ClearProduitBonComGBtn.Enabled:= True;
      ClearProduitBonComGBtn.ImageIndex:=16;//39 fo A
//      ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
      ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
      ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
      ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
      ProduitsListDBGridEh.Options:=
      ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
      ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
      ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
      ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
      RemisePerctageBonComGEdt.Enabled:=True;//False for D
      RemiseBonComGEdt.Enabled:=True;//False for D
      RemiseTypeBonComGCbx.Enabled:= True;//False for D;

      ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
      ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
      ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

      ValiderBVComBonComGImg.ImageIndex:=1;//0 fo D
      ValiderBVComBonComGLbl.Color:=$007374FF;// $004AC38B for D
      ValiderBVComBonComGLbl.Font.Color:= clWhite;// clBlack for D
      ValiderBVComBonComGLbl.Caption:='Ce bon n''est pas encore Valid�';// 'Ce bon est Valid' for D
  end;

procedure TBonComVGestionF.FormShow(Sender: TObject);
var CodeBCV: Integer;
OLDCredit,NEWCredit : Currency;
begin


 if Tag=0 then
 begin

   DateBonComGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//-- use this code to make the montants look lake money values-------//
    BonComTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonComTotalHTLbl.Caption),ffNumber,14,2) ;
//    RemiseBonComGEdt.Text :=       FloatToStrF(StrToFloat(RemiseBonComGEdt.Text),ffNumber,14,2) ;
      BonComTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonComTotalTVALbl.Caption),ffNumber,14,2) ;
      BonComTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonComTotalTTCLbl.Caption),ffNumber,14,2) ;
      BonComResteLbl.Caption :=         FloatToStrF(StrToFloat(BonComResteLbl.Caption),ffNumber,14,2) ;
      BonComRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonComRegleLbl.Caption),ffNumber,14,2) ;
      BonComGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(BonComGClientOLDCredit.Caption),ffNumber,14,2) ;
      BonComGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(BonComGClientNEWCredit.Caption),ffNumber,14,2) ;
 CodeBCV:= DataModuleF.Bonv_comTable.FieldValues['code_bvcom']   ;
    NumBonComGEdt.Caption := 'BCV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeBCV]);
  if (DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger <> null)
  AND(DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger <> 0) then
   begin
      if DataModuleF.Bonv_comTable.FieldValues['clientbvcom'] <> null then
      begin
     ClientBonComGCbx.Text:= DataModuleF.Bonv_comTable.FieldValues['clientbvcom'];
      end;
      if DataModuleF.Bonv_comTable.FieldValues['ModePaie'] <> null then
      begin
     ModePaieBonComGCbx.Text:= DataModuleF.Bonv_comTable.FieldValues['ModePaie'];
      end;
      if DataModuleF.Bonv_comTable.FieldValues['Compte'] <> null then
      begin
     CompteBonComGCbx.Text:= DataModuleF.Bonv_comTable.FieldValues['Compte'];
      end;

      //Activate this when the client when to set comtpo client atopmatcly
//     ClientBonComGCbxExit(Sender);
//     ProduitBonComGCbx.SetFocus;
   end else
       begin
         //Activate this when the client when to set comtpo client atopmatcly
//           ClientBonComGCbxExit(Sender);
//           ProduitBonComGCbx.SetFocus;
       end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonComGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonComGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonComGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonComGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;

   if DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean = True then
   begin
    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'select code_c, credit_c from client where code_c = ' + IntToStr( DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:= True;

      if NOT (MainForm.SQLQuery.IsEmpty) AND (MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1) then
     begin
      OLDCredit:= (MainForm.SQLQuery.FieldByName('credit_c').AsCurrency);// - (DataModuleF.Bonv_comTable.FieldByName('MontantRes').AsCurrency) ;

      NewCredit:=  MainForm.SQLQuery.FieldByName('credit_c').AsCurrency;

     BonComGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( OLDCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonComGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( NewCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;

     end;
        MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
   end else
       begin
         ClientBonComGCbxExit(Sender);
       end;


//     if  (DataModuleF.Bonv_comTable.FieldValues['RemisePerc']<> null) AND (DataModuleF.Bonv_comTable.FieldValues['remise_bvcom']<> 0) then
//     begin
//     RemisePerctageBonComGEdtChange(Sender);
//     end;

  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;


  if MainForm.viewprixa_ur.Checked then
      begin

          ProduitsListDBGridEh.FieldColumns['prixht_p'].Visible:= true;
//          ProduitsListDBGridEh.FieldColumns['prixht_p'].MinWidth:= 170;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].Width:= 170;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MaxWidth:= 0;

      end else
      begin

          ProduitsListDBGridEh.FieldColumns['prixht_p'].Visible:= false;
//          ProduitsListDBGridEh.FieldColumns['prixht_p'].MinWidth:= 0;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].Width:= 0;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MaxWidth:= 1;

      end;
end;

procedure TBonComVGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_bcv');

 if ValiderBVComBonComGImg.ImageIndex = 1 then
  begin

    DataModuleF.Bonv_comTable.Refresh;

    DataModuleF.bonv_com_listTable.Refresh;
  end;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

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

//          if Assigned(BonComVF) then          //This code is to filter list whene clos bon by selected date //Comnted it cuz it was keep moveing the corsur up
//          begin
//
//            DataModuleF.Bonv_comTable.DisableControls;
//            DataModuleF.Bonv_comTable.Active:= False;
//            DataModuleF.Bonv_comTable.SQL.clear;
//            DataModuleF.Bonv_comTable.sql.Text:= BonComVF.BCVSQL +' WHERE date_bvcom BETWEEN '''+(DateToStr(BonComVF.DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(BonComVF.DateEndBVComD.Date))+'''';
//            DataModuleF.Bonv_comTable.Active:= True;
//            DataModuleF.Bonv_comTable.EnableControls;
//
//          end;
                

          DataModuleF.bonv_com_listTable.Active:=false;
          DataModuleF.bonv_com_listTable.SQL.Clear;
          DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL ;
          DataModuleF.bonv_com_listTable.Active:=True;
          DataModuleF.bonv_com_listTable.EnableControls;
     
      
  DataModuleF.bonv_com_listTable.IndexFieldNames:='code_bvcom';

        //----- this is to go to last
       if Tag <> 1 then
          begin
           DataModuleF.Bonv_comTable.Last;
          end;


end;

procedure TBonComVGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var  CodeBCV : Integer;
begin
codeBCV:=DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonComGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonComGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous pla�t entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonComGCbx.SetFocus;
      CanClose := false;
    end else
    begin

    if ModePaieBonComGCbx.Text = '' then
      begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ModePaieBonComGCbx.StyleElements:= [];
        RequiredMPGlbl.Visible:= True;
        ModepPaiGErrorP.Visible:= True;

        ModePaieBonComGCbx.SetFocus;
        CanClose := false;
      end else
        begin

     if CompteBonComGCbx.Text = '' then
     begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        CompteBonComGCbx.StyleElements:= [];
        RequiredCompteGlbl.Visible:= True;
        CompteGErrorP.Visible:= True;

        CompteBonComGCbx.SetFocus;
        CanClose := false;
     end else
     begin


     //---------------------------------------------------
         if RequiredClientGlbl.Visible <> True then
         begin
         if  (DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean = false)  then
         begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonComGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonComGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonComGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Edit;
          DataModuleF.Bonv_comTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          DataModuleF.Bonv_comTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          DataModuleF.Bonv_comTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          DataModuleF.Bonv_comTable.FieldValues['obser_bvcom']:= ObserBonComGMem.Text;
          DataModuleF.Bonv_comTable.FieldValues['num_cheque_bvcom']:= NChequeBonComGCbx.Text;
          DataModuleF.Bonv_comTable.FieldByName('montht_bvcom').AsCurrency:= StrToCurr(StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('montaht_bvcom').AsCurrency:= StrToCurr(StringReplace(BonComTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonComGEdt.Text<>'' then
          begin
             DataModuleF.Bonv_comTable.FieldByName('remise_bvcom').AsCurrency:=StrToCurr(StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    DataModuleF.Bonv_comTable.FieldByName('remise_bvcom').AsCurrency:=0;
                   end;


          DataModuleF.Bonv_comTable.FieldByName('montver_bvcom').AsCurrency:=StrToCurr(StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('montttc_bvcom').AsCurrency:=StrToCurr(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          DataModuleF.Bonv_comTable.Post;
          DataModuleF.Bonv_comTable.EnableControls;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

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

        //------- This is to delete data from tre and reg ih not valide----------------------------------------------
//           if (codeBCV <> 0) AND (codeBCV <> null) then
//           begin
//              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvcom = ' + IntToStr(codeBCV));
//              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvcom = ' + IntToStr(codeBCV));
//              MainForm.RegclientTable.Refresh ;
//              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
//           end;

         end;

       end else
           begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ClientBonComGCbx.StyleElements:= [];
            RequiredClientGlbl.Caption:= 'Ce Client est bloqu�' ;
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;

            ClientBonComGCbx.SetFocus;
            CanClose:= False;
           end;
     //----------------------------------------------
         end;
          end;
    end;

  end  else
  begin

          if  (DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean = false)  then
         begin
//          codeBCV:=DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;

          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonComGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonComGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonComGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Edit;
          DataModuleF.Bonv_comTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          DataModuleF.Bonv_comTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          DataModuleF.Bonv_comTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          DataModuleF.Bonv_comTable.FieldValues['obser_bvcom']:= ObserBonComGMem.Text;
          DataModuleF.Bonv_comTable.FieldValues['num_cheque_bvcom']:= NChequeBonComGCbx.Text;
          DataModuleF.Bonv_comTable.FieldByName('montht_bvcom').AsCurrency:= StrToCurr(StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonComGEdt.Text<>'' then
          begin
             DataModuleF.Bonv_comTable.FieldByName('remise_bvcom').AsCurrency:=StrToCurr(StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    DataModuleF.Bonv_comTable.FieldByName('remise_bvcom').AsCurrency:=0;
                   end;


          DataModuleF.Bonv_comTable.FieldByName('montver_bvcom').AsCurrency:=StrToCurr(StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_comTable.FieldByName('montttc_bvcom').AsCurrency:=StrToCurr(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          DataModuleF.Bonv_comTable.Post;
          DataModuleF.Bonv_comTable.EnableControls;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

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

        //------- This is to delete data from tre and reg ih not valide----------------------------------------------
             if (codeBCV <> 0) AND (codeBCV <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvcom = ' + IntToStr(codeBCV));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvcom = ' + IntToStr(codeBCV));
              MainForm.RegclientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

         end;

     CanClose:= True;
  end;

end;

procedure TBonComVGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_bcv') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_bcv');
   end;

if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;

procedure TBonComVGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonComVGestionF.ProduitBonComGCbxEnter(Sender: TObject);
var
  I : Integer;
  KeyState: TKeyboardState;
begin

     if ResherchPARDesProduitsRdioBtn.Checked then
     begin
      ProduitBonComGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
       begin
         ProduitBonComGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
         MainForm.SQLQuery.Next;
        end;


      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin
      ProduitBonComGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT refer_p FROM produit ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if( MainForm.SQLQuery.FieldByName('refer_p').IsNull = False )  then
       begin
            ProduitBonComGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('refer_p').AsString);
         MainForm.SQLQuery.Next;
        end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

       if ResherchPARCBProduitsRdioBtn.Checked then
     begin
      ProduitBonComGCbx.Properties.Items.Clear;

      //turn on CapsLock when enter edit to make sure codebare read well
      GetKeyboardState(KeyState);
      if (KeyState[VK_CAPITAL]=0) then
      begin
        // Simulate a "CAPS LOCK" key release
        Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
        // Simulate a "CAPS LOCK" key press
        Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
      end;

     end;


end;

procedure TBonComVGestionF.ProduitBonComGCbxExit(Sender: TObject);
begin
ProduitBonComGCbx.Text:='';
//ProduitBonComGCbx.AutoDropDown:=False;
end;

procedure TBonComVGestionF.ProduitBonComGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonComGCbx.AutoDropDown:= True;
  end;

end;

procedure TBonComVGestionF.ProduitBonComGCbxKeyPress(Sender: TObject;
  var Key: Char);
  var CodeBCV,CodeCB,CodeP : Integer;
      lookupResultRefP : Variant;
      NomP: String;
  const
  N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
 if key = #13 then
 begin
 if (ProduitBonComGCbx.Text <>'') AND NOT (ProduitBonComGCbx.Text[1] in N ) then
  begin
  key := #0;


  if ClientBonComGCbx.Text<> '' then
   begin
     MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonComGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;

   end;


  if ResherchPARDesProduitsRdioBtn.Checked then
  begin
//        MainForm.SQLQuery.DisableControls;
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonComGCbx.Text)+')';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

        DataModuleF.PerissBona_recTable.Active:=False;
        DataModuleF.PerissBona_recTable.SQL.Clear;
        DataModuleF.PerissBona_recTable.SQL.Text:='  SELECT bona_rec_list.code_barec, code_p,qutinstock_p,dateperiss_p,(dateperiss_p - CURRENT_DATE) AS daysleft  '
        +'  FROM bona_rec_list  '
        +'  JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec '
        +'  WHERE bona_rec.valider_barec = TRUE '
        +'  AND dateperiss_p is NOT NULL '
        +'  AND dateperiss_p > CURRENT_DATE '
        +'  AND qutinstock_p > 0  '
        +'  AND code_p = ' + IntToStr(CodeP)
        +'  ORDER BY dateperiss_p ';
;
        DataModuleF.PerissBona_recTable.Active:=True;


    if (MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True)
        AND NOT (DataModuleF.PerissBona_recTable.IsEmpty) AND (DataModuleF.PerissBona_recTable.RecordCount > 1) then
    begin

      PerissableProduitF:=TPerissableProduitF.Create(BonComVGestionF);
      PerissableProduitF.Left:=  (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
      PerissableProduitF.Top:=   MainForm.Top + 5;
      AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      PerissableProduitF.Tag:=0;
      PerissableProduitF.Show;

    end else
     begin

         lookupResultRefP := DataModuleF.bonv_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            DataModuleF.bonv_com_listTable.DisableControls;
            DataModuleF.bonv_com_listTable.IndexFieldNames:='';
            DataModuleF.bonv_com_listTable.Active:=False;
            DataModuleF.bonv_com_listTable.SQL.Clear;
            DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' ORDER by code_bvcoml  ' ;
            DataModuleF.bonv_com_listTable.Active:=True;

            DataModuleF.bonv_com_listTable.Last;
             if  DataModuleF.bonv_com_listTable.IsEmpty then
             begin
               DataModuleF.bonv_com_listTable.Last;
               CodeBCV := 1;
             end else
                 begin
                  DataModuleF.bonv_com_listTable.Last;
                  CodeBCV:= DataModuleF.bonv_com_listTable.FieldValues['code_bvcoml'] + 1 ;
                 end;

             DataModuleF.bonv_com_listTable.Last;
             DataModuleF.bonv_com_listTable.Append;
             DataModuleF.bonv_com_listTable.FieldValues['code_bvcoml']:= CodeBCV ;
             DataModuleF.bonv_com_listTable.FieldValues['code_bvcom']:= DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
             DataModuleF.bonv_com_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.bonv_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.bonv_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.bonv_com_listTable.FieldValues['tva_p']:=  MainForm.SQLQuery.FieldValues['tva_p'] ;
             DataModuleF.bonv_com_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery.FieldValues['prixht_p'] ;

             if DataModuleF.PerissBona_recTable.RecordCount = 1 then
             begin
              DataModuleF.bonv_com_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
             end;


           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonComGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;


             DataModuleF.bonv_com_listTable.Post ;
             DataModuleF.bonv_com_listTable.IndexFieldNames:='code_bvcom';

            DataModuleF.bonv_com_listTable.Active:=False;
            DataModuleF.bonv_com_listTable.SQL.Clear;
            DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' WHERE code_bvcom = ' + QuotedStr(IntToStr(DataModuleF.Bonv_comTable.FieldValues['code_bvcom']))+' ';
            DataModuleF.bonv_com_listTable.Active:=True;

            ProduitBonComGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.bonv_com_listTable.EnableControls;
           DataModuleF.bonv_com_listTable.Last;
           if ClientBonComGCbx.Text<>'' then
            begin
            ValiderBVComBonComGBtn.Enabled:= True;
            ValiderBVComBonComGBtn.ImageIndex:=12;
            end;

            end;

     end else
     begin

      FSplashAddUnite:=TFSplashAddUnite.Create(Application);
      FSplashAddUnite.Image1.ImageIndex:=3;
      FSplashAddUnite.Width:=300;
      FSplashAddUnite.Height:=160;
      FSplashAddUnite.Panel1.Color:= $0028CAFE;
      FSplashAddUnite.Color:= $00EFE9E8;
      FSplashAddUnite.LineP.Color:=$0028CAFE;
      FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
      FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
      FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
      FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
      if  DataModuleF.bonv_com_listTable.FieldValues['code_p'] <> NULL then
      begin
      NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
      end else begin
        NomP:='';
      end;
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
      FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
      FSplashAddUnite.Top:=   MainForm.Top + 5;

      FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=2;
     end;
    end;

      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;

     end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefProduitsRdioBtn.Checked then
  begin
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,refer_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonComGCbx.Text)+')';
            MainForm.SQLQuery.Active:=True;
            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

        DataModuleF.PerissBona_recTable.Active:=False;
        DataModuleF.PerissBona_recTable.SQL.Clear;
        DataModuleF.PerissBona_recTable.SQL.Text:='  SELECT bona_rec_list.code_barec, code_p,qutinstock_p,dateperiss_p,(dateperiss_p - CURRENT_DATE) AS daysleft  '
        +'  FROM bona_rec_list  '
        +'  JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec '
        +'  WHERE bona_rec.valider_barec = TRUE '
        +'  AND dateperiss_p is NOT NULL '
        +'  AND dateperiss_p > CURRENT_DATE '
        +'  AND qutinstock_p > 0  '
        +'  AND code_p = ' + IntToStr(CodeP)
        +'  ORDER BY dateperiss_p ';
;
        DataModuleF.PerissBona_recTable.Active:=True;


    if (MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True)
        AND NOT (DataModuleF.PerissBona_recTable.IsEmpty) AND (DataModuleF.PerissBona_recTable.RecordCount > 1) then
    begin

      PerissableProduitF:=TPerissableProduitF.Create(BonComVGestionF);
      PerissableProduitF.Left:=  (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
      PerissableProduitF.Top:=   MainForm.Top + 5;
      AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      PerissableProduitF.Tag:=0;
      PerissableProduitF.Show;

    end else
     begin

         lookupResultRefP := DataModuleF.bonv_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
          if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            DataModuleF.bonv_com_listTable.DisableControls;
            DataModuleF.bonv_com_listTable.IndexFieldNames:='';
            DataModuleF.bonv_com_listTable.Active:=False;
            DataModuleF.bonv_com_listTable.SQL.Clear;
            DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' ORDER by code_bvcoml' ;
            DataModuleF.bonv_com_listTable.Active:=True;
           if  DataModuleF.bonv_com_listTable.RecordCount <= 0 then
           begin
             CodeBCV := 1;
           end else
               begin
                DataModuleF.bonv_com_listTable.Last;
                CodeBCV:= DataModuleF.bonv_com_listTable.FieldValues['code_bvcoml'] + 1 ;
               end;
             DataModuleF.bonv_com_listTable.Insert;
             DataModuleF.bonv_com_listTable.FieldValues['code_bvcoml']:= CodeBCV ;
             DataModuleF.bonv_com_listTable.FieldValues['code_bvcom']:= DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
             DataModuleF.bonv_com_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.bonv_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.bonv_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.bonv_com_listTable.FieldValues['tva_p']:=  MainForm.SQLQuery.FieldValues['tva_p'] ;
             DataModuleF.bonv_com_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery.FieldValues['prixht_p'] ;


             if DataModuleF.PerissBona_recTable.RecordCount = 1 then
             begin
              DataModuleF.bonv_com_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
             end;

            if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonComGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;


             DataModuleF.bonv_com_listTable.Post ;
             DataModuleF.bonv_com_listTable.IndexFieldNames:='code_bvcom';

            DataModuleF.bonv_com_listTable.Active:=False;
            DataModuleF.bonv_com_listTable.SQL.Clear;
            DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' WHERE code_bvcom = ' + QuotedStr(IntToStr(DataModuleF.Bonv_comTable.FieldValues['code_bvcom']))+' ';
            DataModuleF.bonv_com_listTable.Active:=True;
            DataModuleF.bonv_com_listTable.EnableControls;

            ProduitBonComGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.bonv_com_listTable.EnableControls;
            DataModuleF.bonv_com_listTable.Last;
            if ClientBonComGCbx.Text<>'' then
              begin
              ValiderBVComBonComGBtn.Enabled:= True;
              ValiderBVComBonComGBtn.ImageIndex:=12;
              end;
            end;
         end else
         begin

          FSplashAddUnite:=TFSplashAddUnite.Create(Application);
            FSplashAddUnite.Image1.ImageIndex:=3;
            FSplashAddUnite.Width:=300;
            FSplashAddUnite.Height:=160;
            FSplashAddUnite.Panel1.Color:= $0028CAFE;
            FSplashAddUnite.Color:= $00EFE9E8;
            FSplashAddUnite.LineP.Color:=$0028CAFE;
            FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
            FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
            FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
            FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
            FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
            FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
            if  DataModuleF.bonv_com_listTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
            end else begin
              NomP:='';
            end;
            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
            FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
            FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
            FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
            FSplashAddUnite.Image1.Visible:=True;
            FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
            FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
            FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
            FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
            FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
            FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
            FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
            FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
            FSplashAddUnite.Top:=   MainForm.Top + 5;
            FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
            FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=2;
         end;
         end;
    end;
 //---------------------------------------------------------------------------------------------
  if ResherchPARCBProduitsRdioBtn.Checked then
  begin
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonComGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
   begin
    CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
   end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,codebar_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonComGCbx.Text)+')';
    MainForm.SQLQuery.Active:=True;
    CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

        DataModuleF.PerissBona_recTable.Active:=False;
        DataModuleF.PerissBona_recTable.SQL.Clear;
        DataModuleF.PerissBona_recTable.SQL.Text:='  SELECT bona_rec_list.code_barec, code_p,qutinstock_p,dateperiss_p,(dateperiss_p - CURRENT_DATE) AS daysleft  '
        +'  FROM bona_rec_list  '
        +'  JOIN bona_rec ON bona_rec.code_barec = bona_rec_list.code_barec '
        +'  WHERE bona_rec.valider_barec = TRUE '
        +'  AND dateperiss_p is NOT NULL '
        +'  AND dateperiss_p > CURRENT_DATE '
        +'  AND qutinstock_p > 0  '
        +'  AND code_p = ' + IntToStr(CodeP)
        +'  ORDER BY dateperiss_p ';
;
        DataModuleF.PerissBona_recTable.Active:=True;

    if (MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True)
        AND NOT (DataModuleF.PerissBona_recTable.IsEmpty) AND (DataModuleF.PerissBona_recTable.RecordCount > 1) then
    begin

      PerissableProduitF:=TPerissableProduitF.Create(BonComVGestionF);
      PerissableProduitF.Left:=  (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
      PerissableProduitF.Top:=   MainForm.Top + 5;
      AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      PerissableProduitF.Tag:=0;
      PerissableProduitF.Show;

    end else
     begin

     if  (MainForm.SQLQuery.RecordCount > 0 )   then
      begin

         lookupResultRefP := DataModuleF.bonv_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            DataModuleF.bonv_com_listTable.DisableControls;
            DataModuleF.bonv_com_listTable.IndexFieldNames:='';
            DataModuleF.bonv_com_listTable.Active:=False;
            DataModuleF.bonv_com_listTable.SQL.Clear;
            DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' ORDER by code_bvcoml' ;
            DataModuleF.bonv_com_listTable.Active:=True;

           if  DataModuleF.bonv_com_listTable.RecordCount <= 0 then
           begin
             CodeBCV := 1;
           end else
               begin
                DataModuleF.bonv_com_listTable.Last;
                CodeBCV:= DataModuleF.bonv_com_listTable.FieldValues['code_bvcoml'] + 1 ;
               end;

             DataModuleF.bonv_com_listTable.Insert;
             DataModuleF.bonv_com_listTable.FieldValues['code_bvcoml']:= CodeBCV ;
             DataModuleF.bonv_com_listTable.FieldValues['code_bvcom']:= DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
             DataModuleF.bonv_com_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.bonv_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.bonv_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.bonv_com_listTable.FieldValues['tva_p']:=  MainForm.SQLQuery.FieldValues['tva_p'] ;
             DataModuleF.bonv_com_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery.FieldValues['prixht_p'] ;

             if DataModuleF.PerissBona_recTable.RecordCount = 1 then
             begin
              DataModuleF.bonv_com_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
             end;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonComGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  DataModuleF.bonv_com_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;

             DataModuleF.bonv_com_listTable.Post ;
             DataModuleF.bonv_com_listTable.IndexFieldNames:='code_bvcom';

             DataModuleF.bonv_com_listTable.Active:=False;
             DataModuleF.bonv_com_listTable.SQL.Clear;
             DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' WHERE code_bvcom = ' + QuotedStr(IntToStr(DataModuleF.Bonv_comTable.FieldValues['code_bvcom']))+' ';
             DataModuleF.bonv_com_listTable.Active:=True;
             DataModuleF.bonv_com_listTable.EnableControls;

            ProduitBonComGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.bonv_com_listTable.EnableControls;
            DataModuleF.bonv_com_listTable.Last;
            if ClientBonComGCbx.Text<>'' then
              begin
              ValiderBVComBonComGBtn.Enabled:= True;
              ValiderBVComBonComGBtn.ImageIndex:=12;
              end;
     end else
         begin

           //  ShowMessage(' code bare deja kain : p ');

            FSplashAddUnite:=TFSplashAddUnite.Create(Application);
            FSplashAddUnite.Image1.ImageIndex:=3;
            FSplashAddUnite.Width:=300;
            FSplashAddUnite.Height:=160;
            FSplashAddUnite.Panel1.Color:= $0028CAFE;
            FSplashAddUnite.Color:= $00EFE9E8;
            FSplashAddUnite.LineP.Color:=$0028CAFE;
            FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
            FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
            FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
            FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
            FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
            FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
            if  DataModuleF.bonv_com_listTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
            end else begin
              NomP:='';
            end;
            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
            FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
            FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
            FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
            FSplashAddUnite.Image1.Visible:=True;
            FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
            FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
            FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
            FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
            FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
            FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
            FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
            FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
            FSplashAddUnite.Top:=   MainForm.Top + 5;
            FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
            FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=2;
             end;
          end;
          end;

   end;
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;

         DataModuleF.bonv_com_listTable.Refresh;
//        ProduitBonComGCbx.AutoDropDown:=False;
         ProduitBonComGCbx.SelectAll;

     end else
         begin
           ProduitBonComGCbx.Text:= '';
         end;

     DataModuleF.bonv_com_listTable.Last;
 end;

end;

procedure TBonComVGestionF.ClientBonComGCbxEnter(Sender: TObject);
var
I : Integer;
  begin

          ClientBonComGCbx.Items.Clear;
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select nom_c FROM client '  ;
          MainForm.SQLQuery.Active:=True;

//       MainForm.ClientTable.Refresh;

         MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonComGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_c').AsString);
       MainForm.SQLQuery.Next;
      end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
end;

procedure TBonComVGestionF.ClientBonComGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonComVGestionF.ClientBonComGCbxExit(Sender: TObject);
var CodeC: Integer;
OLDCreditC,RegCCreditC,OLDCreditCINI : Currency;
begin
  if ClientBonComGCbx.Text <> '' then
    begin
      ClientBonComGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c,oldcredit_c,credit_c,activ_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonComGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

     if NOT (MainForm.SQLQuery.IsEmpty)   then
     begin
      OLDCreditCINI:=MainForm.SQLQuery.FieldByName('credit_c').AsCurrency;

      if MainForm.SQLQuery.FieldByName('activ_c').AsBoolean <> False then
      begin

        if (MainForm.SQLQuery.IsEmpty) then
        begin
         ClientBonComGCbx.Text := '';
         BonComGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
         BonComGClientNEWCredit.Caption:=BonComGClientOLDCredit.Caption;
         exit;
        end;
        CodeC:= MainForm.SQLQuery.FieldValues['code_c'] ;

//        DataModuleF.Bonv_comTableCredit.DisableControls;
//        DataModuleF.Bonv_comTableCredit.Active:=false;
//        DataModuleF.Bonv_comTableCredit.SQL.Clear;
//        DataModuleF.Bonv_comTableCredit.SQL.Text:='Select * FROM bonv_com WHERE valider_bvcom = true AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_bvcom '  ;
//        DataModuleF.Bonv_comTableCredit.Active:=True;
//
//        while NOT (DataModuleF.Bonv_comTableCredit.Eof) do
//       begin
//       OLDCreditC := OLDCreditC + DataModuleF.Bonv_comTableCredit.FieldValues['MontantRes'];
//       DataModuleF.Bonv_comTableCredit.Next;
//       end;
//        DataModuleF.Bonv_comTableCredit.EnableControls;
//
//
//         MainForm.RegclientTable.DisableControls;
//        MainForm.RegclientTable.Active:=false;
//        MainForm.RegclientTable.SQL.Clear;
//        MainForm.RegclientTable.SQL.Text:='Select * FROM regclient WHERE bon_or_no_rc = 1 AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_rc '  ;
//        MainForm.RegclientTable.Active:=True;
//
//       while NOT (MainForm.RegclientTable.Eof) do
//       begin
//       RegCCreditC := RegCCreditC + MainForm.RegclientTable.FieldValues['montver_rc'];
//       MainForm.RegclientTable.Next;
//       end;

        if (NOT (OLDCreditCINI = 0)) AND (MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1) then
        begin
//         DataModuleF.Bonv_comTableCredit.last;
         BonComGClientOLDCredit.Caption:= CurrToStrF((OLDCreditCINI ),ffNumber,2) ;

//         if NOT (BonComPListDataS.DataSet.IsEmpty)  then
//          begin
//          if Tag = 0 then
//           begin
//           BonComGClientNEWCredit.Caption:=
//           CurrToStrF((DataModuleF.Bonv_comTableCredit.FieldByName('MontantRes').AsCurrency ) + StrToCurr(StringReplace(BonComResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//           end else
//               begin
//                BonComGClientNEWCredit.Caption:=
//                CurrToStrF((DataModuleF.Bonv_comTableCredit.FieldByName('MontantRes').AsCurrency ) + StrToCurr(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//
//
//               end;
//
//          end;
          end else
          begin
           BonComGClientOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
          end;


//        DataModuleF.Bonv_comTableCredit.DisableControls;
//        DataModuleF.Bonv_comTableCredit.Active:=false;
//        DataModuleF.Bonv_comTableCredit.SQL.Clear;
//        DataModuleF.Bonv_comTableCredit.SQL.Text:='Select * FROM bonv_com '  ;
//        DataModuleF.Bonv_comTableCredit.Active:=True;
//        DataModuleF.Bonv_comTableCredit.last;
//        DataModuleF.Bonv_comTableCredit.EnableControls;
//
//
//        MainForm.RegclientTable.Active:=false;
//        MainForm.RegclientTable.SQL.Clear;
//        MainForm.RegclientTable.SQL.Text:='Select * FROM regclient ORDER BY time_rc '  ;
//        MainForm.RegclientTable.Active:=True;
//        MainForm.RegclientTable.EnableControls;

        MainForm.SQLQuery.Active:=false;
        MainForm.SQLQuery.SQL.Clear;
//        MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//        MainForm.SQLQuery.Active:=True;
//        MainForm.SQLQuery.EnableControls;
        if NOT (BonComPListDataS.DataSet.IsEmpty) AND NOT (DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean = true) then
        begin
        ValiderBVComBonComGBtn.Enabled:= True;
        ValiderBVComBonComGBtn.ImageIndex:=12;
        end;

      DataModuleF.bonv_com_listTable.Refresh;

            ClientBonComGCbx.StyleElements:= [seFont,seBorder,seBorder];
            RequiredClientGlbl.Visible:= False;
            NameClientGErrorP.Visible:= False;

      end else
          begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ClientBonComGCbx.StyleElements:= [];
            RequiredClientGlbl.Caption:='Ce Client est bloqu�';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            ClientBonComGCbx.SetFocus;
          end;
          end else
              begin
                ClientBonComGCbx.Text:= '';
                MainForm.SQLQuery.Active:=false;
                MainForm.SQLQuery.SQL.Clear;
//                MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//                MainForm.SQLQuery.Active:=True;
//                MainForm.SQLQuery.EnableControls;
              end;
    end else
    begin
     ClientBonComGCbx.Text:= 'Comptoir';
//     ClientBonComGCbxEnter(Sender) ;
    CompteBonComGCbxEnter(Sender);
     ModePaieBonComGCbxDropDown(Sender);
     ModePaieBonComGCbx.ItemIndex:=0;
//     CompteBonComGCbx.ItemIndex:=0;
     ModePaieBonComGCbxClick(Self) ;

     BonComGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonComGClientNEWCredit.Caption:=BonComGClientOLDCredit.Caption;
     end;
end;

procedure TBonComVGestionF.ClientBonComGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece

      ModePaieBonComGCbxDropDown(Self);
      if Tag = 0 then
      begin
      ModePaieBonComGCbx.ItemIndex:=0;
      ModePaieBonComGCbxClick(Self) ;
      end;

end;

procedure TBonComVGestionF.ModePaieBonComGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ORDER BY code_mdpai';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieBonComGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieBonComGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
end;

procedure TBonComVGestionF.ModePaieBonComGCbxChange(Sender: TObject);
begin
RequiredMPGlbl.Visible:= False;
ModepPaiGErrorP.Visible:= False;
end;

procedure TBonComVGestionF.ModePaieBonComGCbxClick(Sender: TObject);
begin
  if ModePaieBonComGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonComGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonComGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;

    ModePaieBonComGCbxChange(Sender);

end;

procedure TBonComVGestionF.CompteBonComGCbxChange(Sender: TObject);
begin
CompteBonComGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonComVGestionF.CompteBonComGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ORDER BY code_cmpt ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteBonComGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteBonComGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TBonComVGestionF.AddClientBonComGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 8 ;
ClientBonComGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredClientGlbl.Visible:= False;
NameClientGErrorP.Visible:= False;
end;

procedure TBonComVGestionF.AddModePaieBonComGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(Application);
    FSplashAddUnite.Width:=330;
    FSplashAddUnite.Height:=185;
    FSplashAddUnite.NameAddUniteSLbl.Left:= 11;
    FSplashAddUnite.NameAddUniteSEdt.Left:=FSplashAddUnite.CompteAddUniteSCbx.Left;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width+ 2;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
    FSplashAddUnite.CompteAddUniteSLbl.Visible:=True;
    FSplashAddUnite.CompteAddUniteSCbx.Visible:=True;
    FSplashAddUnite.CompteAddUniteSBtn.Visible:=True;
    FSplashAddUnite.Panel1.Color:= $0040332D ;
    FSplashAddUnite.LineP.Color:= $0040332D  ;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Designation:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 48 ;
end;




procedure TBonComVGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);

var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
I : Integer;
Ini: TIniFile;
indexP: Integer;

begin

   //--- this is to focus in produit --------------------------
  if  (GetKeyState(VK_F3) < 0) and (AddBVComBonComGBtn.Enabled = False ) then
  begin
      ProduitBonComGCbx.SetFocus;
      Handled := true;
  end;


  if  (GetKeyState(VK_F4) < 0) and (AddBVComBonComGBtn.Enabled = True ) then
  begin
      AddBVComBonComGBtnClick(Screen);

    Handled := true;
  end;


  if  (GetKeyState(VK_F5) < 0) and (EditBVComBonComGBtn.Enabled = True ) then
  begin
      EditBVComBonComGBtnClick(Screen);

    Handled := true;
  end;

   //--- this is to switch between produits and quntity--------------------------
   if  (GetKeyState(VK_F6) < 0) and (EditBVComBonComGBtn.Enabled = False ) then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'qut_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='qut_p' then
          begin
            ProduitsListDBGridEh.SelectedIndex:= i - 1;
            Handled := true;
            Break    ;
          end else
              begin
               ProduitsListDBGridEh.SelectedIndex:=i;
              end;
        end;
       end;
       Handled := true;
  end;
  //--- this is to switch between produits and prix----------------------------
   if  (GetKeyState(VK_F7) < 0) and (EditBVComBonComGBtn.Enabled = False ) then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixvd_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='prixvd_p' then
          begin
            ProduitsListDBGridEh.SelectedIndex:= i - 1;
            Handled := true;
            Break    ;
          end else
              begin
               ProduitsListDBGridEh.SelectedIndex:=i;
              end;
        end;
       end;
       Handled := true;
  end;


  if  (GetKeyState(VK_F8) < 0) and (EditBVComBonComGBtn.Enabled = False ) then
  begin
      ListAddProduitBonComGBtnClick(Screen);

    Handled := true;
  end;

   if  (GetKeyState(VK_F9) < 0)  then
  begin

      ValiderBVComBonComGBtnClick(Screen);

    Handled := true;
  end;


       //--- this is for new produit--------------------------
  if  (GetKeyState(VK_F11) < 0)  then
  begin

      NewAddProduitBonComGBtnClick(Screen);

    Handled := true;
  end;

  if  (GetKeyState(VK_F12) < 0) then
  begin

    if ValiderBVComBonComGImg.ImageIndex <> 1 then
     begin

        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
        indexP:= Ini.ReadInteger('', 'Format BCV',0);
        if (indexP = 0) or (indexP = -1) then
        begin
         B1Click(Screen);
        end;
        if indexP = 1 then
        begin
         BondeCommande2Click(Screen);
        end;
        if indexP = 2 then
        begin
         BondeRception1Click(Screen);
        end;
        if indexP = 3 then
        begin
         BondeCommande3Click(Screen);
        end;
        if indexP = 4 then
        begin
         BondeCaisseSimple1Click(Screen);
        end;
        if indexP = 5 then
        begin
         Bondecaissesimple3Click(Screen);
        end;
        if indexP = 6 then
        begin
         BondeCommande1Click(Screen);
        end;
        if indexP = 7 then
        begin
         BondeCommandehorstaxe1Click(Screen);
        end;
        if indexP = 8 then
        begin
         BondeCaisseSimple2Click(Screen);
        end;

        Ini.Free;
        Handled := true;
     end;
  end;


end;

procedure TBonComVGestionF.AddCompteBonComGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(Application);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 13 ;
end;

procedure TBonComVGestionF.EnterAddProduitBonComGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonComGCbxKeyPress(Sender, key);
end;

procedure TBonComVGestionF.ListAddProduitBonComGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonComGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Tag := 12;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;
  //use this tag = 1 for adding from Commade Client


 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
 // produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TBonComVGestionF.ListClientBonComGBtnClick(Sender: TObject);
Var I:Integer;
begin
//-------- use this code to start creating th form-----//
  FastProduitsListF := TFastProduitsListF.Create(Application);

  MainForm.FDQuery2.Active:=False;
  MainForm.FDQuery2.SQL.Clear;
  MainForm.FDQuery2.SQL.TExt:= 'SELECT code_c,nom_c,activite_c,fix_c,mob_c,adr_c,credit_c FROM client';
  MainForm.FDQuery2.IndexFieldNames:='code_c';
  MainForm.FDQuery2.Active:=True;

  for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
  begin
    FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
  end;
    
  //Change the dataSet
  FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N�';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

  FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Client';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activit�';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='fix_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='T�l�phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='mob_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='T�l�phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='adr_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[6].FieldName:='credit_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Title.Caption:='Cr�dit';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Width:= 130;;
  
  
  FastProduitsListF.ProduitsListDBGridEh.Refresh;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

  FastProduitsListF.Caption:= 'Liste des Clients';
  FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
  FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
  FastProduitsListF.ResearchProduitsEdt.Width:= 431;

  FastProduitsListF.Tag := 6;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonComVGestionF.NewAddProduitBonComGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonComVGestionF.DeleteProduitBonComGBtnClick(Sender: TObject);
begin
 if  DataModuleF.bonv_com_listTable.RecordCount = 1 then
 begin
    DataModuleF.bonv_com_listTable.DisableControls;
    DataModuleF.bonv_com_listTable.Refresh;
    DataModuleF.bonv_com_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    DataModuleF.bonv_com_listTable.EnableControls;
    ClientBonComGCbx.StyleElements:= [];
    RequiredClientGlbl.Visible:= False;
    NameClientGErrorP.Visible:= False;
    BonComTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComTotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComGClientNEWCredit.Caption:= BonComTotalTTCLbl.Caption;
 end else
 if DataModuleF.bonv_com_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      DataModuleF.bonv_com_listTable.DisableControls;
      DataModuleF.bonv_com_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      DataModuleF.bonv_com_listTable.Refresh;
      DataModuleF.bonv_com_listTable.EnableControls;
     end;
end;

procedure TBonComVGestionF.ClearProduitBonComGBtnClick(Sender: TObject);
begin
  FSplashAddUnite:=TFSplashAddUnite.Create(Application);
  FSplashAddUnite.Width:=350;
  FSplashAddUnite.Height:=160;
  FSplashAddUnite.Panel1.Color:=  $004735F9;
  FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
  FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
  FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
  FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;

  FSplashAddUnite.NameAddUniteSLbl.Caption:='Voulez-vous vraiment supprimer tous  '+ sLineBreak +  sLineBreak +'les produits de ce Bon ?' ;
  FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  FSplashAddUnite.Image1.Visible:=True;
  FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression des Produits!!';
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
  FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
  FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
  FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 49 ;
end;

procedure TBonComVGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingData;

   OLDCredit:= BonComPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonComPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonComPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonComPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonComPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonComPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonComPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonComPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonComPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonComPListfrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListfrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
 end;
end;

procedure TBonComVGestionF.BondeCaisseSimple1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingDataBonCaisse;

   OLDCredit:= BonComPListBonCaissefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonComPListBonCaissefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonComPListBonCaissefrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonComPListBonCaissefrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonComPListBonCaissefrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonComPListBonCaissefrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonComPListBonCaissefrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonComPListBonCaissefrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonComPListBonCaissefrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonComPListBonCaissefrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListBonCaissefrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
end;
end;

procedure TBonComVGestionF.BondeCaisseSimple2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingDataBonCaisse;

  OLDCredit:= BonComPListBonCaissefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonComPListBonCaissefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonComPListBonCaissefrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonComPListBonCaissefrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonComPListBonCaissefrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonComPListBonCaissefrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonComPListBonCaissefrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonComPListBonCaissefrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonComPListBonCaissefrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonComPListBonCaissefrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListBonCaissefrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
end;
end;

procedure TBonComVGestionF.Bondecaissesimple3Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingDataBonCaisseA5;

   OLDCredit:= BonComPListfrxCaisseRprtA5.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonComPListfrxCaisseRprtA5.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonComPListfrxCaisseRprtA5.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonComPListfrxCaisseRprtA5.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonComPListfrxCaisseRprtA5.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonComPListfrxCaisseRprtA5.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonComPListfrxCaisseRprtA5.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonComPListfrxCaisseRprtA5.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonComPListfrxCaisseRprtA5.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

  BonComPListfrxCaisseRprtA5.PrepareReport;
  BonComPListfrxCaisseRprtA5.ShowReport;

  //BonComPListfrxRprt.Print;   // this is to print directly
  DataModuleF.bonv_com_listTable.EnableControls;
end;

end;

procedure TBonComVGestionF.BondeCommande1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingData;

  OLDCredit:= BonComPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonComPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonComPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonComPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonComPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonComPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonComPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonComPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonComPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;
//BonComPListfrxRprt.;
BonComPListfrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListfrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
end;
end;

procedure TBonComVGestionF.BondeCommande2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
      DataModuleF.bonv_com_listTable.DisableControls;
     GettingDataA5;
       OLDCredit:= BonComPListfrxRprtA5.FindObject('OLDCredit') as TfrxMemoView;
      OLDCredit.Visible:= True;
      NEWCredit:= BonComPListfrxRprtA5.FindObject('NEWCredit') as TfrxMemoView;
      NEWCredit.Visible:= True;
      OLDCreditLbl:= BonComPListfrxRprtA5.FindObject('OLDCreditLbl') as TfrxMemoView;
      OLDCreditLbl.Visible:= True;
      NEWCreditLbl:= BonComPListfrxRprtA5.FindObject('NEWCreditLbl') as TfrxMemoView;
      NEWCreditLbl.Visible:= True;

      TotalACHAT:= BonComPListfrxRprtA5.FindObject('TotalACHAT') as TfrxMemoView;
      TotalACHAT.Visible:= True;
      Versement:= BonComPListfrxRprtA5.FindObject('Versement') as TfrxMemoView;
      Versement.Visible:= True;

      TotalACHATLbl:= BonComPListfrxRprtA5.FindObject('TotalACHATLbl') as TfrxMemoView;
      TotalACHATLbl.Visible:= True;
      VersementLbl:= BonComPListfrxRprtA5.FindObject('VersementLbl') as TfrxMemoView;
      VersementLbl.Visible:= True;

      LineCredit:= BonComPListfrxRprtA5.FindObject('LineCredit') as TfrxShapeView;
      LineCredit.Visible:= True;

    BonComPListfrxRprtA5.PrepareReport;
//    BonComPListfrxRprtA5.PrintOptions.ShowDialog := False;
    BonComPListfrxRprtA5.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
    DataModuleF.bonv_com_listTable.EnableControls;
 end;
end;

procedure TBonComVGestionF.BondeCommande3Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingDataBCVSimple;

   OLDCredit:= BonComPListComSimplefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonComPListComSimplefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonComPListComSimplefrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonComPListComSimplefrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonComPListComSimplefrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonComPListComSimplefrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonComPListComSimplefrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonComPListComSimplefrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonComPListComSimplefrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonComPListComSimplefrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListComSimplefrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
end;

end;

procedure TBonComVGestionF.BondeCommandehorstaxe1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl   , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingDataSansTax;

  OLDCredit:= BonComPListSansTaxfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonComPListSansTaxfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonComPListSansTaxfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonComPListSansTaxfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonComPListSansTaxfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonComPListSansTaxfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonComPListSansTaxfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonComPListSansTaxfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonComPListSansTaxfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonComPListSansTaxfrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListSansTaxfrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
end;
end;

procedure TBonComVGestionF.BondeRception1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.bonv_com_listTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonComPListSansTaxfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonComPListSansTaxfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonComPListSansTaxfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonComPListSansTaxfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonComPListSansTaxfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonComPListSansTaxfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonComPListSansTaxfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonComPListSansTaxfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonComPListSansTaxfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonComPListSansTaxfrxRprt.PrepareReport;
//BonComPListfrxRprt.PrintOptions.ShowDialog := False;
BonComPListSansTaxfrxRprt.ShowReport;

//BonComPListfrxRprt.Print;   // this is to print directly
DataModuleF.bonv_com_listTable.EnableControls;
 end;
end;

procedure TBonComVGestionF.BonComPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonComPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonComGBtn.Visible:= True;
    ClearProduitBonComGBtn.Visible:= True;

    if (ClientBonComGCbx.Text<>'') AND (DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean <> True) then
    begin
    ValiderBVComBonComGBtn.Enabled:= True;
    ValiderBVComBonComGBtn.ImageIndex:=12;
    end;

   if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] <> True then
   begin

//    MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_p,qut_p,qutini_p,prixht_p FROM produit WHERE code_p = ' +IntToStr(DataModuleF.bonv_com_listTable.FieldValues['code_p']);
    MainForm.SQLQuery.Active:=True;

    BonComGOLDStock.Caption:=
      floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])),ffNumber,14,2);
    BonComGNEWStock.Caption:=
      floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']))-((DataModuleF.bonv_com_listTable.FieldValues['qut_p'])*(DataModuleF.bonv_com_listTable.FieldValues['cond_p']))),ffNumber,14,2);

    if(StrToFloat (StringReplace(BonComGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
    begin
     Timer1.Enabled:= true;
    end else
        begin
        Timer1.Enabled:= False;
        Label20.Visible:=false;
        end;

  //------------ this will show notification if the price is lower the the achat price------------
      if DataModuleF.bonv_com_listTable.FieldByName('prixvd_p').AsFloat <  MainForm.SQLQuery.FieldByName('prixht_p').AsFloat then
      begin
       Label25.Caption:= 'Alerte !! Le prix de vente est inf�rieur au prix d''achat';
       Timer2.Enabled:= true;
      end else
          if DataModuleF.bonv_com_listTable.FieldByName('prixvd_p').AsFloat =  MainForm.SQLQuery.FieldByName('prixht_p').AsFloat then
          begin
           Label25.Caption:= 'Alerte !! Le prix de vente est �gal au prix d''achat';
           Timer2.Enabled:= true;
          end else
          begin
           Timer2.Enabled:= False;
           Label25.Visible:=false;
          end;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
//    MainForm.SQLQuery.SQL.Text:='SELECT * FROM produit ';
//    MainForm.SQLQuery.Active:=True;
//    MainForm.SQLQuery.EnableControls;

    RemisePerctageBonComGEdt.Enabled:=True;
    RemiseBonComGEdt.Enabled:=True;
    RemiseTypeBonComGCbx.Enabled:= True;    

   end;
     ProduitsListDBGridEh.ReadOnly:=False;

    end else
    begin
    DeleteProduitBonComGBtn.Visible:= False;
    ClearProduitBonComGBtn.Visible:= False;
     Timer1.Enabled:=False;
     Timer2.Enabled:=False;

    ValiderBVComBonComGBtn.Enabled:= False;
    ValiderBVComBonComGBtn.ImageIndex:=30;

    RemisePerctageBonComGEdt.Enabled:=False;
    RemiseBonComGEdt.Enabled:=False;
    RemiseTypeBonComGCbx.Enabled:= False;

    RemisePerctageBonComGEdt.Text:='';
    RemiseBonComGEdt.Text:='';
    RemiseTypeBonComGCbx.Text:='';
    BonComGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonComGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

     ProduitsListDBGridEh.ReadOnly:=True;
  end;
end;

procedure TBonComVGestionF.RemiseTypeBonComGCbxChange(Sender: TObject);
begin
RemiseBonComGEdt.Text:='';
RemisePerctageBonComGEdt.Text:='';
end;

procedure TBonComVGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonComGCbx.SetFocus;
end;

procedure TBonComVGestionF.RemisePerctageBonComGEdtChange(Sender: TObject);
var BonCVTotalHT,RemisePerctageBonCom,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldClientCredit : Currency;
begin
//------ this is to set the remise on tyhe prix HT ---------//

   //-- use this code to HT TVA calculation
      if RemiseTypeBonComGCbx.ItemIndex = 0 then
       begin
        if RemisePerctageBonComGEdt.Text<>''  then
        begin
            if RemisePerctageBonComGEdt.Text <> '' then
            begin
            RemisePerctageBonCom:=StrToFloat(StringReplace(RemisePerctageBonComGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonComTotalHTLbl.Caption<>'' then
            begin
            BonCVTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonComTotalTVALbl.Caption:= FloatToStrF(Round(TotalTVANet - (( TotalTVANet  * RemisePerctageBonCom)/(100))),ffNumber,14,2); //TVA
         BonCVTotalHTNewLbl.Caption:= FloatToStrF(Round(BonCVTotalHT - (( BonCVTotalHT  * RemisePerctageBonCom)/(100))),ffNumber,14,2); //HT
            if BonCVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonCVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonComTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonComTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonComTotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA),ffNumber,14,2); // TTC
//         BonComResteLbl.Caption:= BonComTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonComGEdt.Focused then
            begin
            RemiseBonComGEdt.Text:=FloatToStrF((BonCVTotalHT - NewHT),ffNumber,14,2);
            end;

        BonCVRemiseHTNewLbl.Caption:= FloatToStrF((BonCVTotalHT - NewHT),ffNumber,14,2);

            if BonComGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonComGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonComGClientNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldClientCredit)),ffNumber,14,2);

        end else
          begin
           if BonComTotalHTLbl.Caption<>'' then
           begin
           BonCVTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonComTotalTTCLbl.Caption:=FloatToStrF((BonCVTotalHT + TotalTVANet ),ffNumber,14,2);
//            BonComResteLbl.Caption:= BonComTotalTTCLbl.Caption;
            BonComTotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonComGEdt.Text:='';
            BonCVRemiseHTNewLbl.Caption:='0';
            BonCVTotalHTNewLbl.Caption:=BonComTotalHTLbl.Caption;

            if BonComGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonComGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonComGClientOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonComTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
//          BonComGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
          end;
       end;
       //------ this is to set the remise on the prix TTC only ---------//
       if RemiseTypeBonComGCbx.ItemIndex = 1 then
       begin
        if RemisePerctageBonComGEdt.Text<>'' then
        begin
             if RemisePerctageBonComGEdt.Text <> '' then
            begin
            RemisePerctageBonCom:=StrToFloat(StringReplace(RemisePerctageBonComGEdt.Text, #32, '', [rfReplaceAll]));
            end;
             if TotalTVANewLbl.Caption <>'' then
            begin
            NewTVA:=StrToFloat (StringReplace(TotalTVANewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonComTotalHTLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         BonComTotalTVALbl.Caption:= FloatToStrF(( NewTVA - ((RemisePerctageBonCom/100) * NewTVA)),ffNumber,14,2);
         BonCVTotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonCom/100) * NewHT)),ffNumber,14,2);
         BonComTotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonCom/100) * NewHT))+( NewTVA - ((RemisePerctageBonCom/100) * NewTVA))),ffNumber,14,2);
            if BonCVTotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonCVTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonComTotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonComTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonComGEdt.Focused then
         begin
         RemiseBonComGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


//         BonComResteLbl.Caption:=BonComTotalTTCLbl.Caption;

           if BonComTotalHTLbl.Caption <>'' then
            begin
            BonCVTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonCVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonCVRemiseHTNewLbl.Caption:= FloatToStrF((BonCVTotalHT - NewHT),ffNumber,14,2);

            if BonComGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonComGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonComGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonComGEdt.Text:='';
             BonCVRemiseHTNewLbl.Caption:='0';
             BonComTotalTTCLbl.Caption := BonCVTotalTTCNewLbl.Caption;
//             BonComResteLbl.Caption:=BonComTotalTTCLbl.Caption;
             BonComTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonCVTotalHTNewLbl.Caption:=BonComTotalHTLbl.Caption;

              if BonComGClientOLDCredit.Caption <>'' then
              begin
              OldClientCredit:=StrToFloat (StringReplace(BonComGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonComGClientOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonComTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
//           BonComGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
            end;
      end;
end;

procedure TBonComVGestionF.RemisePerctageBonComGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonComGEdt.Text := StringReplace(RemisePerctageBonComGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonComGEdt.SelectAll;
end;

procedure TBonComVGestionF.RemisePerctageBonComGEdtEnter(Sender: TObject);
begin
DataModuleF.bonv_com_listTable.Refresh;
 RemisePerctageBonComGEdtChange(Sender);
end;

procedure TBonComVGestionF.RemisePerctageBonComGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemisePerctageBonComGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonComVGestionF.RemiseBonComGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemiseBonComGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonComVGestionF.RemiseBonComGEdtExit(Sender: TObject);
var
RemiseBonComG: Currency;
begin
  if RemiseBonComGEdt.Text<>'' then
  begin
  RemiseBonComG:=StrToFloat(StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonComGEdt.Text := FloatToStrF(RemiseBonComG,ffNumber,14,2);
  end;
end;
procedure TBonComVGestionF.RemiseBonComGEdtEnter(Sender: TObject);
begin
DataModuleF.bonv_com_listTable.Refresh;
 RemisePerctageBonComGEdtChange(Sender);
end;

procedure TBonComVGestionF.RemiseBonComGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonComGEdt.Text := StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonComGEdt.SelectAll;
end;

procedure TBonComVGestionF.RemiseBonComGEdtChange(Sender: TObject);
var RemiseBonComG,BonCVTotalHT,BonCVTotalTVA,OLDTTC : Currency;
begin
if RemiseBonComGEdt.Focused then
 begin
      if RemiseBonComGEdt.Text<>'' then
     begin
     RemiseBonComG:=StrToFloat (StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
     end;
     if (RemiseBonComGEdt.Text<>'') AND (RemiseBonComG<>0) then
    begin
       if RemiseTypeBonComGCbx.ItemIndex = 0 then
       begin
         if BonComTotalHTLbl.Caption<>'' then
         begin
         BonCVTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonComTotalTVALbl.Caption<>'' then
         begin
          BonCVTotalTVA:=StrToFloat (StringReplace(BonComTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonComGEdt.Text := FloatToStrF(((RemiseBonComG / BonCVTotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonComGCbx.ItemIndex = 1 then
        begin
         if BonCVTotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonCVTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonComGEdt.Text := FloatToStrF(((RemiseBonComG / OLDTTC) * 100),ffNumber,14,2) ;
        end;
    end else
        begin
          BonCVRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonComGEdt.Text:='';
          BonCVTotalHTNewLbl.Caption:=BonComTotalHTLbl.Caption;
        end;
 end;
end;

procedure TBonComVGestionF.sSpeedButton7Click(Sender: TObject);
begin
  DataModuleF.Bonv_comTable.First;
  DataModuleF.Bonv_comTable.Refresh;
  DataModuleF.bonv_com_listTable.Refresh;

  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = True then
  begin
       FSplashVersement.DisableBonComV;
  end;
  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = False then
   begin
     EnableBonComV;
    end;


  if (DataModuleF.Bonv_comTable.FieldValues['code_c']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_c']<> null) then
  begin
  ClientBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['clientbvcom'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['ModePaie'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['Compte'];
  end;

  if  (DataModuleF.Bonv_comTable.FieldValues['MontantRes']<>null)  then
  begin
  BonComResteLbl.Caption:=CurrToStrF(((DataModuleF.Bonv_comTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

   NumBonComGEdt.Caption:= DataModuleF.Bonv_comTable.FieldByName('num_bvcom').AsString;

      if DataModuleF.bonv_com_listTable.ControlsDisabled  then
   begin
     DataModuleF.bonv_com_listTable.EnableControls;
   end;
end;

procedure TBonComVGestionF.sSpeedButton6Click(Sender: TObject);
begin
  DataModuleF.Bonv_comTable.Prior;
  DataModuleF.Bonv_comTable.Refresh;
  DataModuleF.bonv_com_listTable.Refresh;

  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = True then
  begin
       FSplashVersement.DisableBonComV;
  end;
  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = False then
   begin
     EnableBonComV;
    end;


  if (DataModuleF.Bonv_comTable.FieldValues['code_c']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_c']<> null) then
  begin
  ClientBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['clientbvcom'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['ModePaie'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['Compte'];
  end;

  if  (DataModuleF.Bonv_comTable.FieldValues['MontantRes']<>null)  then
  begin
  BonComResteLbl.Caption:=CurrToStrF(((DataModuleF.Bonv_comTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonComGEdt.Caption:= DataModuleF.Bonv_comTable.FieldByName('num_bvcom').AsString;

    if DataModuleF.bonv_com_listTable.ControlsDisabled  then
   begin
     DataModuleF.bonv_com_listTable.EnableControls;
   end;
end;

procedure TBonComVGestionF.sSpeedButton5Click(Sender: TObject);
begin
  DataModuleF.Bonv_comTable.Next;
  DataModuleF.Bonv_comTable.Refresh;
  DataModuleF.bonv_com_listTable.Refresh;

  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = True then
  begin
       FSplashVersement.DisableBonComV;
  end;
  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = False then
   begin
     EnableBonComV;
    end;


  if (DataModuleF.Bonv_comTable.FieldValues['code_c']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_c']<> null) then
  begin
  ClientBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['clientbvcom'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['ModePaie'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['Compte'];
  end;

  if  (DataModuleF.Bonv_comTable.FieldValues['MontantRes']<>null)  then
  begin
  BonComResteLbl.Caption:=CurrToStrF(((DataModuleF.Bonv_comTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonComGEdt.Caption:= DataModuleF.Bonv_comTable.FieldByName('num_bvcom').AsString;

        if DataModuleF.bonv_com_listTable.ControlsDisabled  then
   begin
     DataModuleF.bonv_com_listTable.EnableControls;
   end;
end;

procedure TBonComVGestionF.sSpeedButton4Click(Sender: TObject);
begin
  DataModuleF.Bonv_comTable.Last;
  DataModuleF.Bonv_comTable.Refresh;
  DataModuleF.bonv_com_listTable.Refresh;

  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = True then
  begin
       FSplashVersement.DisableBonComV;
  end;
  if DataModuleF.Bonv_comTable.FieldValues['valider_bvcom'] = False then
   begin
     EnableBonComV;
    end;


  if (DataModuleF.Bonv_comTable.FieldValues['code_c']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_c']<> null) then
  begin
  ClientBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['clientbvcom'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['ModePaie'];
  end;
  if (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<> 0) AND (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonComGCbx.Text:=DataModuleF.Bonv_comTable.FieldValues['Compte'];
  end;

  if  (DataModuleF.Bonv_comTable.FieldValues['MontantRes']<>null)  then
  begin
  BonComResteLbl.Caption:=CurrToStrF(((DataModuleF.Bonv_comTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonComGEdt.Caption:= DataModuleF.Bonv_comTable.FieldByName('num_bvcom').AsString;

        if DataModuleF.bonv_com_listTable.ControlsDisabled  then
   begin
     DataModuleF.bonv_com_listTable.EnableControls;
   end;
end;

procedure TBonComVGestionF.AddBVComBonComGBtnClick(Sender: TObject);
var
  codeBCV,CodeCB : integer;
begin
 Timer1.Enabled:=False;

      begin
     ClientBonComGCbx.Clear;
     ModePaieBonComGCbx.Clear;
     CompteBonComGCbx.Clear;
     NChequeBonComGCbx.Clear;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.ClientTable.Refresh;
   DataModuleF.Bonv_comTable.Refresh;
   DataModuleF.bonv_com_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonComPListDataS.DataSet.Refresh;
   DataModuleF.BonComVListDataS.DataSet.Refresh;
   Refresh;

   ModePaieBonComGCbx.Refresh;
   CompteBonComGCbx.Refresh;

   EnableBonComV;

 codeBCV:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if DataModuleF.Bonv_comTable.RecordCount <= 0 then
      begin

        DataModuleF.Bonv_comTable.Insert;
        DataModuleF.Bonv_comTable.FieldValues['code_bvcom']:=1;
        DataModuleF.Bonv_comTable.FieldValues['num_bvcom']:= 'BCV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        DataModuleF.Bonv_comTable.FieldValues['date_bvcom']:= DateOf(Today);
        DataModuleF.Bonv_comTable.FieldValues['time_bvcom']:=TimeOf(Now);
        DataModuleF.Bonv_comTable.Post;
        codeBCV := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
      end else
          begin
            DataModuleF.Bonv_comTable.Last;
            codeBCV := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
            DataModuleF.bonv_com_listTable.Active:=False;
            DataModuleF.bonv_com_listTable.SQL.Clear;
            DataModuleF.bonv_com_listTable.SQL.Text:= BCVLSQL+' WHERE code_bvcom = ' + QuotedStr(IntToStr(codeBCV))+' ';
            DataModuleF.bonv_com_listTable.Active:=True;

           if DataModuleF.bonv_com_listTable.RecordCount <= 0 then
           begin
        //   DataModuleF.Bonv_comTable.Last;
           codeBCV := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
           end else
           begin

             DataModuleF.Bonv_comTable.Insert;
             DataModuleF.Bonv_comTable.FieldValues['code_bvcom']:= codeBCV + 1;
             DataModuleF.Bonv_comTable.FieldValues['num_bvcom']:=  'BCV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBCV + 1)]);
             DataModuleF.Bonv_comTable.FieldValues['date_bvcom']:= DateOf(Today);
             DataModuleF.Bonv_comTable.FieldValues['time_bvcom']:= TimeOf(Now);
             DataModuleF.Bonv_comTable.Post;

           end;
//            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonComTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    BonRecGestionF.RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
      BonComTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonComTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonComResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
      BonComRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
      BonComGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
      BonComGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= DataModuleF.Bonv_comTable.FieldValues['code_bvcom']   ;
   NumBonComGEdt.Caption := 'BCV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     ClientBonComGCbx.SetFocus;

     Tag :=0;

     DataModuleF.bonv_com_listTable.Refresh;

     ClientBonComGCbxExit(Sender);
     ProduitBonComGCbx.SetFocus;


end;

procedure TBonComVGestionF.EditBVComBonComGBtnClick(Sender: TObject);
Var  CodeBCV : Integer;
begin
  codeBCV:=DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger;

        //------- This is to delete data from tre and reg ih not valide----------------------------------------------
           if (codeBCV <> 0) AND (codeBCV <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvcom = ' + IntToStr(codeBCV));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvcom = ' + IntToStr(codeBCV));
              MainForm.RegclientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonComGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
 // this is to enable the componets to edit the bon

  EnableBonComV;

 // this is to unvalider the bon
  begin
  DataModuleF.Bonv_comTable.Edit;
  DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean:= False;
  DataModuleF.Bonv_comTable.Post;
  end;


// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonComGClientOLDCredit.Caption:=
  CurrToStrF((((MainForm.ClientTable.FieldValues['credit_c'])-(StringReplace(BonComResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

      if  (MainForm.ClientTable.FieldByName('code_c').AsInteger <> 1) then
      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - (DataModuleF.Bonv_comTable.FieldByName('MontantRes').AsCurrency);
      MainForm.ClientTable.Post;
      end;

  BonComRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonComResteLbl.Caption:= BonComTotalTTCLbl.Caption;



      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls ;

 //----------------------------------------

      begin
//           MainForm.ProduitTable.DisableControls;
//           MainForm.ProduitTable.Active:=False;
//           MainForm.ProduitTable.SQL.Clear;
//           MainForm.ProduitTable.SQL.Text:='SELECT *, '
//            +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
//            +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
//            +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
//            +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
//            +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
//            +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
//            +' (qut_p + qutini_p ) AS QutDispo, '
//            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
//            +' FROM produit ' ;
//           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvcoml,code_p,  qut_p, cond_p,code_barec  FROM bonv_com_list WHERE code_bvcom =  '
                                                 + IntToStr (DataModuleF.Bonv_comTable.FieldValues['code_bvcom'])
                                                 + 'GROUP BY code_bvcoml, code_p, qut_p, cond_p,code_barec ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
            MainForm.SQLQuery3.SQL.Text:='SELECT code_p,qut_p,tva_p FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.SQLQuery3.Active:=True;
            MainForm.SQLQuery3.Edit;
            MainForm.SQLQuery3.FieldValues['qut_p']:= ( MainForm.SQLQuery3.FieldValues['qut_p']
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
//            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
            MainForm.SQLQuery3.Post;


            Mainform.FDQuery2.Active:=False;
            Mainform.FDQuery2.Sql.Clear;
            Mainform.FDQuery2.Sql.Text:='SELECT code_barecl,code_barec, code_p,qutinstock_p FROM bona_rec_list  WHERE code_barec =' +IntToStr(MainForm.SQLQuery.FieldByName('code_barec').AsInteger) ;
            MainForm.FDQuery2.Active:=True;

            if NOT MainForm.FDQuery2.IsEmpty then
            begin

            MainForm.FDQuery2.Edit;
            MainForm.FDQuery2.FieldValues['qutinstock_p']:= ( MainForm.FDQuery2.FieldValues['qutinstock_p']
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.FDQuery2.Post;
            end;

            MainForm.SQLQuery.Next;
           end;

           MainForm.SQLQuery3.Active:=False;
           MainForm.SQLQuery3.SQL.Clear;
//           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
//           MainForm.ProduitTable.Active:=True;
//           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           Mainform.FDQuery2.Active:=False;
           Mainform.FDQuery2.Sql.Clear;
           DataModuleF.Bonv_comTable.Refresh;

     end;

     ClientBonComGCbxExit(Sender);

end;

procedure TBonComVGestionF.ValiderBVComBonComGBtnClick(Sender: TObject);
begin
  if ClientBonComGCbx.Text <> '' then
  begin

   if ModePaieBonComGCbx.Text <> '' then
   begin

    if CompteBonComGCbx.Text <> '' then
    begin

      if  RequiredClientGlbl.Visible <> True then
      begin
           //-------- Show the splash screan for the adding comptes ---------//
       FSplashVersement:=TFSplashVersement.Create(Application);
       FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
       FSplashVersement.Top:=  MainForm.Top + 5 ;
      FSplashVersement.OldCreditVersementSLbl.Caption:= BonComGClientOLDCredit.Caption;

        FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
             (StrToFloat (StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);
        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((
             (StrToFloat (StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);
        FSplashVersement.Tag := 2 ;
        FSplashVersement.OKVersementSBtn.Tag:= 1 ;
       AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashVersement.Show;

      end  else
           begin

              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              ClientBonComGCbx.StyleElements:= [];
              RequiredClientGlbl.Caption:= 'Ce Client est bloqu�' ;
              RequiredClientGlbl.Visible:= True;
              NameClientGErrorP.Visible:= True;
              ClientBonComGCbx.SetFocus;

           end;

           end else
               begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  CompteBonComGCbx.StyleElements:= [];
                  RequiredCompteGlbl.Visible:= True;
                  CompteGErrorP.Visible:= True;
                  CompteBonComGCbx.SetFocus;
               end;

    end else
        begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ModePaieBonComGCbx.StyleElements:= [];
            RequiredMPGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonComGCbx.SetFocus;
        end;

    end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonComGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous pla�t entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonComGCbx.SetFocus;
    end;

end;

procedure TBonComVGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var indes : Integer;
begin

  //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (DataModuleF.bonv_com_listTable.RecNo=DataModuleF.bonv_com_listTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;

end;

procedure TBonComVGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key=#13 ) OR (Key=#9) then
  begin
         Refresh_PreservePosition;
   with TDBGridEh(Sender) do
      begin
     if SelectedIndex < (FieldCount-1) then
     SelectedIndex := SelectedIndex+1
     else
     SelectedIndex := 0;
    end;
   end;




end;
// use this procedure to show hin when mouse move on the grid ------------------
Procedure ChangeHint(C: TControl; Const Hint: String; p: TPoint);
var
  OldHint: String;
begin
  OldHint := C.Hint;
  if Hint <> OldHint then
  begin
    C.Hint := Hint;
    Application.ActivateHint(p);
  end;
end;


procedure TBonComVGestionF.ProduitsListDBGridEhMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);

begin
//if NOT (DataModuleF.bonv_com_listTable.IsEmpty) then
//  begin
//////    MainForm.SQLQuery.DisableControls;
////    MainForm.FDQuery2.Active:=False;
////    MainForm.FDQuery2.SQL.Clear;
////    MainForm.FDQuery2.SQL.Text:='SELECT code_p,nom_p,prixht_p,tva_p FROM produit WHERE code_p = ' +IntToStr(DataModuleF.bonv_com_listTable.FieldValues['code_p']);
////    MainForm.FDQuery2.Active:=True;
////
////
//    //ProduitsListDBGridEh.hint:= ('Prix seuil de vente: '+MainForm.ProduitTable.FieldByName('prixht_p').AsString+FormatSettings.DecimalSeparator+'00'  )     ;
//       Application.HintPause := 3000;      // 250 mSec before hint is shown
//     Application.HintHidePause := 5000;
//   ProduitsListDBGridEh.ShowHint:= True;
//
//     ChangeHint(TDBGridEh(Sender),
//      ( 'D�s: '+ (DataModuleF.bonv_com_listTable.FieldValues['nomp'])
//       + sLineBreak +
//         'Prix HT= '+ CurrToStrF((DataModuleF.bonv_com_listTable.FieldValues['prixht_p']),ffNumber,2)
//       + sLineBreak +
//         'Prix TTC= '+ CurrToStrF(((((DataModuleF.bonv_com_listTable.FieldValues['prixht_p'] * DataModuleF.bonv_com_listTable.FieldValues['tva_p'])/100) + (DataModuleF.bonv_com_listTable.FieldValues['prixht_p']))),ffNumber,2)
//       ),
//       TDBGridEh(Sender).ClientToScreen(Point(X, Y)));
////
////
////     MainForm.FDQuery2.Active:=False;
////    MainForm.FDQuery2.SQL.Clear;
//////    MainForm.FDQuery2.SQL.Text:='SELECT * FROM produit';
//////    MainForm.FDQuery2.Active:=True ;
//////    MainForm.FDQuery2.EnableControls;
//  end;

end;

procedure TBonComVGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
end;

 procedure TBonComVGestionF.Timer2Timer(Sender: TObject);
begin

if Label25.Visible=True then
   Label25.Visible:=False
else
   Label25.Visible:=True;

end;

procedure PrintOnDotMatrix;
var
Handle: THandle;
N: DWORD;
DocInfo1: TDocInfo;
s : string;
begin
if not OpenPrinter(PChar('DotMatrix'), Handle, nil) then begin
ShowMessage('Printer �DotMatrix� not found.');
Exit;
end;

  with DocInfo1 do begin
  lpszDocName   := PChar('Document Name');
  lpszOutput   := nil;
  lpszDatatype := 'RAW';
  end;

StartDocPrinter(Handle, 1, @DocInfo1);

s := 'First line of first page' + #13 + #10;
WritePrinter(Handle, PChar(s), Length(s), N);
s := 'Second line of first page' + #13 + #10;
WritePrinter(Handle, PChar(s), Length(s), N);

EndPagePrinter(Handle);

s := 'First line of second page' + #13 + #10;
WritePrinter(Handle, PChar(s), Length(s), N);
s := 'Second line of second page' + #13 + #10;
WritePrinter(Handle, PChar(s), Length(s), N);

EndPagePrinter(Handle);

EndDocPrinter(Handle);

ClosePrinter(Handle);
end;


procedure TBonComVGestionF.GettingData;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonComPListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListfrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonComPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonComGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonComPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

  DateRX:= BonComPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

  NameRX:= BonComPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonComGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonComPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonComPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonComPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonComGCbx.Text;


        OLDCredit:= BonComPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonComGClientOLDCredit.Caption;


      NEWCredit:= BonComPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonComGClientNEWCredit.Caption;

 end;



 procedure TBonComVGestionF.GettingDataA5;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,TelRX,FaxRX,Mob1RX,Mob2RX,MPRX,NCHeqRX,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonComPListfrxRprtA5.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListfrxRprtA5.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListfrxRprtA5.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListfrxRprtA5.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListfrxRprtA5.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;

  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonComPListfrxRprtA5.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonComGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonComPListfrxRprtA5.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

    DateRX:= BonComPListfrxRprtA5.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

      NameRX:= BonComPListfrxRprtA5.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonComGCbx.Text;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin

      AdrRX:= BonComPListfrxRprtA5.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonComPListfrxRprtA5.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonComPListfrxRprtA5.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;


      TelRX:= BonComPListfrxRprtA5.FindObject('TelRX') as TfrxMemoView;
      TelRX.Text:= FieldByName('fix_c').AsString;

      Mob1RX:= BonComPListfrxRprtA5.FindObject('Mob1RX') as TfrxMemoView;
      Mob1RX.Text:= FieldByName('mob_c').AsString;

      Mob2RX:= BonComPListfrxRprtA5.FindObject('Mob2RX') as TfrxMemoView;
      Mob2RX.Text:= FieldByName('mob2_c').AsString;

      FaxRX:= BonComPListfrxRprtA5.FindObject('FaxRX') as TfrxMemoView;
      FaxRX.Text:= FieldByName('fax_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListfrxRprtA5.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListfrxRprtA5.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonComGCbx.Text;


        OLDCredit:= BonComPListfrxRprtA5.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonComGClientOLDCredit.Caption;


      NEWCredit:= BonComPListfrxRprtA5.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonComGClientNEWCredit.Caption;

 end;


procedure TBonComVGestionF.GettingDataSansTax;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonComPListSansTaxfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListSansTaxfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListSansTaxfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListSansTaxfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListSansTaxfrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonComPListSansTaxfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonComGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonComPListSansTaxfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

    DateRX:= BonComPListSansTaxfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

      NameRX:= BonComPListSansTaxfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonComGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonComPListSansTaxfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonComPListSansTaxfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonComPListSansTaxfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListSansTaxfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListSansTaxfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonComGCbx.Text;


        OLDCredit:= BonComPListSansTaxfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonComGClientOLDCredit.Caption;


      NEWCredit:= BonComPListSansTaxfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonComGClientNEWCredit.Caption;

 end;



procedure TBonComVGestionF.GettingDataBonCaisse;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,NEWCredit,OLDCredit  : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonComPListBonCaissefrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListBonCaissefrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListBonCaissefrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListBonCaissefrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListBonCaissefrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonComPListBonCaissefrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonComGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonComPListBonCaissefrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

    DateRX:= BonComPListBonCaissefrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

      NameRX:= BonComPListBonCaissefrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonComGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonComPListBonCaissefrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonComPListBonCaissefrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonComPListBonCaissefrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListBonCaissefrxRprt.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListBonCaissefrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonComGCbx.Text;


    OLDCredit:= BonComPListBonCaissefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
    OLDCredit.Text:= BonComGClientOLDCredit.Caption;


    NEWCredit:= BonComPListBonCaissefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
    NEWCredit.Text:= BonComGClientNEWCredit.Caption;

 end;




procedure TBonComVGestionF.GettingDataBonCaisseA5;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,NEWCredit,OLDCredit  : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonComPListfrxCaisseRprtA5.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListfrxCaisseRprtA5.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListfrxCaisseRprtA5.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListfrxCaisseRprtA5.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListfrxCaisseRprtA5.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonComPListfrxCaisseRprtA5.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonComGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonComPListfrxCaisseRprtA5.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

    DateRX:= BonComPListfrxCaisseRprtA5.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

      NameRX:= BonComPListfrxCaisseRprtA5.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonComGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_comTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonComPListfrxCaisseRprtA5.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonComPListfrxCaisseRprtA5.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonComPListfrxCaisseRprtA5.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListfrxCaisseRprtA5.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListfrxCaisseRprtA5.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonComGCbx.Text;


      OLDCredit:= BonComPListfrxCaisseRprtA5.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonComGClientOLDCredit.Caption;


      NEWCredit:= BonComPListfrxCaisseRprtA5.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonComGClientNEWCredit.Caption;

 end;


procedure TBonComVGestionF.GettingDataBCVSimple;
var
  NumRX,DateRX,NameRX,MPRX,NEWCredit,OLDCredit  : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonComPListComSimplefrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListComSimplefrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListComSimplefrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListComSimplefrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListComSimplefrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;




  NumRX:= BonComPListComSimplefrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

  DateRX:= BonComPListComSimplefrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

  NameRX:= BonComPListComSimplefrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonComGCbx.Text;


  MPRX:= BonComPListComSimplefrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonComGCbx.Text;


  OLDCredit:= BonComPListComSimplefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonComGClientOLDCredit.Caption;


  NEWCredit:= BonComPListComSimplefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonComGClientNEWCredit.Caption;

 end;



procedure TBonComVGestionF.sSpeedButton1Click(Sender: TObject);
begin
DataModuleF.bonv_com_listTable.DisableControls;
   GettingData;

BonComPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Commande Client N� '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger)]);
BonComPListfrxRprt.Export(frxXLSExport1);
DataModuleF.bonv_com_listTable.EnableControls;
//EmptyLines: = True;
//OpenExcelAfterExport: = True;
//PageBreaks: = False;
//ShowDialog: = False;;

end;

procedure TBonComVGestionF.sSpeedButton3Click(Sender: TObject);
begin
 GettingData;
 DataModuleF.bonv_com_listTable.DisableControls;
BonComPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Commande Client N� '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.Bonv_comTable.FieldByName('code_bvcom').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonComPListfrxRprt.Export(frxPDFExport1);
DataModuleF.bonv_com_listTable.EnableControls;
end;

procedure TBonComVGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonComVGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
Refresh_PreservePosition;
end;

end.
