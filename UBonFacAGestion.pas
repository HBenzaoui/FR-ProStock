unit UBonFacAGestion;

interface

uses
  Winapi.Windows,
  MMSystem,DateUtils,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ExtCtrls,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, acImage, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  Vcl.AppEvnts, frxExportBaseDialog, System.Actions, Vcl.ActnList;

type
  TBonFacAGestionF = class(TForm)
    Panel3: TPanel;
    TopP2: TPanel;
    Shape1: TShape;
    EditBAFacBonFacAGBtn: TAdvToolButton;
    AddBAFacBonFacAGBtn: TAdvToolButton;
    Label3: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    NumBonFacAGEdt: TLabel;
    AddFourBonFacAGBtn: TAdvToolButton;
    Label6: TLabel;
    ValiderBAFacBonFacAGBtn: TAdvToolButton;
    Label7: TLabel;
    AddModePaieBonFacAGBtn: TAdvToolButton;
    Label8: TLabel;
    AddCompteBonFacAGBtn: TAdvToolButton;
    ListAddProduitBonFacAGBtn: TAdvToolButton;
    DeleteProduitBonFacAGBtn: TAdvToolButton;
    NewAddProduitBonFacAGBtn: TAdvToolButton;
    RequiredFourGlbl: TLabel;
    EnterAddProduitBonFacAGBtn: TAdvToolButton;
    ClearProduitBonFacAGBtn: TAdvToolButton;
    ValiderBAFacBonFacAGImg: TsImage;
    BonFATotalTTCNewLbl: TLabel;
    BonFATotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    Label9: TLabel;
    ObserBonFacAGLbl: TLabel;
    BonFARemiseHTNewLbl: TLabel;
    ValiderBAFacBonFacAGLbl: TLabel;
    NameFourGErrorP: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonFacAGD: TDateTimePicker;
    FourBonFacAGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    Panel2: TPanel;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonFacAGCbx: TComboBox;
    CompteBonFacAGCbx: TComboBox;
    Panel5: TPanel;
    BonFacAGFourOLDCredit: TLabel;
    BonFacAGFourNEWCredit: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel15: TPanel;
    NChequeBonFacAGCbx: TEdit;
    ObserBonFacAGMem: TMemo;
    ProduitsListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    label13: TLabel;
    label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BonFacATotalTVALbl: TLabel;
    BonFacARegleLbl: TLabel;
    BonFacAResteLbl: TLabel;
    BonFacATotalHTLbl: TLabel;
    BonFacATotalTTCLbl: TLabel;
    Label10: TLabel;
    TimberBonFacAGlbl: TLabel;
    TimberPerctageBonFacAGLbl: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    BonFacAGOLDStock: TLabel;
    Label19: TLabel;
    BonFacAGNEWStock: TLabel;
    Label20: TLabel;
    Panel14: TPanel;
    TimberPerctageBonFacAGEdt: TEdit;
    TimberBonFacAGEdt: TEdit;
    RemisePerctageBonFacAGEdt: TEdit;
    RemiseBonFacAGEdt: TEdit;
    Panel1: TPanel;
    RemiseTypeBonFacAGCbx: TComboBox;
    BonFacAPListDataS: TDataSource;
    Timer1: TTimer;
    RequiredStarProduitGLbl: TLabel;
    Label21: TLabel;
    ModepPaiGErrorP: TPanel;
    frxBonFacAPListDB: TfrxDBDataset;
    frxBonRecDT: TfrxDBDataset;
    frxFourDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonFacAPListfrxRprt: TfrxReport;
    sImage1: TsImage;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    ProduitBonFacAGCbx: TcxComboBox;
    Label22: TLabel;
    CompteGErrorP: TPanel;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeCaisseSimple2: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    ApplicationEvents1: TApplicationEvents;
    Label31: TLabel;
    Label23: TLabel;
    ListFourBonFacAGBtn: TAdvToolButton;
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
    Label33: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure AddBAFacBonFacAGBtnClick(Sender: TObject);
    procedure EditBAFacBonFacAGBtnClick(Sender: TObject);
    procedure ValiderBAFacBonFacAGBtnClick(Sender: TObject);
    procedure FourBonFacAGCbxChange(Sender: TObject);
    procedure FourBonFacAGCbxExit(Sender: TObject);
    procedure FourBonFacAGCbxEnter(Sender: TObject);
    procedure FourBonFacAGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ModePaieBonFacAGCbxChange(Sender: TObject);
    procedure ModePaieBonFacAGCbxClick(Sender: TObject);
    procedure ModePaieBonFacAGCbxDropDown(Sender: TObject);
    procedure CompteBonFacAGCbxChange(Sender: TObject);
    procedure CompteBonFacAGCbxEnter(Sender: TObject);
    procedure ProduitBonFacAGCbxEnter(Sender: TObject);
    procedure ProduitBonFacAGCbxExit(Sender: TObject);
    procedure ProduitBonFacAGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonFacAGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure EnterAddProduitBonFacAGBtnClick(Sender: TObject);
    procedure NewAddProduitBonFacAGBtnClick(Sender: TObject);
    procedure DeleteProduitBonFacAGBtnClick(Sender: TObject);
    procedure ClearProduitBonFacAGBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BonFacAPListDataSDataChange(Sender: TObject; Field: TField);
    procedure RemiseTypeBonFacAGCbxChange(Sender: TObject);
    procedure RemisePerctageBonFacAGEdtChange(Sender: TObject);
    procedure RemisePerctageBonFacAGEdtClick(Sender: TObject);
    procedure RemisePerctageBonFacAGEdtEnter(Sender: TObject);
    procedure RemisePerctageBonFacAGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonFacAGEdtChange(Sender: TObject);
    procedure RemiseBonFacAGEdtClick(Sender: TObject);
    procedure RemiseBonFacAGEdtEnter(Sender: TObject);
    procedure RemiseBonFacAGEdtExit(Sender: TObject);
    procedure RemiseBonFacAGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AddFourBonFacAGBtnClick(Sender: TObject);
    procedure AddModePaieBonFacAGBtnClick(Sender: TObject);
    procedure AddCompteBonFacAGBtnClick(Sender: TObject);
    procedure ListAddProduitBonFacAGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure B1Click(Sender: TObject);
    procedure BondeCaisseSimple2Click(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ListFourBonFacAGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FourBonFacAGCbxSelect(Sender: TObject);
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
    procedure GettingData;
    { Private declarations }
  public

  
    const FALSQL =
     'SELECT FAL.code_bafac,FAL.code_bafacl,FAL.qut_p,FAL.cond_p,FAL.code_p,FAL.tva_p,FAL.prixht_p,P.nom_p as nomp, P.refer_p as referp, '
      +'   FAL.prixvd_p,FAL.prixvr_p,FAL.prixvg_p,FAL.prixva_p,FAL.prixva2_p,FAL.dateperiss_p,FAL.qutinstock_p,'
      +'   (((FAL.prixht_p * FAL.tva_p)/100)+FAL.prixht_p) AS PrixATTC, '
      +'   ((FAL.prixht_p * FAL.qut_p) * cond_p) AS MontantHT, '
      +'   (((((FAL.prixht_p * FAL.tva_p)/100)+FAL.prixht_p) * FAL.qut_p)*cond_p) AS MontantTTC, '
      +'   (((((((FAL.prixht_p * FAL.tva_p)/100)+FAL.prixht_p) * FAL.qut_p)*cond_p) )-(((FAL.prixht_p * FAL.qut_p) * cond_p))) AS MontantTVA, '
      +'   ((FAL.prixht_p * FAL.qut_p)* cond_p) AS MontantAHT, '
      +'  CASE '
      +'       WHEN FAL.prixvd_p <> ''0'' THEN '
      +'     CASE WHEN FAL.prixht_p <> ''0'' '
      +'       THEN ( ((FAL.prixvd_p - FAL.prixht_p) / FAL.prixht_p  ) *100) '
      +'       ELSE ''100'' '
      +'     END '
      +'  END AS MargeD, '
      +'  CASE '
      +'     WHEN FAL.prixvr_p <> ''0'' THEN  '
      +'   CASE WHEN FAL.prixht_p <> ''0'' '
      +'     THEN ( ((FAL.prixvr_p - FAL.prixht_p) / FAL.prixht_p  ) *100)  '
      +'     ELSE ''100'' '
      +'   END   '
      +'  END AS MargeR, '
      +'  CASE '
      +'     WHEN FAL.prixvg_p <> ''0'' THEN '
      +'   CASE WHEN FAL.prixht_p <> ''0''  '
      +'     THEN ( ((FAL.prixvg_p - FAL.prixht_p) / FAL.prixht_p  ) *100)  '
      +'     ELSE ''100'' '
      +'   END '
      +'  END AS MargeG, '
      +'   CASE  '
      +'     WHEN FAL.prixva_p <> ''0'' THEN  '
      +'   CASE WHEN FAL.prixht_p <> ''0''  '
      +'     THEN ( ((FAL.prixva_p - FAL.prixht_p) / FAL.prixht_p  ) *100)  '
      +'     ELSE ''100''  '
      +'   END '
      +'  END AS MargeA, '
      +'   CASE   '
      +'     WHEN FAL.prixva2_p <> ''0'' THEN '
      +'   CASE WHEN FAL.prixht_p <> ''0''  '
      +'     THEN ( ((FAL.prixva2_p - FAL.prixht_p) / FAL.prixht_p  ) *100) '
      +'     ELSE ''100''    '
      +'   END  '
      +'  END AS MargeA2 '
      +' FROM bona_fac_list as FAL  '
      +' LEFT JOIN produit as P   '
      +'   ON FAL.code_p = P.code_p ';
      
    procedure EnableBonFacA ;
  end;

var
  BonFacAGestionF: TBonFacAGestionF;

implementation

uses  StringTool,Vcl.Imaging.jpeg, IniFiles,
  UMainF, USplashVersement, UBonFacA, USplashAddUnite, UProduitsList,
  UFournisseurList, UFournisseurGestion, USplashAddCompte, UFastProduitsList,
  UDataModule, UProduitGestion;

{$R *.dfm}


//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin

   BonFacAGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonFacAGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonFacAGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
//     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
//     EnableControls;
     end;

   BonFacAGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;




procedure TBonFacAGestionF.EnableBonFacA ;
begin
          AddBAFacBonFacAGBtn.Enabled:= False;
          AddBaFAcBonFacAGBtn.ImageIndex:=28;// 4 For D
          EditBAFacBonFacAGBtn.Enabled:= False;
          EditBAFacBonFacAGBtn.ImageIndex:=29;// 5 for D
          ValiderBAFacBonFacAGBtn.Enabled:= True;
          ValiderBAFacBonFacAGBtn.ImageIndex:=12;//30 for D

          DateBonFacAGD.Enabled:= True;
          ObserBonFacAGMem.Enabled:= True;
          FourBonFacAGCbx.Enabled:= True;
          AddFourBonFacAGBtn.Enabled:= True ; //
          AddFourBonFacAGBtn.ImageIndex:=10;//35 fo D
          ListFourBonFacAGBtn.Enabled:= True;
          ListFourBonFacAGBtn.ImageIndex:= 59;
          ModePaieBonFacAGCbx.Enabled:= True;
          AddModePaieBonFacAGBtn.Enabled:= True ;
          AddModePaieBonFacAGBtn.ImageIndex:=10;// 35 fo D
          CompteBonFacAGCbx.Enabled:= True;
          AddCompteBonFacAGBtn.Enabled:= True ;
          AddCompteBonFacAGBtn.ImageIndex:=10;// 35 fo D
          NChequeBonFacAGCbx.Enabled:= True;
          ProduitBonFacAGCbx.Enabled:= True;
          EnterAddProduitBonFacAGBtn.Enabled:= True;
          EnterAddProduitBonFacAGBtn.ImageIndex:=15;// 40 fo D
          ListAddProduitBonFacAGBtn.Enabled:= True;
          ListAddProduitBonFacAGBtn.ImageIndex:=13;//41 fo D
          NewAddProduitBonFacAGBtn.Enabled:= True;
          NewAddProduitBonFacAGBtn.ImageIndex:=4;//28 fo D
          DeleteProduitBonFacAGBtn.Enabled:= True;
          DeleteProduitBonFacAGBtn.ImageIndex:=14;//36 fo D
          ClearProduitBonFacAGBtn.Enabled:= True;
          ClearProduitBonFacAGBtn.ImageIndex:=16;//39 fo A
//          ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
          ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
          ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
          ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
          ProduitsListDBGridEh.Options:=
          ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
          ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
          ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
          ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
          RemisePerctageBonFacAGEdt.Enabled:=True;//False for D
          RemiseBonFacAGEdt.Enabled:=True;//False for D
          RemiseTypeBonFacAGCbx.Enabled:= True;//False for D;

          ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
          ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
          ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

          ValiderBAFacBonFacAGImg.ImageIndex:=1;//0 fo D
          ValiderBAFacBonFacAGLbl.Color:=$007374FF;// $004AC38B for D
          ValiderBAFacBonFacAGLbl.Font.Color:= clWhite;// clBlack for D
          ValiderBAFacBonFacAGLbl.Caption:='Ce Facture n''est pas encore Valid?';// 'Ce facture est Valid' for D
end;

procedure TBonFacAGestionF.F3Execute(Sender: TObject);
begin
   //--- this is to focus in produit --------------------------
  if  AddBAFacBonFacAGBtn.Enabled = False then
  begin
     ProduitBonFacAGCbx.SetFocus;
  end;
end;

procedure TBonFacAGestionF.F4Execute(Sender: TObject);
begin
  if AddBAFacBonFacAGBtn.Enabled = True then
  begin
     AddBAFacBonFacAGBtnClick(Screen);
  end;
end;

procedure TBonFacAGestionF.F5Execute(Sender: TObject);
begin
  if EditBAFacBonFacAGBtn.Enabled = True then
  begin
     EditBAFacBonFacAGBtnClick(Screen);
  end;
end;

procedure TBonFacAGestionF.F6Execute(Sender: TObject);
Var I :Integer;
begin
  //--- this is to switch between produits and quntity--------------------------
  if EditBAFacBonFacAGBtn.Enabled = False then
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

procedure TBonFacAGestionF.F7Execute(Sender: TObject);
Var I: Integer;
begin
  //--- this is to switch between produits and prix----------------------------
  if EditBAFacBonFacAGBtn.Enabled = False then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixht_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='prixht_p' then
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

procedure TBonFacAGestionF.F8Execute(Sender: TObject);
begin
  if EditBAFacBonFacAGBtn.Enabled = False then
  begin
     ListAddProduitBonFacAGBtnClick(Screen);
  end;
end;

procedure TBonFacAGestionF.F9Execute(Sender: TObject);
begin
  if ValiderBAFacBonFacAGBtn.Enabled = True then
  begin
    ValiderBAFacBonFacAGBtnClick(Screen);
  end;
end;

procedure TBonFacAGestionF.F10Execute(Sender: TObject);
begin
  if EditBAFacBonFacAGBtn.Enabled = False then
  begin
     ListFourBonFacAGBtnClick(Screen);
  end;
end;

procedure TBonFacAGestionF.F11Execute(Sender: TObject);
begin
  if NewAddProduitBonFacAGBtn.Enabled = True then
  begin
     NewAddProduitBonFacAGBtnClick(Screen);
  end;

end;

procedure TBonFacAGestionF.F12Execute(Sender: TObject);
var
Ini: TIniFile;
indexP: Integer;
begin
  if ValiderBAFacBonFacAGImg.ImageIndex <> 1 then
  begin
        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
        indexP:= Ini.ReadInteger('', 'Format FA',0);
        if (indexP = 0) or (indexP = -1) then
        begin
        B1Click(Screen);
        end;
        if indexP = 1 then
        begin
        BondeCaisseSimple2Click(Screen);
        end;

        Ini.Free;
  end;
end;

procedure TBonFacAGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_fca');

 if ValiderBAFacBonFacAGImg.ImageIndex = 1 then
  begin

    MainForm.Bona_facTable.Refresh;

    MainForm.Bona_fac_listTable.Refresh;
  end;

          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

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


          MainForm.Bona_fac_listTable.Active:=false;
          MainForm.Bona_fac_listTable.SQL.Clear;
          MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' ORDER BY code_bafacl '  ;
          MainForm.Bona_fac_listTable.Active:=True;
          MainForm.Bona_fac_listTable.EnableControls;

  MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
//FormatSettings.DecimalSeparator := '.';


end;

procedure TBonFacAGestionF.FormCloseQuery(Sender: TObject;
 var CanClose: Boolean);

 Var CodeFA :Integer;
begin
CodeFA := MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if FourBonFacAGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FourBonFacAGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous pla?t entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
      CanClose := false;
   end else
       begin
   if ModePaieBonFacAGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ModePaieBonFacAGCbx.StyleElements:= [];
      RequiredMPGlbl.Visible:= True;
      ModepPaiGErrorP.Visible:= True;

      ModePaieBonFacAGCbx.SetFocus;
      CanClose := false;
   end else
   begin

     if CompteBonFacAGCbx.Text = '' then
     begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        CompteBonFacAGCbx.StyleElements:= [];
        RequiredCompteGlbl.Visible:= True;
        CompteGErrorP.Visible:= True;

        CompteBonFacAGCbx.SetFocus;
        CanClose := false;
     end else
     begin
         //---------------------------------------------------
        if RequiredFourGlbl.Visible <> True then
        begin

          if  (MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = false)  then
         begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacAGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonFacAGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.Bona_facTable.DisableControls;
          MainForm.Bona_facTable.Edit;
          MainForm.Bona_facTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime:= DateBonFacAGD.DateTime;
          MainForm.Bona_facTable.FieldValues['time_bafac']:=TimeOf(Now);
          MainForm.Bona_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_facTable.FieldValues['obser_bafac']:= ObserBonFacAGMem.Text;
          MainForm.Bona_facTable.FieldValues['num_cheque_bafac']:= NChequeBonFacAGCbx.Text;
          MainForm.Bona_facTable.FieldByName('montht_bafac').Value:= StrToFloat(StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacAGEdt.Text<>'' then
          begin
             MainForm.Bona_facTable.FieldByName('remise_bafac').Value:=StrToFloat(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_facTable.FieldByName('remise_bafac').Value:=0;
                   end;


          MainForm.Bona_facTable.FieldByName('montver_bafac').Value:=StrToFloat(StringReplace(BonFacARegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('montttc_bafac').Value:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          if (TimberBonFacAGEdt.Visible = True) AND (TimberBonFacAGEdt.Text <> '') then
          begin
          MainForm.Bona_facTable.FieldByName('timber_bafac').Value:=StrToFloat(StringReplace(TimberBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end;

          MainForm.Bona_facTable.Post;
          MainForm.Bona_facTable.EnableControls;

          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

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
//           if (CodeFA <> 0) AND (CodeFA <> null) then
//           begin
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(CodeFA));
//            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(CodeFA));
//            MainForm.RegfournisseurTable.Refresh ;
//            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
//           end;

         end;

              end else
                begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  FourBonFacAGCbx.StyleElements:= [];
                  RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqu?' ;
                  RequiredFourGlbl.Visible:= True;
                  NameFourGErrorP.Visible:= True;
                  FourBonFacAGCbx.SetFocus;
                  CanClose:= False;

                end;
          //---------------------------------------------------

     end;

       end;

        end;
  end  else
  begin

      if  (MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = false)  then
         begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacAGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonFacAGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.Bona_facTable.DisableControls;
          MainForm.Bona_facTable.Edit;
          MainForm.Bona_facTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime:= DateBonFacAGD.DateTime;
          MainForm.Bona_facTable.FieldValues['time_bafac']:=TimeOf(Now);
          MainForm.Bona_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_facTable.FieldValues['obser_bafac']:= ObserBonFacAGMem.Text;
          MainForm.Bona_facTable.FieldValues['num_cheque_bafac']:= NChequeBonFacAGCbx.Text;
          MainForm.Bona_facTable.FieldByName('montht_bafac').AsFloat:= StrToFloat(StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacAGEdt.Text<>'' then
          begin
             MainForm.Bona_facTable.FieldByName('remise_bafac').AsFloat:=StrToFloat(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_facTable.FieldByName('remise_bafac').AsFloat:=0;
                   end;


          MainForm.Bona_facTable.FieldByName('montver_bafac').AsFloat:=StrToFloat(StringReplace(BonFacARegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('montttc_bafac').AsFloat:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          if (TimberBonFacAGEdt.Visible = True) AND (TimberBonFacAGEdt.Text <> '') then
          begin
          MainForm.Bona_facTable.FieldByName('timber_bafac').AsFloat:=StrToFloat(StringReplace(TimberBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end;

          MainForm.Bona_facTable.Post;
          MainForm.Bona_facTable.EnableControls;

          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

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
           if (CodeFA <> 0) AND (CodeFA <> null) then
           begin
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(CodeFA));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(CodeFA));
            MainForm.RegfournisseurTable.Refresh ;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

         end;


     CanClose:= True;
  end;
end;

procedure TBonFacAGestionF.FormShow(Sender: TObject);
var CodeFA: Integer;
OLDCredit,NEWCredit : Double;
begin

// use this tage when i click AddBVFacBonRecGBtn bon button
 if Tag=0 then
 begin
    DateBonFacAGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//-- use this code to make the montants look lake money values-------//
      BonFacATotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonFacATotalHTLbl.Caption),ffNumber,14,2) ;
      BonFacATotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonFacATotalTVALbl.Caption),ffNumber,14,2) ;
      BonFacATotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonFacATotalTTCLbl.Caption),ffNumber,14,2) ;
      BonFacAResteLbl.Caption :=         FloatToStrF(StrToFloat(BonFacAResteLbl.Caption),ffNumber,14,2) ;
      BonFacARegleLbl.Caption :=         FloatToStrF(StrToFloat(BonFacARegleLbl.Caption),ffNumber,14,2) ;
      BonFacAGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(BonFacAGFourOLDCredit.Caption),ffNumber,14,2) ;
      BonFacAGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(BonFacAGFourNEWCredit.Caption),ffNumber,14,2) ;
 CodeFA:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger   ;
    NumBonFacAGEdt.Caption := 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeFA]);
 if (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> null)
