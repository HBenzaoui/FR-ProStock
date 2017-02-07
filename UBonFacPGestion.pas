unit UBonFacPGestion;

interface

uses
  Winapi.Windows,MMSystem,
   Winapi.Messages,DateUtils,
   System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, acImage, Vcl.Buttons, sSpeedButton,
  AdvToolBtn, frxClass, frxDBSet, frxExportXLS, frxExportPDF, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus;

type
  TBonFacPGestionF = class(TForm)
    Panel3: TPanel;
    TopP2: TPanel;
    Shape1: TShape;
    EditBVFacBonFacVGBtn: TAdvToolButton;
    AddBVFacBonFacVGBtn: TAdvToolButton;
    Label4: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    NumBonFacVGEdt: TLabel;
    AddClientBonFacVGBtn: TAdvToolButton;
    Label8: TLabel;
    ValiderBVFacBonFacVGBtn: TAdvToolButton;
    Label7: TLabel;
    AddModePaieBonFacVGBtn: TAdvToolButton;
    Label16: TLabel;
    AddCompteBonFacVGBtn: TAdvToolButton;
    ListAddProduitBonFacVGBtn: TAdvToolButton;
    DeleteProduitBonFacVGBtn: TAdvToolButton;
    NewAddProduitBonFacVGBtn: TAdvToolButton;
    RequiredClientGlbl: TLabel;
    EnterAddProduitBonFacVGBtn: TAdvToolButton;
    ClearProduitBonFacVGBtn: TAdvToolButton;
    ValiderBVFacBonFacVGImg: TsImage;
    Shape5: TShape;
    BonFVTotalTTCNewLbl: TLabel;
    BonFVTotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    Label19: TLabel;
    ObserBonFacVGLbl: TLabel;
    BonFVRemiseHTNewLbl: TLabel;
    ValiderBVFacBonFacVGLbl: TLabel;
    NameClientGErrorP: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonFacVGD: TDateTimePicker;
    ClientBonFacVGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    Panel2: TPanel;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonFacVGCbx: TComboBox;
    CompteBonFacVGCbx: TComboBox;
    Panel5: TPanel;
    BonFacVGClientOLDCredit: TLabel;
    BonFacVGClientNEWCredit: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Panel15: TPanel;
    NChequeBonFacVGCbx: TEdit;
    ObserBonFacVGMem: TMemo;
    ProduitsListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    label13: TLabel;
    label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BonFacVTotalTVALbl: TLabel;
    BonFacVRegleLbl: TLabel;
    BonFacVResteLbl: TLabel;
    BonFacVTotalHTLbl: TLabel;
    BonFacVTotalTTCLbl: TLabel;
    Label10: TLabel;
    TimberBonFacVGlbl: TLabel;
    TimberPerctageBonFacVGLbl: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel14: TPanel;
    TimberPerctageBonFacVGEdt: TEdit;
    TimberBonFacVGEdt: TEdit;
    RemisePerctageBonFacVGEdt: TEdit;
    RemiseBonFacVGEdt: TEdit;
    Panel1: TPanel;
    RemiseTypeBonFacVGCbx: TComboBox;
    BonFacVPListDataS: TDataSource;
    Label21: TLabel;
    BonFacVGOLDStock: TLabel;
    Label22: TLabel;
    BonFacVGNEWStock: TLabel;
    Label20: TLabel;
    Timer1: TTimer;
    RequiredStarProduitGLbl: TLabel;
    Label3: TLabel;
    ModepPaiGErrorP: TPanel;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxClientDB: TfrxDBDataset;
    frxBonFacPDT: TfrxDBDataset;
    frxBonFacPPListDB: TfrxDBDataset;
    BonFacPPListfrxRprt: TfrxReport;
    BonFacVTotalMargeLbl: TLabel;
    sImage1: TsImage;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    ProduitBonFacVGCbx: TcxComboBox;
    Label9: TLabel;
    Panel6: TPanel;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeCaisseSimple2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure AddBVFacBonFacVGBtnClick(Sender: TObject);
    procedure EditBVFacBonFacVGBtnClick(Sender: TObject);
    procedure ProduitBonFacVGCbxEnter(Sender: TObject);
    procedure ProduitBonFacVGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonFacVGCbxExit(Sender: TObject);
    procedure ProduitBonFacVGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure EnterAddProduitBonFacVGBtnClick(Sender: TObject);
    procedure ListAddProduitBonFacVGBtnClick(Sender: TObject);
    procedure NewAddProduitBonFacVGBtnClick(Sender: TObject);
    procedure DeleteProduitBonFacVGBtnClick(Sender: TObject);
    procedure ClearProduitBonFacVGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure BonFacVPListDataSDataChange(Sender: TObject; Field: TField);
    procedure Timer1Timer(Sender: TObject);
    procedure ClientBonFacVGCbxChange(Sender: TObject);
    procedure ModePaieBonFacVGCbxDropDown(Sender: TObject);
    procedure ModePaieBonFacVGCbxClick(Sender: TObject);
    procedure ClientBonFacVGCbxEnter(Sender: TObject);
    procedure ClientBonFacVGCbxExit(Sender: TObject);
    procedure CompteBonFacVGCbxEnter(Sender: TObject);
    procedure ClientBonFacVGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure CompteBonFacVGCbxChange(Sender: TObject);
    procedure RemiseTypeBonFacVGCbxChange(Sender: TObject);
    procedure RemisePerctageBonFacVGEdtChange(Sender: TObject);
    procedure RemisePerctageBonFacVGEdtClick(Sender: TObject);
    procedure RemisePerctageBonFacVGEdtEnter(Sender: TObject);
    procedure RemisePerctageBonFacVGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonFacVGEdtChange(Sender: TObject);
    procedure RemiseBonFacVGEdtClick(Sender: TObject);
    procedure RemiseBonFacVGEdtEnter(Sender: TObject);
    procedure RemiseBonFacVGEdtExit(Sender: TObject);
    procedure RemiseBonFacVGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ValiderBVFacBonFacVGBtnClick(Sender: TObject);
    procedure ModePaieBonFacVGCbxChange(Sender: TObject);
    procedure AddClientBonFacVGBtnClick(Sender: TObject);
    procedure AddModePaieBonFacVGBtnClick(Sender: TObject);
    procedure AddCompteBonFacVGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure B1Click(Sender: TObject);
    procedure BondeCaisseSimple2Click(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
    procedure EnableBonFacP;
  end;

var
  BonFacPGestionF: TBonFacPGestionF;

implementation

uses StringTool,Vcl.Imaging.jpeg,
  UMainF, USplashVersement, UFastProduitsList, UProduitsList,
  USplashAddUnite, UClientsList, UClientGestion, USplashAddCompte, UDataModule,
  UProduitGestion;

{$R *.dfm}
procedure TBonFacPGestionF.EnableBonFacP;
begin
   AddBVFacBonFacVGBtn.Enabled:= False;
   AddBVFacBonFacVGBtn.ImageIndex:=28;// 4 For D
   EditBVFacBonFacVGBtn.Enabled:= False;
   EditBVFacBonFacVGBtn.ImageIndex:=29;// 5 for D
   ValiderBVFacBonFacVGBtn.Enabled:= True;
   ValiderBVFacBonFacVGBtn.ImageIndex:=12;//30 for D

   DateBonFacVGD.Enabled:= True;
   ObserBonFacVGMem.Enabled:= True;
   ClientBonFacVGCbx.Enabled:= True;
   AddClientBonFacVGBtn.Enabled:= True ; //
   AddClientBonFacVGBtn.ImageIndex:=10;//35 fo D
   ModePaieBonFacVGCbx.Enabled:= True;
   AddModePaieBonFacVGBtn.Enabled:= True ;
   AddModePaieBonFacVGBtn.ImageIndex:=10;// 35 fo D
   CompteBonFacVGCbx.Enabled:= True;
   AddCompteBonFacVGBtn.Enabled:= True ;
   AddCompteBonFacVGBtn.ImageIndex:=10;// 35 fo D
   NChequeBonFacVGCbx.Enabled:= True;
   ProduitBonFacVGCbx.Enabled:= True;
   EnterAddProduitBonFacVGBtn.Enabled:= True;
   EnterAddProduitBonFacVGBtn.ImageIndex:=15;// 40 fo D
   ListAddProduitBonFacVGBtn.Enabled:= True;
   ListAddProduitBonFacVGBtn.ImageIndex:=13;//41 fo D
   NewAddProduitBonFacVGBtn.Enabled:= True;
   NewAddProduitBonFacVGBtn.ImageIndex:=4;//28 fo D
   DeleteProduitBonFacVGBtn.Enabled:= True;
   DeleteProduitBonFacVGBtn.ImageIndex:=14;//36 fo D
   ClearProduitBonFacVGBtn.Enabled:= True;
   ClearProduitBonFacVGBtn.ImageIndex:=16;//39 fo A
   ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
   ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
   ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
   ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
   ProduitsListDBGridEh.Options:=
   ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
   ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
   ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
   ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
   RemisePerctageBonFacVGEdt.Enabled:=True;//False for D
   RemiseBonFacVGEdt.Enabled:=True;//False for D
   RemiseTypeBonFacVGCbx.Enabled:= True;//False for D;

   ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
   ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
   ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

   ValiderBVFacBonFacVGImg.ImageIndex:=1;//0 fo D
   ValiderBVFacBonFacVGLbl.Color:=$007374FF;// $004AC38B for D
   ValiderBVFacBonFacVGLbl.Font.Color:= clWhite;// clBlack for D
   ValiderBVFacBonFacVGLbl.Caption:='Ce Facture n''est pas encore Valid�';// 'Ce facture est Valid' for D
end;

//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin

   BonFacPGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonFacPGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonFacPGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
//     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
//     EnableControls;
     end;

   BonFacPGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
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

procedure TBonFacPGestionF.FormShow(Sender: TObject);
var CodeFV: Integer;
begin

// use this tage when i click AddBVFacBonRecGBtn bon button
 if Tag=0 then
 begin
    DateBonFacVGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

//-- use this code to make the montants look lake money values-------//
   BonFacVTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonFacVTotalHTLbl.Caption),ffNumber,14,2) ;
   BonFacVTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonFacVTotalTVALbl.Caption),ffNumber,14,2) ;
   BonFacVTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonFacVTotalTTCLbl.Caption),ffNumber,14,2) ;
   BonFacVResteLbl.Caption :=         FloatToStrF(StrToFloat(BonFacVResteLbl.Caption),ffNumber,14,2) ;
   BonFacVRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonFacVRegleLbl.Caption),ffNumber,14,2) ;
   BonFacVGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(BonFacVGClientOLDCredit.Caption),ffNumber,14,2) ;
   BonFacVGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(BonFacVGClientNEWCredit.Caption),ffNumber,14,2) ;
 CodeFV:= MainForm.Bonp_facTable.FieldValues['code_bpfac']   ;
 NumBonFacVGEdt.Caption := 'FP'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeFV]);
  if (MainForm.Bonp_facTable.FieldByName('code_c').AsInteger <> null)
 AND (MainForm.Bonp_facTable.FieldByName('code_c').AsInteger <> 0) then
 begin
   ClientBonFacVGCbx.Text:= MainForm.Bonp_facTable.FieldValues['clientbvfac'];
   ProduitBonFacVGCbx.SetFocus;
 end else
     begin
       ClientBonFacVGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonFacVGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonFacVGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonFacVGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonFacVGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;

