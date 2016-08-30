unit UBonFacVGestion;

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
  AdvToolBtn, frxClass, frxDBSet, frxExportXLS, frxExportPDF;

type
  TBonFacVGestionF = class(TForm)
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
    Panel6: TPanel;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonFacVGD: TDateTimePicker;
    ClientBonFacVGCbx: TComboBox;
    Panel12: TPanel;
    ProduitBonFacVGCbx: TComboBox;
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
    frxBonFacVDT: TfrxDBDataset;
    frxBonFacVPListDB: TfrxDBDataset;
    BonFacVPListfrxRprt: TfrxReport;
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
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
    procedure EnableBonFacV;
  end;

var
  BonFacVGestionF: TBonFacVGestionF;

implementation

uses StringTool,
  UMainF, USplashVersement, UBonFacV, UFastProduitsList, UProduitsList,
  USplashAddUnite, UClientsList, UClientGestion, USplashAddCompte;

{$R *.dfm}
procedure TBonFacVGestionF.EnableBonFacV;
begin
      BonFacVGestionF.AddBVFacBonFacVGBtn.Enabled:= False;
     BonFacVGestionF.AddBVFacBonFacVGBtn.ImageIndex:=28;// 4 For D
     BonFacVGestionF.EditBVFacBonFacVGBtn.Enabled:= False;
     BonFacVGestionF.EditBVFacBonFacVGBtn.ImageIndex:=29;// 5 for D
     BonFacVGestionF.ValiderBVFacBonFacVGBtn.Enabled:= True;
     BonFacVGestionF.ValiderBVFacBonFacVGBtn.ImageIndex:=12;//30 for D

          BonFacVGestionF.DateBonFacVGD.Enabled:= True;
          BonFacVGestionF.ObserBonFacVGMem.Enabled:= True;
          BonFacVGestionF.ClientBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.AddClientBonFacVGBtn.Enabled:= True ; //
          BonFacVGestionF.AddClientBonFacVGBtn.ImageIndex:=10;//35 fo D
          BonFacVGestionF.ModePaieBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.AddModePaieBonFacVGBtn.Enabled:= True ;
          BonFacVGestionF.AddModePaieBonFacVGBtn.ImageIndex:=10;// 35 fo D
          BonFacVGestionF.CompteBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.AddCompteBonFacVGBtn.Enabled:= True ;
          BonFacVGestionF.AddCompteBonFacVGBtn.ImageIndex:=10;// 35 fo D
          BonFacVGestionF.NChequeBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.ProduitBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.EnterAddProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.EnterAddProduitBonFacVGBtn.ImageIndex:=15;// 40 fo D
          BonFacVGestionF.ListAddProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.ListAddProduitBonFacVGBtn.ImageIndex:=13;//41 fo D
          BonFacVGestionF.NewAddProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.NewAddProduitBonFacVGBtn.ImageIndex:=4;//28 fo D
          BonFacVGestionF.DeleteProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.DeleteProduitBonFacVGBtn.ImageIndex:=14;//36 fo D
          BonFacVGestionF.ClearProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.ClearProduitBonFacVGBtn.ImageIndex:=16;//39 fo A
          BonFacVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
          BonFacVGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
          BonFacVGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
          BonFacVGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
          BonFacVGestionF.ProduitsListDBGridEh.Options:=
          BonFacVGestionF.ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
          BonFacVGestionF.ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
          BonFacVGestionF.ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
          BonFacVGestionF.ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
          BonFacVGestionF.RemisePerctageBonFacVGEdt.Enabled:=True;//False for D
          BonFacVGestionF.RemiseBonFacVGEdt.Enabled:=True;//False for D
          BonFacVGestionF.RemiseTypeBonFacVGCbx.Enabled:= True;//False for D;

          BonFacVGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
          BonFacVGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
          BonFacVGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

          BonFacVGestionF.ValiderBVFacBonFacVGImg.ImageIndex:=1;//0 fo D
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Color:=$007374FF;// $004AC38B for D
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Font.Color:= clWhite;// clBlack for D
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Caption:='Ce Facture n''est pas encore Valid�';// 'Ce facture est Valid' for D
end;

//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin
   ds := TDBGridEh(BonFacVGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonFacVGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
     EnableControls;
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

procedure TBonFacVGestionF.FormShow(Sender: TObject);
var CodeFV: Integer;
begin
// Application.UpdateFormatSettings := false;
//  FormatSettings.DecimalSeparator := ',';
//  FormatSettings.ThousandSeparator := ' ';
//  FormatSettings.CurrencyDecimals := 2;
//  FormatSettings.DateSeparator:= '/';
// use this tage when i click AddBVFacBonRecGBtn bon button
 if BonFacVGestionF.tag=0 then
 begin
//-- use this code to make the montants look lake money values-------//
    BonFacVGestionF.BonFacVTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonFacVTotalHTLbl.Caption),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonFacVTotalTVALbl.Caption),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonFacVTotalTTCLbl.Caption),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVResteLbl.Caption :=         FloatToStrF(StrToFloat(BonFacVResteLbl.Caption),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonFacVRegleLbl.Caption),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(BonFacVGClientOLDCredit.Caption),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(BonFacVGClientNEWCredit.Caption),ffNumber,14,2) ;
 CodeFV:= MainForm.Bonv_facTable.FieldValues['code_bvfac']   ;
 BonFacVGestionF.NumBonFacVGEdt.Caption := 'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeFV]);
  if MainForm.Bonv_facTable.FieldValues['code_c'] <> null then
 begin
   ClientBonFacVGCbx.Text:= MainForm.Bonv_facTable.FieldValues['clientbvfac'];
   ProduitBonFacVGCbx.SetFocus;
 end else
     begin
       BonFacVGestionF.ClientBonFacVGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if BonFacVGestionF.Tag = 1 then
 begin
     BonFacVGestionF.BonFacVGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonFacVGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonFacVGestionF.BonFacVGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonFacVGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
  end;