AND (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0)  then
 begin
   if MainForm.Bona_facTable.FieldByName('fourbafac').AsWideString <> null then
      begin
   FourBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldByName('fourbafac').AsWideString;
      end;
      if MainForm.Bona_facTable.FieldByName('ModePaie').AsString <> null then
      begin
   ModePaieBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldByName('ModePaie').AsString;
      end;
      if MainForm.Bona_facTable.FieldByName('Compte').AsString <> null then
      begin
   CompteBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldByName('Compte').AsString;
      end;
   FourBonFacAGCbxExit(Sender);
   ProduitBonFacAGCbx.SetFocus;
 end else
     begin
        FourBonFacAGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if  Tag = 1 then
 begin
       BonFacAGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonFacAGFourOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
       BonFacAGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonFacAGFourNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;


   if MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = True then
   begin
    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'select code_f, credit_f from fournisseur where code_f = ' + IntToStr( MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:= True;

      if NOT (MainForm.SQLQuery.IsEmpty) then
     begin
      OLDCredit:= (MainForm.SQLQuery.FieldByName('credit_f').AsFloat);//  - (MainForm.Bona_facTable.FieldByName('MontantRes').AsFloat) ;

      NewCredit:=  MainForm.SQLQuery.FieldByName('credit_f').AsFloat;

     BonFacAGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( OLDCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonFacAGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( NewCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;

     end;
        MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
   end else
       begin
         FourBonFacAGCbxExit(Sender);
       end;
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
end;

procedure FullfillFormBonFacA;
begin
   if MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = True then
  begin
       FSplashVersement.DisableBonFacA;
  end;
  if MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = False then
   begin
     BonFacAGestionF.EnableBonFacA;
    end;


  if (MainForm.Bona_facTable.FieldByName('code_f').AsInteger<> 0) AND (MainForm.Bona_facTable.FieldByName('code_f').AsInteger<> null) then
  begin
  BonFacAGestionF.FourBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldByName('fourbafac').AsWideString;
  end;
  if (MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger<> 0) AND (MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger<>null)  then
  begin
  BonFacAGestionF.ModePaieBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldByName('ModePaie').AsString;
  end;
  if (MainForm.Bona_facTable.FieldByName('code_cmpt').AsInteger<> 0) AND (MainForm.Bona_facTable.FieldByName('code_cmpt').AsInteger<>null)  then
  begin
  BonFacAGestionF.CompteBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldByName('Compte').AsString;
  end;

  if  (MainForm.Bona_facTable.FieldByName('MontantRes').AsFloat<>null)  then
  begin
  BonFacAGestionF.BonFacAResteLbl.Caption:=CurrToStrF(((MainForm.Bona_facTable.FieldByName('MontantRes').AsFloat)),ffNumber,2) ;
  end;

  BonFacAGestionF.NumBonFacAGEdt.Caption:= MainForm.Bona_facTable.FieldByName('num_bafac').AsString;
  BonFacAGestionF.DateBonFacAGD.DateTime:= MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime;
  BonFacAGestionF.ObserBonFacAGMem.Text:= MainForm.Bona_facTable.FieldByName('obser_bafac').AsString;

   if MainForm.Bona_fac_listTable.ControlsDisabled  then
   begin
     MainForm.Bona_fac_listTable.EnableControls;
   end;
end;

procedure FullfillCredits(CodeF :Integer) ;
begin
   DataModuleF.SQLQuery3.Active:=False;
   DataModuleF.SQLQuery3.SQL.Clear;
   DataModuleF.SQLQuery3.SQL.Text:= 'SELECT credit_f from fournisseur where code_f ='+ IntToStr(CodeF);
   DataModuleF.SQLQuery3.Active:=True;

   BonFacAGestionF.BonFacAGFourOLDCredit.Caption:= FloatToStrF(((DataModuleF.SQLQuery3.FieldByName('credit_f').AsFloat)),ffNumber,14,2);
   BonFacAGestionF.BonFacAGFourNEWCredit.Caption:=FloatToStrF(0,ffNumber,14,2);

   DataModuleF.SQLQuery3.Active:=False;
   DataModuleF.SQLQuery3.SQL.Clear;

end;

procedure TBonFacAGestionF.sSpeedButton7Click(Sender: TObject);
begin

  if (FourBonFacAGCbx.Text <> '')
    and (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0)
    and (MainForm.Bona_facTable.FieldValues['code_f'] <> Null )  then

    begin
    MainForm.Bona_facTable.First;
  //  MainForm.Bona_facTable.Refresh;
    MainForm.Bona_fac_listTable.Refresh;

    FullfillFormBonFacA();

      FullfillCredits(MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
  end else

    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FourBonFacAGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous pla?t entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
   end

end;

procedure TBonFacAGestionF.sSpeedButton6Click(Sender: TObject);
begin

  if (FourBonFacAGCbx.Text <> '')
    and (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0)
    and (MainForm.Bona_facTable.FieldValues['code_f'] <> Null )  then

    begin
    MainForm.Bona_facTable.Prior;
  //  MainForm.Bona_facTable.Refresh;
    MainForm.Bona_fac_listTable.Refresh;

    FullfillFormBonFacA();

      FullfillCredits(MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
  end else

    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FourBonFacAGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous pla?t entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
   end
end;

procedure TBonFacAGestionF.sSpeedButton5Click(Sender: TObject);
begin

  if (FourBonFacAGCbx.Text <> '')
    and (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0)
    and (MainForm.Bona_facTable.FieldValues['code_f'] <> Null )  then

    begin
    MainForm.Bona_facTable.Next;
  //  MainForm.Bona_facTable.Refresh;
    MainForm.Bona_fac_listTable.Refresh;

    FullfillFormBonFacA();

      FullfillCredits(MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FourBonFacAGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous pla?t entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
   end
end;

procedure TBonFacAGestionF.sSpeedButton4Click(Sender: TObject);
begin

  if (FourBonFacAGCbx.Text <> '')
    and (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0)
    and (MainForm.Bona_facTable.FieldValues['code_f'] <> Null )  then

    begin
    MainForm.Bona_facTable.Last;
  //  MainForm.Bona_facTable.Refresh;
    MainForm.Bona_fac_listTable.Refresh;

    FullfillFormBonFacA();

      FullfillCredits(MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FourBonFacAGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous pla?t entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
   end
end;

procedure TBonFacAGestionF.AddBAFacBonFacAGBtnClick(Sender: TObject);
var
  codeFA,CodeCB : integer;
begin
 Timer1.Enabled:=False;

      begin
     FourBonFacAGCbx.Clear;
     ModePaieBonFacAGCbx.Clear;
     CompteBonFacAGCbx.Clear;
     NChequeBonFacAGCbx.Clear;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.FournisseurTable.Refresh;
   MainForm.Bona_FacTable.Refresh;
   MainForm.Bonv_Fac_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonFacAPListDataS.DataSet.Refresh;
   MainForm.BonFacAListDataS.DataSet.Refresh;
   Refresh;

     ModePaieBonFacAGCbx.Refresh;
     CompteBonFacAGCbx.Refresh;

     EnableBonFacA;

 codeFA:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bona_facTable.RecordCount <= 0 then
      begin

        MainForm.Bona_facTable.Insert;
        MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger:=1;
        MainForm.Bona_facTable.FieldByName('num_bafac').AsString:= 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime:= DateOf(Today);
        MainForm.Bona_facTable.FieldByName('time_bafac').AsDateTime:=TimeOf(Now);
        MainForm.Bona_facTable.Post;
        codeFA := MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
      end else
          begin
            MainForm.Bona_facTable.Last;
            codeFA := MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' WHERE code_bafac = ' + QuotedStr(IntToStr(codeFA));
            MainForm.Bona_fac_listTable.Active:=True;

           if MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin
           codeFA := MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
           end else
           begin

           MainForm.Bona_facTable.Insert;
           MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger:= codeFA + 1;
           MainForm.Bona_facTable.FieldByName('num_bafac').AsString:=  'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFA + 1)]);
           MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime:= DateOf(Today);
           MainForm.Bona_facTable.FieldByName('time_bafac').AsDateTime:= TimeOf(Now);
           MainForm.Bona_facTable.Post;

           end;
//            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonFacATotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonFacAGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonFacVGEdt.Text),ffNumber,14,2) ;
    BonFacATotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
    BonFacATotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
    BonFacAResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
    BonFacARegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
    BonFacAGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
    BonFacAGFourNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bona_FacTable.FieldByName('code_bafac').AsInteger   ;
 NumBonFacAGEdt.Caption := 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     FourBonFacAGCbx.SetFocus;

     Tag :=0;

     MainForm.Bona_fac_listTable.Refresh;

end;

procedure TBonFacAGestionF.EditBAFacBonFacAGBtnClick(Sender: TObject);
 Var CodeFA :Integer;
begin
  CodeFA := MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
            //------- This is to delete data from tre and reg ih not valide----------------------------------------------
           if (CodeFA <> 0) AND (CodeFA <> null) then
           begin
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(CodeFA));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(CodeFA));
            MainForm.RegfournisseurTable.Refresh ;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

      DataModuleF.SQLQuery3.Active:=False;
      DataModuleF.SQLQuery3.SQL.Clear;
      DataModuleF.SQLQuery3.SQL.Text:='Select credit_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      DataModuleF.SQLQuery3.Active:=True;
 // this is to enable the componets to edit the bon

  EnableBonFacA;

 // this is to unvalider the bon
  begin
  MainForm.Bona_facTable.Edit;
  MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean:= False;
  MainForm.Bona_facTable.Post;
  end;

// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonFacAGFourOLDCredit.Caption:=
  FloatToStrF((((DataModuleF.SQLQuery3.FieldByName('credit_f').Value)- StrToFloat(StringReplace(BonFacAResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,14,2);

  BonFacARegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonFacAResteLbl.Caption:= BonFacATotalTTCLbl.Caption;

      DataModuleF.SQLQuery3.Active:=false;
      DataModuleF.SQLQuery3.SQL.Clear;
      MainForm.FournisseurTable.Refresh ;
 //----------------------------------------
      begin
//           MainForm.ProduitTable.DisableControls;
//           MainForm.ProduitTable.Active:=False;
//           MainForm.ProduitTable.SQL.Clear;
//           MainForm.ProduitTable.SQL.Text:='SELECT *, '
//          +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
//          +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
//          +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
//          +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
//          +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
//          +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
//          +' (qut_p + qutini_p ) AS QutDispo, '
//          +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
//          +' FROM produit ' ;
//           MainForm.ProduitTable.Active:=True;


           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_p,qut_p,cond_p FROM bona_fac_list WHERE code_bafac =  '
                                                 + IntToStr (MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger)
                                                 + 'GROUP BY code_p,qut_p,cond_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin

            MainForm.SQLQuery4.Active:=False;
            MainForm.SQLQuery4.SQL.Clear;
            MainForm.SQLQuery4.SQL.Text:='SELECT code_p,qut_p FROM produit WHERE code_p = ' +IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) ;
            MainForm.SQLQuery4.Active:=True;

            MainForm.SQLQuery4.Edit;
            MainForm.SQLQuery4.FieldByName('qut_p').Value:= ( MainForm.SQLQuery4.FieldByName('qut_p').Value
                                                         - ((MainForm.SQLQuery.FieldByName('qut_p').Value) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger))));
//            MainForm.ProduitTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
//            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
            MainForm.SQLQuery4.Post;




            MainForm.SQLQuery.Next;
           end;

           MainForm.SQLQuery4.Active:=False;
           MainForm.SQLQuery4.SQL.Clear;

//            MainForm.ProduitTable.Active:=False;
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
           MainForm.ProduitTable.Refresh;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
          MainForm.Bona_facTable.Refresh;

     end;

  //---thise is to visivle timber after edit and calculate it----//
     FourBonFacAGCbxExit(Sender);
     ModePaieBonFacAGCbxClick(Sender);

end;

procedure TBonFacAGestionF.ValiderBAFacBonFacAGBtnClick(Sender: TObject);
var CodeOCB,CodeRF : Integer;
begin

 if FourBonFacAGCbx.Text <> '' then
 begin
  if RequiredFourGlbl.Visible <> True then
  begin
   if ModePaieBonFacAGCbx.Text <> '' then
   begin
    if CompteBonFacAGCbx.Text <> '' then
    begin

 //      FourBonFacAGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;


      if (MainForm.SQLQuery.IsEmpty) then
      begin
       FourBonFacAGCbx.Text := '';
       BonFacAGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonFacAGFourNEWCredit.Caption:=BonFacAGFourOLDCredit.Caption;
             sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FourBonFacAGCbx.StyleElements:= [];
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
       exit;
      end;

           MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//      MainForm.SQLQuery.Active:=True;
//      MainForm.SQLQuery.EnableControls;

      //----------------------------------------------------------------------------

       MainForm.Mode_paiementTable.DisableControls;
      MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonFacAGCbx.Text )+')'  ;
      MainForm.Mode_paiementTable.Active:=True;

      if (MainForm.Mode_paiementTable.IsEmpty) then
      begin
       ModePaieBonFacAGCbx.Text := '';
       sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ModePaieBonFacAGCbx.StyleElements:= [];
      ModepPaiGErrorP.Visible:= True;

      ModePaieBonFacAGCbx.SetFocus;
       exit;
      end;

           MainForm.Mode_paiementTable.Active:=false;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
      MainForm.Mode_paiementTable.Active:=True;
      MainForm.Mode_paiementTable.EnableControls;



       BonFacARegleLbl.Caption:=  FloatToStrF(StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2);
       BonFacAResteLbl.Caption := FloatToStrF(0,ffNumber,14,2);

    FSplashVersement.DisableBonFacA;

     sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

//--- this is for adding to the priduit
      begin

           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bafacl,code_p,  qut_p, cond_p , prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,qutinstock_p FROM bona_fac_list WHERE code_bafac =  '
                                                 + IntToStr (MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger)
                                                 + 'GROUP BY code_bafacl, code_p, qut_p, cond_p,prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,qutinstock_p' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
//            MainForm.ProduitTable.DisableControls;
            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
            MainForm.SQLQuery3.SQL.Text:='SELECT code_p,qut_p,prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p FROM produit WHERE code_p = ' +IntToStr(MainForm.SQLQuery.FieldByName('code_p').AsInteger) ;
            MainForm.SQLQuery3.Active:=True;
            MainForm.SQLQuery3.Edit;
            MainForm.SQLQuery3.FieldByName('qut_p').Value:= ( MainForm.SQLQuery3.FieldByName('qut_p').Value
                                                         + ((MainForm.SQLQuery.FieldByName('qut_p').Value) * ((MainForm.SQLQuery.FieldByName('cond_p').AsInteger))));
            MainForm.SQLQuery3.FieldByName('prixht_p').Value:= MainForm.SQLQuery.FieldByName('prixht_p').Value;
            MainForm.SQLQuery3.FieldByName('tva_p').Value:= MainForm.SQLQuery.FieldByName('tva_p').Value;
            MainForm.SQLQuery3.FieldByName('prixvd_p').Value:=  MainForm.SQLQuery.FieldByName('prixvd_p').Value;
            MainForm.SQLQuery3.FieldByName('prixvr_p').Value:=  MainForm.SQLQuery.FieldByName('prixvr_p').Value;
            MainForm.SQLQuery3.FieldByName('prixvg_p').Value:=  MainForm.SQLQuery.FieldByName('prixvg_p').Value;
            MainForm.SQLQuery3.FieldByName('prixva_p').Value:=  MainForm.SQLQuery.FieldByName('prixva_p').Value;
            MainForm.SQLQuery3.FieldByName('prixva2_p').Value:= MainForm.SQLQuery.FieldByName('prixva2_p').Value;
            MainForm.SQLQuery3.Post;

             MainForm.SQLQuery.Edit;
             MainForm.SQLQuery.FieldByName('qutinstock_p').Value:=
             (MainForm.SQLQuery.FieldByName('qut_p').Value)*(MainForm.SQLQuery.FieldByName('cond_p').AsInteger);
             MainForm.SQLQuery.Post;

            MainForm.SQLQuery.Next;
           end;

           MainForm.SQLQuery3.Active:=False;
           MainForm.SQLQuery3.SQL.Clear;

           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
          MainForm.Bona_facTable.Refresh;
          DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the facture de vente fileds
     begin
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr(FourBonFacAGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ModePaieBonFacAGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(CompteBonFacAGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

          MainForm.Bona_facTable.Edit;
          MainForm.Bona_facTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
          MainForm.Bona_facTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime:= DateBonFacAGD.DateTime;
          MainForm.Bona_facTable.FieldByName('time_bafac').AsDateTime:=TimeOf(Now);
          MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_facTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_facTable.FieldByName('obser_bafac').AsWideString:= ObserBonFacAGMem.Text;
          MainForm.Bona_facTable.FieldByName('num_cheque_bafac').AsString:= NChequeBonFacAGCbx.Text;
          MainForm.Bona_facTable.FieldByName('montht_bafac').Value:= StrToFloat(StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacaGEdt.Visible = True then
          begin
          MainForm.Bona_facTable.FieldByName('timber_bafac').Value:= StrToFloat(StringReplace(TimberBonFacaGEdt.Text, #32, '', [rfReplaceAll]));
          end;

          if RemiseBonFacAGEdt.Text<>'' then
          begin
          MainForm.Bona_facTable.FieldByName('remise_bafac').Value:=StrToFloat(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_facTable.FieldByName('remise_bafac').Value:=0;
                   end;

          MainForm.Bona_facTable.FieldByName('montver_bafac').Value:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('montttc_bafac').Value:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean:= True;

          if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
          begin
           MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger:=1 ;
          end;
           if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
          begin
           MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger:=2 ;
          end;
          if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
             OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
          begin
           MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger:=3 ;
          end;
          if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
          begin
           MainForm.Bona_facTable.FieldByName('code_mdpai').AsInteger:=4 ;
          end;

          MainForm.Bona_facTable.Post;

       //if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then

        begin


          if Tag = 0 then

          begin
             if NOT (MainForm.RegfournisseurTable.IsEmpty) then
            begin
             MainForm.RegfournisseurTable.Last;
             CodeRF:= MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger+ 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegfournisseurTable.Append;
            MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger:= CodeRF;
            MainForm.RegfournisseurTable.FieldByName('code_bafac').AsInteger:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= NumBonFacAGEdt.Caption;
            MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= DateBonFacAGD.DateTime;
            MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
            MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= ObserBonFacAGMem.Text;
            MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= NChequeBonFacAGCbx.Text;
            MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 3;
            MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

            if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
            end;
             if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
            end;
            if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
               OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
            begin
             MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
            end;
            if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
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
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_bafac ='+IntToStr(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger);
                    MainForm.RegfournisseurTable.Active:=True;

                    if NOT (MainForm.RegfournisseurTable.IsEmpty) then
                 begin
                  MainForm.RegfournisseurTable.Edit;
                  MainForm.RegfournisseurTable.FieldByName('code_bafac').AsInteger:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= NumBonFacAGEdt.Caption;
                  MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= DateBonFacAGD.DateTime;
                  MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
                  MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= ObserBonFacAGMem.Text;
                  MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= NChequeBonFacAGCbx.Text;
                  MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 3;
                  MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                  if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
                  end;
                   if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
                  end;
                  if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                     OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
                  end;

                  MainForm.RegfournisseurTable.Post;
                  MainForm.RegfournisseurTable.Refresh;

                 end else
                    begin

                       MainForm.RegfournisseurTable.Active:=false;
                       MainForm.RegfournisseurTable.SQL.Clear;
                       MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur';
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
                      MainForm.RegfournisseurTable.FieldByName('code_bafac').AsInteger:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
                      MainForm.RegfournisseurTable.FieldByName('nom_rf').AsString:= NumBonFacAGEdt.Caption;
                      MainForm.RegfournisseurTable.FieldByName('code_f').AsInteger:= MainForm.SQLQuery.FieldByName('code_f').AsInteger;
                      MainForm.RegfournisseurTable.FieldByName('date_rf').AsDateTime:= DateBonFacAGD.DateTime;
                      MainForm.RegfournisseurTable.FieldByName('time_rf').AsDateTime:=TimeOf(Now);
                      MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.RegfournisseurTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.RegfournisseurTable.FieldByName('obser_rf').AsWideString:= ObserBonFacAGMem.Text;
                      MainForm.RegfournisseurTable.FieldByName('num_cheque_rf').AsString:= NChequeBonFacAGCbx.Text;
                      MainForm.RegfournisseurTable.FieldByName('bon_or_no_rf').AsInteger:= 3;
                      MainForm.RegfournisseurTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.RegfournisseurTable.FieldByName('montver_rf').Value:=StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                      if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                      begin
                       MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=1 ;
                      end;
                       if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                      begin
                       MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=2 ;
                      end;
                      if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                         OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
                      begin
                       MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=3 ;
                      end;
                      if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                      begin
                       MainForm.RegfournisseurTable.FieldByName('code_mdpai').AsInteger:=4 ;
                      end;

                      MainForm.RegfournisseurTable.Post;
                      MainForm.RegfournisseurTable.Refresh;

                    end;

                    MainForm.RegfournisseurTable.Active:=false;
                    MainForm.RegfournisseurTable.SQL.Clear;
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur';
                    MainForm.RegfournisseurTable.Active:=True;
                    MainForm.RegfournisseurTable.EnableControls;

              end;

          end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//          MainForm.SQLQuery.Active:=True;
//          MainForm.SQLQuery.EnableControls;

                        //--- this is for adding the money to the caisse----
         begin
           if Tag=0 then
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
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= DateBonFacAGD.DateTime;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pi?ce N? '+NumBonFacAGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= FourBonFacAGCbx.Text;
                 //   MainForm.Opt_cas_bnk_CaisseTable.FieldByName('encaiss_ocb']:= StrToFloat(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                     if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                    end;
                     if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                    end;
                    if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                       OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                    end;
                    if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                    end;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bafac').AsInteger:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt (MainForm.UserIDLbl.Caption);

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
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bafac ='+IntToStr(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger) ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                        if NOT ( MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                        begin

                          MainForm.Opt_cas_bnk_CaisseTable.Edit;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= DateBonFacAGD.DateTime;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pi?ce N? '+NumBonFacAGEdt.Caption;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= FourBonFacAGCbx.Text;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                           if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                          end;
                           if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                          end;
                          if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                             OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                          end;
                          if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                          end;

                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bafac').AsInteger:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt (MainForm.UserIDLbl.Caption);

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
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('date_ocb').AsDateTime:= DateBonFacAGD.DateTime;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('time_ocb').AsDateTime:= TimeOf(Now);;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nom_ocb').AsString:= 'Versement au Fournisseur pi?ce N? '+NumBonFacAGEdt.Caption;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('third_ocb').AsString:= FourBonFacAGCbx.Text;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('decaiss_ocb').Value:= StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                                 if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=1 ;
                                end;
                                 if (LowerCase(ModePaieBonFacAGCbx.Text)='ch?que') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=2 ;
                                end;
                                if (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                                   OR (LowerCase(ModePaieBonFacAGCbx.Text)='? terme' ) then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=3 ;
                                end;
                                if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_mdpai').AsInteger:=4 ;
                                end;

                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_cmpt').AsInteger:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('nature_ocb').AsBoolean:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_bafac').AsInteger:= MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldByName('code_ur').AsInteger:= StrToInt (MainForm.UserIDLbl.Caption);

                                MainForm.Opt_cas_bnk_CaisseTable.Post;
                                MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                                MainForm.Opt_cas_bnk_BankTable.Refresh;


                              MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
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

        //-----------------------------------------------------------------------------

     end else
         begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          CompteBonFacAGCbx.StyleElements:= [];
          RequiredCompteGlbl.Visible:= True;
          CompteGErrorP.Visible:= True;
          CompteBonFacAGCbx.SetFocus;
         end;

       end else
           begin
               sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ModePaieBonFacAGCbx.StyleElements:= [];
            RequiredMPGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonFacAGCbx.SetFocus;
           end;

                  end else
                begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  FourBonFacAGCbx.StyleElements:= [];
                  RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqu?' ;
                  RequiredFourGlbl.Visible:= True;
                  NameFourGErrorP.Visible:= True;
                  FourBonFacAGCbx.SetFocus;
                end;
  end else
        begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          FourBonFacAGCbx.StyleElements:= [];
          RequiredFourGlbl.Caption:= 'S''il vous pla?t entrer le nom de le Fournisseur' ;
          RequiredFourGlbl.Visible:= True;
          NameFourGErrorP.Visible:= True;

          FourBonFacAGCbx.SetFocus;
        end;
end;

procedure TBonFacAGestionF.FourBonFacAGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece
      ModePaieBonFacAGCbxDropDown(Self);
      if Tag = 0 then
      begin
      ModePaieBonFacAGCbx.ItemIndex:=0;
      ModePaieBonFacAGCbxClick(Self) ;
      end;
end;

procedure TBonFacAGestionF.FourBonFacAGCbxExit(Sender: TObject);
var CodeF: Integer;
RegFCreditF,OLDCreditC,OLDCreditFINI : Double;
begin

  if FourBonFacAGCbx.Text <> '' then
    begin
     FourBonFacAGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_f,oldcredit_f,credit_f,activ_f  FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;
     if NOT  MainForm.SQLQuery.IsEmpty then
     begin
      OLDCreditFINI:= MainForm.SQLQuery.FieldByName('credit_f').AsFloat;

      if MainForm.SQLQuery.FieldByName('activ_f').AsBoolean <> False then
      begin

      if (MainForm.SQLQuery.IsEmpty) then
      begin
       FourBonFacAGCbx.Text := '';
       BonFacAGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonFacAGFourNEWCredit.Caption:=BonFacAGFourOLDCredit.Caption;
       exit;
      end;
      CodeF:= MainForm.SQLQuery.FieldByName('code_f').AsInteger ;

//       MainForm.Bona_recTableCredit.DisableControls;
//      MainForm.Bona_recTableCredit.Active:=false;
//      MainForm.Bona_recTableCredit.SQL.Clear;
//      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec WHERE valider_barec = true AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_barec '  ;
//      MainForm.Bona_recTableCredit.Active:=True;
//
//
//      while NOT (MainForm.Bona_recTableCredit.Eof) do
//     begin
//     OLDCreditC := OLDCreditC + MainForm.Bona_recTableCredit.FieldValues['MontantRes'];
//     MainForm.Bona_recTableCredit.Next;
//     end;
//      MainForm.Bona_recTableCredit.EnableControls;
//
//
//
//      MainForm.RegfournisseurTable.DisableControls;
//      MainForm.RegfournisseurTable.Active:=false;
//      MainForm.RegfournisseurTable.SQL.Clear;
//      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur WHERE bon_or_no_rf = 1 AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_rf '  ;
//      MainForm.RegfournisseurTable.Active:=True;

//     while NOT (MainForm.RegfournisseurTable.Eof) do
//     begin
//     RegFCreditF := RegFCreditF + MainForm.RegfournisseurTable.FieldValues['montver_rf'];
//     MainForm.RegfournisseurTable.Next;
//     end;


        if  NOT (OLDCreditFINI = 0) then
        begin
//       MainForm.Bona_recTableCredit.last;
         BonFacAGFourOLDCredit.Caption:= CurrToStrF((OLDCreditFINI ),ffNumber,2) ;

//         if NOT (BonFacAPListDataS.DataSet.IsEmpty) then
//          begin
//           BonFacAGFourNEWCredit.Caption:=
//           CurrToStrF((MainForm.Bona_recTableCredit.FieldByName('MontantRes').AsFloat ) + StrToFloat(StringReplace(BonFacAResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//          end;
          end else
          begin
           BonFacAGFourOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
          end;



//      MainForm.Bona_recTableCredit.DisableControls;
//      MainForm.Bona_recTableCredit.Active:=false;
//      MainForm.Bona_recTableCredit.SQL.Clear;
//      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec '  ;
//      MainForm.Bona_recTableCredit.Active:=True;
//      MainForm.Bona_recTableCredit.last;
//      MainForm.Bona_recTableCredit.EnableControls;
//
//
//
//      MainForm.RegfournisseurTable.Active:=false;
//      MainForm.RegfournisseurTable.SQL.Clear;
//      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur ORDER BY time_rf  '  ;
//      MainForm.RegfournisseurTable.Active:=True;
//      MainForm.RegfournisseurTable.EnableControls;



      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//      MainForm.SQLQuery.Active:=True;
//      MainForm.SQLQuery.EnableControls;

      if NOT (BonFacAPListDataS.DataSet.IsEmpty) then
      begin
      ValiderBAFacBonFacAGBtn.Enabled:= True;
      ValiderBAFacBonFacAGBtn.ImageIndex:=12;
      end;

      MainForm.Bona_fac_listTable.Refresh;

            FourBonFacAGCbx.StyleElements:= [seFont,seBorder,seBorder];
            RequiredFourGlbl.Visible:= False;
            NameFourGErrorP.Visible:= False;

       end else
           begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            FourBonFacAGCbx.StyleElements:= [];
            RequiredFourGlbl.Caption:='Ce Fournisseur est bloqu?';
            RequiredFourGlbl.Visible:= True;
            NameFourGErrorP.Visible:= True;
            FourBonFacAGCbx.SetFocus;
           end;

           end else
           begin
              FourBonFacAGCbx.Text:='';

              MainForm.SQLQuery.Active:=false;
              MainForm.SQLQuery.SQL.Clear;
//              MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//              MainForm.SQLQuery.Active:=True;
//              MainForm.SQLQuery.EnableControls;
           end;

    end else
    begin


     BonFacAGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonFacAGFourNEWCredit.Caption:=BonFacAGFourOLDCredit.Caption;
     end;


end;

procedure TBonFacAGestionF.FourBonFacAGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
        FourBonFacAGCbx.Items.Clear;
//        MainForm.SQLQuery.DisableControls;
        MainForm.FDQuery2.Active:=false;
        MainForm.FDQuery2.SQL.Clear;
        MainForm.FDQuery2.SQL.Text:='Select nom_f FROM fournisseur ORDER BY code_f'  ;
        MainForm.FDQuery2.Active:=True;

       MainForm.FDQuery2.first;

     for I := 0 to MainForm.FDQuery2.RecordCount - 1 do
     if MainForm.FDQuery2.FieldByName('nom_f').IsNull = False then
     begin
          FourBonFacAGCbx.Items.Add(MainForm.FDQuery2.FieldByName('nom_f').AsWideString);
       MainForm.FDQuery2.Next;
      end;

        MainForm.FDQuery2.Active:=false;
        MainForm.FDQuery2.SQL.Clear;
end;

procedure TBonFacAGestionF.FourBonFacAGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonFacAGestionF.FourBonFacAGCbxSelect(Sender: TObject);
var CodeF: Integer;
begin

      if FourBonFacAGCbx.Text <> '' then
    begin
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

      CodeF:= MainForm.SQLQuery.FieldByName('code_f').AsInteger ;

        //Here we pot code_f in bonrec table
        MainForm.Bona_facTable.Edit;
        MainForm.Bona_facTable.FieldByName('code_f').AsInteger := CodeF;
        MainForm.Bona_facTable.Post;

      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
     end;

end;

procedure TBonFacAGestionF.ModePaieBonFacAGCbxChange(Sender: TObject);
begin
  if (LowerCase(ModePaieBonFacAGCbx.Text)='esp?ce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
  begin
  TimberPerctageBonFacAGEdt.Visible:= True;
  TimberBonFacAGEdt.Visible:= True;
  TimberPerctageBonFacAGLbl.Visible:= True;
  TimberBonFacAGlbl.Visible:= True;

  end else
      begin
        TimberPerctageBonFacAGEdt.Visible:= False;
        TimberBonFacAGEdt.Visible:= False;
        TimberPerctageBonFacAGLbl.Visible:= False;
        TimberBonFacAGlbl.Visible:= False;
      end;
   MainForm.Bona_fac_listTable.Refresh;


   RequiredMPGlbl.Visible:= False;
   ModepPaiGErrorP.Visible:= False;
end;

procedure TBonFacAGestionF.ModePaieBonFacAGCbxClick(Sender: TObject);
begin
  if ModePaieBonFacAGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonFacAGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonFacAGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

    ModePaieBonFacAGCbxChange(Sender);
  end;
end;

procedure TBonFacAGestionF.ModePaieBonFacAGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ORDER BY code_mdpai';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieBonFacAGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieBonFacAGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
 ModePaieBonFacAGCbxChange(Sender);
end;

procedure TBonFacAGestionF.CompteBonFacAGCbxChange(Sender: TObject);
begin
CompteBonFacAGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonFacAGestionF.CompteBonFacAGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ORDER BY code_cmpt ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteBonFacAGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteBonFacAGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TBonFacAGestionF.ProduitBonFacAGCbxEnter(Sender: TObject);
var
  I : Integer;
  KeyState: TKeyboardState;
begin

     if ResherchPARDesProduitsRdioBtn.Checked then
     begin
      ProduitBonFacAGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
       begin
         ProduitBonFacAGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
         MainForm.SQLQuery.Next;
        end;


      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin
      ProduitBonFacAGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT refer_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if( MainForm.SQLQuery.FieldByName('refer_p').IsNull = False )  then
       begin
            ProduitBonFacAGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('refer_p').AsString);
         MainForm.SQLQuery.Next;
        end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

     if ResherchPARCBProduitsRdioBtn.Checked then
     begin
      ProduitBonFacAGCbx.Properties.Items.Clear;

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

procedure TBonFacAGestionF.ProduitBonFacAGCbxExit(Sender: TObject);
begin
ProduitBonFacAGCbx.Text:='';
//ProduitBonFacAGCbx.AutoDropDown:=False;
end;

procedure TBonFacAGestionF.ProduitBonFacAGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonFacAGCbx.AutoDropDown:= True;
  end;
end;

procedure addToQutIfSameProduit(CodeP:Integer);
begin
          //This is for adding qut if it the same produit
      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
      MainForm.SQLQuery4.SQL.Text := 'SELECT code_bafacl,qut_p,code_p FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger));
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
          BonFacAGestionF.ProduitBonFacAGCbx.Clear;
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

          Exit;

        end;
        MainForm.SQLQuery4.Next;
      end;

      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
//      MainForm.Bona_fac_listTable.Refresh;
end;

procedure TBonFacAGestionF.ProduitBonFacAGCbxKeyPress(Sender: TObject;
  var Key: Char);

    var CodeFA,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;
    const
    N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
if key = #13 then
 begin
 if (ProduitBonFacAGCbx.Text <>'') AND NOT (ProduitBonFacAGCbx.Text[1] in N ) then
 begin
  key := #0;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonFacAGCbx.Text)+')';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            MainForm.Bona_fac_listTable.DisableControls;
            MainForm.Bona_fac_listTable.IndexFieldNames:='';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' ORDER by code_bafacl' ;
            MainForm.Bona_fac_listTable.Active:=True;

            MainForm.Bona_fac_listTable.Last;
             if  MainForm.Bona_fac_listTable.IsEmpty then
             begin
               MainForm.Bona_fac_listTable.Last;
               CodeFA := 1;
             end else
                 begin
                  MainForm.Bona_fac_listTable.Last;
                  CodeFA:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
                 end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;
                 
             MainForm.Bona_fac_listTable.Last;
             MainForm.Bona_fac_listTable.Append;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeFA ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;
             
             MainForm.Bona_fac_listTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']);
              
             MainForm.Bona_fac_listTable.Post ;
             MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
            MainForm.Bona_fac_listTable.Active:=True;

            ProduitBonFacAGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_fac_listTable.EnableControls;
           MainForm.Bona_fac_listTable.Last;
           if FourBonFacAGCbx.Text<>'' then
            begin
            ValiderBAFacBonFacAGBtn.Enabled:= True;
            ValiderBAFacBonFacAGBtn.ImageIndex:=12;
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
//      if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
//      begin
//        NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//      end else begin
//        NomP:='';
//      end;
//      FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d?ja ins?r? : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
//      FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
//      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//       FSplashAddUnite.Show;
//    //--- this tage = 0 is for multi name added by produit combobox----//
//       FSplashAddUnite.Tag:=4;
     end;

     end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefProduitsRdioBtn.Checked then
  begin
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,refer_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonFacAGCbx.Text)+')';
            MainForm.SQLQuery.Active:=True;
            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            MainForm.Bona_fac_listTable.DisableControls;
            MainForm.Bona_fac_listTable.IndexFieldNames:='';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' ORDER by code_bafacl' ;
            MainForm.Bona_fac_listTable.Active:=True;
           if  MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin
             CodeFA := 1;
           end else
               begin
                MainForm.Bona_fac_listTable.Last;
                CodeFA:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
               end;                     if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;
                 
             MainForm.Bona_fac_listTable.Insert;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeFA ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             MainForm.Bona_fac_listTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']);
             
             MainForm.Bona_fac_listTable.Post ;
             MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';

            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
            MainForm.Bona_fac_listTable.Active:=True;

            ProduitBonFacAGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_fac_listTable.EnableControls;
            MainForm.Bona_fac_listTable.Last;
            if FourBonFacAGCbx.Text<>'' then
              begin
              ValiderBAFacBonFacAGBtn.Enabled:= True;
              ValiderBAFacBonFacAGBtn.ImageIndex:=12;
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
//            if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
//            begin
//            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//            end else begin
//              NomP:='';
//            end;
//            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d?ja ins?r? : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
//            FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
//            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//             FSplashAddUnite.Show;
//          //--- this tage = 3 is for multi name added by produit combobox----//
//             FSplashAddUnite.Tag:=4;
         end;
    end;
 //---------------------------------------------------------------------------------------------
  if ResherchPARCBProduitsRdioBtn.Checked then
  begin
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonFacAGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
   begin
    CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
   end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,codebar_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonFacAGCbx.Text)+')';
    MainForm.SQLQuery.Active:=True;
    CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

     if  (MainForm.SQLQuery.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bona_fac_listTable.DisableControls;
            MainForm.Bona_fac_listTable.IndexFieldNames:='';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:=  FALSQL +' ORDER by code_bafacl' ;
            MainForm.Bona_fac_listTable.Active:=True;

           if  MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin
             CodeFA := 1;
           end else
               begin
                MainForm.Bona_fac_listTable.Last;
                CodeFA:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
               end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             MainForm.Bona_fac_listTable.Insert;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeFA ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             MainForm.Bona_fac_listTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']);
             
             MainForm.Bona_fac_listTable.Post ;
             MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';

             MainForm.Bona_fac_listTable.Active:=False;
             MainForm.Bona_fac_listTable.SQL.Clear;
             MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
             MainForm.Bona_fac_listTable.Active:=True;

            ProduitBonFacAGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_fac_listTable.EnableControls;
            MainForm.Bona_fac_listTable.Last;
            if FourBonFacAGCbx.Text<>'' then
              begin
              ValiderBAFacBonFacAGBtn.Enabled:= True;
              ValiderBAFacBonFacAGBtn.ImageIndex:=12;
              end;
         end else
             begin

                  //This is for adding qut if it the same produit
                  addToQutIfSameProduit(CodeP);


                  //We use this when when we to disabable multiple qut for same produit

//                FSplashAddUnite:=TFSplashAddUnite.Create(Application);
//                FSplashAddUnite.Image1.ImageIndex:=3;
//                FSplashAddUnite.Width:=300;
//                FSplashAddUnite.Height:=160;
//                FSplashAddUnite.Panel1.Color:= $0028CAFE;
//                FSplashAddUnite.Color:= $00EFE9E8;
//                FSplashAddUnite.LineP.Color:=$0028CAFE;
//                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
//                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
//                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
//                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
//                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
//                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
//                if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
//                begin
//                NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//                end else begin
//                  NomP:='';
//                end;
//                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d?ja ins?r? : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
//                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
//                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
//                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
//                FSplashAddUnite.Image1.Visible:=True;
//                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
//                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
//                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
//                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
//                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
//                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
//                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
//                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
//                FSplashAddUnite.Top:=   MainForm.Top + 5;
//                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
//                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
//                FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
//                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//                 FSplashAddUnite.Show;
//              //--- this tage = 0 is for multi name added by produit combobox----//
//                 FSplashAddUnite.Tag:=4;
             end;
          end;

   end;
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;

         MainForm.Bona_fac_listTable.Refresh;
//        ProduitBonFacAGCbx.AutoDropDown:=False;
         ProduitBonFacAGCbx.SelectAll;

     end else
         begin
           ProduitBonFacAGCbx.Text:= '';
         end;
     MainForm.Bona_fac_listTable.Last;
 end;
end;

procedure TBonFacAGestionF.EnterAddProduitBonFacAGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonFacAGCbxKeyPress(Sender, key);
end;

procedure TBonFacAGestionF.NewAddProduitBonFacAGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonFacAGestionF.DeleteProduitBonFacAGBtnClick(Sender: TObject);
begin
 if  MainForm.Bona_fac_listTable.RecordCount = 1 then
 begin
    MainForm.Bona_fac_listTable.DisableControls;
    MainForm.Bona_fac_listTable.Refresh;
    MainForm.Bona_fac_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    MainForm.Bona_fac_listTable.EnableControls;
    FourBonFacAGCbx.StyleElements:= [];
    RequiredFourGlbl.Visible:= False;
    NameFourGErrorP.Visible:= False;
    BonFacATotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacATotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacATotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacARegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacAResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonFacAGFourNEWCredit.Caption:= BonFacATotalTTCLbl.Caption;
 end else
 if MainForm.Bona_fac_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      MainForm.Bona_fac_listTable.DisableControls;
      MainForm.Bona_fac_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      MainForm.Bona_fac_listTable.Refresh;
      MainForm.Bona_fac_listTable.EnableControls;
     end;
end;

procedure TBonFacAGestionF.ClearProduitBonFacAGBtnClick(Sender: TObject);
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
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 17 ;
end;

procedure TBonFacAGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
end;

procedure TBonFacAGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit,LineCreditTop :TfrxShapeView;
begin
if ValiderBAFacBonFacAGImg.ImageIndex <> 1 then
 begin
MainForm.Bona_fac_listTable.DisableControls;
 GettingData;

  OLDCredit:= BonFacAPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonFacAPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonFacAPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonFacAPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonFacAPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonFacAPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonFacAPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonFacAPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonFacAPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;
  LineCreditTop:= BonFacAPListfrxRprt.FindObject('LineCreditTop') as TfrxShapeView;
  LineCreditTop.Visible:= False;

BonFacAPListfrxRprt.PrepareReport;
BonFacAPListfrxRprt.ShowReport;
MainForm.Bona_fac_listTable.EnableControls;
 end;
end;

procedure TBonFacAGestionF.BondeCaisseSimple2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl  : TfrxMemoView;
LineCredit,LineCreditTop :TfrxShapeView;
begin
if ValiderBAFacBonFacAGImg.ImageIndex <> 1 then
 begin
MainForm.Bona_fac_listTable.DisableControls;
 GettingData;

  OLDCredit:= BonFacAPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonFacAPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonFacAPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonFacAPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonFacAPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonFacAPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonFacAPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonFacAPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonFacAPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;
  LineCreditTop:= BonFacAPListfrxRprt.FindObject('LineCreditTop') as TfrxShapeView;
  LineCreditTop.Visible:= True;

BonFacAPListfrxRprt.PrepareReport;
BonFacAPListfrxRprt.ShowReport;
MainForm.Bona_fac_listTable.EnableControls;
 end;
end;

procedure TBonFacAGestionF.BonFacAPListDataSDataChange(Sender: TObject;
  Field: TField);
var  TTCbeforeTimber,TTCafterTimber: Double;
begin
  if NOT BonFacAPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonFacAGBtn.Visible:= True;
    ClearProduitBonFacAGBtn.Visible:= True;

    if (FourBonFacAGCbx.Text<>'') AND  (MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean <> True) then
    begin
    ValiderBAFacBonFacAGBtn.Enabled:= True;
    ValiderBAFacBonFacAGBtn.ImageIndex:=12;
    end;

   if MainForm.Bona_facTable.FieldValues['valider_bafac'] <> True then
   begin

//    MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_p,qut_p,qutini_p FROM produit WHERE code_p = ' +IntToStr(MainForm.Bona_fac_listTable.FieldValues['code_p']);
    MainForm.SQLQuery.Active:=True;

    BonFacAGOLDStock.Caption:=
      floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])),ffNumber,14,2);
    BonFacAGNEWStock.Caption:=
      floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']))+((MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']))),ffNumber,14,2);


             
    if(StrToFloat (StringReplace(BonFacAGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
    begin
     Timer1.Enabled:= true;
    end else
        begin
        Timer1.Enabled:= False;
        Label20.Visible:=false;
        end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
//    MainForm.SQLQuery.SQL.Text:='SELECT * FROM produit ';
//    MainForm.SQLQuery.Active:=True;
//    MainForm.SQLQuery.EnableControls;

    RemisePerctageBonFacAGEdt.Enabled:=True;
    RemiseBonFacAGEdt.Enabled:=True;
    RemiseTypeBonFacAGCbx.Enabled:= True;    

   end;
     ProduitsListDBGridEh.ReadOnly:=False;
    end else
    begin
    DeleteProduitBonFacAGBtn.Visible:= False;
    ClearProduitBonFacAGBtn.Visible:= False;

    ValiderBAFacBonFacAGBtn.Enabled:= False;
    ValiderBAFacBonFacAGBtn.ImageIndex:=30;

    RemisePerctageBonFacAGEdt.Enabled:=False;
    RemiseBonFacAGEdt.Enabled:=False;
    RemiseTypeBonFacAGCbx.Enabled:= False;

    RemisePerctageBonFacAGEdt.Text:='';
    RemiseBonFacAGEdt.Text:='';
    RemiseTypeBonFacAGCbx.Text:='';
    BonFacAGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonFacAGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

    ProduitsListDBGridEh.ReadOnly:=True;
  end;
end;

procedure TBonFacAGestionF.RemiseTypeBonFacAGCbxChange(Sender: TObject);
begin
RemiseBonFacAGEdt.Text:='';
RemisePerctageBonFacAGEdt.Text:='';
MainForm.Bona_fac_listTable.Refresh;
end;

procedure TBonFacAGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonFacAGCbx.SetFocus;
end;

procedure TBonFacAGestionF.RemisePerctageBonFacAGEdtChange(Sender: TObject);
var BonFATotalHT,RemisePerctageBonFacA,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldFourCredit,Timber : Double;
begin
//------ this is to set the remise on tyhe prix HT ---------//

   //-- use this code to HT TVA calculation
      if RemiseTypeBonFacAGCbx.ItemIndex = 0 then
       begin
        if RemisePerctageBonFacAGEdt.Text<>''  then
        begin
            if RemisePerctageBonFacAGEdt.Text <> '' then
            begin
            RemisePerctageBonFacA:=StrToFloat(StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonFacATotalHTLbl.Caption<>'' then
            begin
            BonFATotalHT:=StrToFloat (StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonFacATotalTVALbl.Caption:= FloatToStrF(Round(TotalTVANet - (( TotalTVANet  * RemisePerctageBonFacA)/(100))),ffNumber,14,2); //TVA
         BonFATotalHTNewLbl.Caption:= FloatToStrF(Round(BonFATotalHT - (( BonFATotalHT  * RemisePerctageBonFacA)/(100))),ffNumber,14,2); //HT
            if BonFATotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFATotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonFacATotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonFacATotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;


            if TimberBonFacAGEdt.Visible = True then
            begin
            Timber:=StrToFloat(StringReplace(TimberBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
             BonFacATotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA + Timber),ffNumber,14,2); // TTC
            end else
                begin
                  BonFacATotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA ),ffNumber,14,2); // TTC
                end;



//         BonFacAResteLbl.Caption:= BonFacATotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonFacAGEdt.Focused then
            begin
            RemiseBonFacAGEdt.Text:=FloatToStrF((BonFATotalHT - NewHT),ffNumber,14,2);
            end;

        BonFARemiseHTNewLbl.Caption:= FloatToStrF((BonFATotalHT - NewHT),ffNumber,14,2);

            if BonFacAGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonFacAGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonFacAGFourNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldFourCredit)),ffNumber,14,2);

        end else
          begin
           if BonFacATotalHTLbl.Caption<>'' then
           begin
           BonFATotalHT:=StrToFloat (StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonFacATotalTTCLbl.Caption:=FloatToStrF((BonFATotalHT + TotalTVANet ),ffNumber,14,2);
//            BonFacAResteLbl.Caption:= BonFacATotalTTCLbl.Caption;
            BonFacATotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonFacAGEdt.Text:='';
            BonFARemiseHTNewLbl.Caption:='0';
            BonFATotalHTNewLbl.Caption:=BonFacATotalHTLbl.Caption;

            if BonFacAGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonFacAGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonFacAGFourOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonFacATotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
//          BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
//          MainForm.Bona_fac_listTable.Refresh;
          end;
       end;
       //------ this is to set the remise on the prix TTC only ---------//
       if RemiseTypeBonFacAGCbx.ItemIndex = 1 then
       begin
        if RemisePerctageBonFacAGEdt.Text<>'' then
        begin
             if RemisePerctageBonFacAGEdt.Text <> '' then
            begin
            RemisePerctageBonFacA:=StrToFloat(StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
            end;
             if TotalTVANewLbl.Caption <>'' then
            begin
            NewTVA:=StrToFloat (StringReplace(TotalTVANewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonFacATotalHTLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonFacATotalHTLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         BonFacATotalTVALbl.Caption:= FloatToStrF(( NewTVA - ((RemisePerctageBonFacA/100) * NewTVA)),ffNumber,14,2);
         BonFATotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonFacA/100) * NewHT)),ffNumber,14,2);
         BonFacATotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonFacA/100) * NewHT))+( NewTVA - ((RemisePerctageBonFacA/100) * NewTVA))),ffNumber,14,2);
            if BonFATotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonFATotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonFacATotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonFacATotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonFacAGEdt.Focused then
         begin
         RemiseBonFacAGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


