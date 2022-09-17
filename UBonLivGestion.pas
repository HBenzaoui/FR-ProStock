unit UBonLivGestion;

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
  Vcl.AppEvnts, frxExportBaseDialog, System.Actions, Vcl.ActnList;

type
  TBonLivGestionF = class(TForm)
    Panel3: TPanel;
    TopP2: TPanel;
    Shape1: TShape;
    EditBVlivBonLivGBtn: TAdvToolButton;
    AddBVlivBonLivGBtn: TAdvToolButton;
    Label4: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    NumBonLivGEdt: TLabel;
    AddClientBonLivGBtn: TAdvToolButton;
    Label8: TLabel;
    ValiderBVlivBonLivGBtn: TAdvToolButton;
    Label7: TLabel;
    AddModePaieBonLivGBtn: TAdvToolButton;
    Label16: TLabel;
    AddCompteBonLivGBtn: TAdvToolButton;
    ListAddProduitBonLivGBtn: TAdvToolButton;
    DeleteProduitBonLivGBtn: TAdvToolButton;
    NewAddProduitBonLivGBtn: TAdvToolButton;
    RequiredClientGlbl: TLabel;
    EnterAddProduitBonLivGBtn: TAdvToolButton;
    ClearProduitBonLivGBtn: TAdvToolButton;
    ValiderBVlivBonLivGImg: TsImage;
    BonLTotalTTCNewLbl: TLabel;
    BonLTotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    Label19: TLabel;
    ObserBonLivGLbl: TLabel;
    BonLRemiseHTNewLbl: TLabel;
    ValiderBVLivBonLivGLbl: TLabel;
    NameClientGErrorP: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonLivGD: TDateTimePicker;
    ClientBonLivGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    Panel2: TPanel;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonLivGCbx: TComboBox;
    CompteBonLivGCbx: TComboBox;
    Panel5: TPanel;
    BonLivGClientOLDCredit: TLabel;
    BonLivGClientNEWCredit: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Panel15: TPanel;
    NChequeBonLivGCbx: TEdit;
    ObserBonLivGMem: TMemo;
    ProduitsListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    label13: TLabel;
    label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BonLivTotalTVALbl: TLabel;
    BonLivRegleLbl: TLabel;
    BonLivResteLbl: TLabel;
    BonLivTotalHTLbl: TLabel;
    BonLivTotalTTCLbl: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel14: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    RemisePerctageBonLivGEdt: TEdit;
    RemiseBonLivGEdt: TEdit;
    Panel1: TPanel;
    RemiseTypeBonLivGCbx: TComboBox;
    BonLivPListDataS: TDataSource;
    Label21: TLabel;
    Label22: TLabel;
    BonLivGOLDStock: TLabel;
    BonLivGNEWStock: TLabel;
    Label20: TLabel;
    Timer1: TTimer;
    BonLivPListfrxRprt: TfrxReport;
    frxBonLivPListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxBonLivDT: TfrxDBDataset;
    frxClientDB: TfrxDBDataset;
    BonLivTotalMargeLbl: TLabel;
    sImage1: TsImage;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    ProduitBonLivGCbx: TcxComboBox;
    RequiredStarProduitGLbl: TLabel;
    ModepPaiGErrorP: TPanel;
    Label23: TLabel;
    CompteGErrorP: TPanel;
    Label24: TLabel;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeRception1: TMenuItem;
    BondeCaisseSimple1: TMenuItem;
    BonLivPListSansTaxfrxRprt: TfrxReport;
    BonLivPListBonCaissefrxRprt: TfrxReport;
    N1: TMenuItem;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
    BondeLivraison1: TMenuItem;
    BondeLivraisonhorstaxe1: TMenuItem;
    BondeCaisseSimple2: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Label25: TLabel;
    Timer2: TTimer;
    BonLivPListfrxRprtA5: TfrxReport;
    Bondelivraison2: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    N2: TMenuItem;
    Bondelivraison3: TMenuItem;
    BonLivPListLivSimplefrxRprt: TfrxReport;
    ListClientBonLivGBtn: TAdvToolButton;
    BonLivTotalAHTLbl: TLabel;
    Bondecaissesimple3: TMenuItem;
    BonLivPListfrxCaisseRprtA5: TfrxReport;
    BonDeFacture: TMenuItem;
    BonFacturePListfrxRprt: TfrxReport;
    Bondelivraison4: TMenuItem;
    BonLivPListTVAfrxRprt: TfrxReport;
    TicketCaisse80frxRprt: TfrxReport;
    N3: TMenuItem;
    TicketCaisse80: TMenuItem;
    S02: TPanel;
    SNumberProduitBonLivGBtn: TAdvToolButton;
    S01: TPanel;
    Label33: TLabel;
    ActionList1: TActionList;
    F3: TAction;
    F4: TAction;
    F5: TAction;
    F6: TAction;
    F7: TAction;
    F8: TAction;
    F9: TAction;
    F10: TAction;
    F11: TAction;
    F12: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ProduitBonLivGCbxEnter(Sender: TObject);
    procedure ProduitBonLivGCbxExit(Sender: TObject);
    procedure ProduitBonLivGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonLivGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ClientBonLivGCbxEnter(Sender: TObject);
    procedure ClientBonLivGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ClientBonLivGCbxExit(Sender: TObject);
    procedure ClientBonLivGCbxChange(Sender: TObject);
    procedure ModePaieBonLivGCbxDropDown(Sender: TObject);
    procedure ModePaieBonLivGCbxClick(Sender: TObject);
    procedure CompteBonLivGCbxChange(Sender: TObject);
    procedure CompteBonLivGCbxEnter(Sender: TObject);
    procedure AddClientBonLivGBtnClick(Sender: TObject);
    procedure AddModePaieBonLivGBtnClick(Sender: TObject);
    procedure AddCompteBonLivGBtnClick(Sender: TObject);
    procedure EnterAddProduitBonLivGBtnClick(Sender: TObject);
    procedure ListAddProduitBonLivGBtnClick(Sender: TObject);
    procedure NewAddProduitBonLivGBtnClick(Sender: TObject);
    procedure DeleteProduitBonLivGBtnClick(Sender: TObject);
    procedure ClearProduitBonLivGBtnClick(Sender: TObject);
    procedure BonLivPListDataSDataChange(Sender: TObject; Field: TField);
    procedure RemiseTypeBonLivGCbxChange(Sender: TObject);
    procedure RemisePerctageBonLivGEdtChange(Sender: TObject);
    procedure RemisePerctageBonLivGEdtClick(Sender: TObject);
    procedure RemisePerctageBonLivGEdtEnter(Sender: TObject);
    procedure RemisePerctageBonLivGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonLivGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonLivGEdtExit(Sender: TObject);
    procedure RemiseBonLivGEdtEnter(Sender: TObject);
    procedure RemiseBonLivGEdtClick(Sender: TObject);
    procedure RemiseBonLivGEdtChange(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure AddBVlivBonLivGBtnClick(Sender: TObject);
    procedure EditBVlivBonLivGBtnClick(Sender: TObject);
    procedure ValiderBVlivBonLivGBtnClick(Sender: TObject);
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
    procedure ModePaieBonLivGCbxChange(Sender: TObject);
    procedure BondeLivraison1Click(Sender: TObject);
    procedure BondeLivraisonhorstaxe1Click(Sender: TObject);
    procedure BondeCaisseSimple2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure Timer2Timer(Sender: TObject);
    procedure Bondelivraison2Click(Sender: TObject);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure Bondelivraison3Click(Sender: TObject);
    procedure ListClientBonLivGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Bondecaissesimple3Click(Sender: TObject);
    procedure BonDeFactureClick(Sender: TObject);
    procedure Bondelivraison4Click(Sender: TObject);
    procedure TicketCaisse80Click(Sender: TObject);
    procedure SNumberProduitBonLivGBtnClick(Sender: TObject);
    procedure ClientBonLivGCbxSelect(Sender: TObject);
    procedure F3Execute(Sender: TObject);
    procedure F4Execute(Sender: TObject);
    procedure F5Execute(Sender: TObject);
    procedure F6Execute(Sender: TObject);
    procedure F7Execute(Sender: TObject);
    procedure F8Execute(Sender: TObject);
    procedure F9Execute(Sender: TObject);
    procedure F10Execute(Sender: TObject);
    procedure F11Execute(Sender: TObject);
    procedure F12Execute(Sender: TObject);
  private
    { Private declarations }
    procedure GettingData;
    procedure GettingDataSansTax;
    procedure GettingDataBonCaisse;
    procedure GettingDataBonCaisseA5;
    procedure GettingDataA5;
    procedure GettingDataBLSimple;
    procedure GettingDataFacture;
    procedure GettingDataBLTVA;
    procedure GettingDataTicketCaisse80;


  public
     
     const BLLSQL = 'Select BLL.code_bvliv,BLL.code_bvlivl,BLL.qut_p,BLL.prixht_p,BLL.prixvd_p,BLL.cond_p,BLL.code_p,BLL.tva_p,BLL.code_barec,P.prixht_p,P.nom_p as nomp, P.refer_p as referp,L.nom_l AS Localisation, '
          +' (((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) AS PrixVTTC, '
          +' ((BLL.prixht_p * BLL.qut_p) * cond_p) AS MontantAHT, '
          +' ((BLL.prixvd_p * BLL.qut_p) * cond_p) AS MontantHT, '
          +' (((((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) * BLL.qut_p)*cond_p) AS MontantTTC, '
          +' (((((((BLL.prixvd_p * BLL.tva_p)/100)+BLL.prixvd_p) * BLL.qut_p)*cond_p) )-(((BLL.prixvd_p * BLL.qut_p) * cond_p))) AS MontantTVA, '
          +' ((P.prixht_p * BLL.qut_p)* cond_p) AS MontantAHT, '
          +' CASE '
          +'      WHEN BLL.prixvd_p <> ''0''  THEN '
          +'   CASE WHEN ((P.prixht_p * BLL.qut_p)* cond_p) <> ''0'' '
          +'     THEN ( ( (((BLL.prixvd_p * BLL.qut_p) * cond_p) - ((P.prixht_p * BLL.qut_p)* cond_p)) / ((P.prixht_p * BLL.qut_p)* cond_p) ) *100) '
          +'     ELSE ''100'' '
          +'   END '
          +' END AS Marge, '
          +' (((BLL.prixvd_p * BLL.qut_p) * cond_p) - ((P.prixht_p * BLL.qut_p)* cond_p) ) AS MargeM '
          +' FROM bonv_liv_list as BLL '
          +' LEFT JOIN produit as P '
          +' ON BLL.code_p = P.code_p '
          +' LEFT JOIN localisation as L '
          +' ON P.code_l = L.code_l ';
     procedure EnableBonLiv;
  end;

var
  BonLivGestionF : TBonLivGestionF;

implementation

uses   WinSpool,Vcl.Imaging.jpeg, IniFiles,
  StringTool, UMainF, USplashAddUnite, UClientsList, UClientGestion, USplashAddCompte,
  UFastProduitsList, UProduitsList, USplashVersement, UBonLiv, UProduitGestion,
  UDataModule, UPerissableProduit, USNumberGestion;

  {$R *.dfm}

//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin

   BonLivGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonLivGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonLivGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
//     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
//     EnableControls;
     end;

   BonLivGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

 procedure TBonLivGestionF.EnableBonLiv;
  begin
      AddBVLivBonLivGBtn.Enabled:= False;
      AddBVLivBonLivGBtn.ImageIndex:=28;// 4 For D
      EditBVLivBonLivGBtn.Enabled:= False;
      EditBVLivBonLivGBtn.ImageIndex:=29;// 5 for D
      ValiderBVLivBonLivGBtn.Enabled:= True;
      ValiderBVLivBonLivGBtn.ImageIndex:=12;//30 for D

      DateBonLivGD.Enabled:= True;
      ObserBonLivGMem.Enabled:= True;
      ClientBonLivGCbx.Enabled:= True;
      AddClientBonLivGBtn.Enabled:= True ; //
      AddClientBonLivGBtn.ImageIndex:=10;//35 fo D
      ListClientBonLivGBtn.Enabled:= True;
      ListClientBonLivGBtn.ImageIndex:= 58;
      ModePaieBonLivGCbx.Enabled:= True;
      AddModePaieBonLivGBtn.Enabled:= True ;
      AddModePaieBonLivGBtn.ImageIndex:=10;// 35 fo D
      CompteBonLivGCbx.Enabled:= True;
      AddCompteBonLivGBtn.Enabled:= True ;
      AddCompteBonLivGBtn.ImageIndex:=10;// 35 fo D
      NChequeBonLivGCbx.Enabled:= True;
      ProduitBonLivGCbx.Enabled:= True;
      EnterAddProduitBonLivGBtn.Enabled:= True;
      EnterAddProduitBonLivGBtn.ImageIndex:=15;// 40 fo D
      ListAddProduitBonLivGBtn.Enabled:= True;
      ListAddProduitBonLivGBtn.ImageIndex:=13;//41 fo D
      NewAddProduitBonLivGBtn.Enabled:= True;
      NewAddProduitBonLivGBtn.ImageIndex:=4;//28 fo D
      SNumberProduitBonLivGBtn.Enabled:= True;
      SNumberProduitBonLivGBtn.ImageIndex:=63;//64 fo D
      DeleteProduitBonLivGBtn.Enabled:= True;
      DeleteProduitBonLivGBtn.ImageIndex:=14;//36 fo D
      ClearProduitBonLivGBtn.Enabled:= True;
      ClearProduitBonLivGBtn.ImageIndex:=16;//39 fo A
//      ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
      ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
      ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
      ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
      ProduitsListDBGridEh.Options:=
      ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
      ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
      ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
      ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
      RemisePerctageBonLivGEdt.Enabled:=True;//False for D
      RemiseBonLivGEdt.Enabled:=True;//False for D
      RemiseTypeBonLivGCbx.Enabled:= True;//False for D;

      ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
      ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
      ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

      ValiderBVLivBonLivGImg.ImageIndex:=1;//0 fo D
      ValiderBVLivBonLivGLbl.Color:=$007374FF;// $004AC38B for D
      ValiderBVLivBonLivGLbl.Font.Color:= clWhite;// clBlack for D
      ValiderBVLivBonLivGLbl.Caption:='Ce bon n''est pas encore Validé';// 'Ce bon est Valid' for D
  end;

procedure TBonLivGestionF.FormShow(Sender: TObject);
var CodeBL: Integer;
OLDCredit,NEWCredit : Double;
begin


 if Tag=0 then
 begin

   DateBonLivGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//-- use this code to make the montants look lake money values-------//
    BonLivTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonLivTotalHTLbl.Caption),ffNumber,14,2) ;