end;

procedure TBonFacVGestionF.sSpeedButton7Click(Sender: TObject);
begin
  MainForm.Bonv_facTable.First;
  MainForm.Bonv_facTable.Refresh;
  MainForm.Bonv_fac_listTable.Refresh;

  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = False then
   begin
     EnableBonFacV;
    end;


  if (MainForm.Bonv_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['clientbvfac'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;
end;

procedure TBonFacVGestionF.sSpeedButton6Click(Sender: TObject);
begin
  MainForm.Bonv_facTable.Prior;
  MainForm.Bonv_facTable.Refresh;
  MainForm.Bonv_fac_listTable.Refresh;

  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = False then
   begin
     EnableBonFacV;
    end;


  if (MainForm.Bonv_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['clientbvfac'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;
end;

procedure TBonFacVGestionF.sSpeedButton5Click(Sender: TObject);
begin
  MainForm.Bonv_facTable.Next;
  MainForm.Bonv_facTable.Refresh;
  MainForm.Bonv_fac_listTable.Refresh;

  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = False then
   begin
     EnableBonFacV;
    end;


  if (MainForm.Bonv_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['clientbvfac'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;
end;

procedure TBonFacVGestionF.sSpeedButton4Click(Sender: TObject);
begin
  MainForm.Bonv_facTable.Last;
  MainForm.Bonv_facTable.Refresh;
  MainForm.Bonv_fac_listTable.Refresh;

  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = True then
  begin
       FSplashVersement.DisableBonFacV;
  end;
  if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] = False then
   begin
     EnableBonFacV;
    end;


  if (MainForm.Bonv_facTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_c']<> null) then
  begin
  ClientBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['clientbvfac'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacVGCbx.Text:=MainForm.Bonv_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacVResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;
end;

procedure TBonFacVGestionF.AddBVFacBonFacVGBtnClick(Sender: TObject);
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
   MainForm.Bonv_FacTable.Refresh;
   MainForm.Bonv_Fac_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonFacVPListDataS.DataSet.Refresh;
   BonFacVF.BonFacVListDataS.DataSet.Refresh;
   Refresh;

        ModePaieBonFacVGCbx.Refresh;
     CompteBonFacVGCbx.Refresh;

  begin

     BonFacVGestionF.AddBVFacBonFacVGBtn.Enabled:= False;
     BonFacVGestionF.AddBVFacBonFacVGBtn.ImageIndex:=28;// 4 For D
     BonFacVGestionF.EditBVFacBonFacVGBtn.Enabled:= False;
     BonFacVGestionF.EditBVFacBonFacVGBtn.ImageIndex:=29;// 5 for D
     BonFacVGestionF.ValiderBVFacBonFacVGBtn.Enabled:= True;
     BonFacVGestionF.ValiderBVFacBonFacVGBtn.ImageIndex:=12;//30 for D

          BonFacVGestionF.DateBonFacVGD.Enabled:= True;
          BonFacVGestionF.ObserBonFacVGMem.Enabled:= True;
          BonFacVGestionF.ClientBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.AddClientBonFacVGBtn.ImageIndex:=10;//35 fo D
          BonFacVGestionF.ModePaieBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.AddModePaieBonFacVGBtn.ImageIndex:=10;// 35 fo D
          BonFacVGestionF.CompteBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.AddCompteBonFacVGBtn.ImageIndex:=10;// 35 fo D
          BonFacVGestionF.NChequeBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.ProduitBonFacVGCbx.Enabled:= True;
          BonFacVGestionF.EnterAddProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.EnterAddProduitBonFacVGBtn.ImageIndex:=15;// 40 fo D
          BonFacVGestionF.ListAddProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.ListAddProduitBonFacVGBtn.ImageIndex:=13;//41 fo D
          BonFacVGestionF.NewAddProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.NewAddProduitBonFacVGBtn.ImageIndex:=4;//28 fo D
          BonFacVGestionF.DeleteProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.DeleteProduitBonFacVGBtn.ImageIndex:=14;//36 fo D
          BonFacVGestionF.ClearProduitBonFacVGBtn.Enabled:= True;
          BonFacVGestionF.ClearProduitBonFacVGBtn.ImageIndex:=16;//39 fo A
          BonFacVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
          BonFacVGestionF.ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
          BonFacVGestionF.ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
          BonFacVGestionF.ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
          BonFacVGestionF.ProduitsListDBGridEh.Options:=
          BonFacVGestionF.ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
          BonFacVGestionF.ProduitsListDBGridEh.Color:= clWhite;// $00EFE9E8 for D
          BonFacVGestionF.ProduitsListDBGridEh.FixedColor:=clwindow;//$00EFE9E8 for D
          BonFacVGestionF.ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
          BonFacVGestionF.RemisePerctageBonFacVGEdt.Enabled:=True;//False for D
          BonFacVGestionF.RemiseBonFacVGEdt.Enabled:=True;//False for D
          BonFacVGestionF.RemiseTypeBonFacVGCbx.Enabled:= True;//False for D;

          BonFacVGestionF.ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
          BonFacVGestionF.ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
          BonFacVGestionF.ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

          BonFacVGestionF.ValiderBVFacBonFacVGImg.ImageIndex:=1;//0 fo D
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Color:=$007374FF;// $004AC38B for D
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Font.Color:= clWhite;// clBlack for D
          BonFacVGestionF.ValiderBVFacBonFacVGLbl.Caption:='Ce facture n''est pas encore Valid�';// 'Ce bon est Valid' for D
  end;


 codeFV:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bonv_facTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_facTable.Insert;
        MainForm.Bonv_facTable.FieldValues['code_bvfac']:=1;
        MainForm.Bonv_facTable.FieldValues['num_bvfac']:= 'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_facTable.FieldValues['date_bvfac']:= DateOf(Today);
        MainForm.Bonv_facTable.FieldValues['time_bvfac']:=TimeOf(Now);
        MainForm.Bonv_facTable.Post;
        codeFV := MainForm.Bonv_facTable.FieldValues['code_bvfac'];
      end else
          begin
            MainForm.Bonv_facTable.Last;
            codeFV := MainForm.Bonv_facTable.FieldValues['code_bvfac'];
            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(codeFV));
            MainForm.Bonv_fac_listTable.Active:=True;

           if MainForm.Bonv_fac_listTable.RecordCount <= 0 then
           begin
           codeFV := MainForm.Bonv_facTable.FieldValues['code_bvfac'];
           end else
           begin

           MainForm.Bonv_facTable.Insert;
           MainForm.Bonv_facTable.FieldValues['code_bvfac']:= codeFV + 1;
           MainForm.Bonv_facTable.FieldValues['num_bvfac']:=  'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFV + 1)]);
           MainForm.Bonv_facTable.FieldValues['date_bvfac']:= DateOf(Today);
           MainForm.Bonv_facTable.FieldValues['time_bvfac']:= TimeOf(Now);
           MainForm.Bonv_facTable.Post;

           end;
            BonFacVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonFacVGestionF.BonFacVTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    BonRecGestionF.RemiseBonFacVGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonFacVGEdt.Text),ffNumber,14,2) ;
    BonFacVGestionF.BonFacVTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGestionF.BonFacVTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGestionF.BonFacVResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGestionF.BonFacVRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGestionF.BonFacVGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
    BonFacVGestionF.BonFacVGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bonv_FacTable.FieldValues['code_bvfac']   ;
 BonFacVGestionF.NumBonFacVGEdt.Caption := 'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     BonFacVGestionF.ClientBonFacVGCbx.SetFocus;

     Tag :=0;

     MainForm.Bonv_fac_listTable.Refresh;

end;

procedure TBonFacVGestionF.EditBVFacBonFacVGBtnClick(Sender: TObject);
begin

      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
 // this is to enable the componets to edit the bon

  EnableBonFacV;

 // this is to unvalider the bon
  begin
  MainForm.Bonv_facTable.Edit;
  MainForm.Bonv_facTable.FieldByName('valider_bvfac').AsBoolean:= False;
  MainForm.Bonv_facTable.Post;
  end;


// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonFacVGClientOLDCredit.Caption:=
  CurrToStrF((((MainForm.ClientTable.FieldValues['oldcredit_c'])-(StringReplace(BonFacVResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

  BonFacVRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonFacVResteLbl.Caption:= BonFacVTotalTTCLbl.Caption;



      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls ;

 //----------------------------------------

      begin
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvfacl,code_p,  qut_p, cond_p , prixvd_p FROM bonv_fac_list WHERE code_bvfac =  '
                                                 + IntToStr (MainForm.Bonv_facTable.FieldValues['code_bvfac'])
                                                 + 'GROUP BY code_bvfacl, code_p, qut_p, cond_p,prixvd_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.DisableControls;
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
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
          MainForm.Bonv_facTable.Refresh;

     end;

end;

procedure TBonFacVGestionF.ProduitBonFacVGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
  BonFacVGestionF.Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
      ProduitBonFacVGCbx.Refresh;
      ProduitBonFacVGCbx.Items.Clear;
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
       ProduitBonFacVGCbx.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonFacVGCbx.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;
end;

procedure TBonFacVGestionF.ProduitBonFacVGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
  ProduitBonFacVGCbx.AutoDropDown:= True;
  end;
end;

procedure TBonFacVGestionF.ProduitBonFacVGCbxExit(Sender: TObject);
begin
ProduitBonFacVGCbx.Text:='';
ProduitBonFacVGCbx.AutoDropDown:=False;
end;

procedure TBonFacVGestionF.ProduitBonFacVGCbxKeyPress(Sender: TObject;
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

    if BonFacVGestionF.ClientBonFacVGCbx.Text<> '' then
   begin
     MainForm.ClientTable.DisableControls;
     MainForm.ClientTable.Active:=false;
     MainForm.ClientTable.SQL.Clear;
     MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacVGestionF.ClientBonFacVGCbx.Text )+')'  ;
     MainForm.ClientTable.Active:=True;
   end;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonFacVGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bonv_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonv_fac_listTable.DisableControls;
            MainForm.Bonv_fac_listTable.IndexFieldNames:='';
            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list ORDER by code_bvfacl' ;
            MainForm.Bonv_fac_listTable.Active:=True;

            MainForm.Bonv_fac_listTable.Last;
             if  MainForm.Bonv_fac_listTable.IsEmpty then
             begin
               MainForm.Bonv_fac_listTable.Last;
               CodeFV := 1;
             end else
                 begin
                  MainForm.Bonv_fac_listTable.Last;
                  CodeFV:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
                 end;

             MainForm.Bonv_fac_listTable.Last;
             MainForm.Bonv_fac_listTable.Append;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeFV ;
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
             MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bonv_fac_listTable.Post ;
             MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
            MainForm.Bonv_fac_listTable.Active:=True;

            ProduitBonFacVGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_fac_listTable.EnableControls;
           MainForm.Bonv_fac_listTable.Last;
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

      FSplashAddUnite:=TFSplashAddUnite.Create(BonFacVGestionF);
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
      if  MainForm.Bonv_fac_listTable.FieldValues['code_p'] <> NULL then
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 15 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=3;
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

         lookupResultRefP := MainForm.Bonv_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonv_fac_listTable.DisableControls;
            MainForm.Bonv_fac_listTable.IndexFieldNames:='';
            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list' ;
            MainForm.Bonv_fac_listTable.Active:=True;
           if  MainForm.Bonv_fac_listTable.RecordCount <= 0 then
           begin
             CodeFV := 1;
           end else
               begin
                MainForm.Bonv_fac_listTable.Last;
                CodeFV:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
               end;
             MainForm.Bonv_fac_listTable.Insert;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeFV ;
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
             MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bonv_fac_listTable.Post ;
             MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
            MainForm.Bonv_fac_listTable.Active:=True;
            MainForm.Bonv_fac_listTable.EnableControls;

            ProduitBonFacVGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_fac_listTable.EnableControls;
            MainForm.Bonv_fac_listTable.Last;
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

          FSplashAddUnite:=TFSplashAddUnite.Create(BonFacVGestionF);
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
            if  MainForm.Bonv_fac_listTable.FieldValues['code_p'] <> NULL then
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 15 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 3 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=3;
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

         lookupResultRefP := MainForm.Bonv_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bonv_fac_listTable.DisableControls;
            MainForm.Bonv_fac_listTable.IndexFieldNames:='';
            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list' ;
            MainForm.Bonv_fac_listTable.Active:=True;

           if  MainForm.Bonv_fac_listTable.RecordCount <= 0 then
           begin
             CodeFV := 1;
           end else
               begin
                MainForm.Bonv_fac_listTable.Last;
                CodeFV:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
               end;

             MainForm.Bonv_fac_listTable.Insert;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeFV ;
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
             MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bonv_fac_listTable.Post ;
             MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

             MainForm.Bonv_fac_listTable.Active:=False;
             MainForm.Bonv_fac_listTable.SQL.Clear;
             MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
             MainForm.Bonv_fac_listTable.Active:=True;
             MainForm.Bonv_fac_listTable.EnableControls;

            ProduitBonFacVGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_fac_listTable.EnableControls;
            MainForm.Bonv_fac_listTable.Last;
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


          FSplashAddUnite:=TFSplashAddUnite.Create(BonFacVGestionF);
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
            if  MainForm.Bonv_fac_listTable.FieldValues['code_p'] <> NULL then
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 15 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=3;
             end;
          end;

   end;
          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
          MainForm.ProduitTable.Active := True;

         MainForm.Bonv_fac_listTable.Refresh;
        ProduitBonFacVGCbx.AutoDropDown:=False;
         ProduitBonFacVGCbx.SelectAll;

     end;
     MainForm.Bonv_fac_listTable.Last;
 end;
end;

procedure TBonFacVGestionF.EnterAddProduitBonFacVGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonFacVGCbxKeyPress(Sender, key);
end;

procedure TBonFacVGestionF.ListAddProduitBonFacVGBtnClick(Sender: TObject);
begin

//-------- use this code to start creating th form-----//
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(BonFacVGestionF);


//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;
//---------Use this tag = 2 for adding from facture de vente
  FastProduitsListF.Tag := 2;

 end;

procedure TBonFacVGestionF.NewAddProduitBonFacVGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonFacVGestionF.DeleteProduitBonFacVGBtnClick(Sender: TObject);
begin
 if  MainForm.Bonv_fac_listTable.RecordCount = 1 then
 begin
    MainForm.Bonv_fac_listTable.DisableControls;
    MainForm.Bonv_fac_listTable.Refresh;
    MainForm.Bonv_fac_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    MainForm.Bonv_fac_listTable.EnableControls;
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
 if MainForm.Bonv_fac_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      MainForm.Bonv_fac_listTable.DisableControls;
      MainForm.Bonv_fac_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      MainForm.Bonv_fac_listTable.Refresh;
      MainForm.Bonv_fac_listTable.EnableControls;
     end;
end;

procedure TBonFacVGestionF.ClearProduitBonFacVGBtnClick(Sender: TObject);
begin
  FSplashAddUnite:=TFSplashAddUnite.Create(BonFacVGestionF);
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
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 14 ;
end;

procedure TBonFacVGestionF.ProduitsListDBGridEhMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if NOT (MainForm.Bonv_fac_listTable.IsEmpty) then
  begin
    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_fac_listTable.FieldValues['code_p']);
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

procedure TBonFacVGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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

procedure TBonFacVGestionF.BonFacVPListDataSDataChange(Sender: TObject;
  Field: TField);
var  TimberFV,TTCbeforeTimber,TTCafterTimber: Currency;
begin
  if NOT BonFacVPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonFacVGBtn.Visible:= True;
    ClearProduitBonFacVGBtn.Visible:= True;

    if ClientBonFacVGCbx.Text<>'' then
    begin
    ValiderBVFacBonFacVGBtn.Enabled:= True;
    ValiderBVFacBonFacVGBtn.ImageIndex:=12;
    end;

    RemisePerctageBonFacVGEdt.Enabled:=True;
    RemiseBonFacVGEdt.Enabled:=True;
    RemiseTypeBonFacVGCbx.Enabled:= True;

   if MainForm.Bonv_facTable.FieldValues['valider_bvfac'] <> True then
   begin

    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_fac_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;

    BonFacVGOLDStock.Caption:=
      floatTostrF((MainForm.ProduitTable.FieldValues['qut_p']),ffNumber,14,2);
    BonFacVGNEWStock.Caption:=
      floatTostrF(((MainForm.ProduitTable.FieldValues['qut_p'])-((MainForm.Bonv_fac_listTable.FieldValues['qut_p'])*(MainForm.Bonv_fac_listTable.FieldValues['cond_p']))),ffNumber,14,2);

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

procedure TBonFacVGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
end;

procedure TBonFacVGestionF.ClientBonFacVGCbxChange(Sender: TObject);

begin
// use this code to make mode pai espece
      ModePaieBonFacVGCbxDropDown(Self);
      ModePaieBonFacVGCbx.ItemIndex:=0;
      ModePaieBonFacVGCbxClick(Self) ;
end;


procedure TBonFacVGestionF.ModePaieBonFacVGCbxDropDown(Sender: TObject);
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

procedure TBonFacVGestionF.ModePaieBonFacVGCbxClick(Sender: TObject);
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

procedure TBonFacVGestionF.ClientBonFacVGCbxEnter(Sender: TObject);
var
I : Integer;
  begin

        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
        MainForm.ClientTable.Active:=True;

       MainForm.ClientTable.Refresh;
       ClientBonFacVGCbx.Items.Clear;
       MainForm.ClientTable.first;

     for I := 0 to MainForm.ClientTable.RecordCount - 1 do
     if MainForm.ClientTable.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonFacVGCbx.Items.Add(MainForm.ClientTable.FieldByName('nom_c').AsString);
       MainForm.ClientTable.Next;
      end;

end;

procedure TBonFacVGestionF.ClientBonFacVGCbxExit(Sender: TObject);
var CodeC: Integer;
OLDCreditC,RegCCreditC : Currency;
begin

  if ClientBonFacVGCbx.Text <> '' then
    begin
     ClientBonFacVGCbxChange(Sender);
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
       exit;
      end;
      CodeC:= MainForm.ClientTable.FieldValues['code_c'] ;

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


      if NOT (MainForm.Bonv_livTableCredit.IsEmpty ) OR NOT (MainForm.RegclientTable.IsEmpty) then
      begin
       MainForm.Bonv_livTableCredit.last;
       BonFacVGClientOLDCredit.Caption:= CurrToStrF((OLDCreditC - RegCCreditC ),ffNumber,2) ;

       if NOT (BonFacVPListDataS.DataSet.IsEmpty) then
        begin
         BonFacVGClientNEWCredit.Caption:=
         CurrToStrF((MainForm.Bonv_livTableCredit.FieldValues['MontantRes'])+(StringReplace(BonFacVResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
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

    end else
    begin
     ClientBonFacVGCbx.Text:= 'Comptoir';
     CompteBonFacVGCbxEnter(Sender);
     ModePaieBonFacVGCbxDropDown(Sender);

     ModePaieBonFacVGCbx.ItemIndex:=0;
     CompteBonFacVGCbx.ItemIndex:=0;

     BonFacVGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonFAcVGClientNEWCredit.Caption:=BonFacVGClientOLDCredit.Caption;
     end;

     ModePaieBonFacVGCbxChange(Sender);

end;

procedure TBonFacVGestionF.CompteBonFacVGCbxEnter(Sender: TObject);

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

procedure TBonFacVGestionF.ClientBonFacVGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonFacVGestionF.CompteBonFacVGCbxChange(Sender: TObject);
begin
CompteBonFacVGCbx.AutoDropDown:=True;
end;

procedure TBonFacVGestionF.RemiseTypeBonFacVGCbxChange(Sender: TObject);
begin
RemiseBonFacVGEdt.Text:='';
RemisePerctageBonFacVGEdt.Text:='';
MainForm.Bonv_fac_listTable.Refresh;
end;

procedure TBonFacVGestionF.RemisePerctageBonFacVGEdtChange(Sender: TObject);
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
          MainForm.Bonv_fac_listTable.Refresh;
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
             MainForm.Bonv_fac_listTable.Refresh;
            end;
      end;

end;

procedure TBonFacVGestionF.RemisePerctageBonFacVGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonFacVGEdt.Text := StringReplace(RemisePerctageBonFacVGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonFacvGEdt.SelectAll;
end;

procedure TBonFacVGestionF.RemisePerctageBonFacVGEdtEnter(Sender: TObject);
begin
MainForm.Bonv_fac_listTable.Refresh;
 RemisePerctageBonFacVGEdtChange(Sender);
end;

procedure TBonFacVGestionF.RemisePerctageBonFacVGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;
end;

procedure TBonFacVGestionF.RemiseBonFacVGEdtChange(Sender: TObject);
var RemiseBonFacVG,BonFVTotalHT,BonFVTotalTVA,OLDTTC : Currency;
begin
if RemiseBonFacVGEdt.Focused then
 begin
      if RemiseBonFacVGEdt.Text<>'' then
     begin
     RemiseBonFacVG:=StrToFloat (StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
    // MainForm.Bonv_fac_listTable.Refresh;
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
          MainForm.Bonv_fac_listTable.Refresh;
        end;
 end;
end;

procedure TBonFacVGestionF.RemiseBonFacVGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonFacVGEdt.Text := StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonFacVGEdt.SelectAll;
end;

procedure TBonFacVGestionF.RemiseBonFacVGEdtEnter(Sender: TObject);
begin
MainForm.Bonv_fac_listTable.Refresh;
 RemisePerctageBonFacVGEdtChange(Sender);
end;

procedure TBonFacVGestionF.RemiseBonFacVGEdtExit(Sender: TObject);
var
RemiseBonFacVG: Currency;
begin
  if RemiseBonFacVGEdt.Text<>'' then
  begin
  RemiseBonFacVG:=StrToFloat(StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonFacVGEdt.Text := FloatToStrF(RemiseBonFacVG,ffNumber,14,2);
  end;
end;

procedure TBonFacVGestionF.RemiseBonFacVGEdtKeyPress(Sender: TObject;
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

procedure TBonFacVGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if ValiderBVFacBonFacVGImg.ImageIndex = 1 then
  begin

    MainForm.Bonv_facTable.Refresh;

    MainForm.Bonv_fac_listTable.Refresh;
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


          MainForm.Bonv_fac_listTable.Active:=false;
          MainForm.Bonv_fac_listTable.SQL.Clear;
          MainForm.Bonv_fac_listTable.SQL.Text:='Select * FROM bonv_fac_list' ;
          MainForm.Bonv_fac_listTable.Active:=True;
          MainForm.Bonv_fac_listTable.EnableControls;

  MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

//  FormatSettings.DecimalSeparator := '.';
end;

procedure TBonFacVGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonFacVGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonFacVGCbx.StyleElements:= [];
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonFacVGCbx.SetFocus;
      CanClose := false;
    end else
        begin

          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonFacVGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacVGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonFacVGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.Bonv_facTable.DisableControls;
          MainForm.Bonv_facTable.Edit;
          MainForm.Bonv_facTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_facTable.FieldValues['obser_bvfac']:= ObserBonFacVGMem.Text;
          MainForm.Bonv_facTable.FieldValues['num_cheque_bvfac']:= NChequeBonFacVGCbx.Text;
          MainForm.Bonv_facTable.FieldByName('montht_bvfac').AsCurrency:= StrToCurr(StringReplace(BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacVGEdt.Text<>'' then
          begin
             MainForm.Bonv_facTable.FieldByName('remise_bvfac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_facTable.FieldByName('remise_bvfac').AsCurrency:=0;
                   end;


          MainForm.Bonv_facTable.FieldByName('montver_bvfac').AsCurrency:=StrToCurr(StringReplace(BonFacVRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_facTable.FieldByName('montttc_bvfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bonv_facTable.Post;
          MainForm.Bonv_facTable.EnableControls;

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

        end;
  end  else
  begin

     CanClose:= True;
  end;
end;

procedure TBonFacVGestionF.ValiderBVFacBonFacVGBtnClick(Sender: TObject);
var CodeOCB,CodeRF : Integer;
begin
        if ClientBonFacVGCbx.Text <> '' then
    begin
   if ModePaieBonFacVGCbx.Text <> '' then
    begin

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

       MainForm.Mode_paiementTable.DisableControls;
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacVGCbx.Text )+')'  ;
      MainForm.Mode_paiementTable.Active:=True;

        if (MainForm.Mode_paiementTable.IsEmpty) then
        begin
         ModePaieBonFacVGCbx.Text := '';
         sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ModePaieBonFacVGCbx.StyleElements:= [];
        ModepPaiGErrorP.Visible:= True;

        ModePaieBonFacVGCbx.SetFocus;
         exit;
        end;

           MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
      MainForm.Mode_paiementTable.Active:=True;
      MainForm.Mode_paiementTable.EnableControls;



     BonFacVGestionF.BonFacVRegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2);
     BonFacVGestionF.BonFacVResteLbl.Caption := FloatToStrF(0,ffNumber,14,2);

    FSplashVersement.DisableBonFacV;

     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

//--- this is for adding to the priduit
      begin
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvfacl,code_p,  qut_p, cond_p , prixvd_p FROM bonv_fac_list WHERE code_bvfac =  '
                                                 + IntToStr (MainForm.Bonv_facTable.FieldValues['code_bvfac'])
                                                 + 'GROUP BY code_bvfacl, code_p, qut_p, cond_p,prixvd_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.DisableControls;
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
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
          MainForm.Bonv_facTable.Refresh;

     end;
//--- this is to set the facture de vente fileds
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(BonFacVGestionF.ClientBonFacVGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(BonFacVGestionF.ModePaieBonFacVGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(BonFAcVGestionF.CompteBonFacVGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

          MainForm.Bonv_facTable.Edit;
          MainForm.Bonv_facTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bonv_facTable.FieldValues['date_bvfac']:= DateOf(Today);
          MainForm.Bonv_facTable.FieldValues['time_bvfac']:=TimeOf(Now);
          MainForm.Bonv_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_facTable.FieldValues['obser_bvfac']:= BonFacVGestionF.ObserBonFacVGMem.Text;
          MainForm.Bonv_facTable.FieldValues['num_cheque_bvfac']:= BonFacVGestionF.NChequeBonFacVGCbx.Text;
          MainForm.Bonv_facTable.FieldByName('montht_bvfac').AsCurrency:= StrToCurr(StringReplace(BonFacVGestionF.BonFacVTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacVGEdt.Visible = True then
          begin
          MainForm.Bonv_facTable.FieldByName('timber_bvfac').AsCurrency:= StrToCurr(StringReplace(BonFacVGestionF.TimberBonFacVGEdt.Text, #32, '', [rfReplaceAll]));

          end;

          if BonFAcVGestionF.RemiseBonFAcVGEdt.Text<>'' then
          begin
          MainForm.Bonv_facTable.FieldByName('remise_bvfac').AsCurrency:=StrToCurr(StringReplace(BonFacVGestionF.RemiseBonFacVGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_facTable.FieldByName('remise_bvfac').AsCurrency:=0;
                   end;

          MainForm.Bonv_facTable.FieldByName('montver_bvfac').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_facTable.FieldByName('montttc_bvfac').AsCurrency:=StrToCurr(StringReplace(BonFacVGestionF.BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_facTable.FieldByName('valider_bvfac').AsBoolean:= True;

          if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='espece') then
          begin
           MainForm.Bonv_facTable.FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='ch�que') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='cheque') then
          begin
           MainForm.Bonv_facTable.FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(BonFacVGestionF.ModePaieBonFAcVGCbx.Text)='� terme' ) OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='a terme' )
             OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='� terme' ) then
          begin
           MainForm.Bonv_facTable.FieldValues['code_mdpai']:=3 ;
          end;

          MainForm.Bonv_facTable.Post;


              //-----------------------------------------------------------------------------------------------------------------------------------------------------------

        begin
         if Tag = 0 then
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
            MainForm.RegclientTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
            MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonFacVGEdt.Caption;
            MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
            MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
            MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
            MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegclientTable.FieldValues['obser_rc']:= ObserBonFacVGMem.Text;
            MainForm.RegclientTable.FieldValues['num_cheque_rc']:= NChequeBonFacVGCbx.Text;
            MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 3;
            MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

            if (LowerCase(ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonFacVGCbx.Text)='espece') then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
            end;
             if (LowerCase(ModePaieBonFacVGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonFacVGCbx.Text)='cheque') then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
            end;
            if (LowerCase(ModePaieBonFacVGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonFacVGCbx.Text)='a terme' )
               OR (LowerCase(ModePaieBonFacVGCbx.Text)='� terme' ) then
            begin
             MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
            end;

            MainForm.RegclientTable.Post;
            MainForm.RegclientTable.Refresh;

          end else
              begin
                MainForm.RegclientTable.DisableControls;
                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_bvfac ='+IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']) ;
                MainForm.RegclientTable.Active:=True;

                  MainForm.RegclientTable.Edit;
                  MainForm.RegclientTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
                  MainForm.RegclientTable.FieldValues['nom_rc']:= NumBonFacVGEdt.Caption;
                  MainForm.RegclientTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldValues['date_rc']:= DateOf(Today);
                  MainForm.RegclientTable.FieldValues['time_rc']:=TimeOf(Now);
                  MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldValues['obser_rc']:= ObserBonFacVGMem.Text;
                  MainForm.RegclientTable.FieldValues['num_cheque_rc']:= NChequeBonFacVGCbx.Text;
                  MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 3;
                  MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                  if (LowerCase(ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(ModePaieBonFacVGCbx.Text)='espece') then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
                  end;
                   if (LowerCase(ModePaieBonFacVGCbx.Text)='ch�que') OR (LowerCase(ModePaieBonFacVGCbx.Text)='cheque') then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
                  end;
                  if (LowerCase(ModePaieBonFacVGCbx.Text)='� terme' ) OR (LowerCase(ModePaieBonFacVGCbx.Text)='a terme' )
                     OR (LowerCase(ModePaieBonFacVGCbx.Text)='� terme' ) then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
                  end;

                  MainForm.RegclientTable.Post;
                  MainForm.RegclientTable.Refresh;


                MainForm.RegclientTable.Active:=false;
                MainForm.RegclientTable.SQL.Clear;
                MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ';
                MainForm.RegclientTable.Active:=True;
                 MainForm.RegclientTable.EnableControls;

              end;

        end;

              //-----------------------------------------------------------------------------------------------------------------------------------------------------------


          MainForm.ClientTable.Edit;
          MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency:=
          ((StrToCurr(StringReplace(BonFacVGestionF.BonFacVGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.ClientTable.Post;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;


          //--- this is for adding the money to the caisse----
       begin

        if Tag=0 then
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
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'R�glement  Pi�ce N� '+NumBonFacVGEdt.Caption;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonFacVGCbx.Text;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));;
      //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

               if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='espece') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
              end;
               if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='ch�que') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='cheque') then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
              end;
              if (LowerCase(BonFacVGestionF.ModePaieBonFAcVGCbx.Text)='� terme' ) OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='a terme' )
                 OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='� terme' ) then
              begin
               MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
              end;

              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldByName('code_bvfac').AsInteger;
              MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=  StrToInt(MainForm.UserIDLbl.Caption);

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
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bvfac ='+IntToStr(MainForm.Bonv_facTable.FieldByName('code_bvfac').AsInteger) ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                    MainForm.Opt_cas_bnk_CaisseTable.Edit;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'R�glement  Pi�ce N� '+NumBonFacVGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ClientBonFacVGCbx.Text;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));;
            //        MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= ;

                     if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='espece') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                    end;
                     if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='ch�que') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='cheque') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                    end;
                    if (LowerCase(BonFacVGestionF.ModePaieBonFAcVGCbx.Text)='� terme' ) OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='a terme' )
                       OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='� terme' ) then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                    end;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldByName('code_bvfac').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=  StrToInt(MainForm.UserIDLbl.Caption);

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;


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
               sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ModePaieBonFacVGCbx.StyleElements:= [];
//            RequiredFourGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonFacVGCbx.SetFocus;
           end;

  end else
        begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          ClientBonFacVGCbx.StyleElements:= [];
          RequiredClientGlbl.Visible:= True;
          NameClientGErrorP.Visible:= True;

          ClientBonFacVGCbx.SetFocus;
        end;

end;

procedure TBonFacVGestionF.ModePaieBonFacVGCbxChange(Sender: TObject);
begin
  if (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='esp�ce') OR (LowerCase(BonFacVGestionF.ModePaieBonFacVGCbx.Text)='espece') then
  begin
  TimberPerctageBonFacVGEdt.Visible:= True;
  TimberBonFacVGEdt.Visible:= True;
  TimberPerctageBonFacVGLbl.Visible:= True;
  TimberBonFacVGlbl.Visible:= True;
  end else
      begin
        TimberPerctageBonFacVGEdt.Visible:= False;
        TimberBonFacVGEdt.Visible:= False;
        TimberPerctageBonFacVGLbl.Visible:= False;
        TimberBonFacVGlbl.Visible:= False;
      end;

    MainForm.Bonv_fac_listTable.Refresh;
 end;

procedure TBonFacVGestionF.AddClientBonFacVGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 4 ;
end;

procedure TBonFacVGestionF.AddModePaieBonFacVGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(BonFacVGestionF);
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

procedure TBonFacVGestionF.AddCompteBonFacVGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(BonfaCvGestionF);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 3 ;
end;

procedure TBonFacVGestionF.FormCreate(Sender: TObject);
begin
MainForm.Bonv_fac_listTable.Active:=True;
end;


procedure TBonFacVGestionF.GettingData;

 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,
  TauxTVA17,TauxTVA7,MontantTVA17,MontantTVA7,RC,NArt,NIF,NIS : TfrxMemoView;

  str1 : string;
  Taux17,Taux7,Montant17,Montant7,RemisePerctageBonFacV : Currency;
begin
  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonFacVTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonFacVPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonFacVPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonFacVGEdt.Caption;

    DateRX:= BonFacVPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonFacVGD.Date);

      NameRX:= BonFacVPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonFacVGCbx.Text;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client WHERE code_c ='+ IntToStr(MainForm.Bonv_facTable.FieldByName('code_c').AsInteger);
    MainForm.ClientTable.Active:=True;


    AdrRX:= BonFacVPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.ClientTable.FieldByName('adr_c').AsString;

    VilleRX:= BonFacVPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.ClientTable.FieldByName('ville_c').AsString;

    WilayaRX:= BonFacVPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.ClientTable.FieldByName('willaya_c').AsString;

      RC:= BonFacVPListfrxRprt.FindObject('RC') as TfrxMemoView;
  RC.Text:= MainForm.ClientTable.FieldByName('rc_c').AsString;

    NArt:= BonFacVPListfrxRprt.FindObject('NArt') as TfrxMemoView;
  NArt.Text:= MainForm.ClientTable.FieldByName('nart_c').AsString;

    NIF:= BonFacVPListfrxRprt.FindObject('NIF') as TfrxMemoView;
  NIF.Text:=  MainForm.ClientTable.FieldByName('nif_c').AsString;

      NIS:= BonFacVPListfrxRprt.FindObject('NIS') as TfrxMemoView;
  NIS.Text:=  MainForm.ClientTable.FieldByName('nis_c').AsString;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
    MainForm.ClientTable.Active:=True;


         begin
      MainForm.Bonv_fac_listTable.DisableControls;

        begin
           MainForm.Bonv_fac_listTable.Active:=false;
           MainForm.Bonv_fac_listTable.SQL.Clear;
           MainForm.Bonv_fac_listTable.SQL.Text:='Select * FROM bonv_fac_list WHERE tva_p = 17' ;
           MainForm.Bonv_fac_listTable.Active:=True;
            if NOT (MainForm.Bonv_fac_listTable.IsEmpty) then
           begin

            MainForm.Bonv_fac_listTable.First;

            while not MainForm.Bonv_fac_listTable.Eof do
            begin
              Montant17:= Montant17 + MainForm.Bonv_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bonv_fac_listTable.Next;
            end;

             TauxTVA17:= BonFacVPListfrxRprt.FindObject('TauxTVA17') as TfrxMemoView;
             TauxTVA17.Text:=  '17 %';
             TauxTVA17.Visible:=True;

             MontantTVA17:= BonFacVPListfrxRprt.FindObject('MontantTVA17') as TfrxMemoView;
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
           MainForm.Bonv_fac_listTable.Active:=false;
           MainForm.Bonv_fac_listTable.SQL.Clear;
           MainForm.Bonv_fac_listTable.SQL.Text:='Select * FROM bonv_fac_list WHERE tva_p = 7' ;
           MainForm.Bonv_fac_listTable.Active:=True;
          if NOT (MainForm.Bonv_fac_listTable.IsEmpty) then
           begin

            MainForm.Bonv_fac_listTable.First;

            while not MainForm.Bonv_fac_listTable.Eof do
            begin
              Montant7:= Montant7 + MainForm.Bonv_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bonv_fac_listTable.Next;
            end;
             TauxTVA7:= BonFacvPListfrxRprt.FindObject('TauxTVA7') as TfrxMemoView;
             TauxTVA7.Text:=  '7 %';
             TauxTVA7.Visible:=True;

             MontantTVA7:= BonFacVPListfrxRprt.FindObject('MontantTVA7') as TfrxMemoView;

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
             MainForm.Bonv_fac_listTable.Active:=false;
             MainForm.Bonv_fac_listTable.SQL.Clear;
             MainForm.Bonv_fac_listTable.SQL.Text:='Select * FROM bonv_fac_list ORDER BY code_bvfacl ' ;
             MainForm.Bonv_fac_listTable.Active:=True;
         MainForm.Bonv_fac_listTable.EnableControls;
     end;


    MPRX:= BonFacVPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonFacVGCbx.Text;

    NCHeqRX:= BonFacVPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonFacVGCbx.Text;

 end;

procedure TBonFacVGestionF.sSpeedButton2Click(Sender: TObject);
begin
 GettingData;

BonFacVPListfrxRprt.PrepareReport;
BonFacVPListfrxRprt.ShowReport;
end;

procedure TBonFacVGestionF.sSpeedButton1Click(Sender: TObject);
begin
   GettingData;

BonFacVPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Facture de Vente N� '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonv_facTable.FieldByName('code_bvfac').AsInteger)]);
BonFacVPListfrxRprt.Export(frxXLSExport1);
end;

procedure TBonFacVGestionF.sSpeedButton3Click(Sender: TObject);
begin
 GettingData;

BonFacVPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Facture de Vente N� '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bonv_facTable.FieldByName('code_bvfac').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonFacVPListfrxRprt.Export(frxPDFExport1);
end;

end.