//         BonFacAResteLbl.Caption:=BonFacATotalTTCLbl.Caption;

           if BonFacATotalHTLbl.Caption <>'' then
            begin
            BonFATotalHT:=StrToFloat (StringReplace(BonFacATotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonFATotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonFARemiseHTNewLbl.Caption:= FloatToStrF((BonFATotalHT - NewHT),ffNumber,14,2);

            if BonFacAGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonFacAGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonFacAGEdt.Text:='';
             BonFARemiseHTNewLbl.Caption:='0';
             BonFacATotalTTCLbl.Caption := BonFATotalTTCNewLbl.Caption;
//             BonFacAResteLbl.Caption:=BonFacATotalTTCLbl.Caption;
             BonFacATotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonFATotalHTNewLbl.Caption:=BonFacATotalHTLbl.Caption;

              if BonFacAGFourOLDCredit.Caption <>'' then
              begin
              OldFourCredit:=StrToFloat (StringReplace(BonFacAGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonFacAGFourOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonFacATotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
//             BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
//             MainForm.Bona_fac_listTable.Refresh;
            end;
      end;
end;

procedure TBonFacAGestionF.RemisePerctageBonFacAGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonFacAGEdt.Text := StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonFacAGEdt.SelectAll;
end;

procedure TBonFacAGestionF.RemisePerctageBonFacAGEdtEnter(Sender: TObject);
begin
MainForm.Bona_fac_listTable.Refresh;
 RemisePerctageBonFacAGEdtChange(Sender);
end;

procedure TBonFacAGestionF.RemisePerctageBonFacAGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemisePerctageBonFacAGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtChange(Sender: TObject);
var RemiseBonFacAG,BonFATotalHT,BonFATotalTVA,OLDTTC : Double;
begin
if RemiseBonFacAGEdt.Focused then
 begin
      if RemiseBonFacAGEdt.Text<>'' then
     begin
     RemiseBonFacAG:=StrToFloat (StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
    // MainForm.Bona_fac_listTable.Refresh;
     end;
     if (RemiseBonFacAGEdt.Text<>'') AND (RemiseBonFacAG<>0) then
    begin
       if RemiseTypeBonFacAGCbx.ItemIndex = 0 then
       begin
         if BonFacATotalHTLbl.Caption<>'' then
         begin
         BonFATotalHT:=StrToFloat (StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonFacATotalTVALbl.Caption<>'' then
         begin
          BonFATotalTVA:=StrToFloat (StringReplace(BonFacATotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonFacAGEdt.Text := FloatToStrF(((RemiseBonFacAG / BonFATotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonFacAGCbx.ItemIndex = 1 then
        begin
         if BonFATotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonFATotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonFacAGEdt.Text := FloatToStrF(((RemiseBonFacAG / OLDTTC) * 100),ffNumber,14,2) ;
        end;
    end else
        begin
          BonFARemiseHTNewLbl.Caption:='0';
          RemisePerctageBonFacAGEdt.Text:='';
          BonFATotalHTNewLbl.Caption:=BonFacATotalHTLbl.Caption;
//          MainForm.Bona_fac_listTable.Refresh;
        end;
 end;
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonFacAGEdt.Text := StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonFacAGEdt.SelectAll;
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtEnter(Sender: TObject);
begin
//MainForm.Bona_fac_listTable.Refresh;
 RemisePerctageBonFacAGEdtChange(Sender);
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtExit(Sender: TObject);
var
RemiseBonFacAG: Double;
begin
  if RemiseBonFacAGEdt.Text<>'' then
  begin
  RemiseBonFacAG:=StrToFloat(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonFacAGEdt.Text := FloatToStrF(RemiseBonFacAG,ffNumber,14,2);
  end;
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemiseBonFacAGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonFacAGestionF.AddFourBonFacAGBtnClick(Sender: TObject);
begin
FournisseurListF.AddFournisseursBtnClick(Sender);
FournisseurGestionF.OKFournisseurGBtn.Tag := 4 ;
FourBonFacAGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredFourGlbl.Visible:= False;
NameFourGErrorP.Visible:= False;
end;

procedure TBonFacAGestionF.AddModePaieBonFacAGBtnClick(Sender: TObject);
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
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla?t entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 19 ;
end;

procedure TBonFacAGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
//var
//NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
//LineCredit,LineCreditTop :TfrxShapeView;
//I : Integer;
//Ini: TIniFile;
//indexP: Integer;
begin

//   //--- this is to focus in produit --------------------------
//  if  (GetKeyState(VK_F3) < 0) and (AddBAFacBonFacAGBtn.Enabled = False ) then
//  begin
//      ProduitBonFacAGCbx.SetFocus;
//      Handled := true;
//  end;
//
//
//
//  if  (GetKeyState(VK_F4) < 0) and (AddBAFacBonFacAGBtn.Enabled = True ) then
//  begin
//      AddBAFacBonFacAGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//
//  if  (GetKeyState(VK_F5) < 0) and (EditBAFacBonFacAGBtn.Enabled = True ) then
//  begin
//      EditBAFacBonFacAGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//     //--- this is to switch between produits and quntity--------------------------
//   if  (GetKeyState(VK_F6) < 0) and (EditBAFacBonFacAGBtn.Enabled = False ) then
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
//   if  (GetKeyState(VK_F7) < 0) and (EditBAFacBonFacAGBtn.Enabled = False ) then
//  begin
//       ProduitsListDBGridEh.SetFocus;
//       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixht_p' then
//       begin
//        for I := 0 to ProduitsListDBGridEh.FieldCount do
//        begin
//          if ProduitsListDBGridEh.SelectedField.FieldName ='prixht_p' then
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
//
//  if  (GetKeyState(VK_F8) < 0) and (EditBAFacBonFacAGBtn.Enabled = False ) then
//  begin
//      ListAddProduitBonFacAGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//   if  (GetKeyState(VK_F9) < 0)  then
//  begin
//
//      ValiderBAFacBonFacAGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//
//       //--- this is for new produit--------------------------
//     if  (GetKeyState(VK_F11) < 0)  then
//  begin
//
//      NewAddProduitBonFacAGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//     if  (GetKeyState(VK_F12) < 0)  then
//  begin
//
//     if ValiderBAFacBonFacAGImg.ImageIndex <> 1 then
//     begin
//        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
//        indexP:= Ini.ReadInteger('', 'Format FA',0);
//        if (indexP = 0) or (indexP = -1) then
//        begin
//        B1Click(Screen);
//        end;
//        if indexP = 1 then
//        begin
//        BondeCaisseSimple2Click(Screen);
//        end;
//
//        Ini.Free;
//        Handled := true;
//     end;
//  end;

end;

procedure TBonFacAGestionF.AddCompteBonFacAGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(Application);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 4 ;
end;

procedure TBonFacAGestionF.ListAddProduitBonFacAGBtnClick(Sender: TObject);
begin

//-------- use this code to start creating th form-----//
  ProduitBonFacAGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);


//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  //---------Use this tag = 2 for adding from facture dd'achat
  FastProduitsListF.Tag := 3;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonFacAGestionF.ListFourBonFacAGBtnClick(Sender: TObject);
Var I:Integer;
begin
//-------- use this code to start creating th form-----//
  FastProduitsListF := TFastProduitsListF.Create(Application);

  MainForm.FDQuery2.Active:=False;
  MainForm.FDQuery2.SQL.Clear;
  MainForm.FDQuery2.SQL.TExt:= 'SELECT code_f,nom_f,fix_f,mob_f,adr_f,credit_f FROM fournisseur';
  MainForm.FDQuery2.IndexFieldNames:='code_f';
  MainForm.FDQuery2.Active:=True;

  for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
  begin
    FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
  end;
    
  //Change the dataSet
  FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N?';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

  FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Fournisseur';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activit?';
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='fix_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='T?l?phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='mob_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='T?l?phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='adr_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='credit_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Cr?dit';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 130;;
  
  
  FastProduitsListF.ProduitsListDBGridEh.Refresh;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

  FastProduitsListF.Caption:= 'Liste des Fournisseurs';
  FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
  FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
  FastProduitsListF.ResearchProduitsEdt.Width:= 431;

  FastProduitsListF.Tag := 1;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonFacAGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (MainForm.Bona_fac_listTable.RecNo=MainForm.Bona_fac_listTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;
end;

procedure TBonFacAGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin

  if (Key=#13 ) OR (Key=#9)then
  begin
//    Key := 0;
// This is to jume to the next field

   Refresh_PreservePosition;

   with TDBGridEh(Sender) do
   begin
     if SelectedIndex < (FieldCount-1) then

      if (Columns[4].Visible = False) AND (SelectedIndex = 3) then  // Check if the date field is visible if not mover directly to price
       begin
        SelectedIndex := SelectedIndex+2;
       end else
         begin
          SelectedIndex := SelectedIndex+1
         end
     else
     SelectedIndex := 0;
   end;

   end;

end;

procedure TBonFacAGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_fca') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_fca');
   end;

MainForm.Bona_fac_listTable.Active:= True;
if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;


procedure TBonFacAGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonFacAGestionF.GettingData;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,
  TauxTVA9,TauxTVA19,MontantTVA9,MontantTVA19,RC,NArt,NIF,NIS,NEWCredit,OLDCredit : TfrxMemoView;
  str1 : string;
  Taux9,Taux19,Montant9,Montant19,RemisePerctageBonFacA : Double;
  Name,Tel,Mob,Adr,ComRC,ComNArt,ComNIF,ComNIS,ComRIB : TfrxMemoView;
  RCLbl,NArtLbl,NIFLbl,NISLbl,ComRCLbl,ComNArtLbl,ComNIFLbl,ComNISLbl,ComRIBLbl : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonFacAPListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonFacAPListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

    Mob:= BonFacAPListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

    Adr:= BonFacAPListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;


    ComRC:= BonFacAPListfrxRprt.FindObject('ComRC') as TfrxMemoView;
    ComRC.Text:= MainForm.CompanyTable.FieldByName('rc_comp').AsString ;
    ComRC.Visible:=True;
    ComRCLbl:= BonFacAPListfrxRprt.FindObject('ComRCLbl') as TfrxMemoView;
    ComRCLbl.Visible:=True;

    ComNArt:= BonFacAPListfrxRprt.FindObject('ComNArt') as TfrxMemoView;
    ComNArt.Text:= MainForm.CompanyTable.FieldByName('nart_comp').AsString ;
    ComNArt.Visible:=True;
    ComNArtLbl:= BonFacAPListfrxRprt.FindObject('ComNArtLbl') as TfrxMemoView;
    ComNArtLbl.Visible:=True;

    ComNIF:= BonFacAPListfrxRprt.FindObject('ComNIF') as TfrxMemoView;
    ComNIF.Text:= MainForm.CompanyTable.FieldByName('nif_comp').AsString ;
    ComNIF.Visible:=True;
    ComNIFLbl:= BonFacAPListfrxRprt.FindObject('ComNIFLbl') as TfrxMemoView;
    ComNIFLbl.Visible:=True;

    ComNIS:= BonFacAPListfrxRprt.FindObject('ComNIS') as TfrxMemoView;
    ComNIS.Text:= MainForm.CompanyTable.FieldByName('nis_comp').AsString ;
    ComNIS.Visible:=True;
    ComNISLbl:= BonFacAPListfrxRprt.FindObject('ComNISLbl') as TfrxMemoView;
    ComNISLbl.Visible:=True;

    ComRIB:= BonFacAPListfrxRprt.FindObject('ComRIB') as TfrxMemoView;
    ComRIB.Text:= MainForm.CompanyTable.FieldByName('rib_comp').AsString ;
    ComRIB.Visible:=True;
    ComRIBLbl:= BonFacAPListfrxRprt.FindObject('ComRIBLbl') as TfrxMemoView;
    ComRIBLbl.Visible:=True;

      Logo:= BonFacAPListfrxRprt.FindObject('Logo') as TfrxPictureView;
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

  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonFacAPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonFacAPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonFacAGEdt.Caption;

    DateRX:= BonFacAPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonFacAGD.Date);

      NameRX:= BonFacAPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= FourBonFacAGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_f,adr_f,ville_f,willaya_f ,rc_f,nart_f,nif_f,nis_f FROM fournisseur WHERE code_f ='
    + IntToStr(MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:=True;

  with MainForm.SQLQuery do
  begin
    AdrRX:= BonFacAPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
    AdrRX.Text:= FieldByName('adr_f').AsString;

    VilleRX:= BonFacAPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
    VilleRX.Text:= FieldByName('ville_f').AsString;

    WilayaRX:= BonFacAPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
    WilayaRX.Text:=  FieldByName('willaya_f').AsString;

    RC:= BonFacAPListfrxRprt.FindObject('RC') as TfrxMemoView;
    RC.Text:= FieldByName('rc_f').AsString;
    RC.Visible:= True;
    RCLbl:= BonFacAPListfrxRprt.FindObject('RCLbl') as TfrxMemoView;
    RCLbl.Visible:= True;

    NArt:= BonFacAPListfrxRprt.FindObject('NArt') as TfrxMemoView;
    NArt.Text:= FieldByName('nart_f').AsString;
    NArt.Visible:= True;
    NArtLbl:= BonFacAPListfrxRprt.FindObject('NArtLbl') as TfrxMemoView;
    NArtLbl.Visible:= True;

    NIF:= BonFacAPListfrxRprt.FindObject('NIF') as TfrxMemoView;
    NIF.Text:=  FieldByName('nif_f').AsString;
    NIF.Visible:= True;
    NIFLbl:= BonFacAPListfrxRprt.FindObject('NIFLbl') as TfrxMemoView;
    NIFLbl.Visible:= True;

    NIS:= BonFacAPListfrxRprt.FindObject('NIS') as TfrxMemoView;
    NIS.Text:=  FieldByName('nis_f').AsString;
    NIS.Visible:= True;
    NISLbl:= BonFacAPListfrxRprt.FindObject('NISLbl') as TfrxMemoView;
    NISLbl.Visible:= True;

  end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

     begin
      MainForm.Bona_fac_listTable.DisableControls;


        begin
           MainForm.Bona_fac_listTable.Active:=false;
           MainForm.Bona_fac_listTable.SQL.Clear;
           MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' WHERE FAL.tva_p = 9' ;
           MainForm.Bona_fac_listTable.Active:=True;
          if NOT (MainForm.Bona_fac_listTable.IsEmpty) then
           begin

            MainForm.Bona_fac_listTable.First;

            while not MainForm.Bona_fac_listTable.Eof do
            begin
              Montant9:= Montant9 + MainForm.Bona_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bona_fac_listTable.Next;
            end;
             TauxTVA9:= BonFacAPListfrxRprt.FindObject('TauxTVA9') as TfrxMemoView;
             TauxTVA9.Text:=  '9 %';
             TauxTVA9.Visible:= True;

             MontantTVA9:= BonFacAPListfrxRprt.FindObject('MontantTVA9') as TfrxMemoView;


                        if RemisePerctageBonFacAGEdt.Text <> '' then
            begin
            RemisePerctageBonFacA:=StrToFloat(StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacAGEdt.Text = '') OR (RemisePerctageBonFacA = 0) then
             begin
             MontantTVA9.Text:= CurrToStrF(Montant9,ffNumber,2);
             end else
                 begin
                   MontantTVA9.Text:=   CurrToStrF((Montant9 - (Montant9*RemisePerctageBonFacA)/100) ,ffNumber,2);
                 end;

                 MontantTVA9.Visible:=True;
            end;
        end;

        begin
           MainForm.Bona_fac_listTable.Active:=false;
           MainForm.Bona_fac_listTable.SQL.Clear;
           MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' WHERE FAL.tva_p = 19' ;
           MainForm.Bona_fac_listTable.Active:=True;
          if NOT (MainForm.Bona_fac_listTable.IsEmpty) then
           begin

            MainForm.Bona_fac_listTable.First;

            while not MainForm.Bona_fac_listTable.Eof do
            begin
              Montant19:= Montant19 + MainForm.Bona_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bona_fac_listTable.Next;
            end;
             TauxTVA19:= BonFacAPListfrxRprt.FindObject('TauxTVA19') as TfrxMemoView;
             TauxTVA19.Text:=  '19 %';
             TauxTVA19.Visible:=True;

             MontantTVA19:= BonFacAPListfrxRprt.FindObject('MontantTVA19') as TfrxMemoView;

            if RemisePerctageBonFacAGEdt.Text <> '' then
            begin
            RemisePerctageBonFacA:=StrToFloat(StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacAGEdt.Text = '') OR (RemisePerctageBonFacA = 0) then
             begin
             MontantTVA19.Text:= floatToStrF(Montant19,ffNumber,14,2);
             end else
                 begin
                   MontantTVA19.Text:=   floatToStrF((Montant19 - (Montant19*RemisePerctageBonFacA)/100) ,ffNumber,14,2);
                 end;

                 MontantTVA19.Visible:=True;
            end;
        end;
             MainForm.Bona_fac_listTable.Active:=false;
             MainForm.Bona_fac_listTable.SQL.Clear;
             MainForm.Bona_fac_listTable.SQL.Text:= FALSQL +' ORDER BY code_bafacl ' ;
             MainForm.Bona_fac_listTable.Active:=True;
         MainForm.Bona_fac_listTable.EnableControls;
     end;


    MPRX:= BonFacAPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonFacAGCbx.Text;

    NCHeqRX:= BonFacAPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonFacAGCbx.Text;

              OLDCredit:= BonFacAPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonFacAGFourOLDCredit.Caption;


      NEWCredit:= BonFacAPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonFacAGFourNEWCredit.Caption;

 end;

procedure TBonFacAGestionF.sSpeedButton1Click(Sender: TObject);
begin
   GettingData;
 MainForm.Bona_fac_listTable.DisableControls;
BonFacAPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Facture D''achat N? '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger)]);
BonFacAPListfrxRprt.Export(frxXLSExport1);
MainForm.Bona_fac_listTable.EnableControls;
end;

procedure TBonFacAGestionF.sSpeedButton3Click(Sender: TObject);
begin
 GettingData;
MainForm.Bona_fac_listTable.DisableControls;
BonFacAPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Facture D''achat N? '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonFacAPListfrxRprt.Export(frxPDFExport1);
MainForm.Bona_fac_listTable.EnableControls;
end;

procedure TBonFacAGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
  Refresh_PreservePosition;
end;

procedure TBonFacAGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
  Refresh_PreservePosition;
end;

procedure TBonFacAGestionF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  {  if gdFocused in State then
//      begin
// // ProduitsListDBGridEh.Canvas.DrawFocusRect(Rect);
//    ProduitsListDBGridEh.Canvas.Brush.Color:=clAqua;
//       end;  }
//
////------ use this code to high light the selected row in dbgrid----//
// if gdSelected in State then
//begin
//   ProduitsListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
//   ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//end;
//
//  if  (MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsFloat )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsFloat )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsFloat )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsFloat )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsFloat )
//         then
// begin
// ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
// ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;

end;

end.