end;

procedure TBonFacPGestionF.sSpeedButton7Click(Sender: TObject);
begin
  MainForm.Bonp_facTable.First;
  MainForm.Bonp_facTable.Refresh;
  MainForm.Bonp_fac_listTable.Refresh;

  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = False then
   begin
     EnableBonFacP;
    end;


  if (MainForm.Bonp_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['clientbvfac'];
  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['Compte'];
//  end;

  if  (MainForm.Bonp_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonp_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacVGEdt.Caption:= MainForm.Bonp_facTable.FieldByName('num_bpfac').AsString;
end;

procedure TBonFacPGestionF.sSpeedButton6Click(Sender: TObject);
begin
  MainForm.Bonp_facTable.Prior;
  MainForm.Bonp_facTable.Refresh;
  MainForm.Bonp_fac_listTable.Refresh;

  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = False then
   begin
     EnableBonFacP;
    end;


  if (MainForm.Bonp_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['clientbvfac'];
  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['Compte'];
//  end;

  if  (MainForm.Bonp_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonp_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacVGEdt.Caption:= MainForm.Bonp_facTable.FieldByName('num_bpfac').AsString;
end;

procedure TBonFacPGestionF.sSpeedButton5Click(Sender: TObject);
begin
  MainForm.Bonp_facTable.Next;
  MainForm.Bonp_facTable.Refresh;
  MainForm.Bonp_fac_listTable.Refresh;

  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = False then
   begin
     EnableBonFacP;
    end;


  if (MainForm.Bonp_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['clientbvfac'];
  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['Compte'];
//  end;

  if  (MainForm.Bonp_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonp_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacVGEdt.Caption:= MainForm.Bonp_facTable.FieldByName('num_bpfac').AsString;
end;

procedure TBonFacPGestionF.sSpeedButton4Click(Sender: TObject);
begin
  MainForm.Bonp_facTable.Last;
  MainForm.Bonp_facTable.Refresh;
  MainForm.Bonp_fac_listTable.Refresh;

  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] = False then
   begin
     EnableBonFacP;
    end;


  if (MainForm.Bonp_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['clientbvfac'];
  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_mdpai']<>null)  then
//  begin
//  ModePaieBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['ModePaie'];
//  end;
//  if (MainForm.Bonp_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonp_facTable.FieldValues['code_cmpt']<>null)  then
//  begin
//  CompteBonFacVGCbx.Text:=MainForm.Bonp_facTable.FieldValues['Compte'];
//  end;

  if  (MainForm.Bonp_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonp_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacVGEdt.Caption:= MainForm.Bonp_facTable.FieldByName('num_bpfac').AsString;
end;

procedure TBonFacPGestionF.AddBVFacBonFacVGBtnClick(Sender: TObject);
var
  codeFV,CodeCB : integer;
begin
 Timer1.Enabled:=False;

      begin
     ClientBonFacVGCbx.Clear;
     ModePaieBonFacvGCbx.Clear;
     CompteBonFacVGCbx.Clear;
     NChequeBonFacVGCbx.Clear;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.ClientTable.Refresh;
   MainForm.Bonp_facTable.Refresh;
   MainForm.Bonp_fac_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonFacVPListDataS.DataSet.Refresh;
   MainForm.BonFacVListDataS.DataSet.Refresh;
   Refresh;

     ModePaieBonFacVGCbx.Refresh;
     CompteBonFacVGCbx.Refresh;

     EnableBonFacP;

 codeFV:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bonp_facTable.RecordCount <= 0 then
      begin

        MainForm.Bonp_facTable.Insert;
        MainForm.Bonp_facTable.FieldValues['code_bpfac']:=1;
        MainForm.Bonp_facTable.FieldValues['num_bpfac']:= 'FP'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonp_facTable.FieldValues['date_bpfac']:= DateOf(Today);
        MainForm.Bonp_facTable.FieldValues['time_bpfac']:=TimeOf(Now);
        MainForm.Bonp_facTable.Post;
        codeFV := MainForm.Bonp_facTable.FieldValues['code_bpfac'];
      end else
          begin
            MainForm.Bonp_facTable.Last;
            codeFV := MainForm.Bonp_facTable.FieldValues['code_bpfac'];
            MainForm.Bonp_fac_listTable.Active:=False;
            MainForm.Bonp_fac_listTable.SQL.Clear;
            MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list WHERE code_bpfac = ' + QuotedStr(IntToStr(codeFV));
            MainForm.Bonp_fac_listTable.Active:=True;

           if MainForm.Bonp_fac_listTable.RecordCount <= 0 then
           begin
           codeFV := MainForm.Bonp_facTable.FieldValues['code_bpfac'];
           end else
           begin

           MainForm.Bonp_facTable.Insert;
           MainForm.Bonp_facTable.FieldValues['code_bpfac']:= codeFV + 1;
           MainForm.Bonp_facTable.FieldValues['num_bpfac']:=  'FP'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFV + 1)]);
           MainForm.Bonp_facTable.FieldValues['date_bpfac']:= DateOf(Today);
           MainForm.Bonp_facTable.FieldValues['time_bpfac']:= TimeOf(Now);
           MainForm.Bonp_facTable.Post;

           end;
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonFacVTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    BonRecGestionF.RemiseBonFacVGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonFacVGEdt.Text),ffNumber,14,2) ;
    BonFacVTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
    BonFacVTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
    BonFacVResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
    BonFacVRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bonp_facTable.FieldValues['code_bpfac']   ;
 NumBonFacVGEdt.Caption := 'FP'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     ClientBonFacVGCbx.SetFocus;

     Tag :=0;

     MainForm.Bonp_fac_listTable.Refresh;

end;

procedure TBonFacPGestionF.EditBVFacBonFacVGBtnClick(Sender: TObject);
begin

      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
 // this is to enable the componets to edit the bon

  EnableBonFacP;

 // this is to unvalider the bon
  begin
  MainForm.Bonp_facTable.Edit;
  MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean:= False;
  MainForm.Bonp_facTable.Post;
  end;


// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonFacVGClientOLDCredit.Caption:=
  CurrToStrF((((MainForm.ClientTable.FieldValues['credit_c'])-(StringReplace(BonFacVResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

  BonFacVRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonFacVResteLbl.Caption:= BonFacVTotalTTCLbl.Caption;



      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls ;

 //----------------------------------------

      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bpfacl,code_p,  qut_p, cond_p  FROM bonp_fac_list WHERE code_bpfac =  '
                                                 + IntToStr (MainForm.Bonp_facTable.FieldValues['code_bpfac'])
                                                 + 'GROUP BY code_bpfacl, code_p, qut_p, cond_p ' ;
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
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
//            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
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
           MainForm.Bonp_facTable.Refresh;

     end;



   //---thise is to visivle timber after edit and calculate it----//
     ModePaieBonFacVGCbxClick(Sender);

end;

procedure TBonFacPGestionF.ProduitBonFacVGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonFacVGCbx.Refresh;
      ProduitBonFacVGCbx.Properties.Items.Clear;
      MainForm.ProduitTable.DisableControls;
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit ';
      MainForm.ProduitTable.Active := True;

      MainForm.ProduitTable.Refresh;


      MainForm.ProduitTable.first;

     if ResherchPARDesProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if ( MainForm.ProduitTable.FieldByName('nom_p').IsNull = False )  then
     begin
       ProduitBonFacVGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonFacVGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;
end;

procedure TBonFacPGestionF.ProduitBonFacVGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonFacVGCbx.AutoDropDown:= True;
  end;
end;

procedure TBonFacPGestionF.ProduitBonFacVGCbxExit(Sender: TObject);
begin
ProduitBonFacVGCbx.Text:='';
//ProduitBonFacVGCbx.AutoDropDown:=False;
end;

procedure TBonFacPGestionF.ProduitBonFacVGCbxKeyPress(Sender: TObject;
  var Key: Char);

  var CodeFV,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;

begin
 if key = #13 then
 begin
 if ProduitBonFacVGCbx.Text <>'' then
 begin
  key := #0;

    if ClientBonFacVGCbx.Text<> '' then
   begin
     MainForm.ClientTable.DisableControls;
     MainForm.ClientTable.Active:=false;
     MainForm.ClientTable.SQL.Clear;
     MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
     MainForm.ClientTable.Active:=True;
   end;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonFacVGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bonp_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonp_fac_listTable.DisableControls;
            MainForm.Bonp_fac_listTable.IndexFieldNames:='';
            MainForm.Bonp_fac_listTable.Active:=False;
            MainForm.Bonp_fac_listTable.SQL.Clear;
            MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list ORDER by code_bpfacl' ;
            MainForm.Bonp_fac_listTable.Active:=True;

            MainForm.Bonp_fac_listTable.Last;
             if  MainForm.Bonp_fac_listTable.IsEmpty then
             begin
               MainForm.Bonp_fac_listTable.Last;
               CodeFV := 1;
             end else
                 begin
                  MainForm.Bonp_fac_listTable.Last;
                  CodeFV:= MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl'] + 1 ;
                 end;

                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                 
//                   ProduitsListDBGridEh.Columns[4].Visible := True
//
                   
                 end;

             MainForm.Bonp_fac_listTable.Last;
             MainForm.Bonp_fac_listTable.Append;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl']:= CodeFV ;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfac']:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
             MainForm.Bonp_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonp_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonp_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonp_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonp_fac_listTable.Post ;
             MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';

            MainForm.Bonp_fac_listTable.Active:=False;
            MainForm.Bonp_fac_listTable.SQL.Clear;
            MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list WHERE code_bpfac = ' + QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldValues['code_bpfac']));
            MainForm.Bonp_fac_listTable.Active:=True;

            ProduitBonFacVGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonp_fac_listTable.EnableControls;
           MainForm.Bonp_fac_listTable.Last;
           if ClientBonFacVGCbx.Text<>'' then
            begin
            ValiderBVFacBonFacVGBtn.Enabled:= True;
            ValiderBVFacBonFacVGBtn.ImageIndex:=12;
            end;
            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;
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
      if  MainForm.Bonp_fac_listTable.FieldValues['code_p'] <> NULL then
      begin
      NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 37 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=6;
     end;

     end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefProduitsRdioBtn.Checked then
  begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonFacVGCbx.Text)+')';
            MainForm.ProduitTable.Active:=True;
            CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bonp_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonp_fac_listTable.DisableControls;
            MainForm.Bonp_fac_listTable.IndexFieldNames:='';
            MainForm.Bonp_fac_listTable.Active:=False;
            MainForm.Bonp_fac_listTable.SQL.Clear;
            MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list' ;
            MainForm.Bonp_fac_listTable.Active:=True;
           if  MainForm.Bonp_fac_listTable.RecordCount <= 0 then
           begin
             CodeFV := 1;
           end else
               begin
                MainForm.Bonp_fac_listTable.Last;
                CodeFV:= MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl'] + 1 ;
               end;
             MainForm.Bonp_fac_listTable.Insert;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl']:= CodeFV ;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfac']:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
             MainForm.Bonp_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonp_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonp_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonp_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonp_fac_listTable.Post ;
             MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';

            MainForm.Bonp_fac_listTable.Active:=False;
            MainForm.Bonp_fac_listTable.SQL.Clear;
            MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list WHERE code_bpfac = ' + QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldValues['code_bpfac']));
            MainForm.Bonp_fac_listTable.Active:=True;
            MainForm.Bonp_fac_listTable.EnableControls;

            ProduitBonFacVGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonp_fac_listTable.EnableControls;
            MainForm.Bonp_fac_listTable.Last;
            if ClientBonFacVGCbx.Text<>'' then
              begin
              ValiderBVFacBonFacVGBtn.Enabled:= True;
              ValiderBVFacBonFacVGBtn.ImageIndex:=12;
              end;
            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;
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
            if  MainForm.Bonp_fac_listTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 37 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 3 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=6;
         end;
    end;
 //---------------------------------------------------------------------------------------------
  if ResherchPARCBProduitsRdioBtn.Checked then
  begin
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonFacVGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
   begin
    CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
   end;

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonFacVGCbx.Text)+')';
    MainForm.ProduitTable.Active:=True;
    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

     if  (MainForm.ProduitTable.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bonp_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bonp_fac_listTable.DisableControls;
            MainForm.Bonp_fac_listTable.IndexFieldNames:='';
            MainForm.Bonp_fac_listTable.Active:=False;
            MainForm.Bonp_fac_listTable.SQL.Clear;
            MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list' ;
            MainForm.Bonp_fac_listTable.Active:=True;

           if  MainForm.Bonp_fac_listTable.RecordCount <= 0 then
           begin
             CodeFV := 1;
           end else
               begin
                MainForm.Bonp_fac_listTable.Last;
                CodeFV:= MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl'] + 1 ;
               end;

             MainForm.Bonp_fac_listTable.Insert;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl']:= CodeFV ;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfac']:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
             MainForm.Bonp_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonp_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonp_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonp_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonp_fac_listTable.Post ;
             MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';

             MainForm.Bonp_fac_listTable.Active:=False;
             MainForm.Bonp_fac_listTable.SQL.Clear;
             MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list WHERE code_bpfac = ' + QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldValues['code_bpfac']));
             MainForm.Bonp_fac_listTable.Active:=True;
             MainForm.Bonp_fac_listTable.EnableControls;

            ProduitBonFacVGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonp_fac_listTable.EnableControls;
            MainForm.Bonp_fac_listTable.Last;
            if ClientBonFacVGCbx.Text<>'' then
              begin
              ValiderBVFacBonFacVGBtn.Enabled:= True;
              ValiderBVFacBonFacVGBtn.ImageIndex:=12;
              end;

            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;
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
            if  MainForm.Bonp_fac_listTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 37 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=6;
             end;
          end;

   end;
          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
          MainForm.ProduitTable.Active := True;

         MainForm.Bonp_fac_listTable.Refresh;
//        ProduitBonFacVGCbx.AutoDropDown:=False;
         ProduitBonFacVGCbx.SelectAll;

     end;
     MainForm.Bonp_fac_listTable.Last;
 end;
end;

procedure TBonFacPGestionF.EnterAddProduitBonFacVGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonFacVGCbxKeyPress(Sender, key);
end;

procedure TBonFacPGestionF.ListAddProduitBonFacVGBtnClick(Sender: TObject);
begin

//-------- use this code to start creating th form-----//
  ProduitBonFacVGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);


//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;
//---------Use this tag = 2 for adding from facture Proforma
  FastProduitsListF.Tag := 6;

 end;

procedure TBonFacPGestionF.NewAddProduitBonFacVGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonFacPGestionF.DeleteProduitBonFacVGBtnClick(Sender: TObject);
begin
 if  MainForm.Bonp_fac_listTable.RecordCount = 1 then
 begin
    MainForm.Bonp_fac_listTable.DisableControls;
    MainForm.Bonp_fac_listTable.Refresh;
    MainForm.Bonp_fac_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    MainForm.Bonp_fac_listTable.EnableControls;
    ClientBonFacVGCbx.StyleElements:= [];
    RequiredClientGlbl.Visible:= False;
    NameClientGErrorP.Visible:= False;
    BonFacVTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacVTotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacVTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacVRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacVResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacVGClientNEWCredit.Caption:= BonFacVTotalTTCLbl.Caption;
 end else
 if MainForm.Bonp_fac_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      MainForm.Bonp_fac_listTable.DisableControls;
      MainForm.Bonp_fac_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      MainForm.Bonp_fac_listTable.Refresh;
      MainForm.Bonp_fac_listTable.EnableControls;
     end;
end;

procedure TBonFacPGestionF.ClearProduitBonFacVGBtnClick(Sender: TObject);
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

  FSplashAddUnite.NameAddUniteSLbl.Caption:='Voulez-vous vraiment supprimer tous  '+ sLineBreak +  sLineBreak +'les produits de ce Facture ?' ;
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
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 36 ;
end;

procedure TBonFacPGestionF.ProduitsListDBGridEhMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if NOT (MainForm.Bonp_fac_listTable.IsEmpty) then
  begin
    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonp_fac_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;


    //ProduitsListDBGridEh.hint:= ('Prix seuil de vente: '+MainForm.ProduitTable.FieldByName('prixht_p').AsString+FormatSettings.DecimalSeparator+'00'  )     ;
       Application.HintPause := 3000;      // 250 mSec before hint is shown
     Application.HintHidePause := 5000;
   ProduitsListDBGridEh.ShowHint:= True;

     ChangeHint(TDBGridEh(Sender),
      ( 'D�s: '+ (MainForm.ProduitTable.FieldValues['nom_p'])
       + sLineBreak +
         'Prix HT= '+ CurrToStrF((MainForm.ProduitTable.FieldValues['prixht_p']),ffNumber,2)
       + sLineBreak +
         'Prix TTC= '+ CurrToStrF((MainForm.ProduitTable.FieldValues['PrixATTC']),ffNumber,2)
       ),
       TDBGridEh(Sender).ClientToScreen(Point(X, Y)));


     MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit';
    MainForm.ProduitTable.Active:=True ;
    MainForm.ProduitTable.EnableControls;
  end;
end;

procedure TBonFacPGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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

procedure TBonFacPGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
LineCredit,LineCreditTop :TfrxShapeView;
begin
MainForm.Bonp_fac_listTable.DisableControls;
 GettingData;

  OLDCredit:= BonFacPPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonFacPPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonFacPPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonFacPPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;
  LineCredit:= BonFacPPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;
  LineCreditTop:= BonFacPPListfrxRprt.FindObject('LineCreditTop') as TfrxShapeView;
  LineCreditTop.Visible:= False;


BonFacPPListfrxRprt.PrepareReport;
BonFacPPListfrxRprt.ShowReport;
MainForm.Bonp_fac_listTable.EnableControls;
end;

procedure TBonFacPGestionF.BondeCaisseSimple2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
LineCredit,LineCreditTop :TfrxShapeView;
begin
MainForm.Bonp_fac_listTable.DisableControls;
 GettingData;

   OLDCredit:= BonFacPPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonFacPPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonFacPPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonFacPPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;
  LineCredit:= BonFacPPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;
  LineCreditTop:= BonFacPPListfrxRprt.FindObject('LineCreditTop') as TfrxShapeView;
  LineCreditTop.Visible:= True;


BonFacPPListfrxRprt.PrepareReport;
BonFacPPListfrxRprt.ShowReport;
MainForm.Bonp_fac_listTable.EnableControls;
end;

procedure TBonFacPGestionF.BonFacVPListDataSDataChange(Sender: TObject;
  Field: TField);
var  TimberFV,TTCbeforeTimber,TTCafterTimber: Currency;
begin
  if NOT BonFacVPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonFacVGBtn.Visible:= True;
    ClearProduitBonFacVGBtn.Visible:= True;

    if (ClientBonFacVGCbx.Text<>'') AND  (MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean <> True)  then
    begin
    ValiderBVFacBonFacVGBtn.Enabled:= True;
    ValiderBVFacBonFacVGBtn.ImageIndex:=12;
    end;

   if MainForm.Bonp_facTable.FieldValues['valider_bpfac'] <> True then
   begin

    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonp_fac_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;

    BonFacVGOLDStock.Caption:=
      floatTostrF((MainForm.ProduitTable.FieldValues['QutDispo']),ffNumber,14,2);
      
    BonFacVGNEWStock.Caption:=
      floatTostrF(((MainForm.ProduitTable.FieldValues['QutDispo'])-((MainForm.Bonp_fac_listTable.FieldValues['qut_p'])*(MainForm.Bonp_fac_listTable.FieldValues['cond_p']))),ffNumber,14,2);


    if(StrToFloat (StringReplace(BonFacVGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
    begin
     Timer1.Enabled:= true;
    end else
        begin
        Timer1.Enabled:= False;
        Label20.Visible:=false;
        end;

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ';
    MainForm.ProduitTable.Active:=True;
    MainForm.ProduitTable.EnableControls;

    RemisePerctageBonFacVGEdt.Enabled:=True;
    RemiseBonFacVGEdt.Enabled:=True;
    RemiseTypeBonFacVGCbx.Enabled:= True;    

   end;
     ProduitsListDBGridEh.ReadOnly:=False;
    end else
    begin
    DeleteProduitBonFacVGBtn.Visible:= False;
    ClearProduitBonFacVGBtn.Visible:= False;
     Timer1.Enabled:=False;

    ValiderBVFacBonFacVGBtn.Enabled:= False;
    ValiderBVFacBonFacVGBtn.ImageIndex:=30;

    RemisePerctageBonFacVGEdt.Enabled:=False;
    RemiseBonFacVGEdt.Enabled:=False;
    RemiseTypeBonFacVGCbx.Enabled:= False;

    RemisePerctageBonFacVGEdt.Text:='';
    RemiseBonFacVGEdt.Text:='';
    RemiseTypeBonFacVGCbx.Text:='';
    BonFacVGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonFacVGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

     ProduitsListDBGridEh.ReadOnly:=True;
  end;
end;

procedure TBonFacPGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
end;

procedure TBonFacPGestionF.ClientBonFacVGCbxChange(Sender: TObject);

begin
// use this code to make mode pai espece
      ModePaieBonFacVGCbxDropDown(Self);
      ModePaieBonFacVGCbx.ItemIndex:=0;
      ModePaieBonFacVGCbxClick(Self) ;
end;


procedure TBonFacPGestionF.ModePaieBonFacVGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ORDER BY code_mdpai';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieBonFacVGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieBonFacVGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
 ModePaieBonFacVGCbxChange(Sender);
end;

procedure TBonFacPGestionF.ModePaieBonFacVGCbxClick(Sender: TObject);
begin
  if ModePaieBonFacVGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonFacVGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonFacVGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

    ModePaieBonFacVGCbxChange(Sender);
  end;
end;

procedure TBonFacPGestionF.ClientBonFacVGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
        ClientBonFacVGCbx.Items.Clear;
        MainForm.ClientTable.DisableControls;
        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
        MainForm.ClientTable.Active:=True;

       MainForm.ClientTable.first;

     for I := 0 to MainForm.ClientTable.RecordCount - 1 do
     if MainForm.ClientTable.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonFacVGCbx.Items.Add(MainForm.ClientTable.FieldByName('nom_c').AsString);
       MainForm.ClientTable.Next;
      end;

      MainForm.ClientTable.EnableControls;

end;

procedure TBonFacPGestionF.ClientBonFacVGCbxExit(Sender: TObject);
var CodeC: Integer;
OLDCreditC,RegCCreditC,OLDCreditCINI : Currency;
begin

  if ClientBonFacVGCbx.Text <> '' then
    begin
     ClientBonFacVGCbxChange(Sender);
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
     if NOT MainForm.ClientTable.IsEmpty then
     begin
      OLDCreditCINI:= MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency;

      if MainForm.ClientTable.FieldByName('activ_c').AsBoolean <> False then
      begin
          if (MainForm.ClientTable.IsEmpty) then
          begin
           ClientBonFacVGCbx.Text := '';
           BonFacVGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
           BonFacVGClientNEWCredit.Caption:=BonFacVGClientOLDCredit.Caption;
           exit;
          end;
          CodeC:= MainForm.ClientTable.FieldByName('code_c').AsInteger ;

          MainForm.Bonv_livTableCredit.DisableControls;
          MainForm.Bonv_livTableCredit.Active:=false;
          MainForm.Bonv_livTableCredit.SQL.Clear;
          MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv WHERE valider_bvliv = true AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_bvliv '  ;
          MainForm.Bonv_livTableCredit.Active:=True;

          while NOT (MainForm.Bonv_livTableCredit.Eof) do
         begin
          OLDCreditC := OLDCreditC + MainForm.Bonv_livTableCredit.FieldValues['MontantRes'];
          MainForm.Bonv_livTableCredit.Next;
         end;
          MainForm.Bonv_livTableCredit.EnableControls;


          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=false;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='Select * FROM regclient WHERE bon_or_no_rc = 1 AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_rc '  ;
          MainForm.RegclientTable.Active:=True;

         while NOT (MainForm.RegclientTable.Eof) do
         begin
         RegCCreditC := RegCCreditC + MainForm.RegclientTable.FieldValues['montver_rc'];
         MainForm.RegclientTable.Next;
         end;


          if NOT (MainForm.Bonv_livTableCredit.IsEmpty ) OR NOT (MainForm.RegclientTable.IsEmpty) OR NOT (OLDCreditCINI = 0)then
          begin
           MainForm.Bonv_livTableCredit.last;
           BonFacVGClientOLDCredit.Caption:= CurrToStrF(((OLDCreditC - RegCCreditC) + OLDCreditCINI ),ffNumber,2) ;

           if NOT (BonFacVPListDataS.DataSet.IsEmpty) then
            begin
             BonFacVGClientNEWCredit.Caption:=
             CurrToStrF((MainForm.Bonv_livTableCredit.FieldByName('MontantRes').AsCurrency) + StrToCurr(StringReplace(BonFacVResteLbl.Caption, #32, '', [rfReplaceAll]))  ,ffNumber,2);//  anyways i'm software developer
            end;
            end else
            begin
             BonFacVGClientOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
            end;

        MainForm.Bonv_livTableCredit.DisableControls;
        MainForm.Bonv_livTableCredit.Active:=false;
        MainForm.Bonv_livTableCredit.SQL.Clear;
        MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv '  ;
        MainForm.Bonv_livTableCredit.Active:=True;
        MainForm.Bonv_livTableCredit.last;
        MainForm.Bonv_livTableCredit.EnableControls;


        MainForm.RegclientTable.Active:=false;
        MainForm.RegclientTable.SQL.Clear;
        MainForm.RegclientTable.SQL.Text:='Select * FROM regclient  ORDER BY time_rc '  ;
        MainForm.RegclientTable.Active:=True;
        MainForm.RegclientTable.EnableControls;

        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;

        if NOT (BonFacVPListDataS.DataSet.IsEmpty) then
        begin
        ValiderBVFacBonFacVGBtn.Enabled:= True;
        ValiderBVFacBonFacVGBtn.ImageIndex:=12;
        end;

        MainForm.Bonp_fac_listTable.Refresh;

            ClientBonFacVGCbx.StyleElements:= [seFont,seBorder,seBorder];
            RequiredClientGlbl.Visible:= False;
            NameClientGErrorP.Visible:= False;

      end else
          begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ClientBonFacVGCbx.StyleElements:= [];
            RequiredClientGlbl.Caption:='Ce Client est bloqu�';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            ClientBonFacVGCbx.SetFocus;
          end;
             end else
              begin
                ClientBonFacVGCbx.Text:= '';
                MainForm.ClientTable.Active:=false;
                MainForm.ClientTable.SQL.Clear;
                MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
                MainForm.ClientTable.Active:=True;
                MainForm.ClientTable.EnableControls;
              end;
    end else
    begin
     ClientBonFacVGCbx.Text:= 'Comptoir';
     CompteBonFacVGCbxEnter(Sender);
     ModePaieBonFacVGCbxDropDown(Sender);

     ModePaieBonFacVGCbx.ItemIndex:=0;
//     CompteBonFacVGCbx.ItemIndex:=0;
     ModePaieBonFacVGCbxClick(Self) ;

     BonFacVGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonFAcVGClientNEWCredit.Caption:=BonFacVGClientOLDCredit.Caption;
     end;

     ModePaieBonFacVGCbxChange(Sender);

end;

procedure TBonFacPGestionF.CompteBonFacVGCbxEnter(Sender: TObject);

Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ORDER BY code_cmpt ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteBonFacVGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteBonFacVGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TBonFacPGestionF.ClientBonFacVGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonFacPGestionF.CompteBonFacVGCbxChange(Sender: TObject);
begin
CompteBonFacVGCbx.AutoDropDown:=True;
end;

procedure TBonFacPGestionF.RemiseTypeBonFacVGCbxChange(Sender: TObject);
begin
RemiseBonFacVGEdt.Text:='';
RemisePerctageBonFacVGEdt.Text:='';
MainForm.Bonp_fac_listTable.Refresh;
end;

procedure TBonFacPGestionF.RemisePerctageBonFacVGEdtChange(Sender: TObject);
var BonFVTotalHT,RemisePerctageBonFacV,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldClientCredit,Timber : Currency;
begin
//------ this is to set the remise on tyhe prix HT ---------//

   //-- use this code to HT TVA calculation
      if RemiseTypeBonFacVGCbx.ItemIndex = 0 then
       begin
        if RemisePerctageBonFacVGEdt.Text<>''  then
        begin
            if RemisePerctageBonFacVGEdt.Text <> '' then
            begin
            RemisePerctageBonFacV:=StrToFloat(StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonFacVTotalHTLbl.Caption<>'' then
            begin
            BonFVTotalHT:=StrToFloat (StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonFacVTotalTVALbl.Caption:= FloatToStrF((TotalTVANet - (( TotalTVANet  * RemisePerctageBonFacV)/(100))),ffNumber,14,2); //TVA
         BonFVTotalHTNewLbl.Caption:= FloatToStrF((BonFVTotalHT - (( BonFVTotalHT  * RemisePerctageBonFacV)/(100))),ffNumber,14,2); //HT
            if BonFVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonFacVTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonFacVTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;


            if TimberBonFacVGEdt.Visible = True then
            begin
            Timber:=StrToFloat(StringReplace(TimberBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
             BonFacVTotalTTCLbl.Caption:=  FloatToStrF((NewHT + NewTVA + Timber),ffNumber,14,2); // TTC
            end else
                begin
                  BonFacVTotalTTCLbl.Caption:=  FloatToStrF((NewHT + NewTVA ),ffNumber,14,2); // TTC
                end;



         BonFacVResteLbl.Caption:= BonFacVTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonFacVGEdt.Focused then
            begin
            RemiseBonFacVGEdt.Text:=FloatToStrF((BonFVTotalHT - NewHT),ffNumber,14,2);
            end;

        BonFVRemiseHTNewLbl.Caption:= FloatToStrF((BonFVTotalHT - NewHT),ffNumber,14,2);

            if BonFacVGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonFacVGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

        BonFacVGClientNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldClientCredit)),ffNumber,14,2);

        end else
          begin
           if BonFacVTotalHTLbl.Caption<>'' then
           begin
           BonFVTotalHT:=StrToFloat (StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonFacVTotalTTCLbl.Caption:=FloatToStrF((BonFVTotalHT + TotalTVANet ),ffNumber,14,2);
            BonFacVResteLbl.Caption:= BonFacVTotalTTCLbl.Caption;
            BonFacVTotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonFacVGEdt.Text:='';
            BonFVRemiseHTNewLbl.Caption:='0';
            BonFVTotalHTNewLbl.Caption:=BonFacVTotalHTLbl.Caption;

            if BonFacVGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonFacVGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonFacVGClientOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonFacVTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
          BonFacVGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
          MainForm.Bonp_fac_listTable.Refresh;
          end;
       end;
       //------ this is to set the remise on the prix TTC only ---------//
       if RemiseTypeBonFacVGCbx.ItemIndex = 1 then
       begin
        if RemisePerctageBonFacVGEdt.Text<>'' then
        begin
             if RemisePerctageBonFacVGEdt.Text <> '' then
            begin
            RemisePerctageBonFacV:=StrToFloat(StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
            end;
             if TotalTVANewLbl.Caption <>'' then
            begin
            NewTVA:=StrToFloat (StringReplace(TotalTVANewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonFacVTotalHTLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFacVTotalHTLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         BonFacVTotalTVALbl.Caption:= FloatToStrF(( NewTVA - ((RemisePerctageBonFacV/100) * NewTVA)),ffNumber,14,2);
         BonFVTotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonFacV/100) * NewHT)),ffNumber,14,2);
         BonFacVTotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonFacV/100) * NewHT))+( NewTVA - ((RemisePerctageBonFacV/100) * NewTVA))),ffNumber,14,2);
            if BonFVTotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonFVTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonFacVTotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonFacVTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonFacVGEdt.Focused then
         begin
         RemiseBonFacVGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


         BonFacVResteLbl.Caption:=BonFacVTotalTTCLbl.Caption;

           if BonFacVTotalHTLbl.Caption <>'' then
            begin
            BonFVTotalHT:=StrToFloat (StringReplace(BonFacVTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonFVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonFVRemiseHTNewLbl.Caption:= FloatToStrF((BonFVTotalHT - NewHT),ffNumber,14,2);

            if BonFacVGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonFacVGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

        BonFacVGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonFacVGEdt.Text:='';
             BonFVRemiseHTNewLbl.Caption:='0';
             BonFacVTotalTTCLbl.Caption := BonFVTotalTTCNewLbl.Caption;
             BonFacVResteLbl.Caption:=BonFacVTotalTTCLbl.Caption;
             BonFacVTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonFVTotalHTNewLbl.Caption:=BonFacVTotalHTLbl.Caption;
             BonFacVGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);

              if BonFacVGClientOLDCredit.Caption <>'' then
              begin
              OldClientCredit:=StrToFloat (StringReplace(BonFacVGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonFacVGClientOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonFacVTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
             BonFacVGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
             MainForm.Bonp_fac_listTable.Refresh;
            end;
      end;

end;

procedure TBonFacPGestionF.RemisePerctageBonFacVGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonFacVGEdt.Text := StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonFacvGEdt.SelectAll;
end;

procedure TBonFacPGestionF.RemisePerctageBonFacVGEdtEnter(Sender: TObject);
begin
MainForm.Bonp_fac_listTable.Refresh;
 RemisePerctageBonFacVGEdtChange(Sender);
end;

procedure TBonFacPGestionF.RemisePerctageBonFacVGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;
end;

procedure TBonFacPGestionF.RemiseBonFacVGEdtChange(Sender: TObject);
var RemiseBonFacVG,BonFVTotalHT,BonFVTotalTVA,OLDTTC : Currency;
begin
if RemiseBonFacVGEdt.Focused then
 begin
      if RemiseBonFacVGEdt.Text<>'' then
     begin
     RemiseBonFacVG:=StrToFloat (StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
    // MainForm.Bonp_fac_listTable.Refresh;
     end;
     if (RemiseBonFacVGEdt.Text<>'') AND (RemiseBonFacVG<>0) then
    begin
       if RemiseTypeBonFacVGCbx.ItemIndex = 0 then
       begin
         if BonFacVTotalHTLbl.Caption<>'' then
         begin
         BonFVTotalHT:=StrToFloat (StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonFacVTotalTVALbl.Caption<>'' then
         begin
          BonFVTotalTVA:=StrToFloat (StringReplace(BonFacVTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonFacVGEdt.Text := FloatToStrF(((RemiseBonFacVG / BonFVTotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonFacVGCbx.ItemIndex = 1 then
        begin
         if BonFVTotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonFVTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonFacVGEdt.Text := FloatToStrF(((RemiseBonFacVG / OLDTTC) * 100),ffNumber,14,2) ;
        end;
    end else
        begin
          BonFVRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonFacVGEdt.Text:='';
          BonFVTotalHTNewLbl.Caption:=BonFacVTotalHTLbl.Caption;
          MainForm.Bonp_fac_listTable.Refresh;
        end;
 end;
end;

procedure TBonFacPGestionF.RemiseBonFacVGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonFacVGEdt.Text := StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonFacVGEdt.SelectAll;
end;

procedure TBonFacPGestionF.RemiseBonFacVGEdtEnter(Sender: TObject);
begin
MainForm.Bonp_fac_listTable.Refresh;
 RemisePerctageBonFacVGEdtChange(Sender);
end;

procedure TBonFacPGestionF.RemiseBonFacVGEdtExit(Sender: TObject);
var
RemiseBonFacVG: Currency;
begin
  if RemiseBonFacVGEdt.Text<>'' then
  begin
  RemiseBonFacVG:=StrToFloat(StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonFacVGEdt.Text := FloatToStrF(RemiseBonFacVG,ffNumber,14,2);
  end;
end;

procedure TBonFacPGestionF.RemiseBonFacVGEdtKeyPress(Sender: TObject;
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

procedure TBonFacPGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if ValiderBVFacBonFacVGImg.ImageIndex = 1 then
  begin

    MainForm.Bonp_facTable.Refresh;

    MainForm.Bonp_fac_listTable.Refresh;
  end;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
//          MainForm.Mode_paiementTable.Active:=True;
//          MainForm.Mode_paiementTable.EnableControls;
//
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
//          MainForm.CompteTable.Active:=True;
//          MainForm.CompteTable.EnableControls;


          MainForm.Bonp_fac_listTable.Active:=false;
          MainForm.Bonp_fac_listTable.SQL.Clear;
          MainForm.Bonp_fac_listTable.SQL.Text:='Select * FROM bonp_fac_list' ;
          MainForm.Bonp_fac_listTable.Active:=True;
          MainForm.Bonp_fac_listTable.EnableControls;

  MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';

//  FormatSettings.DecimalSeparator := '.';
end;

procedure TBonFacPGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);

  var CodeFV : Integer;
begin
 CodeFV := MainForm.Bonp_facTable.FieldByName('code_bpfac').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonFacVGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonFacVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous pla�t entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonFacVGCbx.SetFocus;
      CanClose := false;
    end else
        begin
         if RequiredClientGlbl.Visible <> True then
         begin

         if  (MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean = false)  then
         begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

//          MainForm.Mode_paiementTable.DisableControls;
//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacVGCbx.Text )+')'  ;
//          MainForm.Mode_paiementTable.Active:=True;
//
//          MainForm.CompteTable.DisableControls;
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonFacVGCbx.Text )+')'  ;
//          MainForm.CompteTable.Active:=True;


          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Edit;
          MainForm.Bonp_facTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
//          MainForm.Bonp_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bonp_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonp_facTable.FieldValues['obser_bpfac']:= ObserBonFacVGMem.Text;
//          MainForm.Bonp_facTable.FieldValues['num_cheque_bvfac']:= NChequeBonFacVGCbx.Text;
          MainForm.Bonp_facTable.FieldByName('montht_bpfac').AsCurrency:= StrToCurr(StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacVGEdt.Text<>'' then
          begin
             MainForm.Bonp_facTable.FieldByName('remise_bpfac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonp_facTable.FieldByName('remise_bpfac').AsCurrency:=0;
                end;

          MainForm.Bonp_facTable.FieldByName('montver_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonp_facTable.FieldByName('montttc_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacVGEdt.Visible = True then
          begin
           MainForm.Bonp_facTable.FieldByName('timber_bpfac').AsCurrency:=StrToCurr(StringReplace(TimberBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end;

            MainForm.Bonp_facTable.Post;
            MainForm.Bonp_facTable.EnableControls;

            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;

//            MainForm.Mode_paiementTable.Active:=false;
//            MainForm.Mode_paiementTable.SQL.Clear;
//            MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
//            MainForm.Mode_paiementTable.Active:=True;
//            MainForm.Mode_paiementTable.EnableControls;
//
//            MainForm.CompteTable.Active:=false;
//            MainForm.CompteTable.SQL.Clear;
//            MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
//            MainForm.CompteTable.Active:=True;
//            MainForm.CompteTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bpfac = ' + IntToStr(codeFV));
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bpfac = ' + IntToStr(codeFV));
//            MainForm.RegclientTable.Refresh ;
//            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;


           end else
               begin

                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  ClientBonFacVGCbx.StyleElements:= [];
                  RequiredClientGlbl.Caption:= 'Ce Client est bloqu�' ;
                  RequiredClientGlbl.Visible:= True;
                  NameClientGErrorP.Visible:= True;
                  ClientBonFacVGCbx.SetFocus;
                  CanClose:= False;

               end;

        end;
  end  else
  begin

         if  (MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean = false)  then
         begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

//          MainForm.Mode_paiementTable.DisableControls;
//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacVGCbx.Text )+')'  ;
//          MainForm.Mode_paiementTable.Active:=True;
//
//          MainForm.CompteTable.DisableControls;
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonFacVGCbx.Text )+')'  ;
//          MainForm.CompteTable.Active:=True;

          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Edit;
          MainForm.Bonp_facTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
//          MainForm.Bonp_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bonp_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonp_facTable.FieldValues['obser_bpfac']:= ObserBonFacVGMem.Text;
//          MainForm.Bonp_facTable.FieldValues['num_cheque_bvfac']:= NChequeBonFacVGCbx.Text;
          MainForm.Bonp_facTable.FieldByName('montht_bpfac').AsCurrency:= StrToCurr(StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacVGEdt.Text<>'' then
          begin
             MainForm.Bonp_facTable.FieldByName('remise_bpfac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonp_facTable.FieldByName('remise_bpfac').AsCurrency:=0;
                end;

          MainForm.Bonp_facTable.FieldByName('montver_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonp_facTable.FieldByName('montttc_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacVGEdt.Visible = True then
          begin
           MainForm.Bonp_facTable.FieldByName('timber_bpfac').AsCurrency:=StrToCurr(StringReplace(TimberBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end;

            MainForm.Bonp_facTable.Post;
            MainForm.Bonp_facTable.EnableControls;

            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;

//            MainForm.Mode_paiementTable.Active:=false;
//            MainForm.Mode_paiementTable.SQL.Clear;
//            MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
//            MainForm.Mode_paiementTable.Active:=True;
//            MainForm.Mode_paiementTable.EnableControls;
//
//            MainForm.CompteTable.Active:=false;
//            MainForm.CompteTable.SQL.Clear;
//            MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
//            MainForm.CompteTable.Active:=True;
//            MainForm.CompteTable.EnableControls;

            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bpfac = ' + IntToStr(codeFV));
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bpfac = ' + IntToStr(codeFV));
//            MainForm.RegclientTable.Refresh ;
//            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;

     CanClose:= True;
  end;
end;

procedure TBonFacPGestionF.ValiderBVFacBonFacVGBtnClick(Sender: TObject);
var CodeOCB,CodeRF : Integer;
begin
        if ClientBonFacVGCbx.Text <> '' then
    begin
             if RequiredClientGlbl.Visible <> True then
        begin

//   if ModePaieBonFacVGCbx.Text <> '' then
//    begin

//           ClientBonFacVGCbxChange(Sender);
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;

        if (MainForm.ClientTable.IsEmpty) then
        begin
         ClientBonFacVGCbx.Text := '';
         BonFacVGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
         BonFacVGClientNEWCredit.Caption:=BonFacVGClientOLDCredit.Caption;
               sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ClientBonFacVGCbx.StyleElements:= [];
        RequiredClientGlbl.Visible:= True;
        NameClientGErrorP.Visible:= True;

        ClientBonFacVGCbx.SetFocus;
         exit;
        end;

      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;

      //----------------------------------------------------------------------------

//       MainForm.Mode_paiementTable.DisableControls;
//      MainForm.Mode_paiementTable.Active:=false;
//      MainForm.Mode_paiementTable.SQL.Clear;
//      MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacVGCbx.Text )+')'  ;
//      MainForm.Mode_paiementTable.Active:=True;
//
//        if (MainForm.Mode_paiementTable.IsEmpty) then
//        begin
//         ModePaieBonFacVGCbx.Text := '';
//         sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
//        ModePaieBonFacVGCbx.StyleElements:= [];
//        ModepPaiGErrorP.Visible:= True;
//
//        ModePaieBonFacVGCbx.SetFocus;
//         exit;
//        end;
//
//           MainForm.Mode_paiementTable.Active:=false;
//      MainForm.Mode_paiementTable.SQL.Clear;
//      MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
//      MainForm.Mode_paiementTable.Active:=True;
//      MainForm.Mode_paiementTable.EnableControls;



     BonFacVRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2);
     BonFacVResteLbl.Caption := FloatToStrF(0,ffNumber,14,2);

       FSplashVersement.DisableBonFacP;

       Timer1.Enabled:=False;
       Label20.Visible:=False;

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
           Mainform.Sqlquery.Sql.Text:='SELECT code_bpfacl,code_p,  qut_p, cond_p , prixvd_p,tva_p FROM bonp_fac_list WHERE code_bpfac =  '
                                                 + IntToStr (MainForm.Bonp_facTable.FieldValues['code_bpfac'])
                                                 + 'GROUP BY code_bpfacl, code_p, qut_p, cond_p,prixvd_p,tva_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
//            MainForm.ProduitTable.Active:=False;
//            MainForm.ProduitTable.SQL.Clear;
//            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
//            MainForm.ProduitTable.Active:=True;
//            MainForm.ProduitTable.Edit;
//            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
//                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
//            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
//            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
          MainForm.Bonp_facTable.Refresh;
          DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the facture de vente fileds
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(ClientBonFacVGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

//          MainForm.Mode_paiementTable.DisableControls;
//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ModePaieBonFacVGCbx.Text )+')'  ;
//          MainForm.Mode_paiementTable.Active:=True;
//
//          MainForm.CompteTable.DisableControls;
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(CompteBonFacVGCbx.Text )+')'  ;
//          MainForm.CompteTable.Active:=True;

          MainForm.Bonp_facTable.Edit;
          MainForm.Bonp_facTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonp_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          if Tag = 0 then
          begin
          MainForm.Bonp_facTable.FieldByName('date_bpfac').AsDateTime:= DateBonFacVGD.DateTime;
          MainForm.Bonp_facTable.FieldValues['time_bpfac']:=TimeOf(Now);
          end;
//          MainForm.Bonp_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bonp_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonp_facTable.FieldValues['obser_bpfac']:= ObserBonFacVGMem.Text;
//          MainForm.Bonp_facTable.FieldValues['num_cheque_bvfac']:= NChequeBonFacVGCbx.Text;
          MainForm.Bonp_facTable.FieldByName('montht_bpfac').AsCurrency:= StrToCurr(StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacVGEdt.Visible = True then
          begin
          MainForm.Bonp_facTable.FieldByName('timber_bpfac').AsCurrency:= StrToCurr(StringReplace(TimberBonFacVGEdt.Text, #32, '', [rfReplaceAll]));

          end;

          if RemiseBonFAcVGEdt.Text<>'' then
          begin
          MainForm.Bonp_facTable.FieldByName('remise_bpfac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonp_facTable.FieldByName('remise_bpfac').AsCurrency:=0;
                   end;

          MainForm.Bonp_facTable.FieldByName('montver_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonp_facTable.FieldByName('montttc_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonp_facTable.FieldByName('marge_bpfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalMargeLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean:= True;

//          if (LowerCase(ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonFacVGCbx.Text)='espece') then
//          begin
//           MainForm.Bonp_facTable.FieldValues['code_mdpai']:=1 ;
//          end;
//           if (LowerCase(ModePaieBonFacVGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonFacVGCbx.Text)='cheque') then
//          begin
//           MainForm.Bonp_facTable.FieldValues['code_mdpai']:=2 ;
//          end;
//          if (LowerCase(ModePaieBonFAcVGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonFacVGCbx.Text)='a terme' )
//             OR (LowerCase(ModePaieBonFacVGCbx.Text)='� terme' ) then
//          begin
//           MainForm.Bonp_facTable.FieldValues['code_mdpai']:=3 ;
//          end;
//          if (LowerCase(ModePaieBonFacVGCbx.Text)='virement' ) then
//          begin
//           MainForm.Bonp_facTable.FieldValues['code_mdpai']:=4 ;
//          end;

          MainForm.Bonp_facTable.Post;

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------



              //-----------------------------------------------------------------------------------------------------------------------------------------------------------

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;


          //--- this is for adding the money to the caisse----




//          MainForm.Mode_paiementTable.Active:=false;
//          MainForm.Mode_paiementTable.SQL.Clear;
//          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
//          MainForm.Mode_paiementTable.Active:=True;
//          MainForm.Mode_paiementTable.EnableControls;
//
//          MainForm.CompteTable.Active:=false;
//          MainForm.CompteTable.SQL.Clear;
//          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
//          MainForm.CompteTable.Active:=True;
//          MainForm.CompteTable.EnableControls;
       end;




//       end else
//           begin
//               sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
//            ModePaieBonFacVGCbx.StyleElements:= [];
////            RequiredFourGlbl.Visible:= True;
//            ModepPaiGErrorP.Visible:= True;
//            ModePaieBonFacVGCbx.SetFocus;
//           end;



          end else
                begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  ClientBonFacVGCbx.StyleElements:= [];
                  RequiredClientGlbl.Caption:= 'Ce Client est bloqu�' ;
                  RequiredClientGlbl.Visible:= True;
                  NameClientGErrorP.Visible:= True;
                  ClientBonFacVGCbx.SetFocus;
                end;



  end else
        begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          ClientBonFacVGCbx.StyleElements:= [];
          RequiredClientGlbl.Caption:= 'S''il vous pla�t entrer le nom de le Client' ;
          RequiredClientGlbl.Visible:= True;
          NameClientGErrorP.Visible:= True;

          ClientBonFacVGCbx.SetFocus;
        end;

end;

procedure TBonFacPGestionF.ModePaieBonFacVGCbxChange(Sender: TObject);
begin
//  if (LowerCase(ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonFacVGCbx.Text)='espece') then
//  begin
//  TimberPerctageBonFacVGEdt.Visible:= True;
//  TimberBonFacVGEdt.Visible:= True;
//  TimberPerctageBonFacVGLbl.Visible:= True;
//  TimberBonFacVGlbl.Visible:= True;
//  end else
//      begin
//        TimberPerctageBonFacVGEdt.Visible:= False;
//        TimberBonFacVGEdt.Visible:= False;
//        TimberPerctageBonFacVGLbl.Visible:= False;
//        TimberBonFacVGlbl.Visible:= False;
//      end;
//
//    MainForm.Bonp_fac_listTable.Refresh;
 end;

procedure TBonFacPGestionF.AddClientBonFacVGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 7 ;
ClientBonFacVGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredClientGlbl.Visible:= False;
NameClientGErrorP.Visible:= False;
end;

procedure TBonFacPGestionF.AddModePaieBonFacVGBtnClick(Sender: TObject);
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
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 18 ;
end;

procedure TBonFacPGestionF.AddCompteBonFacVGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(BonFacPGestionF);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 3 ;
end;

procedure TBonFacPGestionF.FormCreate(Sender: TObject);
begin
MainForm.Bonp_fac_listTable.Active:=True;
if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;


procedure TBonFacPGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonFacPGestionF.GettingData;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,
  TauxTVA17,TauxTVA7,TauxTVA19,MontantTVA17,MontantTVA7,MontantTVA19,RC,NArt,NIF,NIS,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Taux17,Taux7,Montant17,Montant7,Montant19,RemisePerctageBonFacV : Currency;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonFacPPListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonFacPPListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonFacPPListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonFacPPListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonFacPPListfrxRprt.FindObject('Logo') as TfrxPictureView;
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

  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonFacPPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonFacPPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonFacVGEdt.Caption;

    DateRX:= BonFacPPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonFacVGD.Date);

      NameRX:= BonFacPPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonFacVGCbx.Text;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client WHERE code_c ='+ IntToStr(MainForm.Bonp_facTable.FieldByName('code_c').AsInteger);
    MainForm.ClientTable.Active:=True;


    AdrRX:= BonFacPPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.ClientTable.FieldByName('adr_c').AsString;

    VilleRX:= BonFacPPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.ClientTable.FieldByName('ville_c').AsString;

    WilayaRX:= BonFacPPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.ClientTable.FieldByName('willaya_c').AsString;

//      RC:= BonFacPPListfrxRprt.FindObject('RC') as TfrxMemoView;
//  RC.Text:= MainForm.ClientTable.FieldByName('rc_c').AsString;
//
//    NArt:= BonFacPPListfrxRprt.FindObject('NArt') as TfrxMemoView;
//  NArt.Text:= MainForm.ClientTable.FieldByName('nart_c').AsString;
//
//    NIF:= BonFacPPListfrxRprt.FindObject('NIF') as TfrxMemoView;
//  NIF.Text:=  MainForm.ClientTable.FieldByName('nif_c').AsString;
//
//      NIS:= BonFacPPListfrxRprt.FindObject('NIS') as TfrxMemoView;
//  NIS.Text:=  MainForm.ClientTable.FieldByName('nis_c').AsString;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
    MainForm.ClientTable.Active:=True;


         begin
      MainForm.Bonp_fac_listTable.DisableControls;

        begin
           MainForm.Bonp_fac_listTable.Active:=false;
           MainForm.Bonp_fac_listTable.SQL.Clear;
           MainForm.Bonp_fac_listTable.SQL.Text:='Select * FROM bonp_fac_list WHERE tva_p = 17' ;
           MainForm.Bonp_fac_listTable.Active:=True;
            if NOT (MainForm.Bonp_fac_listTable.IsEmpty) then
           begin

            MainForm.Bonp_fac_listTable.First;

            while not MainForm.Bonp_fac_listTable.Eof do
            begin
              Montant17:= Montant17 + MainForm.Bonp_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bonp_fac_listTable.Next;
            end;

             TauxTVA17:= BonFacPPListfrxRprt.FindObject('TauxTVA17') as TfrxMemoView;
             TauxTVA17.Text:=  '17 %';
             TauxTVA17.Visible:=True;

             MontantTVA17:= BonFacPPListfrxRprt.FindObject('MontantTVA17') as TfrxMemoView;
                         if RemisePerctageBonFacVGEdt.Text <> '' then
            begin
            RemisePerctageBonFacV:=StrToFloat(StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacVGEdt.Text = '') OR (RemisePerctageBonFacV = 0) then
             begin
             MontantTVA17.Text:= floatToStrF(Montant17,ffNumber,14,2);
             end else
                 begin
                   MontantTVA17.Text:=   floatToStrF((Montant17 - (Montant17*RemisePerctageBonFacV)/100) ,ffNumber,14,2);
                 end;

                 MontantTVA17.Visible:=True;
            end;
        end;
        begin
           MainForm.Bonp_fac_listTable.Active:=false;
           MainForm.Bonp_fac_listTable.SQL.Clear;
           MainForm.Bonp_fac_listTable.SQL.Text:='Select * FROM bonp_fac_list WHERE tva_p = 7' ;
           MainForm.Bonp_fac_listTable.Active:=True;
          if NOT (MainForm.Bonp_fac_listTable.IsEmpty) then
           begin

            MainForm.Bonp_fac_listTable.First;

            while not MainForm.Bonp_fac_listTable.Eof do
            begin
              Montant7:= Montant7 + MainForm.Bonp_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bonp_fac_listTable.Next;
            end;
             TauxTVA7:= BonFacPPListfrxRprt.FindObject('TauxTVA7') as TfrxMemoView;
             TauxTVA7.Text:=  '7 %';
             TauxTVA7.Visible:=True;

             MontantTVA7:= BonFacPPListfrxRprt.FindObject('MontantTVA7') as TfrxMemoView;

            if RemisePerctageBonFacVGEdt.Text <> '' then
            begin
            RemisePerctageBonFacV:=StrToFloat(StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacVGEdt.Text = '') OR (RemisePerctageBonFacV = 0) then
             begin
             MontantTVA7.Text:= floatToStrF(Montant7,ffNumber,14,2);
             end else
                 begin
                   MontantTVA7.Text:=   floatToStrF((Montant7 - (Montant7*RemisePerctageBonFacV)/100) ,ffNumber,14,2);
                 end;

                 MontantTVA7.Visible:=True;
            end;
        end;

        begin
           MainForm.Bonp_fac_listTable.Active:=false;
           MainForm.Bonp_fac_listTable.SQL.Clear;
           MainForm.Bonp_fac_listTable.SQL.Text:='Select * FROM bonp_fac_list WHERE tva_p = 19' ;
           MainForm.Bonp_fac_listTable.Active:=True;
          if NOT (MainForm.Bonp_fac_listTable.IsEmpty) then
           begin

            MainForm.Bonp_fac_listTable.First;

            while not MainForm.Bonp_fac_listTable.Eof do
            begin
              Montant19:= Montant19 + MainForm.Bonp_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bonp_fac_listTable.Next;
            end;
             TauxTVA19:= BonFacPPListfrxRprt.FindObject('TauxTVA19') as TfrxMemoView;
             TauxTVA19.Text:=  '19 %';
             TauxTVA19.Visible:=True;

             MontantTVA19:= BonFacPPListfrxRprt.FindObject('MontantTVA19') as TfrxMemoView;

            if RemisePerctageBonFacVGEdt.Text <> '' then
            begin
            RemisePerctageBonFacV:=StrToFloat(StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacVGEdt.Text = '') OR (RemisePerctageBonFacV = 0) then
             begin
             MontantTVA19.Text:= floatToStrF(Montant19,ffNumber,14,2);
             end else
                 begin
                   MontantTVA19.Text:=   floatToStrF((Montant19 - (Montant19*RemisePerctageBonFacV)/100) ,ffNumber,14,2);
                 end;

                 MontantTVA19.Visible:=True;
            end;
        end;
             MainForm.Bonp_fac_listTable.Active:=false;
             MainForm.Bonp_fac_listTable.SQL.Clear;
             MainForm.Bonp_fac_listTable.SQL.Text:='Select * FROM bonp_fac_list ORDER BY code_bpfacl ' ;
             MainForm.Bonp_fac_listTable.Active:=True;
         MainForm.Bonp_fac_listTable.EnableControls;
     end;


    MPRX:= BonFacPPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonFacVGCbx.Text;

    NCHeqRX:= BonFacPPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonFacVGCbx.Text;


            OLDCredit:= BonFacPPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonFacVGClientOLDCredit.Caption;


      NEWCredit:= BonFacPPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonFacVGClientNEWCredit.Caption;

 end;

procedure TBonFacPGestionF.sSpeedButton1Click(Sender: TObject);
begin
   GettingData;
MainForm.Bonp_fac_listTable.DisableControls;
BonFacPPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Facture Proforma N� '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonp_facTable.FieldByName('code_bpfac').AsInteger)]);
BonFacPPListfrxRprt.Export(frxXLSExport1);
MainForm.Bonp_fac_listTable.EnableControls;
end;

procedure TBonFacPGestionF.sSpeedButton3Click(Sender: TObject);
begin
 GettingData;
MainForm.Bonp_fac_listTable.DisableControls;
BonFacPPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Facture Proforma N� '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonp_facTable.FieldByName('code_bpfac').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonFacPPListfrxRprt.Export(frxPDFExport1);
MainForm.Bonp_fac_listTable.EnableControls;
end;

procedure TBonFacPGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonFacPGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
Refresh_PreservePosition;
end;

end.