//    RemiseBonLivGEdt.Text :=       FloatToStrF(StrToFloat(RemiseBonLivGEdt.Text),ffNumber,14,2) ;
      BonLivTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonLivTotalTVALbl.Caption),ffNumber,14,2) ;
      BonLivTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonLivTotalTTCLbl.Caption),ffNumber,14,2) ;
      BonLivResteLbl.Caption :=         FloatToStrF(StrToFloat(BonLivResteLbl.Caption),ffNumber,14,2) ;
      BonLivRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonLivRegleLbl.Caption),ffNumber,14,2) ;
      BonLivGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(BonLivGClientOLDCredit.Caption),ffNumber,14,2) ;
      BonLivGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(BonLivGClientNEWCredit.Caption),ffNumber,14,2) ;
 CodeBL:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger   ;
    NumBonLivGEdt.Caption := 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeBL]);
  if (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> null)
  AND(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0) then
   begin
      if MainForm.Bonv_livTable.FieldByName('clientbvliv').AsWideString <> null then
      begin
     ClientBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldByName('clientbvliv').AsWideString;
      end;
      if MainForm.Bonv_livTable.FieldByName('ModePaie').AsString <> null then
      begin
     ModePaieBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldByName('ModePaie').AsString;
      end;
      if MainForm.Bonv_livTable.FieldByName('Compte').AsString <> null then
      begin
     CompteBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldByName('Compte').AsString;
      end;

      //Activate this when the client when to set comtpo client atopmatcly
//     ClientBonLivGCbxExit(Sender);
//     ProduitBonLivGCbx.SetFocus;
   end else
       begin
         //Activate this when the client when to set comtpo client atopmatcly
//           ClientBonLivGCbxExit(Sender);
//           ProduitBonLivGCbx.SetFocus;
       end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonLivGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonLivGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonLivGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonLivGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;

   if MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = True then
   begin
    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'select code_c, credit_c from client where code_c = ' + IntToStr( MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:= True;

      if NOT (MainForm.SQLQuery.IsEmpty) AND (MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1) then
     begin
      OLDCredit:= (MainForm.SQLQuery.FieldByName('credit_c').AsFloat);// - (MainForm.Bonv_livTable.FieldByName('MontantRes').AsFloat) ;

      NewCredit:=  MainForm.SQLQuery.FieldByName('credit_c').AsFloat;

     BonLivGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(FloatToStr( OLDCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonLivGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(FloatToStr( NewCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;

     end;
        MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
   end else
       begin
         ClientBonLivGCbxExit(Sender);
       end;


//     if  (MainForm.Bonv_livTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bonv_livTable.FieldValues['remise_bvliv']<> 0) then
//     begin
//     RemisePerctageBonLivGEdtChange(Sender);
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

procedure TBonLivGestionF.F3Execute(Sender: TObject);
begin
   //--- this is to focus in produit --------------------------
  if  AddBVlivBonLivGBtn.Enabled = False then
  begin
     ProduitBonLivGCbx.SetFocus;
  end;
end;

procedure TBonLivGestionF.F4Execute(Sender: TObject);
begin
  if AddBVlivBonLivGBtn.Enabled = True then
  begin
     AddBVlivBonLivGBtnClick(Screen);
  end;
end;

procedure TBonLivGestionF.F5Execute(Sender: TObject);
begin
  if EditBVlivBonLivGBtn.Enabled = True then
  begin
     EditBVlivBonLivGBtnClick(Screen);
  end;
end;

procedure TBonLivGestionF.F6Execute(Sender: TObject);
Var I :Integer;
begin
  //--- this is to switch between produits and quntity--------------------------
  if EditBVlivBonLivGBtn.Enabled = False then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'qut_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='qut_p' then
          begin
            ProduitsListDBGridEh.SelectedIndex:= i - 1;
            Break    ;
          end else
              begin
               ProduitsListDBGridEh.SelectedIndex:=i;
              end;
        end;
       end;
  end;
end;

procedure TBonLivGestionF.F7Execute(Sender: TObject);
Var I: Integer;
begin
  //--- this is to switch between produits and prix----------------------------
  if EditBVlivBonLivGBtn.Enabled = False then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixvd_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='prixvd_p' then
          begin
            ProduitsListDBGridEh.SelectedIndex:= i - 1;
            Break    ;
          end else
              begin
               ProduitsListDBGridEh.SelectedIndex:=i;
              end;
        end;
       end;
  end;
end;

procedure TBonLivGestionF.F8Execute(Sender: TObject);
begin
  if EditBVlivBonLivGBtn.Enabled = False then
  begin
     ListAddProduitBonLivGBtnClick(Screen);
  end;
end;

procedure TBonLivGestionF.F9Execute(Sender: TObject);
begin
  if ValiderBVlivBonLivGBtn.Enabled = True then
  begin
    ValiderBVlivBonLivGBtnClick(Screen);
  end;
end;

procedure TBonLivGestionF.F10Execute(Sender: TObject);
begin
  if EditBVlivBonLivGBtn.Enabled = False then
  begin
     ListClientBonLivGBtnClick(Screen);
  end;
end;

procedure TBonLivGestionF.F11Execute(Sender: TObject);
begin
  if NewAddProduitBonLivGBtn.Enabled = True then
  begin
     NewAddProduitBonLivGBtnClick(Screen);
  end;
end;

procedure TBonLivGestionF.F12Execute(Sender: TObject);
var
Ini: TIniFile;
indexP: Integer;
begin
  if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
  begin
        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
        indexP:= Ini.ReadInteger('', 'Format BL',0);
        if (indexP = 0) or (indexP = -1) then
        begin
         B1Click(Screen);
        end;
        if indexP = 1 then
        begin
         Bondelivraison2Click(Screen);
        end;
        if indexP = 2 then
        begin
         BondeRception1Click(Screen);
        end;
        if indexP = 3 then
        begin
         Bondelivraison3Click(Screen);
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
         BondeLivraison1Click(Screen);
        end;
        if indexP = 7 then
        begin
         BondeLivraisonhorstaxe1Click(Screen);
        end;
        if indexP = 8 then
        begin
         BondeCaisseSimple2Click(Screen);
        end;
        Ini.Free;
  end;
end;

procedure TBonLivGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_bl');

 if ValiderBVlivBonLivGImg.ImageIndex = 1 then
  begin

    MainForm.Bonv_livTable.Refresh;

    MainForm.Bonv_liv_listTable.Refresh;
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

//          if Assigned(BonLivF) then          //This code is to filter list whene clos bon by selected date //Comnted it cuz it was keep moveing the corsur up
//          begin
//
//            MainForm.Bonv_livTable.DisableControls;
//            MainForm.Bonv_livTable.Active:= False;
//            MainForm.Bonv_livTable.SQL.clear;
//            mainform.Bonv_livTable.sql.Text:= BonLivF.BLSQL +' WHERE date_bvliv BETWEEN '''+(DateToStr(BonLivF.DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(BonLivF.DateEndBVLivD.Date))+'''';
//            MainForm.Bonv_livTable.Active:= True;
//            MainForm.Bonv_livTable.EnableControls;
//
//          end;
                

          MainForm.Bonv_liv_listTable.Active:=false;
          MainForm.Bonv_liv_listTable.SQL.Clear;
          MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL ;
          MainForm.Bonv_liv_listTable.Active:=True;
          MainForm.Bonv_liv_listTable.EnableControls;
     
      
  MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

        //----- this is to go to last
       if Tag <> 1 then
          begin
           MainForm.Bonv_livTable.Last;
          end;


end;

procedure TBonLivGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var  CodeBL : Integer;
begin
codeBL:=MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonLivGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonLivGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonLivGCbx.SetFocus;
      CanClose := false;
    end else
    begin

    if ModePaieBonLivGCbx.Text = '' then
      begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ModePaieBonLivGCbx.StyleElements:= [];
        RequiredMPGlbl.Visible:= True;
        ModepPaiGErrorP.Visible:= True;

        ModePaieBonLivGCbx.SetFocus;
        CanClose := false;
      end else
        begin

     if CompteBonLivGCbx.Text = '' then
     begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        CompteBonLivGCbx.StyleElements:= [];
        RequiredCompteGlbl.Visible:= True;
        CompteGErrorP.Visible:= True;

        CompteBonLivGCbx.SetFocus;
        CanClose := false;
     end else
     begin


     //---------------------------------------------------
         if RequiredClientGlbl.Visible <> True then
         begin
         if  (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = false)  then
         begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonLivGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonLivGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Edit;
          MainForm.Bonv_livTable.FieldByName('code_c').AsInteger:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_livTable.FieldByName('date_bvliv').AsDateTime:= DateBonLivGD.DateTime;
          MainForm.Bonv_livTable.FieldByName('time_bvliv').AsDateTime:=TimeOf(Now);
          MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_livTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_livTable.FieldByName('obser_bvliv').AsWideString:= ObserBonLivGMem.Text;
          MainForm.Bonv_livTable.FieldByName('num_cheque_bvliv').AsString:= NChequeBonLivGCbx.Text;
          MainForm.Bonv_livTable.FieldByName('montht_bvliv').Value:= StrToFloat(StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montaht_bvliv').Value:= StrToFloat(StringReplace(BonLivTotalAHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonLivGEdt.Text<>'' then
          begin
             MainForm.Bonv_livTable.FieldByName('remise_bvliv').Value:=StrToFloat(StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_livTable.FieldByName('remise_bvliv').Value:=0;
                   end;


          MainForm.Bonv_livTable.FieldByName('montver_bvliv').Value:=StrToFloat(StringReplace(BonLivRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montttc_bvliv').Value:=StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_livTable.Post;
          MainForm.Bonv_livTable.EnableControls;

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
//           if (codeBL <> 0) AND (codeBL <> null) then
//           begin
//              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBL));
//              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBL));
//              MainForm.RegclientTable.Refresh ;
//              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
//           end;

         end;

       end else
           begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ClientBonLivGCbx.StyleElements:= [];
            RequiredClientGlbl.Caption:= 'Ce Client est bloqué' ;
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;

            ClientBonLivGCbx.SetFocus;
            CanClose:= False;
           end;
     //----------------------------------------------
         end;
          end;
    end;

  end  else
  begin

          if  (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = false)  then
         begin
//          codeBL:=MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;

          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonLivGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonLivGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Edit;
          MainForm.Bonv_livTable.FieldByName('code_c').AsInteger:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_livTable.FieldByName('date_bvliv').AsDateTime:= DateBonLivGD.DateTime;
          MainForm.Bonv_livTable.FieldByName('time_bvliv').AsDateTime:=TimeOf(Now);
          MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_livTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_livTable.FieldByName('obser_bvliv').AsWideString:= ObserBonLivGMem.Text;
          MainForm.Bonv_livTable.FieldByName('num_cheque_bvliv').AsString:= NChequeBonLivGCbx.Text;
          MainForm.Bonv_livTable.FieldByName('montht_bvliv').Value:= StrToFloat(StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonLivGEdt.Text<>'' then
          begin
             MainForm.Bonv_livTable.FieldByName('remise_bvliv').Value:=StrToFloat(StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_livTable.FieldByName('remise_bvliv').Value:=0;
                   end;


          MainForm.Bonv_livTable.FieldByName('montver_bvliv').Value:=StrToFloat(StringReplace(BonLivRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montttc_bvliv').Value:=StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_livTable.Post;
          MainForm.Bonv_livTable.EnableControls;

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
             if (codeBL <> 0) AND (codeBL <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBL));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBL));
              MainForm.RegclientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

         end;

     CanClose:= True;
  end;

end;

procedure TBonLivGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_bl') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_bl');
   end;

if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;

procedure TBonLivGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonLivGestionF.ProduitBonLivGCbxEnter(Sender: TObject);
var
  I : Integer;
  KeyState: TKeyboardState;
begin

     if ResherchPARDesProduitsRdioBtn.Checked then
     begin
      ProduitBonLivGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
       begin
         ProduitBonLivGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
         MainForm.SQLQuery.Next;
        end;


      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin
      ProduitBonLivGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT refer_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if( MainForm.SQLQuery.FieldByName('refer_p').IsNull = False )  then
       begin
            ProduitBonLivGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('refer_p').AsString);
         MainForm.SQLQuery.Next;
        end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

       if ResherchPARCBProduitsRdioBtn.Checked then
     begin
      ProduitBonLivGCbx.Properties.Items.Clear;

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

procedure TBonLivGestionF.ProduitBonLivGCbxExit(Sender: TObject);
begin
ProduitBonLivGCbx.Text:='';
//ProduitBonLivGCbx.AutoDropDown:=False;
end;

procedure TBonLivGestionF.ProduitBonLivGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonLivGCbx.AutoDropDown:= True;
  end;

end;

procedure addToQutIfSameProduit(CodeP:Integer);
begin
          //This is for adding qut if it the same produit
      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
      MainForm.SQLQuery4.SQL.Text := 'SELECT code_bvlivl,qut_p,code_p FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger));
      MainForm.SQLQuery4.Active := True;

      MainForm.SQLQuery4.First;
      while not MainForm.SQLQuery4.Eof do
      begin

        if MainForm.SQLQuery4.FieldByName('code_p').AsInteger = CodeP then
        begin
          MainForm.SQLQuery4.Edit;
          MainForm.SQLQuery4.FieldByName('qut_p').Value := MainForm.SQLQuery4.FieldByName('qut_p').Value + 1;
          MainForm.SQLQuery4.Post;
          Refresh_PreservePosition;
          BonLivGestionF.ProduitBonLivGCbx.Clear;
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

          Exit;

        end;
        MainForm.SQLQuery4.Next;
      end;

      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
//      MainForm.Bonv_liv_listTable.Refresh;
end;

procedure TBonLivGestionF.ProduitBonLivGCbxKeyPress(Sender: TObject;
  var Key: Char);
  var CodeBL,CodeCB,CodeP : Integer;
      lookupResultRefP : Variant;
      NomP: String;
  const
  N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
 if key = #13 then
 begin
 if (ProduitBonLivGCbx.Text <>'') AND NOT (ProduitBonLivGCbx.Text[1] in N ) then
  begin
  key := #0;


  if ClientBonLivGCbx.Text<> '' then
   begin
     MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;

   end;


  if ResherchPARDesProduitsRdioBtn.Checked then
  begin
//        MainForm.SQLQuery.DisableControls;
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonLivGCbx.Text)+')';
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

      PerissableProduitF:=TPerissableProduitF.Create(BonLivGestionF);
      PerissableProduitF.Left:=  (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
      PerissableProduitF.Top:=   MainForm.Top + 5;
      AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      PerissableProduitF.Tag:=0;
      PerissableProduitF.Show;

    end else
     begin

         lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            MainForm.Bonv_liv_listTable.DisableControls;
            MainForm.Bonv_liv_listTable.IndexFieldNames:='';
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' ORDER by code_bvlivl  ' ;
            MainForm.Bonv_liv_listTable.Active:=True;

            MainForm.Bonv_liv_listTable.Last;
             if  MainForm.Bonv_liv_listTable.IsEmpty then
             begin
               MainForm.Bonv_liv_listTable.Last;
               CodeBL := 1;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.Last;
                  CodeBL:= MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl'] + 1 ;
                 end;

             MainForm.Bonv_liv_listTable.Last;
             MainForm.Bonv_liv_listTable.Append;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl']:= CodeBL ;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:=  MainForm.SQLQuery.FieldValues['tva_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery.FieldValues['prixht_p'] ;

             if DataModuleF.PerissBona_recTable.RecordCount = 1 then
             begin
              MainForm.Bonv_liv_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
             end;


           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonLivGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonv_liv_listTable.Post ;
             MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']))+' ';
            MainForm.Bonv_liv_listTable.Active:=True;

            ProduitBonLivGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_liv_listTable.EnableControls;
           MainForm.Bonv_liv_listTable.Last;
           if ClientBonLivGCbx.Text<>'' then
            begin
            ValiderBVlivBonLivGBtn.Enabled:= True;
            ValiderBVlivBonLivGBtn.ImageIndex:=12;
            end;

            end;

     end else
     begin

        //This is for adding qut if it the same produit
        addToQutIfSameProduit(CodeP);


        //We use this when when we to disabable multiple qut for same produit
//      FSplashAddUnite:=TFSplashAddUnite.Create(Application);
//      FSplashAddUnite.Image1.ImageIndex:=3;
//      FSplashAddUnite.Width:=300;
//      FSplashAddUnite.Height:=160;
//      FSplashAddUnite.Panel1.Color:= $0028CAFE;
//      FSplashAddUnite.Color:= $00EFE9E8;
//      FSplashAddUnite.LineP.Color:=$0028CAFE;
//      FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
//      FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
//      FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
//      FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
//      FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
//      FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
//      if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
//      begin
//      NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//      end else begin
//        NomP:='';
//      end;
//      FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
//      FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
//      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
//      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
//      FSplashAddUnite.Image1.Visible:=True;
//      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
//      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
//      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
//      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
//      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
//      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
//      FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
//      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
//      FSplashAddUnite.Top:=   MainForm.Top + 5;
//
//      FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
//      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
//      FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
//      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//       FSplashAddUnite.Show;
//    //--- this tage = 0 is for multi name added by produit combobox----//
//       FSplashAddUnite.Tag:=2;
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
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,refer_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonLivGCbx.Text)+')';
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

      PerissableProduitF:=TPerissableProduitF.Create(BonLivGestionF);
      PerissableProduitF.Left:=  (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
      PerissableProduitF.Top:=   MainForm.Top + 5;
      AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      PerissableProduitF.Tag:=0;
      PerissableProduitF.Show;

    end else
     begin

         lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
          if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            MainForm.Bonv_liv_listTable.DisableControls;
            MainForm.Bonv_liv_listTable.IndexFieldNames:='';
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' ORDER by code_bvlivl' ;
            MainForm.Bonv_liv_listTable.Active:=True;
           if  MainForm.Bonv_liv_listTable.RecordCount <= 0 then
           begin
             CodeBL := 1;
           end else
               begin
                MainForm.Bonv_liv_listTable.Last;
                CodeBL:= MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl'] + 1 ;
               end;
             MainForm.Bonv_liv_listTable.Insert;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl']:= CodeBL ;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:=  MainForm.SQLQuery.FieldValues['tva_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery.FieldValues['prixht_p'] ;


             if DataModuleF.PerissBona_recTable.RecordCount = 1 then
             begin
              MainForm.Bonv_liv_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
             end;

            if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonLivGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonv_liv_listTable.Post ;
             MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']))+' ';
            MainForm.Bonv_liv_listTable.Active:=True;

            ProduitBonLivGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_liv_listTable.EnableControls;
            MainForm.Bonv_liv_listTable.Last;
            if ClientBonLivGCbx.Text<>'' then
              begin
              ValiderBVLivBonLivGBtn.Enabled:= True;
              ValiderBVLivBonLivGBtn.ImageIndex:=12;
              end;
            end;
         end else
         begin

            //This is for adding qut if it the same produit
            addToQutIfSameProduit(CodeP);


            //We use this when when we to disabable multiple qut for same produit
//            FSplashAddUnite:=TFSplashAddUnite.Create(Application);
//            FSplashAddUnite.Image1.ImageIndex:=3;
//            FSplashAddUnite.Width:=300;
//            FSplashAddUnite.Height:=160;
//            FSplashAddUnite.Panel1.Color:= $0028CAFE;
//            FSplashAddUnite.Color:= $00EFE9E8;
//            FSplashAddUnite.LineP.Color:=$0028CAFE;
//            FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
//            FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
//            FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
//            FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
//            FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
//            FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
//            if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
//            begin
//            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//            end else begin
//              NomP:='';
//            end;
//            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
//            FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
//            FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
//            FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
//            FSplashAddUnite.Image1.Visible:=True;
//            FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
//            FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
//            FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
//            FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
//            FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
//            FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
//            FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
//            FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
//            FSplashAddUnite.Top:=   MainForm.Top + 5;
//            FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
//            FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
//            FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
//            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//             FSplashAddUnite.Show;
//          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=2;
         end;
         end;
    end;
 //---------------------------------------------------------------------------------------------
  if ResherchPARCBProduitsRdioBtn.Checked then
  begin
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonLivGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
   begin
    CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
   end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,codebar_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonLivGCbx.Text)+')';
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

      PerissableProduitF:=TPerissableProduitF.Create(BonLivGestionF);
      PerissableProduitF.Left:=  (MainForm.Left + MainForm.Width div 2) - (PerissableProduitF.Width div 2);
      PerissableProduitF.Top:=   MainForm.Top + 5;
      AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      PerissableProduitF.Tag:=0;
      PerissableProduitF.Show;

    end else
     begin

     if  (MainForm.SQLQuery.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bonv_liv_listTable.DisableControls;
            MainForm.Bonv_liv_listTable.IndexFieldNames:='';
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' ORDER by code_bvlivl' ;
            MainForm.Bonv_liv_listTable.Active:=True;

           if  MainForm.Bonv_liv_listTable.RecordCount <= 0 then
           begin
             CodeBL := 1;
           end else
               begin
                MainForm.Bonv_liv_listTable.Last;
                CodeBL:= MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl'] + 1 ;
               end;

             MainForm.Bonv_liv_listTable.Insert;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl']:= CodeBL ;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:=  MainForm.SQLQuery.FieldValues['tva_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['prixht_p']:=  MainForm.SQLQuery.FieldValues['prixht_p'] ;

             if DataModuleF.PerissBona_recTable.RecordCount = 1 then
             begin
              MainForm.Bonv_liv_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];
             end;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonLivGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_liv_listTable.Post ;
             MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

             MainForm.Bonv_liv_listTable.Active:=False;
             MainForm.Bonv_liv_listTable.SQL.Clear;
             MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']))+' ';
             MainForm.Bonv_liv_listTable.Active:=True;

            ProduitBonLivGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_liv_listTable.EnableControls;
            MainForm.Bonv_liv_listTable.Last;
            if ClientBonLivGCbx.Text<>'' then
              begin
              ValiderBVLivBonLivGBtn.Enabled:= True;
              ValiderBVLivBonLivGBtn.ImageIndex:=12;
              end;
     end else
         begin

           //  ShowMessage(' code bare deja kain : p ');

            //This is for adding qut if it the same produit
            addToQutIfSameProduit(CodeP);


            //We use this when when we to disabable multiple qut for same produit
//            FSplashAddUnite:=TFSplashAddUnite.Create(Application);
//            FSplashAddUnite.Image1.ImageIndex:=3;
//            FSplashAddUnite.Width:=300;
//            FSplashAddUnite.Height:=160;
//            FSplashAddUnite.Panel1.Color:= $0028CAFE;
//            FSplashAddUnite.Color:= $00EFE9E8;
//            FSplashAddUnite.LineP.Color:=$0028CAFE;
//            FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
//            FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
//            FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
//            FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
//            FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
//            FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
//            if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
//            begin
//            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//            end else begin
//              NomP:='';
//            end;
//            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
//            FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
//            FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
//            FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
//            FSplashAddUnite.Image1.Visible:=True;
//            FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
//            FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
//            FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
//            FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
//            FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
//            FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
//            FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
//            FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
//            FSplashAddUnite.Top:=   MainForm.Top + 5;
//            FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
//            FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
//            FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
//            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//             FSplashAddUnite.Show;
//          //--- this tage = 0 is for multi name added by produit combobox----//
//             FSplashAddUnite.Tag:=2;
             end;
          end;
          end;

   end;
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;

         MainForm.Bonv_liv_listTable.Refresh;
//        ProduitBonLivGCbx.AutoDropDown:=False;
         ProduitBonLivGCbx.SelectAll;

     end else
         begin
           ProduitBonLivGCbx.Text:= '';
         end;

     MainForm.Bonv_liv_listTable.Last;
 end;

end;

procedure TBonLivGestionF.ClientBonLivGCbxEnter(Sender: TObject);
var
I : Integer;
  begin

          ClientBonLivGCbx.Items.Clear;
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select nom_c FROM client ORDER by code_c'  ;
          MainForm.SQLQuery.Active:=True;

//       MainForm.ClientTable.Refresh;

         MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonLivGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_c').AsString);
       MainForm.SQLQuery.Next;
      end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
end;

procedure TBonLivGestionF.ClientBonLivGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonLivGestionF.ClientBonLivGCbxSelect(Sender: TObject);
var CodeC: Integer;
begin

      if ClientBonLivGCbx.Text <> '' then
    begin
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

      CodeC:= MainForm.SQLQuery.FieldByName('code_c').AsInteger ;

        //Here we pot code_f in bonrec table
        MainForm.Bonv_livTable.Edit;
        MainForm.Bonv_livTable.FieldByName('code_c').AsInteger := CodeC;
        MainForm.Bonv_livTable.Post;

      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
     end;

end;

procedure TBonLivGestionF.ClientBonLivGCbxExit(Sender: TObject);
var CodeC: Integer;
OLDCreditC,RegCCreditC,OLDCreditCINI : Double;
begin
  if ClientBonLivGCbx.Text <> '' then
    begin
      ClientBonLivGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c,oldcredit_c,credit_c,activ_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

     if NOT (MainForm.SQLQuery.IsEmpty)   then
     begin
      OLDCreditCINI:=MainForm.SQLQuery.FieldByName('credit_c').AsFloat;

      if MainForm.SQLQuery.FieldByName('activ_c').AsBoolean <> False then
      begin

        if (MainForm.SQLQuery.IsEmpty) then
        begin
         ClientBonLivGCbx.Text := '';
         BonLivGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
         BonLivGClientNEWCredit.Caption:=BonLivGClientOLDCredit.Caption;
         exit;
        end;
        CodeC:= MainForm.SQLQuery.FieldValues['code_c'] ;

//        MainForm.Bonv_livTableCredit.DisableControls;
//        MainForm.Bonv_livTableCredit.Active:=false;
//        MainForm.Bonv_livTableCredit.SQL.Clear;
//        MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv WHERE valider_bvliv = true AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_bvliv '  ;
//        MainForm.Bonv_livTableCredit.Active:=True;
//
//        while NOT (MainForm.Bonv_livTableCredit.Eof) do
//       begin
//       OLDCreditC := OLDCreditC + MainForm.Bonv_livTableCredit.FieldValues['MontantRes'];
//       MainForm.Bonv_livTableCredit.Next;
//       end;
//        MainForm.Bonv_livTableCredit.EnableControls;
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
//         MainForm.Bonv_livTableCredit.last;
         BonLivGClientOLDCredit.Caption:= FloatToStrF((OLDCreditCINI ),ffNumber,14,2) ;

//         if NOT (BonLivPListDataS.DataSet.IsEmpty)  then
//          begin
//          if Tag = 0 then
//           begin
//           BonLivGClientNEWCredit.Caption:=
//           CurrToStrF((MainForm.Bonv_livTableCredit.FieldByName('MontantRes').AsFloat ) + StrToFloat(StringReplace(BonLivResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//           end else
//               begin
//                BonLivGClientNEWCredit.Caption:=
//                CurrToStrF((MainForm.Bonv_livTableCredit.FieldByName('MontantRes').AsFloat ) + StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//
//
//               end;
//
//          end;
          end else
          begin
           BonLivGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
          end;


//        MainForm.Bonv_livTableCredit.DisableControls;
//        MainForm.Bonv_livTableCredit.Active:=false;
//        MainForm.Bonv_livTableCredit.SQL.Clear;
//        MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv '  ;
//        MainForm.Bonv_livTableCredit.Active:=True;
//        MainForm.Bonv_livTableCredit.last;
//        MainForm.Bonv_livTableCredit.EnableControls;
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
        if NOT (BonLivPListDataS.DataSet.IsEmpty) AND NOT (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = true) then
        begin
        ValiderBVlivBonLivGBtn.Enabled:= True;
        ValiderBVlivBonLivGBtn.ImageIndex:=12;
        end;

      MainForm.Bonv_liv_listTable.Refresh;

            ClientBonLivGCbx.StyleElements:= [seFont,seBorder,seBorder];
            RequiredClientGlbl.Visible:= False;
            NameClientGErrorP.Visible:= False;

      end else
          begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ClientBonLivGCbx.StyleElements:= [];
            RequiredClientGlbl.Caption:='Ce Client est bloqué';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            ClientBonLivGCbx.SetFocus;
          end;
          end else
              begin
                ClientBonLivGCbx.Text:= '';
                MainForm.SQLQuery.Active:=false;
                MainForm.SQLQuery.SQL.Clear;
//                MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//                MainForm.SQLQuery.Active:=True;
//                MainForm.SQLQuery.EnableControls;
              end;
    end else
    begin
     ClientBonLivGCbx.Text:= 'Comptoir';
//     ClientBonLivGCbxEnter(Sender) ;
    CompteBonLivGCbxEnter(Sender);
     ModePaieBonLivGCbxDropDown(Sender);
     ModePaieBonLivGCbx.ItemIndex:=0;
//     CompteBonLivGCbx.ItemIndex:=0;
     ModePaieBonLivGCbxClick(Self) ;

     BonLivGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonLivGClientNEWCredit.Caption:=BonLivGClientOLDCredit.Caption;
     end;
end;

procedure TBonLivGestionF.ClientBonLivGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece

      ModePaieBonLivGCbxDropDown(Self);
      if Tag = 0 then
      begin
      ModePaieBonLivGCbx.ItemIndex:=0;
      ModePaieBonLivGCbxClick(Self) ;
      end;

end;

procedure TBonLivGestionF.ModePaieBonLivGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ORDER BY code_mdpai';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieBonLivGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieBonLivGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
end;

procedure TBonLivGestionF.ModePaieBonLivGCbxChange(Sender: TObject);
begin
RequiredMPGlbl.Visible:= False;
ModepPaiGErrorP.Visible:= False;
end;

procedure TBonLivGestionF.ModePaieBonLivGCbxClick(Sender: TObject);
begin
  if ModePaieBonLivGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonLivGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonLivGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;

    ModePaieBonLivGCbxChange(Sender);

end;

procedure TBonLivGestionF.CompteBonLivGCbxChange(Sender: TObject);
begin
CompteBonLivGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonLivGestionF.CompteBonLivGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ORDER BY code_cmpt ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteBonLivGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteBonLivGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TBonLivGestionF.AddClientBonLivGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 3 ;
ClientBonLivGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredClientGlbl.Visible:= False;
NameClientGErrorP.Visible:= False;
end;

procedure TBonLivGestionF.AddModePaieBonLivGBtnClick(Sender: TObject);
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
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 11 ;
end;




procedure TBonLivGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);

//var
//NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
//LineCredit :TfrxShapeView;
//I : Integer;
//Ini: TIniFile;
//indexP: Integer;
//
begin
//
//   //--- this is to focus in produit --------------------------
//  if  (GetKeyState(VK_F3) < 0) and (AddBVlivBonLivGBtn.Enabled = False ) then
//  begin
//      ProduitBonLivGCbx.SetFocus;
//      Handled := true;
//  end;
//
//
//  if  (GetKeyState(VK_F4) < 0) and (AddBVlivBonLivGBtn.Enabled = True ) then
//  begin
//      AddBVlivBonLivGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//
//  if  (GetKeyState(VK_F5) < 0) and (EditBVlivBonLivGBtn.Enabled = True ) then
//  begin
//      EditBVlivBonLivGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//
//   //--- this is to switch between produits and quntity--------------------------
//   if  (GetKeyState(VK_F6) < 0) and (EditBVlivBonLivGBtn.Enabled = False ) then
//  begin
//       ProduitsListDBGridEh.SetFocus;
//       if ProduitsListDBGridEh.SelectedField.FieldName <>'qut_p' then
//       begin
//        for I := 0 to ProduitsListDBGridEh.FieldCount do
//        begin
//          if ProduitsListDBGridEh.SelectedField.FieldName ='qut_p' then
//          begin
//            ProduitsListDBGridEh.SelectedIndex:= i - 1;
//            Handled := true;
//            Break    ;
//          end else
//              begin
//               ProduitsListDBGridEh.SelectedIndex:=i;
//              end;
//        end;
//       end;
//       Handled := true;
//  end;
//  //--- this is to switch between produits and prix----------------------------
//   if  (GetKeyState(VK_F7) < 0) and (EditBVlivBonLivGBtn.Enabled = False ) then
//  begin
//       ProduitsListDBGridEh.SetFocus;
//       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixvd_p' then
//       begin
//        for I := 0 to ProduitsListDBGridEh.FieldCount do
//        begin
//          if ProduitsListDBGridEh.SelectedField.FieldName ='prixvd_p' then
//          begin
//            ProduitsListDBGridEh.SelectedIndex:= i - 1;
//            Handled := true;
//            Break    ;
//          end else
//              begin
//               ProduitsListDBGridEh.SelectedIndex:=i;
//              end;
//        end;
//       end;
//       Handled := true;
//  end;
//
//  if  (GetKeyState(VK_F8) < 0) and (EditBVlivBonLivGBtn.Enabled = False ) then
//  begin
//      ListAddProduitBonLivGBtnClick(Screen);
//
//    Handled := true;
//  end;
// //--- F9 is to Validate Bon ----------------------------
////   if  (GetKeyState(VK_F9) < 0) AND (ValiderBVLivBonLivGBtn.Enabled = True) AND NOT (Assigned(FSplashVersement)) then
////  begin
////      ValiderBVlivBonLivGBtnClick(Screen);
////      Handled := true;
////
////  end
////   else if (GetKeyState(VK_F9) < 0) AND (ValiderBVLivBonLivGBtn.Enabled = True) AND (FSplashVersement.Tag <> 2)  then
////      begin
////          ValiderBVlivBonLivGBtnClick(Screen);
////          Handled := true;
////
////      end;
//
//
//  if (GetKeyState(VK_F9) < 0) AND (ValiderBVLivBonLivGBtn.Enabled = True)
//      AND NOT (Assigned(FSplashVersement)) then
//  begin
//    ValiderBVlivBonLivGBtnClick(Screen);
//    Handled := true;
//  end else
//  if  (GetKeyState(VK_F9) < 0) AND (ValiderBVLivBonLivGBtn.Enabled = True)
//       AND NOT (FSplashVersement.Showing) then
//      begin
//        ValiderBVlivBonLivGBtnClick(Screen);
//        Handled := true;
//      end;
//
//
//  if  (GetKeyState(VK_F10) < 0) and (EditBVlivBonLivGBtn.Enabled = False ) then
//  begin
//      ListClientBonLivGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//       //--- this is for new produit--------------------------
//  if  (GetKeyState(VK_F11) < 0) AND (NewAddProduitBonLivGBtn.Enabled = True) AND NOT (Assigned(ProduitGestionF)) AND NOT (Assigned(FSplashVersement)) then
//  begin
//      NewAddProduitBonLivGBtnClick(Screen);
//      Handled := true;
//  end
//    else if (GetKeyState(VK_F11) < 0) AND (NewAddProduitBonLivGBtn.Enabled = True) AND NOT (Assigned(ProduitGestionF))  then
//    begin
//        NewAddProduitBonLivGBtnClick(Screen);
//        Handled := true;
//    end;
//
//  if  (GetKeyState(VK_F12) < 0) then
//  begin
//
//    if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
//     begin
//
//        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
//        indexP:= Ini.ReadInteger('', 'Format BL',0);
//        if (indexP = 0) or (indexP = -1) then
//        begin
//         B1Click(Screen);
//        end;
//        if indexP = 1 then
//        begin
//         Bondelivraison2Click(Screen);
//        end;
//        if indexP = 2 then
//        begin
//         BondeRception1Click(Screen);
//        end;
//        if indexP = 3 then
//        begin
//         Bondelivraison3Click(Screen);
//        end;
//        if indexP = 4 then
//        begin
//         BondeCaisseSimple1Click(Screen);
//        end;
//        if indexP = 5 then
//        begin
//         Bondecaissesimple3Click(Screen);
//        end;
//        if indexP = 6 then
//        begin
//         BondeLivraison1Click(Screen);
//        end;
//        if indexP = 7 then
//        begin
//         BondeLivraisonhorstaxe1Click(Screen);
//        end;
//        if indexP = 8 then
//        begin
//         BondeCaisseSimple2Click(Screen);
//        end;
//
//        Ini.Free;
//        Handled := true;
//     end;
//  end;


end;

procedure TBonLivGestionF.AddCompteBonLivGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(Application);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 2 ;
end;

procedure TBonLivGestionF.EnterAddProduitBonLivGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonLivGCbxKeyPress(Sender, key);
end;

procedure TBonLivGestionF.ListAddProduitBonLivGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonLivGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Tag := 1;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;
  //use this tag = 1 for adding from bon livration


 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
 // produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TBonLivGestionF.ListClientBonLivGBtnClick(Sender: TObject);
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
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N°';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

  FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Client';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activité';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='fix_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='Téléphone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='mob_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Téléphone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='adr_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[6].FieldName:='credit_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Title.Caption:='Crédit';
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

  FastProduitsListF.Tag := 0;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonLivGestionF.NewAddProduitBonLivGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonLivGestionF.DeleteProduitBonLivGBtnClick(Sender: TObject);

begin
 if  MainForm.Bonv_liv_listTable.RecordCount = 1 then
 begin
    MainForm.Bonv_liv_listTable.DisableControls;
    MainForm.Bonv_liv_listTable.Refresh;

    //Here we delete all serial numbers related to this product
      DataModuleF.SQLQuery3.Active:=false;
      DataModuleF.SQLQuery3.SQL.Clear;
      DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,nom_ns,code_p,code_bvliv,sold_ns FROM n_series WHERE code_bvliv = '
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


    MainForm.Bonv_liv_listTable.Delete;
//    ProduitsListDBGridEh.Refresh;
    MainForm.Bonv_liv_listTable.EnableControls;
    ClientBonLivGCbx.StyleElements:= [];
    RequiredClientGlbl.Visible:= False;
    NameClientGErrorP.Visible:= False;
    BonLivTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonLivTotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonLivTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonLivRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonLivResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonLivGClientNEWCredit.Caption:= BonLivTotalTTCLbl.Caption;
 end else
 if MainForm.Bonv_liv_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      MainForm.Bonv_liv_listTable.DisableControls;


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

      MainForm.Bonv_liv_listTable.Delete;
//      ProduitsListDBGridEh.Refresh;
      MainForm.Bonv_liv_listTable.Refresh;
      MainForm.Bonv_liv_listTable.EnableControls;
     end;
end;

procedure TBonLivGestionF.ClearProduitBonLivGBtnClick(Sender: TObject);
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
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 12 ;
end;

procedure TBonLivGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingData;

   OLDCredit:= BonLivPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonLivPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonLivPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonLivPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonLivPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonLivPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonLivPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonLivPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonLivPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonLivPListfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
 end;
end;

procedure TBonLivGestionF.TicketCaisse80Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , Versement,VersementLbl   : TfrxMemoView;
LineCredit :TfrxLineView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataTicketCaisse80;

   OLDCredit:= TicketCaisse80frxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= TicketCaisse80frxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= TicketCaisse80frxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= TicketCaisse80frxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;


  Versement:= TicketCaisse80frxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;


  VersementLbl:= TicketCaisse80frxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= TicketCaisse80frxRprt.FindObject('LineCredit') as TfrxLineView;
  LineCredit.Visible:= True;

TicketCaisse80frxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
TicketCaisse80frxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
 end;

end;

procedure TBonLivGestionF.BondeCaisseSimple1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataBonCaisse;

   OLDCredit:= BonLivPListBonCaissefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonLivPListBonCaissefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonLivPListBonCaissefrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonLivPListBonCaissefrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonLivPListBonCaissefrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonLivPListBonCaissefrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonLivPListBonCaissefrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonLivPListBonCaissefrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonLivPListBonCaissefrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonLivPListBonCaissefrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListBonCaissefrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;
end;

procedure TBonLivGestionF.BondeCaisseSimple2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataBonCaisse;

  OLDCredit:= BonLivPListBonCaissefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonLivPListBonCaissefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonLivPListBonCaissefrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonLivPListBonCaissefrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonLivPListBonCaissefrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonLivPListBonCaissefrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonLivPListBonCaissefrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonLivPListBonCaissefrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonLivPListBonCaissefrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonLivPListBonCaissefrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListBonCaissefrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;
end;

procedure TBonLivGestionF.Bondecaissesimple3Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataBonCaisseA5;

   OLDCredit:= BonLivPListfrxCaisseRprtA5.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonLivPListfrxCaisseRprtA5.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonLivPListfrxCaisseRprtA5.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonLivPListfrxCaisseRprtA5.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonLivPListfrxCaisseRprtA5.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonLivPListfrxCaisseRprtA5.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonLivPListfrxCaisseRprtA5.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonLivPListfrxCaisseRprtA5.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonLivPListfrxCaisseRprtA5.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

  BonLivPListfrxCaisseRprtA5.PrepareReport;
  BonLivPListfrxCaisseRprtA5.ShowReport;

  //BonLivPListfrxRprt.Print;   // this is to print directly
  MainForm.Bonv_liv_listTable.EnableControls;
end;

end;

procedure TBonLivGestionF.BondeLivraison1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingData;

  OLDCredit:= BonLivPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonLivPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonLivPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonLivPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonLivPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonLivPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonLivPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonLivPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonLivPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;
//BonLivPListfrxRprt.;
BonLivPListfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;
end;

procedure TBonLivGestionF.Bondelivraison2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
      MainForm.Bonv_liv_listTable.DisableControls;
     GettingDataA5;
       OLDCredit:= BonLivPListfrxRprtA5.FindObject('OLDCredit') as TfrxMemoView;
      OLDCredit.Visible:= True;
      NEWCredit:= BonLivPListfrxRprtA5.FindObject('NEWCredit') as TfrxMemoView;
      NEWCredit.Visible:= True;
      OLDCreditLbl:= BonLivPListfrxRprtA5.FindObject('OLDCreditLbl') as TfrxMemoView;
      OLDCreditLbl.Visible:= True;
      NEWCreditLbl:= BonLivPListfrxRprtA5.FindObject('NEWCreditLbl') as TfrxMemoView;
      NEWCreditLbl.Visible:= True;

      TotalACHAT:= BonLivPListfrxRprtA5.FindObject('TotalACHAT') as TfrxMemoView;
      TotalACHAT.Visible:= True;
      Versement:= BonLivPListfrxRprtA5.FindObject('Versement') as TfrxMemoView;
      Versement.Visible:= True;

      TotalACHATLbl:= BonLivPListfrxRprtA5.FindObject('TotalACHATLbl') as TfrxMemoView;
      TotalACHATLbl.Visible:= True;
      VersementLbl:= BonLivPListfrxRprtA5.FindObject('VersementLbl') as TfrxMemoView;
      VersementLbl.Visible:= True;

      LineCredit:= BonLivPListfrxRprtA5.FindObject('LineCredit') as TfrxShapeView;
      LineCredit.Visible:= True;

    BonLivPListfrxRprtA5.PrepareReport;
//    BonLivPListfrxRprtA5.PrintOptions.ShowDialog := False;
    BonLivPListfrxRprtA5.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
    MainForm.Bonv_liv_listTable.EnableControls;
 end;
end;

procedure TBonLivGestionF.Bondelivraison3Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataBLSimple;

   OLDCredit:= BonLivPListLivSimplefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonLivPListLivSimplefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonLivPListLivSimplefrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonLivPListLivSimplefrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonLivPListLivSimplefrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonLivPListLivSimplefrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonLivPListLivSimplefrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonLivPListLivSimplefrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonLivPListLivSimplefrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonLivPListLivSimplefrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListLivSimplefrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;

end;

procedure TBonLivGestionF.Bondelivraison4Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl   : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
  MainForm.Bonv_liv_listTable.DisableControls;
   GettingDataBLTVA;

     OLDCredit:= BonLivPListTVAfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
    OLDCredit.Visible:= True;
    NEWCredit:= BonLivPListTVAfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
    NEWCredit.Visible:= True;
    OLDCreditLbl:= BonLivPListTVAfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
    OLDCreditLbl.Visible:= True;
    NEWCreditLbl:= BonLivPListTVAfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
    NEWCreditLbl.Visible:= True;

    TotalACHAT:= BonLivPListTVAfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
    TotalACHAT.Visible:= True;
    Versement:= BonLivPListTVAfrxRprt.FindObject('Versement') as TfrxMemoView;
    Versement.Visible:= True;

    TotalACHATLbl:= BonLivPListTVAfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
    TotalACHATLbl.Visible:= True;
    VersementLbl:= BonLivPListTVAfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
    VersementLbl.Visible:= True;

    LineCredit:= BonLivPListTVAfrxRprt.FindObject('LineCredit') as TfrxShapeView;
    LineCredit.Visible:= True;

  BonLivPListTVAfrxRprt.PrepareReport;
  //BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
  BonLivPListTVAfrxRprt.ShowReport;

  //BonLivPListfrxRprt.Print;   // this is to print directly
  MainForm.Bonv_liv_listTable.EnableControls;
 end;

end;

procedure TBonLivGestionF.BonDeFactureClick(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl,Timber   : TfrxMemoView;
LineCredit :TfrxShapeView;
TimberAmount : Double;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataFacture;

//   OLDCredit:= BonFacturePListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
//  OLDCredit.Visible:= True;
//  NEWCredit:= BonFacturePListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
//  NEWCredit.Visible:= True;
//  OLDCreditLbl:= BonFacturePListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
//  OLDCreditLbl.Visible:= True;
//  NEWCreditLbl:= BonFacturePListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
//  NEWCreditLbl.Visible:= True;

//  TotalACHAT:= BonFacturePListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
//  TotalACHAT.Visible:= True;
//  Versement:= BonFacturePListfrxRprt.FindObject('Versement') as TfrxMemoView;
//  Versement.Visible:= True;
//
//  TotalACHATLbl:= BonFacturePListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
//  TotalACHATLbl.Visible:= True;
//  VersementLbl:= BonFacturePListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
//  VersementLbl.Visible:= True;
//
//  LineCredit:= BonFacturePListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
//  LineCredit.Visible:= True;

  TimberAmount:= StrToFloat (StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])) /100;


  Timber:= BonFacturePListfrxRprt.FindObject('TimberFiscal') as TfrxMemoView;
  if TimberAmount >= 2500 then
  begin
    Timber.Memo.Text:=  FloatToStrF(2500,ffNumber,14,2) ;
  end else
  begin
   Timber.Memo.Text:=  FloatToStrF(TimberAmount,ffNumber,14,2) ;
  end;



BonFacturePListfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonFacturePListfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
 end;

end;

procedure TBonLivGestionF.BondeLivraisonhorstaxe1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl   , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataSansTax;

  OLDCredit:= BonLivPListSansTaxfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonLivPListSansTaxfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonLivPListSansTaxfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonLivPListSansTaxfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonLivPListSansTaxfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonLivPListSansTaxfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonLivPListSansTaxfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonLivPListSansTaxfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonLivPListSansTaxfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonLivPListSansTaxfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListSansTaxfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;
end;

procedure TBonLivGestionF.BondeRception1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVlivBonLivGImg.ImageIndex <> 1 then
 begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonLivPListSansTaxfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonLivPListSansTaxfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonLivPListSansTaxfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonLivPListSansTaxfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonLivPListSansTaxfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonLivPListSansTaxfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonLivPListSansTaxfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonLivPListSansTaxfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonLivPListSansTaxfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonLivPListSansTaxfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListSansTaxfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
 end;
end;

procedure TBonLivGestionF.BonLivPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonLivPListDataS.DataSet.IsEmpty then
  begin
    SNumberProduitBonLivGBtn.Visible:= True;
    S01.Visible:= True;
    S02.Visible:= True;
    DeleteProduitBonLivGBtn.Visible:= True;
    ClearProduitBonLivGBtn.Visible:= True;

    if (ClientBonLivGCbx.Text<>'') AND (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean <> True) then
    begin
    ValiderBVLivBonLivGBtn.Enabled:= True;
    ValiderBVLivBonLivGBtn.ImageIndex:=12;
    end;

   if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] <> True then
   begin

//    MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_p,qut_p,qutini_p,prixht_p FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_liv_listTable.FieldValues['code_p']);
    MainForm.SQLQuery.Active:=True;

    BonLivGOLDStock.Caption:=
      floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])),ffNumber,14,2);
    BonLivGNEWStock.Caption:=
      floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']))-((MainForm.Bonv_liv_listTable.FieldValues['qut_p'])*(MainForm.Bonv_liv_listTable.FieldValues['cond_p']))),ffNumber,14,2);

    if(StrToFloat (StringReplace(BonLivGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
    begin
     Timer1.Enabled:= true;
    end else
        begin
        Timer1.Enabled:= False;
        Label20.Visible:=false;
        end;

  //------------ this will show notification if the price is lower the the achat price------------
      if MainForm.Bonv_liv_listTable.FieldByName('prixvd_p').AsFloat <  MainForm.SQLQuery.FieldByName('prixht_p').AsFloat then
      begin
       Label25.Caption:= 'Alerte !! Le prix de vente est inférieur au prix d''achat';
       Timer2.Enabled:= true;
      end else
          if MainForm.Bonv_liv_listTable.FieldByName('prixvd_p').AsFloat =  MainForm.SQLQuery.FieldByName('prixht_p').AsFloat then
          begin
           Label25.Caption:= 'Alerte !! Le prix de vente est égal au prix d''achat';
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

    RemisePerctageBonLivGEdt.Enabled:=True;
    RemiseBonLivGEdt.Enabled:=True;
    RemiseTypeBonLivGCbx.Enabled:= True;    

   end;
     ProduitsListDBGridEh.ReadOnly:=False;

    end else
    begin
     SNumberProduitBonLivGBtn.Visible:= False;
     S01.Visible:= False;
     S02.Visible:= False;
     DeleteProduitBonLivGBtn.Visible:= False;
     ClearProduitBonLivGBtn.Visible:= False;
     Timer1.Enabled:=False;
     Timer2.Enabled:=False;

    ValiderBVLivBonLivGBtn.Enabled:= False;
    ValiderBVLivBonLivGBtn.ImageIndex:=30;

    RemisePerctageBonLivGEdt.Enabled:=False;
    RemiseBonLivGEdt.Enabled:=False;
    RemiseTypeBonLivGCbx.Enabled:= False;

    RemisePerctageBonLivGEdt.Text:='';
    RemiseBonLivGEdt.Text:='';
    RemiseTypeBonLivGCbx.Text:='';
    BonLivGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonLivGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

     ProduitsListDBGridEh.ReadOnly:=True;
  end;
end;

procedure TBonLivGestionF.RemiseTypeBonLivGCbxChange(Sender: TObject);
begin
RemiseBonLivGEdt.Text:='';
RemisePerctageBonLivGEdt.Text:='';
end;

procedure TBonLivGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonLivGCbx.SetFocus;
end;

procedure TBonLivGestionF.SNumberProduitBonLivGBtnClick(Sender: TObject);
begin
          SNumberGestionF := TSNumberGestionF.Create(BonLivGestionF);
          SNumberGestionF.Tag := 2;
          SNumberGestionF.Left := (MainForm.Left + MainForm.Width div 2) - (SNumberGestionF.Width div 2);
          SNumberGestionF.Top := MainForm.Top + 5;

          SNumberGestionF.RefNSeriesLbl.Caption:= MainForm.Bonv_liv_listTable.FieldByName('referp').AsString;
          SNumberGestionF.NameNSeriesLbl.Caption:= MainForm.Bonv_liv_listTable.FieldByName('nomp').AsString;

          //check if it has serial numbers
          begin
            MainForm.SQLQuery4.Active:=false;
            MainForm.SQLQuery4.SQL.Clear;
            MainForm.SQLQuery4.SQL.Text:='Select code_ns,nom_ns FROM n_series n'
            +' INNER JOIN bona_rec br on n.code_barec = br.code_barec'
            +' WHERE n.code_p = '
            + IntToStr(MainForm.Bonv_liv_listTable.FieldByName('code_p').AsInteger)
            + ' AND (n.sold_ns = false OR n.sold_ns is NULL)'
            + ' AND br.valider_barec = true'
//            + ' AND (n.code_bvliv = 0 OR n.code_bvliv IS NULL)'
            + ' ORDER BY n.code_ns';
            MainForm.SQLQuery4.Active:=True;
            if NOT MainForm.SQLQuery4.IsEmpty then
            begin
    //            SNumberGestionF.Font.Color:= $0040332D;
              SNumberGestionF.NSeriesDispoLsBox.Items.Clear;
              MainForm.SQLQuery4.First;
              while not MainForm.SQLQuery4.Eof do
              begin
                SNumberGestionF.NSeriesDispoLsBox.Items.Add(MainForm.SQLQuery4.FieldByName('nom_ns').AsString);
                MainForm.SQLQuery4.Next;
              end;

            end;

            
          end;


          //check if we already add a serial numbers in this bon adn didnt validate it yet
          begin
            MainForm.SQLQuery4.Active:=false;
            MainForm.SQLQuery4.SQL.Clear;
            MainForm.SQLQuery4.SQL.Text:='Select code_ns,nom_ns FROM n_series n'
            +' INNER JOIN bona_rec br on n.code_barec = br.code_barec'
            +' WHERE n.code_p = '
            + IntToStr(MainForm.Bonv_liv_listTable.FieldByName('code_p').AsInteger)
            + ' AND (n.sold_ns = false OR n.sold_ns is NULL)'
            + ' AND br.valider_barec = true'
            + ' AND n.code_bvliv = '
            + IntToStr(MainForm.Bonv_liv_listTable.FieldByName('code_bvliv').AsInteger)
            + ' ORDER BY n.code_ns';
            MainForm.SQLQuery4.Active:=True;
            if NOT MainForm.SQLQuery4.IsEmpty then
            begin
    //            SNumberGestionF.Font.Color:= $0040332D;
              SNumberGestionF.NSeriesNewMem.Lines.Clear;
              MainForm.SQLQuery4.First;
              while not MainForm.SQLQuery4.Eof do
              begin
                SNumberGestionF.NSeriesNewMem.Lines.Add(MainForm.SQLQuery4.FieldByName('nom_ns').AsString);
                MainForm.SQLQuery4.Next;
              end;

            end;


          end;

          MainForm.SQLQuery4.Active:=false;
          MainForm.SQLQuery4.SQL.Clear;

          SNumberGestionF.Tag:= 1;// This Tag is for adding Serial Number in BonLivGestion
          AnimateWindow(SNumberGestionF.Handle, 175, AW_VER_POSITIVE or AW_SLIDE or AW_ACTIVATE);
          SNumberGestionF.Show;
          SNumberGestionF.NSeriesNewMem.SetFocus;
end;

procedure TBonLivGestionF.RemisePerctageBonLivGEdtChange(Sender: TObject);
var BonLTotalHT,RemisePerctageBonLiv,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldClientCredit : Double;
begin
//------ this is to set the remise on tyhe prix HT ---------//

   //-- use this code to HT TVA calculation
      if RemiseTypeBonLivGCbx.ItemIndex = 0 then
       begin
        if RemisePerctageBonLivGEdt.Text<>''  then
        begin
            if RemisePerctageBonLivGEdt.Text <> '' then
            begin
            RemisePerctageBonLiv:=StrToFloat(StringReplace(RemisePerctageBonLivGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonLivTotalHTLbl.Caption<>'' then
            begin
            BonLTotalHT:=StrToFloat (StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonLivTotalTVALbl.Caption:= FloatToStrF(Round(TotalTVANet - (( TotalTVANet  * RemisePerctageBonLiv)/(100))),ffNumber,14,2); //TVA
         BonLTotalHTNewLbl.Caption:= FloatToStrF(Round(BonLTotalHT - (( BonLTotalHT  * RemisePerctageBonLiv)/(100))),ffNumber,14,2); //HT
            if BonLTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonLTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonLivTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonLivTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonLivTotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA),ffNumber,14,2); // TTC
//         BonLivResteLbl.Caption:= BonLivTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonLivGEdt.Focused then
            begin
            RemiseBonLivGEdt.Text:=FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);
            end;

        BonLRemiseHTNewLbl.Caption:= FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);

            if BonLivGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonLivGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonLivGClientNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldClientCredit)),ffNumber,14,2);

        end else
          begin
           if BonLivTotalHTLbl.Caption<>'' then
           begin
           BonLTotalHT:=StrToFloat (StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonLivTotalTTCLbl.Caption:=FloatToStrF((BonLTotalHT + TotalTVANet ),ffNumber,14,2);
//            BonLivResteLbl.Caption:= BonLivTotalTTCLbl.Caption;
            BonLivTotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonLivGEdt.Text:='';
            BonLRemiseHTNewLbl.Caption:='0';
            BonLTotalHTNewLbl.Caption:=BonLivTotalHTLbl.Caption;

            if BonLivGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonLivGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonLivGClientOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonLivTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
//          BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
          end;
       end;
       //------ this is to set the remise on the prix TTC only ---------//
       if RemiseTypeBonLivGCbx.ItemIndex = 1 then
       begin
        if RemisePerctageBonLivGEdt.Text<>'' then
        begin
             if RemisePerctageBonLivGEdt.Text <> '' then
            begin
            RemisePerctageBonLiv:=StrToFloat(StringReplace(RemisePerctageBonLivGEdt.Text, #32, '', [rfReplaceAll]));
            end;
             if TotalTVANewLbl.Caption <>'' then
            begin
            NewTVA:=StrToFloat (StringReplace(TotalTVANewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonLivTotalHTLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonLivTotalHTLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         BonLivTotalTVALbl.Caption:= FloatToStrF(( NewTVA - ((RemisePerctageBonLiv/100) * NewTVA)),ffNumber,14,2);
         BonlTotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonLiv/100) * NewHT)),ffNumber,14,2);
         BonLivTotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonLiv/100) * NewHT))+( NewTVA - ((RemisePerctageBonLiv/100) * NewTVA))),ffNumber,14,2);
            if BonLTotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonLTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonLivTotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonLivTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonLivGEdt.Focused then
         begin
         RemiseBonLivGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


//         BonLivResteLbl.Caption:=BonLivTotalTTCLbl.Caption;

           if BonLivTotalHTLbl.Caption <>'' then
            begin
            BonLTotalHT:=StrToFloat (StringReplace(BonLivTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonLTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonLRemiseHTNewLbl.Caption:= FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);

            if BonLivGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonLivGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonLivGEdt.Text:='';
             BonLRemiseHTNewLbl.Caption:='0';
             BonLivTotalTTCLbl.Caption := BonLTotalTTCNewLbl.Caption;
//             BonLivResteLbl.Caption:=BonLivTotalTTCLbl.Caption;
             BonLivTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonLTotalHTNewLbl.Caption:=BonLivTotalHTLbl.Caption;

              if BonLivGClientOLDCredit.Caption <>'' then
              begin
              OldClientCredit:=StrToFloat (StringReplace(BonLivGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonLivGClientOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonLivTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
//           BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
            end;
      end;
end;

procedure TBonLivGestionF.RemisePerctageBonLivGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonLivGEdt.Text := StringReplace(RemisePerctageBonLivGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonLivGEdt.SelectAll;
end;

procedure TBonLivGestionF.RemisePerctageBonLivGEdtEnter(Sender: TObject);
begin
MainForm.Bonv_liv_listTable.Refresh;
 RemisePerctageBonLivGEdtChange(Sender);
end;

procedure TBonLivGestionF.RemisePerctageBonLivGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemisePerctageBonLivGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonLivGestionF.RemiseBonLivGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = ['.'];
begin
//  if not(Key in N) then
//  begin
//     key := #0;
//  end;
//
//   if (Key in F) then
//  begin
//    key :=  #44;
//  end;
  if (Key = '.') AND (Pos(Key, (RemiseBonLivGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonLivGestionF.RemiseBonLivGEdtExit(Sender: TObject);
var
RemiseBonLivG: Double;
begin
  if RemiseBonLivGEdt.Text<>'' then
  begin
  RemiseBonLivG:=StrToFloat(StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonLivGEdt.Text := FloatToStrF(RemiseBonLivG,ffNumber,14,2);
  end;
end;
procedure TBonLivGestionF.RemiseBonLivGEdtEnter(Sender: TObject);
begin
//MainForm.Bonv_liv_listTable.Refresh;
 RemisePerctageBonLivGEdtChange(Sender);
end;

procedure TBonLivGestionF.RemiseBonLivGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonLivGEdt.Text := StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonLivGEdt.SelectAll;
end;

procedure TBonLivGestionF.RemiseBonLivGEdtChange(Sender: TObject);
var RemiseBonLivG,BonLTotalHT,BonLTotalTVA,OLDTTC : Double;
begin
if RemiseBonLivGEdt.Focused then
 begin
      if RemiseBonLivGEdt.Text<>'' then
     begin
     RemiseBonLivG:=StrToFloat (StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
     end;
     if (RemiseBonLivGEdt.Text<>'') AND (RemiseBonLivG<>0) then
    begin
       if RemiseTypeBonLivGCbx.ItemIndex = 0 then
       begin
         if BonLivTotalHTLbl.Caption<>'' then
         begin
         BonLTotalHT:=StrToFloat (StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonLivTotalTVALbl.Caption<>'' then
         begin
          BonLTotalTVA:=StrToFloat (StringReplace(BonLivTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonLivGEdt.Text := FloatToStrF(((RemiseBonLivG / BonLTotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonLivGCbx.ItemIndex = 1 then
        begin
         if BonLTotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonLTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonLivGEdt.Text := FloatToStrF(((RemiseBonLivG / OLDTTC) * 100),ffNumber,14,2) ;
        end;
    end else
        begin
          BonLRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonLivGEdt.Text:='';
          BonLTotalHTNewLbl.Caption:=BonLivTotalHTLbl.Caption;
        end;
 end;
end;

procedure FullfillFormBonLiv;
begin
   if MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = True then
  begin
       FSplashVersement.DisableBonLiv;
  end;
  if MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = False then
   begin
     BonLivGestionF.EnableBonLiv;
    end;


  if (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger<> 0) AND (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger<> null) then
  begin
  BonLivGestionF.ClientBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldByName('clientbvliv').AsWideString;
  end;
  if (MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger<> 0) AND (MainForm.Bonv_livTable.FieldByName('code_mdpai').AsInteger<>null)  then
  begin
  BonLivGestionF.ModePaieBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldByName('ModePaie').AsString;
  end;
  if (MainForm.Bonv_livTable.FieldByName('code_cmpt').AsInteger<> 0) AND (MainForm.Bonv_livTable.FieldByName('code_cmpt').AsInteger<>null)  then
  begin
  BonLivGestionF.CompteBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldByName('Compte').AsString;
  end;

  if  (MainForm.Bonv_livTable.FieldByName('MontantRes').AsFloat<>null)  then
  begin
  BonLivGestionF.BonLivResteLbl.Caption:=FloatToStrF(((MainForm.Bonv_livTable.FieldByName('MontantRes').AsFloat)),ffNumber,14,2) ;
  end;

  BonLivGestionF.NumBonLivGEdt.Caption:= MainForm.Bonv_livTable.FieldByName('num_bvliv').AsString;
  BonLivGestionF.DateBonLivGD.DateTime:= MainForm.Bonv_livTable.FieldByName('date_bvliv').AsDateTime;
  BonLivGestionF.ObserBonLivGMem.Text:= MainForm.Bonv_livTable.FieldByName('obser_bvliv').AsString;

      if MainForm.Bonv_liv_listTable.ControlsDisabled  then
   begin
     MainForm.Bonv_liv_listTable.EnableControls;
   end;
end;

procedure FullfillCredits(CodeC :Integer) ;
begin
   DataModuleF.SQLQuery3.Active:=False;
   DataModuleF.SQLQuery3.SQL.Clear;
   DataModuleF.SQLQuery3.SQL.Text:= 'SELECT credit_c from client where code_c ='+ IntToStr(CodeC);
   DataModuleF.SQLQuery3.Active:=True;

   BonLivGestionF.BonLivGClientOLDCredit.Caption:= FloatToStrF(((DataModuleF.SQLQuery3.FieldByName('credit_c').AsFloat)),ffNumber,14,2);
   BonLivGestionF.BonLivGClientNEWCredit.Caption:=FloatToStrF(0,ffNumber,14,2);

   DataModuleF.SQLQuery3.Active:=False;
   DataModuleF.SQLQuery3.SQL.Clear;

end;

procedure TBonLivGestionF.sSpeedButton7Click(Sender: TObject);
begin
  if (ClientBonLivGCbx.Text <> '')
    and (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0)
    and (MainForm.Bonv_livTable.FieldValues['code_c'] <> Null )  then

    begin
    MainForm.Bonv_livTable.First;
  //  MainForm.Bonv_livTable.Refresh;
    MainForm.Bonv_liv_listTable.Refresh;

    FullfillFormBonLiv();

    FullfillCredits(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonLivGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonLivGCbx.SetFocus;
    end
end;

procedure TBonLivGestionF.sSpeedButton6Click(Sender: TObject);
begin
  if (ClientBonLivGCbx.Text <> '')
    and (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0)
    and (MainForm.Bonv_livTable.FieldValues['code_c'] <> Null )  then

    begin
    MainForm.Bonv_livTable.Prior;
  //  MainForm.Bonv_livTable.Refresh;
    MainForm.Bonv_liv_listTable.Refresh;

    FullfillFormBonLiv();

    FullfillCredits(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonLivGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonLivGCbx.SetFocus;
    end
end;

procedure TBonLivGestionF.sSpeedButton5Click(Sender: TObject);
begin
  if (ClientBonLivGCbx.Text <> '')
    and (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0)
    and (MainForm.Bonv_livTable.FieldValues['code_c'] <> Null )  then

    begin
    MainForm.Bonv_livTable.Next;
  //  MainForm.Bonv_livTable.Refresh;
    MainForm.Bonv_liv_listTable.Refresh;

    FullfillFormBonLiv();

    FullfillCredits(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonLivGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonLivGCbx.SetFocus;
    end
end;

procedure TBonLivGestionF.sSpeedButton4Click(Sender: TObject);
begin
  if (ClientBonLivGCbx.Text <> '')
    and (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0)
    and (MainForm.Bonv_livTable.FieldValues['code_c'] <> Null )  then

    begin
    MainForm.Bonv_livTable.Last;
  //  MainForm.Bonv_livTable.Refresh;
    MainForm.Bonv_liv_listTable.Refresh;

    FullfillFormBonLiv();

    FullfillCredits(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonLivGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonLivGCbx.SetFocus;
    end
end;

procedure TBonLivGestionF.AddBVlivBonLivGBtnClick(Sender: TObject);
var
  codeBL,CodeCB : integer;
begin
 Timer1.Enabled:=False;

      begin
     ClientBonLivGCbx.Clear;
     ModePaieBonLivGCbx.Clear;
     CompteBonLivGCbx.Clear;
     NChequeBonLivGCbx.Clear;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.ClientTable.Refresh;
   MainForm.Bonv_livTable.Refresh;
   MainForm.Bonv_liv_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonLivPListDataS.DataSet.Refresh;
   MainForm.BonLivListDataS.DataSet.Refresh;
   Refresh;

   ModePaieBonLivGCbx.Refresh;
   CompteBonLivGCbx.Refresh;

   EnableBonLiv;

 codeBL:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bonv_livTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_livTable.Insert;
        MainForm.Bonv_livTable.FieldValues['code_bvliv']:=1;
        MainForm.Bonv_livTable.FieldValues['num_bvliv']:= 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
        MainForm.Bonv_livTable.FieldValues['time_bvliv']:=TimeOf(Now);
        MainForm.Bonv_livTable.Post;
        codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
      end else
          begin
            MainForm.Bonv_livTable.Last;
            codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= BLLSQL+' WHERE code_bvliv = ' + QuotedStr(IntToStr(codeBL))+' ';
            MainForm.Bonv_liv_listTable.Active:=True;

           if MainForm.Bonv_liv_listTable.RecordCount <= 0 then
           begin
        //   MainForm.Bonv_livTable.Last;
           codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
           end else
           begin

             MainForm.Bonv_livTable.Insert;
             MainForm.Bonv_livTable.FieldValues['code_bvliv']:= codeBL + 1;
             MainForm.Bonv_livTable.FieldValues['num_bvliv']:=  'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBL + 1)]);
             MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
             MainForm.Bonv_livTable.FieldValues['time_bvliv']:= TimeOf(Now);
             MainForm.Bonv_livTable.Post;

           end;
//            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonLivTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    BonRecGestionF.RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
      BonLivTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonLivTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
      BonLivResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
      BonLivRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
      BonLivGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
      BonLivGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bonv_livTable.FieldValues['code_bvliv']   ;
   NumBonLivGEdt.Caption := 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     ClientBonLivGCbx.SetFocus;

     Tag :=0;

     MainForm.Bonv_liv_listTable.Refresh;

     ClientBonLivGCbxExit(Sender);
     ProduitBonLivGCbx.SetFocus;


end;

procedure TBonLivGestionF.EditBVlivBonLivGBtnClick(Sender: TObject);
Var  CodeBL : Integer;
begin
  codeBL:=MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;

        //------- This is to delete data from tre and reg ih not valide----------------------------------------------
           if (codeBL <> 0) AND (codeBL <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBL));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBL));
              MainForm.RegclientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

//      MainForm.ClientTable.DisableControls;
//      MainForm.ClientTable.Active:=false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
//      MainForm.ClientTable.Active:=True;


      DataModuleF.SQLQuery3.Active:=False;
      DataModuleF.SQLQuery3.SQL.Clear;
      DataModuleF.SQLQuery3.SQL.Text:='Select code_c,credit_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;  ;
      DataModuleF.SQLQuery3.Active:=True;
 // this is to enable the componets to edit the bon

  EnableBonLiv;

 // this is to unvalider the bon
  begin
  MainForm.Bonv_livTable.Edit;
  MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean:= False;
  MainForm.Bonv_livTable.Post;
  end;


// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonLivGClientOLDCredit.Caption:=
  FloatToStrF((((DataModuleF.SQLQuery3.FieldByName('credit_c').AsFloat) - StrToFloat(StringReplace( BonLivResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,14,2);

      if  (DataModuleF.SQLQuery3.FieldByName('code_c').AsInteger <> 1) then
      begin
      DataModuleF.SQLQuery3.Edit;
      DataModuleF.SQLQuery3.FieldByName('credit_c').AsFloat:= (DataModuleF.SQLQuery3.FieldByName('credit_c').AsFloat) - (MainForm.Bonv_livTable.FieldByName('MontantRes').AsFloat);
      DataModuleF.SQLQuery3.Post;
      end;

  BonLivRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonLivResteLbl.Caption:= BonLivTotalTTCLbl.Caption;



      DataModuleF.SQLQuery3.Active:=false;
      DataModuleF.SQLQuery3.SQL.Clear;
      MainForm.ClientTable.Refresh ;

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
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvlivl,code_p,  qut_p, cond_p,code_barec  FROM bonv_liv_list WHERE code_bvliv =  '
                                                 + IntToStr (MainForm.Bonv_livTable.FieldValues['code_bvliv'])
                                                 + 'GROUP BY code_bvlivl, code_p, qut_p, cond_p,code_barec ' ;
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



           //Here we validate the vente with the serial numbers related to this bon
            DataModuleF.SQLQuery3.Active:=false;
            DataModuleF.SQLQuery3.SQL.Clear;
            DataModuleF.SQLQuery3.SQL.Text:='Select code_ns,sold_ns FROM n_series WHERE code_bvliv = '
            + IntToStr(codeBL);
            DataModuleF.SQLQuery3.Active:=True;

            if (NOT DataModuleF.SQLQuery3.IsEmpty) then
            begin
              DataModuleF.SQLQuery3.First;
              while NOT DataModuleF.SQLQuery3.Eof do
              begin
               DataModuleF.SQLQuery3.Edit;
               DataModuleF.SQLQuery3.FieldByName('sold_ns').AsBoolean:= False;
               DataModuleF.SQLQuery3.Post;

               DataModuleF.SQLQuery3.Next;
              end;


            end;
            MainForm.SQLQuery3.Active:=false;
            MainForm.SQLQuery3.SQL.Clear;




           MainForm.SQLQuery3.Active:=False;
           MainForm.SQLQuery3.SQL.Clear;
//           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
//           MainForm.ProduitTable.Active:=True;
//           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           Mainform.FDQuery2.Active:=False;
           Mainform.FDQuery2.Sql.Clear;
           MainForm.Bonv_livTable.Refresh;

     end;

     ClientBonLivGCbxExit(Sender);

end;

procedure TBonLivGestionF.ValiderBVlivBonLivGBtnClick(Sender: TObject);
begin
  if ClientBonLivGCbx.Text <> '' then
  begin

   if ModePaieBonLivGCbx.Text <> '' then
   begin

    if CompteBonLivGCbx.Text <> '' then
    begin

      if  RequiredClientGlbl.Visible <> True then
      begin
           //-------- Show the splash screan for the adding comptes ---------//
       FSplashVersement:=TFSplashVersement.Create(BonLivGestionF);
       FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
       FSplashVersement.Top:=  MainForm.Top + 5 ;
      FSplashVersement.OldCreditVersementSLbl.Caption:= BonLivGClientOLDCredit.Caption;

        FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
             (StrToFloat (StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);
        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((
             (StrToFloat (StringReplace(BonLivRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);
        FSplashVersement.Tag := 2 ;
        FSplashVersement.OKVersementSBtn.Tag:= 1 ;
       AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashVersement.Show;

      end  else
           begin

              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              ClientBonLivGCbx.StyleElements:= [];
              RequiredClientGlbl.Caption:= 'Ce Client est bloqué' ;
              RequiredClientGlbl.Visible:= True;
              NameClientGErrorP.Visible:= True;
              ClientBonLivGCbx.SetFocus;

           end;

           end else
               begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  CompteBonLivGCbx.StyleElements:= [];
                  RequiredCompteGlbl.Visible:= True;
                  CompteGErrorP.Visible:= True;
                  CompteBonLivGCbx.SetFocus;
               end;

    end else
        begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ModePaieBonLivGCbx.StyleElements:= [];
            RequiredMPGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonLivGCbx.SetFocus;
        end;

    end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonLivGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonLivGCbx.SetFocus;
    end;

end;

procedure TBonLivGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var indes : Integer;
begin

  //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (MainForm.Bonv_liv_listTable.RecNo=MainForm.Bonv_liv_listTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;

end;

procedure TBonLivGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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


procedure TBonLivGestionF.ProduitsListDBGridEhMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);

begin
//if NOT (MainForm.Bonv_liv_listTable.IsEmpty) then
//  begin
//////    MainForm.SQLQuery.DisableControls;
////    MainForm.FDQuery2.Active:=False;
////    MainForm.FDQuery2.SQL.Clear;
////    MainForm.FDQuery2.SQL.Text:='SELECT code_p,nom_p,prixht_p,tva_p FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_liv_listTable.FieldValues['code_p']);
////    MainForm.FDQuery2.Active:=True;
////
////
//    //ProduitsListDBGridEh.hint:= ('Prix seuil de vente: '+MainForm.ProduitTable.FieldByName('prixht_p').AsString+FormatSettings.DecimalSeparator+'00'  )     ;
//       Application.HintPause := 3000;      // 250 mSec before hint is shown
//     Application.HintHidePause := 5000;
//   ProduitsListDBGridEh.ShowHint:= True;
//
//     ChangeHint(TDBGridEh(Sender),
//      ( 'Dés: '+ (MainForm.Bonv_liv_listTable.FieldValues['nomp'])
//       + sLineBreak +
//         'Prix HT= '+ CurrToStrF((MainForm.Bonv_liv_listTable.FieldValues['prixht_p']),ffNumber,2)
//       + sLineBreak +
//         'Prix TTC= '+ CurrToStrF(((((MainForm.Bonv_liv_listTable.FieldValues['prixht_p'] * MainForm.Bonv_liv_listTable.FieldValues['tva_p'])/100) + (MainForm.Bonv_liv_listTable.FieldValues['prixht_p']))),ffNumber,2)
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

procedure TBonLivGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
end;

 procedure TBonLivGestionF.Timer2Timer(Sender: TObject);
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
ShowMessage('Printer «DotMatrix» not found.');
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


procedure TBonLivGestionF.GettingData;
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

    Name:= BonLivPListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListfrxRprt.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonLivPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

  DateRX:= BonLivPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

  NameRX:= BonLivPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonLivPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonLivPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonLivPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonLivPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;


        OLDCredit:= BonLivPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


      NEWCredit:= BonLivPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;



 procedure TBonLivGestionF.GettingDataA5;
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

    Name:= BonLivPListfrxRprtA5.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListfrxRprtA5.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListfrxRprtA5.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListfrxRprtA5.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListfrxRprtA5.FindObject('Logo') as TfrxPictureView;
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

  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonLivPListfrxRprtA5.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListfrxRprtA5.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

    DateRX:= BonLivPListfrxRprtA5.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

      NameRX:= BonLivPListfrxRprtA5.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin

      AdrRX:= BonLivPListfrxRprtA5.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonLivPListfrxRprtA5.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonLivPListfrxRprtA5.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;


      TelRX:= BonLivPListfrxRprtA5.FindObject('TelRX') as TfrxMemoView;
      TelRX.Text:= FieldByName('fix_c').AsString;

      Mob1RX:= BonLivPListfrxRprtA5.FindObject('Mob1RX') as TfrxMemoView;
      Mob1RX.Text:= FieldByName('mob_c').AsString;

      Mob2RX:= BonLivPListfrxRprtA5.FindObject('Mob2RX') as TfrxMemoView;
      Mob2RX.Text:= FieldByName('mob2_c').AsString;

      FaxRX:= BonLivPListfrxRprtA5.FindObject('FaxRX') as TfrxMemoView;
      FaxRX.Text:= FieldByName('fax_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonLivPListfrxRprtA5.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListfrxRprtA5.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;


        OLDCredit:= BonLivPListfrxRprtA5.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


      NEWCredit:= BonLivPListfrxRprtA5.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;


procedure TBonLivGestionF.GettingDataSansTax;
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

    Name:= BonLivPListSansTaxfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListSansTaxfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListSansTaxfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListSansTaxfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListSansTaxfrxRprt.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonLivPListSansTaxfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListSansTaxfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

    DateRX:= BonLivPListSansTaxfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

      NameRX:= BonLivPListSansTaxfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonLivPListSansTaxfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonLivPListSansTaxfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonLivPListSansTaxfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonLivPListSansTaxfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListSansTaxfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;


        OLDCredit:= BonLivPListSansTaxfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


      NEWCredit:= BonLivPListSansTaxfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;



procedure TBonLivGestionF.GettingDataBonCaisse;
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

    Name:= BonLivPListBonCaissefrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListBonCaissefrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListBonCaissefrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListBonCaissefrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListBonCaissefrxRprt.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonLivPListBonCaissefrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListBonCaissefrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

    DateRX:= BonLivPListBonCaissefrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

      NameRX:= BonLivPListBonCaissefrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonLivPListBonCaissefrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonLivPListBonCaissefrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonLivPListBonCaissefrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonLivPListBonCaissefrxRprt.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListBonCaissefrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonLivGCbx.Text;


    OLDCredit:= BonLivPListBonCaissefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
    OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


    NEWCredit:= BonLivPListBonCaissefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
    NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;




procedure TBonLivGestionF.GettingDataBonCaisseA5;
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

    Name:= BonLivPListfrxCaisseRprtA5.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListfrxCaisseRprtA5.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListfrxCaisseRprtA5.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListfrxCaisseRprtA5.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListfrxCaisseRprtA5.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonLivPListfrxCaisseRprtA5.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListfrxCaisseRprtA5.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

    DateRX:= BonLivPListfrxCaisseRprtA5.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

      NameRX:= BonLivPListfrxCaisseRprtA5.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonLivPListfrxCaisseRprtA5.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonLivPListfrxCaisseRprtA5.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonLivPListfrxCaisseRprtA5.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonLivPListfrxCaisseRprtA5.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListfrxCaisseRprtA5.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonLivGCbx.Text;


      OLDCredit:= BonLivPListfrxCaisseRprtA5.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


      NEWCredit:= BonLivPListfrxCaisseRprtA5.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;


procedure TBonLivGestionF.GettingDataBLSimple;
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

    Name:= BonLivPListLivSimplefrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListLivSimplefrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListLivSimplefrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListLivSimplefrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListLivSimplefrxRprt.FindObject('Logo') as TfrxPictureView;
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




  NumRX:= BonLivPListLivSimplefrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

  DateRX:= BonLivPListLivSimplefrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

  NameRX:= BonLivPListLivSimplefrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;


  MPRX:= BonLivPListLivSimplefrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;


  OLDCredit:= BonLivPListLivSimplefrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


  NEWCredit:= BonLivPListLivSimplefrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;

procedure TBonLivGestionF.GettingDataFacture;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,RC,NArt,NIF,NIS,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr,ComRC,ComNArt,ComNIF,ComNIS,ComRIB : TfrxMemoView;
  RCLbl,NArtLbl,NIFLbl,NISLbl,ComRCLbl,ComNArtLbl,ComNIFLbl,ComNISLbl,ComRIBLbl : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonFacturePListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonFacturePListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonFacturePListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonFacturePListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

    ComRC:= BonFacturePListfrxRprt.FindObject('ComRC') as TfrxMemoView;
    ComRC.Text:= MainForm.CompanyTable.FieldByName('rc_comp').AsString ;
    ComRC.Visible:=True;
    ComRCLbl:= BonFacturePListfrxRprt.FindObject('ComRCLbl') as TfrxMemoView;
    ComRCLbl.Visible:=True;

    ComNArt:= BonFacturePListfrxRprt.FindObject('ComNArt') as TfrxMemoView;
    ComNArt.Text:= MainForm.CompanyTable.FieldByName('nart_comp').AsString ;
    ComNArt.Visible:=True;
    ComNArtLbl:= BonFacturePListfrxRprt.FindObject('ComNArtLbl') as TfrxMemoView;
    ComNArtLbl.Visible:=True;

    ComNIF:= BonFacturePListfrxRprt.FindObject('ComNIF') as TfrxMemoView;
    ComNIF.Text:= MainForm.CompanyTable.FieldByName('nif_comp').AsString ;
    ComNIF.Visible:=True;
    ComNIFLbl:= BonFacturePListfrxRprt.FindObject('ComNIFLbl') as TfrxMemoView;
    ComNIFLbl.Visible:=True;

    ComNIS:= BonFacturePListfrxRprt.FindObject('ComNIS') as TfrxMemoView;
    ComNIS.Text:= MainForm.CompanyTable.FieldByName('nis_comp').AsString ;
    ComNIS.Visible:=True;
    ComNISLbl:= BonFacturePListfrxRprt.FindObject('ComNISLbl') as TfrxMemoView;
    ComNISLbl.Visible:=True;

    ComRIB:= BonFacturePListfrxRprt.FindObject('ComRIB') as TfrxMemoView;
    ComRIB.Text:= MainForm.CompanyTable.FieldByName('rib_comp').AsString ;
    ComRIB.Visible:=True;
    ComRIBLbl:= BonFacturePListfrxRprt.FindObject('ComRIBLbl') as TfrxMemoView;
    ComRIBLbl.Visible:=True;

      Logo:= BonFacturePListfrxRprt.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonFacturePListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonFacturePListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= copy(NumBonLivGEdt.Caption,3,10);

  DateRX:= BonFacturePListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

  NameRX:= BonFacturePListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonFacturePListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonFacturePListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonFacturePListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;

      RC:= BonFacturePListfrxRprt.FindObject('RC') as TfrxMemoView;
      RC.Text:= FieldByName('rc_c').AsString;
      RC.Visible:= True;
      RCLbl:= BonFacturePListfrxRprt.FindObject('RCLbl') as TfrxMemoView;
      RCLbl.Visible:= True;

      NArt:= BonFacturePListfrxRprt.FindObject('NArt') as TfrxMemoView;
      NArt.Text:= FieldByName('nart_c').AsString;
      NArt.Visible:= True;
      NArtLbl:= BonFacturePListfrxRprt.FindObject('NArtLbl') as TfrxMemoView;
      NArtLbl.Visible:= True;

      NIF:= BonFacturePListfrxRprt.FindObject('NIF') as TfrxMemoView;
      NIF.Text:=  FieldByName('nif_c').AsString;
      NIF.Visible:= True;
      NIFLbl:= BonFacturePListfrxRprt.FindObject('NIFLbl') as TfrxMemoView;
      NIFLbl.Visible:= True;

      NIS:= BonFacturePListfrxRprt.FindObject('NIS') as TfrxMemoView;
      NIS.Text:=  FieldByName('nis_c').AsString;
      NIS.Visible:= True;
      NISLbl:= BonFacturePListfrxRprt.FindObject('NISLbl') as TfrxMemoView;
      NISLbl.Visible:= True;
    end;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonFacturePListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonFacturePListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;


//        OLDCredit:= BonFacturePListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
//  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;
//
//
//      NEWCredit:= BonFacturePListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
//  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;


procedure TBonLivGestionF.GettingDataBLTVA;
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

    Name:= BonLivPListTVAfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListTVAfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListTVAfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListTVAfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListTVAfrxRprt.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonLivPListTVAfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListTVAfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

  DateRX:= BonLivPListTVAfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

  NameRX:= BonLivPListTVAfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonLivPListTVAfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonLivPListTVAfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_c').AsString;

      WilayaRX:= BonLivPListTVAfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;


    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonLivPListTVAfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListTVAfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;


        OLDCredit:= BonLivPListTVAfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


      NEWCredit:= BonLivPListTVAfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

end;

procedure TBonLivGestionF.GettingDataTicketCaisse80;
 var
  MoneyWordRX,AdrRX,VilleRX,WilayaRX,MPRX,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= TicketCaisse80frxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= TicketCaisse80frxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= TicketCaisse80frxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= TicketCaisse80frxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= TicketCaisse80frxRprt.FindObject('Logo') as TfrxPictureView;
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



  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := TicketCaisse80frxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

//  NumRX:= TicketCaisse80frxRprt.FindObject('NumRX') as TfrxMemoView;
//  NumRX.Text:= NumBonLivGEdt.Caption;

//  DateRX:= TicketCaisse80frxRprt.FindObject('DateRX') as TfrxMemoView;
//  DateRX.Text:= DateToStr(DateBonLivGD.Date);

//  NameRX:= TicketCaisse80frxRprt.FindObject('NameRX') as TfrxMemoView;
//  NameRX.Text:= ClientBonLivGCbx.Text;

//    MainForm.SQLQuery.Active:=False;
//    MainForm.SQLQuery.SQL.Clear;
//    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_c,willaya_c'
//    +',fix_c,mob_c,mob2_c,fax_c,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
//    + IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
//    MainForm.SQLQuery.Active:=True;
//
//    with MainForm.SQLQuery do
//    begin
//      AdrRX:= TicketCaisse80frxRprt.FindObject('AdrRX') as TfrxMemoView;
//      AdrRX.Text:= FieldByName('adr_c').AsString;
//
//      VilleRX:= TicketCaisse80frxRprt.FindObject('VilleRX') as TfrxMemoView;
//      VilleRX.Text:= FieldByName('ville_c').AsString;
//
//      WilayaRX:= TicketCaisse80frxRprt.FindObject('WilayaRX') as TfrxMemoView;
//      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
//    end;
//
//
//    MainForm.SQLQuery.Active:=False;
//    MainForm.SQLQuery.SQL.Clear;

    MPRX:= TicketCaisse80frxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;


        OLDCredit:= TicketCaisse80frxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonLivGClientOLDCredit.Caption;


      NEWCredit:= TicketCaisse80frxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonLivGClientNEWCredit.Caption;

 end;

procedure TBonLivGestionF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Bonv_liv_listTable.DisableControls;
   GettingData;

BonLivPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Bon de Livraison N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger)]);
BonLivPListfrxRprt.Export(frxXLSExport1);
MainForm.Bonv_liv_listTable.EnableControls;
//EmptyLines: = True;
//OpenExcelAfterExport: = True;
//PageBreaks: = False;
//ShowDialog: = False;;

end;

procedure TBonLivGestionF.sSpeedButton3Click(Sender: TObject);
begin
 GettingData;
 MainForm.Bonv_liv_listTable.DisableControls;
BonLivPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Bon de Livraison N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonLivPListfrxRprt.Export(frxPDFExport1);
MainForm.Bonv_liv_listTable.EnableControls;
end;

procedure TBonLivGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonLivGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
Refresh_PreservePosition;
end;

end.
