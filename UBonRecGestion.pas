unit UBonRecGestion;

interface

uses
  Winapi.Windows, Winapi.Messages,Winapi.MMSystem, System.SysUtils,DateUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, dxGDIPlusClasses, sPanel, acSlider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, acImage,
  EhLibFireDAC,
  sComboBox, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, frxClass, frxExportPDF, frxExportXLS, frxDBSet, cxGraphics,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  Vcl.AppEvnts, frxExportBaseDialog;

type
  TBonRecGestionF = class(TForm)
    Panel3: TPanel;
    BonRecPListDataS: TDataSource;
    TopP2: TPanel;
    EditBARecBonRecGBtn: TAdvToolButton;
    AddBARecBonRecGBtn: TAdvToolButton;
    Label4: TLabel;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    NumBonRecGEdt: TLabel;
    AddFourBonRecGBtn: TAdvToolButton;
    Label8: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonRecGD: TDateTimePicker;
    FournisseurBonRecGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    ValiderBARecBonRecGBtn: TAdvToolButton;
    Panel2: TPanel;
    ProduitsListDBGridEh: TDBGridEh;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonRecGCbx: TComboBox;
    Label7: TLabel;
    AddModePaieBonRecGBtn: TAdvToolButton;
    Label16: TLabel;
    AddCompteBonRecGBtn: TAdvToolButton;
    CompteBonRecGCbx: TComboBox;
    ListAddProduitBonRecGBtn: TAdvToolButton;
    Panel5: TPanel;
    BonRecGFourOLDCredit: TLabel;
    BonRecGFourNEWCredit: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    DeleteProduitBonRecGBtn: TAdvToolButton;
    ValiderBARecBonRecGLbl: TLabel;
    NewAddProduitBonRecGBtn: TAdvToolButton;
    Panel18: TPanel;
    Panel4: TPanel;
    label13: TLabel;
    label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BonRecTotalTVALbl: TLabel;
    BonRecRegleLbl: TLabel;
    BonRecResteLbl: TLabel;
    BonRecTotalHTLbl: TLabel;
    BonRecTotalTTCLbl: TLabel;
    Label10: TLabel;
    Panel14: TPanel;
    NameFourGErrorP: TPanel;
    RequiredFourGlbl: TLabel;
    EnterAddProduitBonRecGBtn: TAdvToolButton;
    ClearProduitBonRecGBtn: TAdvToolButton;
    ValiderBARecBonRecGImg: TsImage;
    Shape1: TShape;
    Label3: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label11: TLabel;
    RemisePerctageBonRecGEdt: TEdit;
    Label14: TLabel;
    RemiseBonRecGEdt: TEdit;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel1: TPanel;
    RemiseTypeBonRecGCbx: TComboBox;
    Label15: TLabel;
    BonRTotalTTCNewLbl: TLabel;
    BonRTotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    NChequeBonRecGCbx: TEdit;
    ObserBonRecGLbl: TLabel;
    ObserBonRecGMem: TMemo;
    BonRRemiseHTNewLbl: TLabel;
    Label19: TLabel;
    BonRecGOLDStock: TLabel;
    Label20: TLabel;
    BonRecGNEWStock: TLabel;
    frxBonRecDT: TfrxDBDataset;
    frxBonRecPListDB: TfrxDBDataset;
    frxFourDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonRecPListfrxRprt: TfrxReport;
    sImage1: TsImage;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    ProduitBonRecGCbx: TcxComboBox;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeRception1: TMenuItem;
    BonRecPListSanTAXfrxRprt: TfrxReport;
    RequiredStarProduitGLbl: TLabel;
    ModepPaiGErrorP: TPanel;
    Label22: TLabel;
    CompteGErrorP: TPanel;
    Label21: TLabel;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
    N1: TMenuItem;
    Bonderception2: TMenuItem;
    Bonderceptionhorstaxe1: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    ApplicationEvents1: TApplicationEvents;
    Label31: TLabel;
    ListFourBonRecGBtn: TAdvToolButton;
    S02: TPanel;
    NSeriesProduitBonRecGBtn: TAdvToolButton;
    S01: TPanel;
    procedure ProduitBonRecGCbxEnter(Sender: TObject);
    procedure ProduitBonRecGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure FournisseurBonRecGCbxEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FournisseurBonRecGCbxExit(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
    procedure ListAddProduitBonRecGBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ProduitBonRecGCbxExit(Sender: TObject);
    procedure BonRecPListDataSDataChange(Sender: TObject; Field: TField);
    procedure EnterAddProduitBonRecGBtnClick(Sender: TObject);
    procedure NewAddProduitBonRecGBtnClick(Sender: TObject);
    procedure ClearProduitBonRecGBtnClick(Sender: TObject);
    procedure DeleteProduitBonRecGBtnClick(Sender: TObject);
    procedure AddModePaieBonRecGBtnClick(Sender: TObject);
    procedure CompteBonRecGCbxEnter(Sender: TObject);
    procedure AddCompteBonRecGBtnClick(Sender: TObject);
    procedure AddFourBonRecGBtnClick(Sender: TObject);
    procedure ModePaieBonRecGCbxClick(Sender: TObject);
    procedure ModePaieBonRecGCbxDropDown(Sender: TObject);
    procedure CompteBonRecGCbxChange(Sender: TObject);
    procedure ProduitBonRecGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonRecGCbxChange(Sender: TObject);
    procedure ValiderBARecBonRecGBtnClick(Sender: TObject);
    procedure RemiseBonRecGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonRecGEdtExit(Sender: TObject);
    procedure RemiseBonRecGEdtClick(Sender: TObject);
    procedure RemiseBonRecGEdtChange(Sender: TObject);
    procedure RemisePerctageBonRecGEdtClick(Sender: TObject);
    procedure RemisePerctageBonRecGEdtChange(Sender: TObject);
    procedure RemiseTypeBonRecGCbxChange(Sender: TObject);
    procedure RemisePerctageBonRecGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure EditBARecBonRecGBtnClick(Sender: TObject);
    procedure AddBARecBonRecGBtnClick(Sender: TObject);
    procedure FournisseurBonRecGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure sSpeedButton10Click(Sender: TObject);
    procedure sSpeedButton9Click(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure FournisseurBonRecGCbxChange(Sender: TObject);
    procedure RemisePerctageBonRecGEdtEnter(Sender: TObject);
    procedure RemiseBonRecGEdtEnter(Sender: TObject);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure B1Click(Sender: TObject);
    procedure BondeRception1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ModePaieBonRecGCbxChange(Sender: TObject);
    procedure Bonderception2Click(Sender: TObject);
    procedure Bonderceptionhorstaxe1Click(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ListFourBonRecGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure GettingData;
    procedure GettingDataSansTax;
    { Private declarations }
  public
    { Public declarations }

    const BRLSQL =
      ' SELECT BRL.code_barec,BRL.code_barecl,BRL.qut_p,BRL.cond_p,BRL.code_p,BRL.tva_p,BRL.prixht_p,P.pmp_p,P.nom_p as nomp, P.refer_p as referp,  '
      +' BRL.prixvd_p,BRL.prixvr_p,BRL.prixvg_p,BRL.prixva_p,BRL.prixva2_p,BRL.dateperiss_p,BRL.qutinstock_p,L.nom_l AS Localisation, '
      +'   (((BRL.prixht_p * BRL.tva_p)/100)+BRL.prixht_p) AS PrixATTC, '
      +'   ((BRL.prixht_p * BRL.qut_p) * cond_p) AS MontantHT, '
      +'   (((((BRL.prixht_p * BRL.tva_p)/100)+BRL.prixht_p) * BRL.qut_p)*cond_p) AS MontantTTC, '
      +'   (((((((BRL.prixht_p * BRL.tva_p)/100)+BRL.prixht_p) * BRL.qut_p)*cond_p) )-(((BRL.prixht_p * BRL.qut_p) * cond_p))) AS MontantTVA, '
      +'   ((BRL.prixht_p * BRL.qut_p)* cond_p) AS MontantAHT, '
      +'  CASE  '
      +'       WHEN BRL.prixvd_p <> ''0'' THEN '
      +'     CASE WHEN BRL.prixht_p <> ''0''   '
      +'       THEN ( ((BRL.prixvd_p - BRL.prixht_p) / BRL.prixht_p  ) *100) '
      +'       ELSE ''100''  '
      +'     END           '
      +'  END AS MargeD,   '
      +'  CASE             '
      +'     WHEN BRL.prixvr_p <> ''0'' THEN '
      +'   CASE WHEN BRL.prixht_p <> ''0''    '
      +'     THEN ( ((BRL.prixvr_p - BRL.prixht_p) / BRL.prixht_p  ) *100) '
      +'     ELSE ''100''  '
      +'   END          '
      +'  END AS MargeR, '
      +'  CASE   '
      +'     WHEN BRL.prixvg_p <> ''0'' THEN  '
      +'   CASE WHEN BRL.prixht_p <> ''0''   '
      +'     THEN ( ((BRL.prixvg_p - BRL.prixht_p) / BRL.prixht_p  ) *100)  '
      +'     ELSE ''100''  '
      +'   END   '
      +'  END AS MargeG,  '
      +'   CASE    '
      +'     WHEN BRL.prixva_p <> ''0'' THEN  '
      +'   CASE WHEN BRL.prixht_p <> ''0''  '
      +'     THEN ( ((BRL.prixva_p - BRL.prixht_p) / BRL.prixht_p  ) *100) '
      +'     ELSE ''100''  '
      +'   END  '
      +'  END AS MargeA, '
      +'   CASE   '
      +'     WHEN BRL.prixva2_p <> ''0'' THEN  '
      +'   CASE WHEN BRL.prixht_p <> ''0''   '
      +'     THEN ( ((BRL.prixva2_p - BRL.prixht_p) / BRL.prixht_p  ) *100)  '
      +'     ELSE ''100''  '
      +'   END  '
      +'  END AS MargeA2   '
      +' FROM bona_rec_list as BRL '
      +' LEFT JOIN produit as P   '
      +'  ON BRL.code_p = P.code_p '
      +' LEFT JOIN localisation as L '
      +'  ON P.code_l = L.code_l ';

    procedure EnableBonRec;
  end;

var
  BonRecGestionF: TBonRecGestionF;

implementation

uses   StringTool,Vcl.Imaging.jpeg, IniFiles,
  UBonRec, UMainF, UFournisseurGestion, UFournisseurList, UFastProduitsList,
  UProduitGestion, USplashAddUnite, UProduitsList, USplashAddCompte,
  USplashVersement;

{$R *.dfm}


//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
 begin

   BonRecGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonRecGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonRecGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
  // DisableControls;
   RecNo := row;
   MoveBy(-rowDelta) ;
   MoveBy(rowDelta) ;
  // EnableControls;
   end;

   BonRecGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

procedure TBonRecGestionF.EnableBonRec;
  begin

        AddBARecBonRecGBtn.Enabled:= False;
        AddBARecBonRecGBtn.ImageIndex:=28;// 4 For D
        EditBARecBonRecGBtn.Enabled:= False;
        EditBARecBonRecGBtn.ImageIndex:=29;// 5 for D
        ValiderBARecBonRecGBtn.Enabled:= True;
        ValiderBARecBonRecGBtn.ImageIndex:=12;//30 for D

        DateBonRecGD.Enabled:= True;
        ObserBonRecGMem.Enabled:= True;
        FournisseurBonRecGCbx.Enabled:= True;
        AddFourBonRecGBtn.Enabled:= True ; //
        AddFourBonRecGBtn.ImageIndex:=10;//35 fo D
        ListFourBonRecGBtn.Enabled:= True;
        ListFourBonRecGBtn.ImageIndex:= 59;
        ModePaieBonRecGCbx.Enabled:= True;
        AddModePaieBonRecGBtn.Enabled:= True ;
        AddModePaieBonRecGBtn.ImageIndex:=10;// 35 fo D
        CompteBonRecGCbx.Enabled:= True;
        AddCompteBonRecGBtn.Enabled:= True ;
        AddCompteBonRecGBtn.ImageIndex:=10;// 35 fo D
        NChequeBonRecGCbx.Enabled:= True;
        ProduitBonRecGCbx.Enabled:= True;
        EnterAddProduitBonRecGBtn.Enabled:= True;
        EnterAddProduitBonRecGBtn.ImageIndex:=15;// 40 fo D
        ListAddProduitBonRecGBtn.Enabled:= True;
        ListAddProduitBonRecGBtn.ImageIndex:=13;//41 fo D
        NewAddProduitBonRecGBtn.Enabled:= True;
        NewAddProduitBonRecGBtn.ImageIndex:=4;//28 fo D
        NSeriesProduitBonRecGBtn.Enabled:= True;
        NSeriesProduitBonRecGBtn.ImageIndex:=63;//64 fo D
        DeleteProduitBonRecGBtn.Enabled:= True;
        DeleteProduitBonRecGBtn.ImageIndex:=14;//36 fo D
        ClearProduitBonRecGBtn.Enabled:= True;
        ClearProduitBonRecGBtn.ImageIndex:=16;//39 fo A
//        ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
        ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
        ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
        ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
        ProduitsListDBGridEh.Options:=
        ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
        ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
        ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
        ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
        RemisePerctageBonRecGEdt.Enabled:=True;//False for D
        RemiseBonRecGEdt.Enabled:=True;//False for D
        RemiseTypeBonRecGCbx.Enabled:= True;//False for D;

        ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
        ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
        ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

        ValiderBARecBonRecGImg.ImageIndex:=1;//0 fo D
        ValiderBARecBonRecGLbl.Color:=$007374FF;// $004AC38B for D
        ValiderBARecBonRecGLbl.Font.Color:= clWhite;// clBlack for D
        ValiderBARecBonRecGLbl.Caption:='Ce bon n''est pas encore Validé';// 'Ce bon est Valid' for D
  end;

procedure TBonRecGestionF.ProduitBonRecGCbxChange(Sender: TObject);
begin
{if ProduitBonRecGCbx.Text<>'' then
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin

 Cursor := crDefault;
 end;
end; }
end;

procedure TBonRecGestionF.ProduitBonRecGCbxEnter(Sender: TObject);
var
  I : Integer;
  KeyState: TKeyboardState;
begin

     if ResherchPARDesProduitsRdioBtn.Checked then
     begin
      ProduitBonRecGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
       begin
         ProduitBonRecGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
         MainForm.SQLQuery.Next;
        end;


      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin
      ProduitBonRecGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT refer_p FROM produit ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if( MainForm.SQLQuery.FieldByName('refer_p').IsNull = False )  then
       begin
            ProduitBonRecGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('refer_p').AsString);
         MainForm.SQLQuery.Next;
        end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

     if ResherchPARCBProduitsRdioBtn.Checked then
     begin
      ProduitBonRecGCbx.Properties.Items.Clear;

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

procedure TBonRecGestionF.ProduitBonRecGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonRecGCbx.AutoDropDown:= True;
  end;

end;

procedure TBonRecGestionF.ProduitBonRecGCbxKeyPress(Sender: TObject; var Key: Char);
  var CodeBR,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;
  const
  N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
 if key = #13 then
 begin
 if (ProduitBonRecGCbx.Text <>'') AND NOT (ProduitBonRecGCbx.Text[1] in N ) then
 begin
  key := #0;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonRecGCbx.Text)+')';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            MainForm.Bona_recPlistTable.DisableControls;
            MainForm.Bona_recPlistTable.IndexFieldNames:='';
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' ORDER by code_barecl' ;
            MainForm.Bona_recPlistTable.Active:=True;

            MainForm.Bona_recPlistTable.Last;
             if  MainForm.Bona_recPlistTable.IsEmpty then
             begin
               MainForm.Bona_recPlistTable.Last;
               CodeBR := 1;
             end else
                 begin
                  MainForm.Bona_recPlistTable.Last;
                  CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
                 end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             MainForm.Bona_recPlistTable.Last;
             MainForm.Bona_recPlistTable.Append;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             MainForm.Bona_recPlistTable.FieldValues['qutinstock_p']:=
             (MainForm.Bona_recPlistTable.FieldValues['qut_p'])*(MainForm.Bona_recPlistTable.FieldValues['cond_p']);

             MainForm.Bona_recPlistTable.Post ;
             MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
            MainForm.Bona_recPlistTable.Active:=True;

            ProduitBonRecGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_recPlistTable.EnableControls;
           MainForm.Bona_recPlistTable.Last;
           if FournisseurBonRecGCbx.Text<>'' then
            begin
            ValiderBARecBonRecGBtn.Enabled:= True;
            ValiderBARecBonRecGBtn.ImageIndex:=12;
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
      if  MainForm.Bona_recPlistTable.FieldValues['code_p'] <> NULL then
      begin
      NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
      end else begin
        NomP:='';
      end;
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=0;
     end;

     end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefProduitsRdioBtn.Checked then
  begin
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,refer_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonRecGCbx.Text)+')';
            MainForm.SQLQuery.Active:=True;
            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            MainForm.Bona_recPlistTable.DisableControls;
            MainForm.Bona_recPlistTable.IndexFieldNames:='';
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' ORDER by code_barecl' ;
            MainForm.Bona_recPlistTable.Active:=True;
           if  MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_recPlistTable.Last;
                CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
               end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             MainForm.Bona_recPlistTable.Insert;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

              MainForm.Bona_recPlistTable.FieldValues['qutinstock_p']:=
             (MainForm.Bona_recPlistTable.FieldValues['qut_p'])*(MainForm.Bona_recPlistTable.FieldValues['cond_p']);

             MainForm.Bona_recPlistTable.Post ;
             MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
            MainForm.Bona_recPlistTable.Active:=True;
            MainForm.Bona_recPlistTable.EnableControls;

            ProduitBonRecGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_recPlistTable.EnableControls;
            MainForm.Bona_recPlistTable.Last;
            if FournisseurBonRecGCbx.Text<>'' then
              begin
              ValiderBARecBonRecGBtn.Enabled:= True;
              ValiderBARecBonRecGBtn.ImageIndex:=12;
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
            if  MainForm.Bona_recPlistTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
            end else begin
              NomP:='';
            end;
            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=0;
         end;
    end;
 //---------------------------------------------------------------------------------------------
  if ResherchPARCBProduitsRdioBtn.Checked then
  begin

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonRecGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
   begin
    CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
   end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,codebar_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonRecGCbx.Text)+')';
    MainForm.SQLQuery.Active:=True;
    CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

     if  (MainForm.SQLQuery.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bona_recPlistTable.DisableControls;
            MainForm.Bona_recPlistTable.IndexFieldNames:='';
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' ORDER by code_barecl' ;
            MainForm.Bona_recPlistTable.Active:=True;

           if  MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_recPlistTable.Last;
                CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
               end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             MainForm.Bona_recPlistTable.Last;
             MainForm.Bona_recPlistTable.Append;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             MainForm.Bona_recPlistTable.FieldValues['qutinstock_p']:=
             (MainForm.Bona_recPlistTable.FieldValues['qut_p'])*(MainForm.Bona_recPlistTable.FieldValues['cond_p']);

             MainForm.Bona_recPlistTable.Post ;
             MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

             MainForm.Bona_recPlistTable.Active:=False;
             MainForm.Bona_recPlistTable.SQL.Clear;
             MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
             MainForm.Bona_recPlistTable.Active:=True;
             MainForm.Bona_recPlistTable.EnableControls;

            ProduitBonRecGCbx.Text:='';
//            ProduitsListDBGridEh.SetFocus;
//
//           ProduitsListDBGridEh.SelectedIndex:=2;
//           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_recPlistTable.EnableControls;
            MainForm.Bona_recPlistTable.Last;
            if FournisseurBonRecGCbx.Text<>'' then
              begin
              ValiderBARecBonRecGBtn.Enabled:= True;
              ValiderBARecBonRecGBtn.ImageIndex:=12;
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
            if  MainForm.Bona_recPlistTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
            end else begin
              NomP:='';
            end;
            FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=0;
             end;
          end;

   end;
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;

         MainForm.Bona_recPlistTable.Refresh;
//        ProduitBonRecGCbx.AutoDropDown:=False;
         ProduitBonRecGCbx.SelectAll;

     end else
         begin
           ProduitBonRecGCbx.Text:= '';
         end;

     MainForm.Bona_recPlistTable.Last;
 end;

end;

procedure TBonRecGestionF.FournisseurBonRecGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
          FournisseurBonRecGCbx.Items.Clear;
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select nom_f FROM fournisseur '  ;
          MainForm.SQLQuery.Active:=True;

       MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_f').IsNull = False then
     begin
          FournisseurBonRecGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_f').AsString);
       MainForm.SQLQuery.Next;
      end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
  end;


procedure TBonRecGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_br');

 if ValiderBARecBonRecGImg.ImageIndex = 1 then
  begin

    MainForm.Bona_recTable.Refresh;

    MainForm.Bona_recPlistTable.Refresh;
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


          MainForm.Bona_recPlistTable.Active:=false;
          MainForm.Bona_recPlistTable.SQL.Clear;
          MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL ;
          MainForm.Bona_recPlistTable.Active:=True;
          MainForm.Bona_recPlistTable.EnableControls;

  MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

//  FreeAndNil(BonRecGestionF);
//  Destroy


 end;

procedure TBonRecGestionF.FormShow(Sender: TObject);
var CodeCB: Integer;
OLDCredit,NEWCredit : Double;
begin
// use this tage when i click AddBARecBonRecGBtn bon button
 if Tag = 0 then
 begin

    DateBonRecGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//-- use this code to make the montants look lake money values-------//
    BonRecTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonRecTotalHTLbl.Caption),ffNumber,14,2) ;
//    RemiseBonRecGEdt.Text :=       FloatToStrF(StrToFloat(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
    BonRecTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonRecTotalTVALbl.Caption),ffNumber,14,2) ;
    BonRecTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonRecTotalTTCLbl.Caption),ffNumber,14,2) ;
    BonRecResteLbl.Caption :=         FloatToStrF(StrToFloat(BonRecResteLbl.Caption),ffNumber,14,2) ;
    BonRecRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonRecRegleLbl.Caption),ffNumber,14,2) ;
    BonRecGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(BonRecGFourOLDCredit.Caption),ffNumber,14,2) ;
    BonRecGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(BonRecGFourNEWCredit.Caption),ffNumber,14,2) ;
 CodeCB:= MainForm.Bona_recTable.FieldValues['code_barec']   ;
 NumBonRecGEdt.Caption := 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);
  if (MainForm.Bona_recTable.FieldByName('code_f').AsInteger <> null)
 AND (MainForm.Bona_recTable.FieldByName('code_f').AsInteger <> 0)  then
 begin
   if MainForm.Bona_recTable.FieldValues['fourbarec'] <> null then
    begin
   FournisseurBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['fourbarec'];
    end;
    if MainForm.Bona_recTable.FieldValues['ModePaie'] <> null then
    begin
   ModePaieBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['ModePaie'];
    end;
    if MainForm.Bona_recTable.FieldValues['Compte'] <> null then
    begin
   CompteBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['Compte'];
    end;
   FournisseurBonRecGCbxExit(Sender);
   ProduitBonRecGCbx.SetFocus;
 end else
     begin
       FournisseurBonRecGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonRecGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonRecGFourOLDCredit.Caption, #32, '', [rfReplaceAll])),ffCurrency,14,2) ;
     BonRecGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonRecGFourNEWCredit.Caption, #32, '', [rfReplaceAll])),ffCurrency,14,2) ;

   if MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = True then
   begin
    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'select code_f, credit_f from fournisseur where code_f = ' + IntToStr( MainForm.Bona_recTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:= True;

      if NOT (MainForm.SQLQuery.IsEmpty) then
     begin
      OLDCredit:= (MainForm.SQLQuery.FieldByName('credit_f').AsFloat);// - (MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat) ;

      NewCredit:=  MainForm.SQLQuery.FieldByName('credit_f').AsFloat;

     BonRecGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(FloatToStr( OLDCredit), #32, '', [rfReplaceAll])),ffCurrency,14,2) ;
     BonRecGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(FloatToStr( NewCredit), #32, '', [rfReplaceAll])),ffCurrency,14,2) ;

     end;
        MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
   end else
       begin
         FournisseurBonRecGCbxExit(Sender);
       end;
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
 end;

procedure TBonRecGestionF.FournisseurBonRecGCbxExit(Sender: TObject);
var CodeF: Integer;
OLDCreditF,RegFCreditF,OLDCreditFV,OLDCreditFINI : Double;
begin

  if FournisseurBonRecGCbx.Text <> '' then
    begin
     FournisseurBonRecGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_f,oldcredit_f,credit_f,activ_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonRecGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;
      if NOT  MainForm.SQLQuery.IsEmpty then
     begin
      OLDCreditFINI:= MainForm.SQLQuery.FieldByName('credit_f').AsFloat ;

     if MainForm.SQLQuery.FieldByName('activ_f').AsBoolean <> False then
     begin

      if (MainForm.SQLQuery.IsEmpty) then
      begin
       FournisseurBonRecGCbx.Text := '';
       BonRecGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonRecGFourNEWCredit.Caption:=BonRecGFourOLDCredit.Caption;
       exit;
      end;
      CodeF:= MainForm.SQLQuery.FieldByName('code_f').AsInteger ;


//      MainForm.Bona_recTableCredit.DisableControls;
//      MainForm.Bona_recTableCredit.Active:=false;
//      MainForm.Bona_recTableCredit.SQL.Clear;
//      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec WHERE valider_barec = true AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_barec '  ;
//      MainForm.Bona_recTableCredit.Active:=True;
//
//     while NOT (MainForm.Bona_recTableCredit.Eof) do
//     begin
//     OLDCreditF := OLDCreditF + MainForm.Bona_recTableCredit.FieldValues['MontantRes'];
//     MainForm.Bona_recTableCredit.Next;
//     end;
//
//      MainForm.RegfournisseurTable.DisableControls;
//      MainForm.RegfournisseurTable.Active:=false;
//      MainForm.RegfournisseurTable.SQL.Clear;
//      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur WHERE bon_or_no_rf = 1 AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_rf '  ;
//      MainForm.RegfournisseurTable.Active:=True;
//
//     while NOT (MainForm.RegfournisseurTable.Eof) do
//     begin
//     RegFCreditF := RegFCreditF + MainForm.RegfournisseurTable.FieldValues['montver_rf'];
//     MainForm.RegfournisseurTable.Next;
//     end;


//      MainForm.Bona_recTableCredit.EnableControls;
      if NOT (OLDCreditFINI = 0) then
      begin
//       MainForm.Bona_recTableCredit.last;
       BonRecGFourOLDCredit.Caption:= FloatToStrF((OLDCreditFINI ),ffCurrency,14,2) ;

       if NOT (BonRecPListDataS.DataSet.IsEmpty) then
        begin
//         if Tag = 0 then
//         begin
//         BonRecGFourNEWCredit.Caption:=
//         CurrToStrF((MainForm.Bona_recTableCredit.FieldByName('MontantRes').AsFloat )+ StrToFloat (StringReplace(BonRecResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//        end else
//            begin
//              BonRecGFourNEWCredit.Caption:=
//              CurrToStrF((MainForm.Bona_recTableCredit.FieldByName('MontantRes').AsFloat )+ StrToFloat (StringReplace(BonRecResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//
//            end;

        end;
        end else
        begin
         BonRecGFourOLDCredit.Caption:= FloatToStrF(0,ffCurrency,14,2) ;
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
      if NOT (BonRecPListDataS.DataSet.IsEmpty) AND NOT (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = true) then
      begin
      ValiderBARecBonRecGBtn.Enabled:= True;
      ValiderBARecBonRecGBtn.ImageIndex:=12;
      end;

      MainForm.Bona_recPlistTable.Refresh;

        FournisseurBonRecGCbx.StyleElements:= [seFont,seBorder,seBorder];
        RequiredFourGlbl.Visible:= False;
        NameFourGErrorP.Visible:= False;

       end else
           begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            FournisseurBonRecGCbx.StyleElements:= [];
            RequiredFourGlbl.Caption:='Ce Fournisseur est bloqué';
            RequiredFourGlbl.Visible:= True;
            NameFourGErrorP.Visible:= True;
            FournisseurBonRecGCbx.SetFocus;
           end;

       end else
           begin
             FournisseurBonRecGCbx.Text:='';

              MainForm.SQLQuery.Active:=false;
              MainForm.SQLQuery.SQL.Clear;
//              MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//              MainForm.SQLQuery.Active:=True;
//              MainForm.SQLQuery.EnableControls;
           end;

    end else
    begin
     BonRecGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonRecGFourNEWCredit.Caption:=BonRecGFourOLDCredit.Caption;
     end;

end;

procedure TBonRecGestionF.AdvToolButton4Click(Sender: TObject);
begin
BonRecF.AddBARecBtnClick(Sender);
end;

procedure TBonRecGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
LineCredit,LineCreditTop :TfrxShapeView;
I : Integer;
Ini: TIniFile;
indexP: Integer;
begin

   //--- this is to focus in produit --------------------------
  if  (GetKeyState(VK_F3) < 0) and (AddBARecBonRecGBtn.Enabled = False ) then
  begin
      ProduitBonRecGCbx.SetFocus;
      Handled := true;
  end;



  if  (GetKeyState(VK_F4) < 0) and (AddBARecBonRecGBtn.Enabled = True ) then
  begin
      AddBARecBonRecGBtnClick(Screen);

    Handled := true;
  end;


  if  (GetKeyState(VK_F5) < 0) and (EditBARecBonRecGBtn.Enabled = True ) then
  begin
      EditBARecBonRecGBtnClick(Screen);

    Handled := true;
  end;

     //--- this is to switch between produits and quntity--------------------------
   if  (GetKeyState(VK_F6) < 0) and (EditBARecBonRecGBtn.Enabled = False ) then
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
   if  (GetKeyState(VK_F7) < 0) and (EditBARecBonRecGBtn.Enabled = False ) then
  begin
       ProduitsListDBGridEh.SetFocus;
       if ProduitsListDBGridEh.SelectedField.FieldName <>'prixht_p' then
       begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName ='prixht_p' then
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


  if  (GetKeyState(VK_F8) < 0) and (EditBARecBonRecGBtn.Enabled = False ) then
  begin
      ListAddProduitBonRecGBtnClick(Screen);

    Handled := true;
  end;

   if  (GetKeyState(VK_F9) < 0) AND (ValiderBARecBonRecGBtn.Enabled = True)  then
  begin

      ValiderBARecBonRecGBtnClick(Screen);

    Handled := true;
  end;

     //--- this is for new produit--------------------------
     if  (GetKeyState(VK_F11) < 0) AND (NewAddProduitBonRecGBtn.Enabled = True) then
  begin

      NewAddProduitBonRecGBtnClick(Screen);

    Handled := true;
  end;

     if  (GetKeyState(VK_F12) < 0)  then
  begin

     if ValiderBARecBonRecGImg.ImageIndex <> 1 then
     begin
        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
        indexP:= Ini.ReadInteger('', 'Format FA',0);
        if (indexP = 0) or (indexP = -1) then
        begin
         B1Click(Screen);
        end;
        if indexP = 1 then
        begin
          BondeRception1Click(Screen);
        end;
        if indexP = 2 then
        begin
          Bonderception2Click(Screen);
        end;
        if indexP = 3 then
        begin
          Bonderceptionhorstaxe1Click(Screen);
        end;

        Ini.Free;
        Handled := true;
     end;
  end;

end;

procedure TBonRecGestionF.ListAddProduitBonRecGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonRecGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
//  produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TBonRecGestionF.ListFourBonRecGBtnClick(Sender: TObject);
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
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N°';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

  FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Fournisseur';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activité';
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='fix_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Téléphone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='mob_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='Téléphone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='adr_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='credit_f';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Crédit';
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

  FastProduitsListF.Tag := 0;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonRecGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  Var CodeBR : Integer;
 begin
   codeBR:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if FournisseurBonRecGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonRecGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonRecGCbx.SetFocus;
      CanClose := false;
  end else
    begin

     if ModePaieBonRecGCbx.Text = '' then
     begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ModePaieBonRecGCbx.StyleElements:= [];
        RequiredMPGlbl.Visible:= True;
        ModepPaiGErrorP.Visible:= True;

        ModePaieBonRecGCbx.SetFocus;
        CanClose := false;
     end else
     begin

       if CompteBonRecGCbx.Text = '' then
       begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          CompteBonRecGCbx.StyleElements:= [];
          RequiredCompteGlbl.Visible:= True;
          CompteGErrorP.Visible:= True;

          CompteBonRecGCbx.SetFocus;
          CanClose := false;
       end else
       begin

         //---------------------------------------------------
         if RequiredFourGlbl.Visible <> True then
           begin
             if  (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = false)  then
             begin
              MainForm.FournisseurTable.DisableControls;
              MainForm.FournisseurTable.Active:=false;
              MainForm.FournisseurTable.SQL.Clear;
              MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonRecGCbx.Text )+')'  ;
              MainForm.FournisseurTable.Active:=True;

              MainForm.Mode_paiementTable.DisableControls;
              MainForm.Mode_paiementTable.Active:=false;
              MainForm.Mode_paiementTable.SQL.Clear;
              MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonRecGCbx.Text )+')'  ;
              MainForm.Mode_paiementTable.Active:=True;

              MainForm.CompteTable.DisableControls;
              MainForm.CompteTable.Active:=false;
              MainForm.CompteTable.SQL.Clear;
              MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonRecGCbx.Text )+')'  ;
              MainForm.CompteTable.Active:=True;


              MainForm.Bona_recTable.DisableControls;
              MainForm.Bona_recTable.Edit;
              MainForm.Bona_recTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
              MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime:= DateBonRecGD.DateTime;
              MainForm.Bona_recTable.FieldValues['time_barec']:=TimeOf(Now);
              MainForm.Bona_recTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              MainForm.Bona_recTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              MainForm.Bona_recTable.FieldValues['obser_barec']:= ObserBonRecGMem.Text;
              MainForm.Bona_recTable.FieldValues['num_cheque_barec']:= NChequeBonRecGCbx.Text;
              MainForm.Bona_recTable.FieldByName('montht_barec').AsFloat:= StrToFloat(StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

              if RemiseBonRecGEdt.Text<>'' then
              begin
                 MainForm.Bona_recTable.FieldByName('remise_barec').AsFloat:=StrToFloat(StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
              end else begin
                        MainForm.Bona_recTable.FieldByName('remise_barec').AsFloat:=0;
                       end;


              MainForm.Bona_recTable.FieldByName('montver_barec').AsFloat:=StrToFloat(StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll]));
              MainForm.Bona_recTable.FieldByName('montttc_barec').AsFloat:=StrToFloat(StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              MainForm.Bona_recTable.Post;
              MainForm.Bona_recTable.EnableControls;

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
//               if (codeBR <> 0) AND (codeBR <> null) then
//               begin
//                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
//                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
//                  MainForm.RegfournisseurTable.Refresh ;
//                  MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
//               end;

              end;

              end else
                  begin
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    FournisseurBonRecGCbx.StyleElements:= [];
                    RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqué' ;
                    RequiredFourGlbl.Visible:= True;
                    NameFourGErrorP.Visible:= True;

                    FournisseurBonRecGCbx.SetFocus;
                    CanClose:= False;
                  end;
          //---------------------------------------------------

        end;
        end;
      end;
  end  else
  begin

          if  (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = false)  then
         begin
//          codeBR:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;

          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonRecGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonRecGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonRecGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Edit;
          MainForm.Bona_recTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime:= DateBonRecGD.DateTime;
          MainForm.Bona_recTable.FieldValues['time_barec']:=TimeOf(Now);
          MainForm.Bona_recTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_recTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_recTable.FieldValues['obser_barec']:= ObserBonRecGMem.Text;
          MainForm.Bona_recTable.FieldValues['num_cheque_barec']:= NChequeBonRecGCbx.Text;
          MainForm.Bona_recTable.FieldByName('montht_barec').AsFloat:= StrToFloat(StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonRecGEdt.Text<>'' then
          begin
             MainForm.Bona_recTable.FieldByName('remise_barec').AsFloat:=StrToFloat(StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_recTable.FieldByName('remise_barec').AsFloat:=0;
                   end;


          MainForm.Bona_recTable.FieldByName('montver_barec').AsFloat:=StrToFloat(StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('montttc_barec').AsFloat:=StrToFloat(StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          MainForm.Bona_recTable.Post;
          MainForm.Bona_recTable.EnableControls;

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
           if (codeBR <> 0) AND (codeBR <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
              MainForm.RegfournisseurTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

          end;


     CanClose:= True;
  end;

end;

procedure TBonRecGestionF.ProduitBonRecGCbxExit(Sender: TObject);
begin
ProduitBonRecGCbx.Text:='';
//ProduitBonRecGCbx.AutoDropDown:=False;
end;

procedure TBonRecGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBARecBonRecGImg.ImageIndex <> 1 then
 begin
MainForm.Bona_recPlistTable.DisableControls;
 GettingData;

   OLDCredit:= BonRecPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonRecPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonRecPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonRecPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonRecPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonRecPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonRecPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonRecPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonRecPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonRecPListfrxRprt.PrepareReport;
BonRecPListfrxRprt.ShowReport;
MainForm.Bona_recPlistTable.EnableControls;
 end;
end;

procedure TBonRecGestionF.BondeRception1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBARecBonRecGImg.ImageIndex <> 1 then
 begin
MainForm.Bona_recPlistTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonRecPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonRecPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonRecPListSanTAXfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonRecPListSanTAXfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonRecPListSanTAXfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonRecPListSanTAXfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonRecPListSanTAXfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonRecPListSanTAXfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonRecPListSanTAXfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonRecPListSanTAXfrxRprt.PrepareReport;
BonRecPListSanTAXfrxRprt.ShowReport;
MainForm.Bona_recPlistTable.EnableControls;
 end;
end;

procedure TBonRecGestionF.Bonderception2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBARecBonRecGImg.ImageIndex <> 1 then
 begin
MainForm.Bona_recPlistTable.DisableControls;
 GettingData;

   OLDCredit:= BonRecPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonRecPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonRecPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonRecPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonRecPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonRecPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonRecPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonRecPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonRecPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonRecPListfrxRprt.PrepareReport;
BonRecPListfrxRprt.ShowReport;
MainForm.Bona_recPlistTable.EnableControls;
 end;
end;

procedure TBonRecGestionF.Bonderceptionhorstaxe1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBARecBonRecGImg.ImageIndex <> 1 then
 begin
MainForm.Bona_recPlistTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonRecPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonRecPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonRecPListSanTAXfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonRecPListSanTAXfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonRecPListSanTAXfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonRecPListSanTAXfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonRecPListSanTAXfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonRecPListSanTAXfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonRecPListSanTAXfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonRecPListSanTAXfrxRprt.PrepareReport;
BonRecPListSanTAXfrxRprt.ShowReport;
MainForm.Bona_recPlistTable.EnableControls;
 end;
end;

procedure TBonRecGestionF.BonRecPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonRecPListDataS.DataSet.IsEmpty then
  begin
    NSeriesProduitBonRecGBtn.Visible:= True;
    S01.Visible:= True;
    S02.Visible:= True;
    DeleteProduitBonRecGBtn.Visible:= True;
    ClearProduitBonRecGBtn.Visible:= True;

    if (FournisseurBonRecGCbx.Text<>'')  AND (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean <> True) then
    begin
    ValiderBARecBonRecGBtn.Enabled:= True;
    ValiderBARecBonRecGBtn.ImageIndex:=12;
    end;

   if MainForm.Bona_recTable.FieldValues['valider_barec'] <> True then
   begin

//    MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_p,qut_p,qutini_p FROM produit WHERE code_p = ' +IntToStr(MainForm.Bona_recPlistTable.FieldValues['code_p']);
    MainForm.SQLQuery.Active:=True;


    BonRecGOLDStock.Caption:=
     floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])),ffNumber,14,2);
    BonRecGNEWStock.Caption:=
     floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']))+((MainForm.Bona_recPlistTable.FieldValues['qut_p']) * (MainForm.Bona_recPlistTable.FieldValues['cond_p']))),ffNumber,14,2);

//     if(StrToFloat (StringReplace(BonRecGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
//    begin
//     Timer1.Enabled:= true;
//    end else
//        begin
//        Timer1.Enabled:= False;
//        Label20.Visible:=false;
//        end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
//    MainForm.SQLQuery.SQL.Text:='SELECT * FROM produit ';
//    MainForm.SQLQuery.Active:=True;
//    MainForm.SQLQuery.EnableControls;


    RemisePerctageBonRecGEdt.Enabled:=True;
    RemiseBonRecGEdt.Enabled:=True;
    RemiseTypeBonRecGCbx.Enabled:= True;

   end;
     ProduitsListDBGridEh.ReadOnly:=False;
    end else
    begin
    NSeriesProduitBonRecGBtn.Visible:= False;
    S01.Visible:= False;
    S02.Visible:= False;
    DeleteProduitBonRecGBtn.Visible:= False;
    ClearProduitBonRecGBtn.Visible:= False;


    ValiderBARecBonRecGBtn.Enabled:= False;
    ValiderBARecBonRecGBtn.ImageIndex:=30;

    RemisePerctageBonRecGEdt.Enabled:=False;
    RemiseBonRecGEdt.Enabled:=False;
    RemiseTypeBonRecGCbx.Enabled:= False;

    RemisePerctageBonRecGEdt.Text:='';
    RemiseBonRecGEdt.Text:='';
    RemiseTypeBonRecGCbx.Text:='';

    BonRecGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonRecGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

     ProduitsListDBGridEh.ReadOnly:=True;
  end;

end;

procedure TBonRecGestionF.EnterAddProduitBonRecGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonRecGCbxKeyPress(Sender, key);
end;

procedure TBonRecGestionF.NewAddProduitBonRecGBtnClick(Sender: TObject);
begin

ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonRecGestionF.ClearProduitBonRecGBtnClick(Sender: TObject);
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
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 6 ;

end;
procedure TBonRecGestionF.DeleteProduitBonRecGBtnClick(Sender: TObject);
begin
 if  MainForm.Bona_recPlistTable.RecordCount = 1 then
 begin
    MainForm.Bona_recPlistTable.DisableControls;
    MainForm.Bona_recPlistTable.Refresh;
    MainForm.Bona_recPlistTable.Delete;
    ProduitsListDBGridEh.Refresh;
    MainForm.Bona_recPlistTable.EnableControls;
    FournisseurBonRecGCbx.StyleElements:= [];
    RequiredFourGlbl.Visible:= False;
    NameFourGErrorP.Visible:= False;
    BonRecTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRecTotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRecTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRecRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRecResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRecGFourNEWCredit.Caption:= BonRecTotalTTCLbl.Caption;
 end else
 if MainForm.Bona_recPlistTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      MainForm.Bona_recPlistTable.DisableControls;
      MainForm.Bona_recPlistTable.Delete;
      ProduitsListDBGridEh.Refresh;
      MainForm.Bona_recPlistTable.Refresh;
      MainForm.Bona_recPlistTable.EnableControls;
     end;
end;

procedure TBonRecGestionF.AddModePaieBonRecGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(self);
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
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 7 ;
end;

procedure TBonRecGestionF.CompteBonRecGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteBonRecGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteBonRecGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TBonRecGestionF.AddCompteBonRecGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(Application);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 1 ;
end;

procedure TBonRecGestionF.AddFourBonRecGBtnClick(Sender: TObject);
begin
FournisseurListF.AddFournisseursBtnClick(Sender);
FournisseurGestionF.OKFournisseurGBtn.Tag := 3 ;
FournisseurBonRecGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredFourGlbl.Visible:= False;
NameFourGErrorP.Visible:= False;
end;

procedure TBonRecGestionF.ModePaieBonRecGCbxChange(Sender: TObject);
begin
RequiredMPGlbl.Visible:= False;
ModepPaiGErrorP.Visible:= False;
end;

procedure TBonRecGestionF.ModePaieBonRecGCbxClick(Sender: TObject);
begin
  if ModePaieBonRecGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonRecGCbx.Text)+')'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonRecGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;



  ModePaieBonRecGCbxChange(Sender);
end;

procedure TBonRecGestionF.ModePaieBonRecGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieBonRecGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieBonRecGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
end;

procedure TBonRecGestionF.CompteBonRecGCbxChange(Sender: TObject);
begin
CompteBonRecGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonRecGestionF.ValiderBARecBonRecGBtnClick(Sender: TObject);
begin
  if FournisseurBonRecGCbx.Text <> '' then
  begin

   if ModePaieBonRecGCbx.Text <> '' then
   begin

    if CompteBonRecGCbx.Text <> '' then
    begin


      if  RequiredFourGlbl.Visible <> True then
      begin

           //-------- Show the splash screan for the adding comptes ---------//
       FSplashVersement:=TFSplashVersement.Create(self);
       FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
       FSplashVersement.Top:=  MainForm.Top + 5 ;

      FSplashVersement.OldCreditVersementSLbl.Caption:= BonRecGFourOLDCredit.Caption;


        FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
             (StrToFloat (StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((

             (StrToFloat (StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

       FSplashVersement.Tag := 1 ;
       FSplashVersement.OKVersementSBtn.Tag:= 0 ;

       AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashVersement.Show;


       end else
           begin
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              FournisseurBonRecGCbx.StyleElements:= [];
              RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqué' ;
              RequiredFourGlbl.Visible:= True;
              NameFourGErrorP.Visible:= True;
              FournisseurBonRecGCbx.SetFocus;
           end;

          end else
              begin
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                CompteBonRecGCbx.StyleElements:= [];
                RequiredCompteGlbl.Visible:= True;
                CompteGErrorP.Visible:= True;
                CompteBonRecGCbx.SetFocus;
              end;

     end else
     begin

            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ModePaieBonRecGCbx.StyleElements:= [];
            RequiredMPGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonRecGCbx.SetFocus;

     end;

    end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonRecGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonRecGCbx.SetFocus;
    end;

end;

procedure TBonRecGestionF.RemiseBonRecGEdtKeyPress(Sender: TObject; var Key: Char);
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
  if (Key = '.') AND (Pos(Key, (RemiseBonRecGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonRecGestionF.RemiseBonRecGEdtExit(Sender: TObject);
var
RemiseBonRecG: Double;
begin
  if RemiseBonRecGEdt.Text<>'' then
  begin
  RemiseBonRecG:=StrToFloat(StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonRecGEdt.Text := FloatToStrF(RemiseBonRecG,ffNumber,14,2);
  end;
end;

procedure TBonRecGestionF.RemiseBonRecGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonRecGEdt.Text := StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonRecGEdt.SelectAll;
end;

procedure TBonRecGestionF.RemiseBonRecGEdtChange(Sender: TObject);
var RemiseBonRecG,BonRTotalHT,BonRTotalTVA,OLDTTC : Double;
begin
if RemiseBonRecGEdt.Focused then
 begin

      if RemiseBonRecGEdt.Text<>'' then
     begin
     RemiseBonRecG:=StrToFloat (StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
     end;

     if (RemiseBonRecGEdt.Text<>'') AND (RemiseBonRecG<>0) then
    begin
       if RemiseTypeBonRecGCbx.ItemIndex = 0 then
       begin
         if BonRecTotalHTLbl.Caption<>'' then
         begin
         BonRTotalHT:=StrToFloat (StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonRecTotalTVALbl.Caption<>'' then
         begin
          BonRTotalTVA:=StrToFloat (StringReplace(BonRecTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonRecGEdt.Text := FloatToStrF(((RemiseBonRecG / BonRTotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonRecGCbx.ItemIndex = 1 then
        begin
         if BonRTotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonRTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonRecGEdt.Text := FloatToStrF(((RemiseBonRecG / OLDTTC) * 100),ffNumber,14,2) ;


        end;

    end else
        begin
          BonRRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonRecGEdt.Text:='';
          BonRTotalHTNewLbl.Caption:=BonRecTotalHTLbl.Caption;
        end;
 end;
end;

procedure TBonRecGestionF.RemisePerctageBonRecGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonRecGEdt.Text := StringReplace(RemisePerctageBonRecGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonRecGEdt.SelectAll;
end;

procedure TBonRecGestionF.RemisePerctageBonRecGEdtChange(Sender: TObject);
var BonRTotalHT,RemisePerctageBonRec,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldFourCredit : Double;
begin
//------ this is to set the remise on tyhe prix HT ---------//

   //-- use this code to HT TVA calculation
      if RemiseTypeBonRecGCbx.ItemIndex = 0 then
       begin
        if RemisePerctageBonRecGEdt.Text<>''  then
        begin
            if RemisePerctageBonRecGEdt.Text <> '' then
            begin
            RemisePerctageBonRec:=StrToFloat(StringReplace(RemisePerctageBonRecGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonRecTotalHTLbl.Caption<>'' then
            begin
            BonRTotalHT:=StrToFloat (StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonRecTotalTVALbl.Caption:= FloatToStrF(Round(TotalTVANet - (( TotalTVANet  * RemisePerctageBonRec)/(100))),ffNumber,14,2); //TVA
         BonRTotalHTNewLbl.Caption:= FloatToStrF(Round(BonRTotalHT - (( BonRTotalHT  * RemisePerctageBonRec)/(100))),ffNumber,14,2); //HT
            if BonRTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonRecTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonRecTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonRecTotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA),ffNumber,14,2); // TTC
//         BonRecResteLbl.Caption:= BonRecTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonRecGEdt.Focused then
            begin
            RemiseBonRecGEdt.Text:=FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);
            end;

        BonRRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonRecGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonRecGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonRecGFourNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldFourCredit)),ffNumber,14,2);

        end else
          begin
           if BonRecTotalHTLbl.Caption<>'' then
           begin
           BonRTotalHT:=StrToFloat (StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonRecTotalTTCLbl.Caption:=FloatToStrF((BonRTotalHT + TotalTVANet ),ffNumber,14,2);
//            BonRecResteLbl.Caption:= BonRecTotalTTCLbl.Caption;
            BonRecTotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonRecGEdt.Text:='';
            BonRRemiseHTNewLbl.Caption:='0';
            BonRTotalHTNewLbl.Caption:=BonRecTotalHTLbl.Caption;

            if BonRecGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonRecGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonRecGFourOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonRecTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
//          BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
          end;
       end;
       //------ this is to set the remise on the prix TTC only ---------//
       if RemiseTypeBonRecGCbx.ItemIndex = 1 then
       begin
        if RemisePerctageBonRecGEdt.Text<>'' then
        begin
             if RemisePerctageBonRecGEdt.Text <> '' then
            begin
            RemisePerctageBonRec:=StrToFloat(StringReplace(RemisePerctageBonRecGEdt.Text, #32, '', [rfReplaceAll]));
            end;
             if TotalTVANewLbl.Caption <>'' then
            begin
            NewTVA:=StrToFloat (StringReplace(TotalTVANewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonRecTotalHTLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRecTotalHTLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         BonRecTotalTVALbl.Caption:= FloatToStrF(( NewTVA - ((RemisePerctageBonRec/100) * NewTVA)),ffNumber,14,2);
         BonRTotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonRec/100) * NewHT)),ffNumber,14,2);
         BonRecTotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonRec/100) * NewHT))+( NewTVA - ((RemisePerctageBonRec/100) * NewTVA))),ffNumber,14,2);
            if BonRTotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonRTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonRecTotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonRecTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonRecGEdt.Focused then
         begin
         RemiseBonRecGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


//         BonRecResteLbl.Caption:=BonRecTotalTTCLbl.Caption;

           if BonRecTotalHTLbl.Caption <>'' then
            begin
            BonRTotalHT:=StrToFloat (StringReplace(BonRecTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonRTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonRRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonRecGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonRecGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonRecGEdt.Text:='';
             BonRRemiseHTNewLbl.Caption:='0';
             BonRecTotalTTCLbl.Caption := BonRTotalTTCNewLbl.Caption;
//             BonRecResteLbl.Caption:=BonRecTotalTTCLbl.Caption;
             BonRecTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonRTotalHTNewLbl.Caption:=BonRecTotalHTLbl.Caption;

              if BonRecGFourOLDCredit.Caption <>'' then
              begin
              OldFourCredit:=StrToFloat (StringReplace(BonRecGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonRecGFourOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonRecTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
//              BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
          //   BonRecGFourNEWCredit.Caption:= BonRecTotalTTCLbl.Caption;
            end;
      end;
end;

procedure TBonRecGestionF.RemiseTypeBonRecGCbxChange(Sender: TObject);
begin
RemiseBonRecGEdt.Text:='';
RemisePerctageBonRecGEdt.Text:='';
end;

procedure TBonRecGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonRecGCbx.Clear;
ProduitBonRecGCbx.SetFocus;
ProduitBonRecGCbx.EditText:= '0';
end;

procedure TBonRecGestionF.RemisePerctageBonRecGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemisePerctageBonRecGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonRecGestionF.EditBARecBonRecGBtnClick(Sender: TObject);
  Var CodeBR : Integer;
 begin
   codeBR:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
                 //------- This is to delete data from tre and reg ih not valide----------------------------------------------
               if (codeBR <> 0) AND (codeBR <> null) then
               begin
                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
                  MainForm.RegfournisseurTable.Refresh ;
                  MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
               end;


 // this is to enable the componets to edit the bon
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonRecGCbx.Text )+')'  ;
      MainForm.FournisseurTable.Active:=True;
  EnableBonRec;
 // this is to unvalider the bon
  begin
  MainForm.Bona_recTable.Edit;
  MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean:= False;
  MainForm.Bona_recTable.Post;
  end;

// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonRecGFourOLDCredit.Caption:=
  FloatToStrF((((MainForm.FournisseurTable.FieldByName('credit_f').AsFloat)- StrToFloat(StringReplace(BonRecResteLbl.Caption, #32, '', [rfReplaceAll])))),ffCurrency,14,2);

        begin
      MainForm.FournisseurTable.Edit;
      MainForm.FournisseurTable.FieldByName('credit_f').AsFloat:= (MainForm.FournisseurTable.FieldByName('credit_f').AsFloat) - (MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat);
      MainForm.FournisseurTable.Post;
      end;

  BonRecRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonRecResteLbl.Caption:= BonRecTotalTTCLbl.Caption;

      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls;
  //-------------------------------------------
    begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT *, '
            +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
            +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
            +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
            +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
            +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
            +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
            +' (qut_p + qutini_p ) AS QutDispo, '
            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock, '
            +' ((qut_p + qutini_p) * prixvd_p ) AS ValueStockVD '
            +' FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_barecl,code_p,  qut_p, cond_p  FROM bona_rec_list WHERE code_barec =  '
                                                 + IntToStr (MainForm.Bona_recTable.FieldValues['code_barec'])
                                                 + 'GROUP BY code_barecl, code_p, qut_p, cond_p ' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;

           while  NOT (MainForm.SQLQuery.Eof) do
           begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT *, '
            +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
            +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
            +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
            +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
            +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
            +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
            +' (qut_p + qutini_p ) AS QutDispo, '
            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock, '
            +' ((qut_p + qutini_p) * prixvd_p ) AS ValueStockVD '
            +' FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;

            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         - (MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p'])));
//            MainForm.ProduitTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
            MainForm.ProduitTable.Post;
            MainForm.SQLQuery.Next;
           end;

           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT *, '
            +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
            +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
            +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
            +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
            +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
            +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
            +' (qut_p + qutini_p ) AS QutDispo, '
            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock, '
            +' ((qut_p + qutini_p) * prixvd_p ) AS ValueStockVD '
            +' FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bona_recTable.Refresh;
     end;


     FournisseurBonRecGCbxExit(Sender);

end;

procedure TBonRecGestionF.AddBARecBonRecGBtnClick(Sender: TObject);
var
  codeBR,CodeCB : integer;
begin
      begin
     FournisseurBonRecGCbx.Clear;
     ModePaieBonRecGCbx.Clear;
     CompteBonRecGCbx.Clear;
     NChequeBonRecGCbx.Clear;
 //    FournisseurBonRecGCbx.SetFocus;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.FournisseurTable.Refresh;
   MainForm.Bona_recTable.Refresh;
   MainForm.Bona_recPlistTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonRecPListDataS.DataSet.Refresh;
   MainForm.BonRecListDataS.DataSet.Refresh;
   Refresh;

   ModePaieBonRecGCbx.Refresh;
   CompteBonRecGCbx.Refresh;

   EnableBonRec;

 codeBR:= 0;
   //   BonRecGestionF := TBonRecGestionF.Create(BonRecGestionF);
     if MainForm.Bona_recTable.RecordCount <= 0 then
      begin

        MainForm.Bona_recTable.Insert;
        MainForm.Bona_recTable.FieldValues['code_barec']:=1;
        MainForm.Bona_recTable.FieldValues['num_barec']:= 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_recTable.FieldValues['date_barec']:= DateOf(Today);
        MainForm.Bona_recTable.FieldValues['time_barec']:=TimeOf(Now);
        MainForm.Bona_recTable.Post;
        codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
      end else
          begin
            MainForm.Bona_recTable.Last;
            codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= BRLSQL+ ' WHERE code_barec = ' + QuotedStr(IntToStr(codeBR));
            MainForm.Bona_recPlistTable.Active:=True;

           if MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
        //   MainForm.Bona_recTable.Last;
           codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
           end else
           begin
        //   MainForm.Bona_recTable.Last;
          // codeBR := MainForm.Bona_recTable.FieldValues['code_barec'];
           MainForm.Bona_recTable.Insert;
           MainForm.Bona_recTable.FieldValues['code_barec']:= codeBR + 1;
           MainForm.Bona_recTable.FieldValues['num_barec']:=  'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBR + 1)]);
           MainForm.Bona_recTable.FieldValues['date_barec']:= DateOf(Today);
           MainForm.Bona_recTable.FieldValues['time_barec']:= TimeOf(Now);
           MainForm.Bona_recTable.Post;

           end;
//            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonRecTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonRecGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRecGEdt.Text),ffNumber,14,2) ;
BonRecTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
BonRecTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
BonRecResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
BonRecRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
BonRecGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
BonRecGFourNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= MainForm.Bona_recTable.FieldValues['code_barec']   ;
 NumBonRecGEdt.Caption := 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     FournisseurBonRecGCbx.SetFocus;

     Tag:=0;

     MainForm.Bona_recPlistTable.Refresh;

end;

procedure TBonRecGestionF.FournisseurBonRecGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonRecGestionF.sSpeedButton10Click(Sender: TObject);
begin
  MainForm.Bona_recTable.First;
  MainForm.Bona_recTable.Refresh;
  MainForm.Bona_recPlistTable.Refresh;

  if MainForm.Bona_recTable.FieldValues['valider_barec'] = True then
  begin
       FSplashVersement.DisableBonRec;
  end;
  if MainForm.Bona_recTable.FieldValues['valider_barec'] = False then
   begin
     EnableBonRec;
    end;


  if (MainForm.Bona_recTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_f']<> null) then
  begin
  FournisseurBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['fourbarec'];
  end;
  if (MainForm.Bona_recTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bona_recTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bona_recTable.FieldValues['MontantRes']<>null)  then
  begin
  BonRecResteLbl.Caption:=FloatToStrF(((MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat)),ffCurrency,14,2) ;
  end;

  NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;

   if MainForm.Bona_recPlistTable.ControlsDisabled  then
   begin
     MainForm.Bona_recPlistTable.EnableControls;
   end;

end;

procedure TBonRecGestionF.sSpeedButton9Click(Sender: TObject);
begin
MainForm.Bona_recTable.Prior;
MainForm.Bona_recTable.Refresh;
MainForm.Bona_recPlistTable.Refresh;

if MainForm.Bona_recTable.FieldValues['valider_barec'] = True then
begin
     FSplashVersement.DisableBonRec;
end;
if MainForm.Bona_recTable.FieldValues['valider_barec'] = False then
 begin
   EnableBonRec;
  end;


if (MainForm.Bona_recTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_f']<> null) then
begin
FournisseurBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['fourbarec'];
end;
if (MainForm.Bona_recTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_mdpai']<>null)  then
begin
ModePaieBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['ModePaie'];
end;
if (MainForm.Bona_recTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_cmpt']<>null)  then
begin
CompteBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['Compte'];
end;

if  (MainForm.Bona_recTable.FieldValues['MontantRes']<>null)  then
begin
BonRecResteLbl.Caption:=FloatToStrF(((MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat)),ffCurrency,14,2) ;
end;

 NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;

    if MainForm.Bona_recPlistTable.ControlsDisabled  then
   begin
     MainForm.Bona_recPlistTable.EnableControls;
   end;
end;

procedure TBonRecGestionF.sSpeedButton8Click(Sender: TObject);
begin
MainForm.Bona_recTable.Next;
MainForm.Bona_recTable.Refresh;
MainForm.Bona_recPlistTable.Refresh;

if MainForm.Bona_recTable.FieldValues['valider_barec'] = True then
begin
     FSplashVersement.DisableBonRec;
end;
if MainForm.Bona_recTable.FieldValues['valider_barec'] = False then
 begin
   EnableBonRec;
  end;

if (MainForm.Bona_recTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_f']<> null) then
begin
FournisseurBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['fourbarec'];
end;
if (MainForm.Bona_recTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_mdpai']<>null)  then
begin
ModePaieBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['ModePaie'];
end;
if (MainForm.Bona_recTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_cmpt']<>null)  then
begin
CompteBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['Compte'];
end;

if  (MainForm.Bona_recTable.FieldValues['MontantRes']<>null)  then
begin
BonRecResteLbl.Caption:=FloatToStrF(((MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat)),ffCurrency,14,2) ;
end;

 NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;

    if MainForm.Bona_recPlistTable.ControlsDisabled  then
   begin
     MainForm.Bona_recPlistTable.EnableControls;
   end;
end;

procedure TBonRecGestionF.sSpeedButton7Click(Sender: TObject);
begin
MainForm.Bona_recTable.Last;
MainForm.Bona_recTable.Refresh;
MainForm.Bona_recPlistTable.Refresh;

if MainForm.Bona_recTable.FieldValues['valider_barec'] = True then
begin
     FSplashVersement.DisableBonRec;
end;
if MainForm.Bona_recTable.FieldValues['valider_barec'] = False then
 begin
   EnableBonRec;
  end;

if (MainForm.Bona_recTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_f']<> null) then
begin
FournisseurBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['fourbarec'];
end;
if (MainForm.Bona_recTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_mdpai']<>null)  then
begin
ModePaieBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['ModePaie'];
end;
if (MainForm.Bona_recTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_recTable.FieldValues['code_cmpt']<>null)  then
begin
CompteBonRecGCbx.Text:=MainForm.Bona_recTable.FieldValues['Compte'];
end;

if  (MainForm.Bona_recTable.FieldValues['MontantRes']<>null)  then
begin
BonRecResteLbl.Caption:=FloatToStrF(((MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat)),ffCurrency,14,2) ;
end;

 NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;

    if MainForm.Bona_recPlistTable.ControlsDisabled  then
   begin
     MainForm.Bona_recPlistTable.EnableControls;
   end;
end;

procedure TBonRecGestionF.FournisseurBonRecGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece
      ModePaieBonRecGCbxDropDown(Self);
      if Tag = 0 then
      begin
      ModePaieBonRecGCbx.ItemIndex:=0;
      ModePaieBonRecGCbxClick(Self) ;
      end;
end;




procedure TBonRecGestionF.RemisePerctageBonRecGEdtEnter(Sender: TObject);
begin
MainForm.Bona_recPlistTable.Refresh;
 RemisePerctageBonRecGEdtChange(Sender);
end;

procedure TBonRecGestionF.RemiseBonRecGEdtEnter(Sender: TObject);
begin
MainForm.Bona_recPlistTable.Refresh;
 RemisePerctageBonRecGEdtChange(Sender);
end;

procedure TBonRecGestionF.ProduitsListDBGridEhExit(Sender: TObject);
var key : Char;
begin
Refresh_PreservePosition;
end;

procedure TBonRecGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (MainForm.Bona_recPlistTable.RecNo=MainForm.Bona_recPlistTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;
end;

procedure TBonRecGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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

procedure TBonRecGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_br') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_br');
   end;


MainForm.Bona_recPlistTable.Active:=True;
if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;




procedure TBonRecGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonRecGestionF.GettingDataSansTax;
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

    Name:= BonRecPListSanTAXfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonRecPListSanTAXfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonRecPListSanTAXfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonRecPListSanTAXfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonRecPListSanTAXfrxRprt.FindObject('Logo') as TfrxPictureView;
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

    str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
    str1[1] := Upcase(str1[1]);
    MoneyWordRX := BonRecPListSanTAXfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
    MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

    NumRX:= BonRecPListSanTAXfrxRprt.FindObject('NumRX') as TfrxMemoView;
    NumRX.Text:= NumBonRecGEdt.Caption;

    DateRX:= BonRecPListSanTAXfrxRprt.FindObject('DateRX') as TfrxMemoView;
    DateRX.Text:= DateToStr(DateBonRecGD.Date);

    NameRX:= BonRecPListSanTAXfrxRprt.FindObject('NameRX') as TfrxMemoView;
    NameRX.Text:= FournisseurBonRecGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_f,adr_f,ville_f,willaya_f ,rc_f,nart_f,nif_f,nis_f FROM fournisseur WHERE code_f ='
    + IntToStr(MainForm.Bona_recTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonRecPListSanTAXfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_f').AsString;

      VilleRX:= BonRecPListSanTAXfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_f').AsString;

      WilayaRX:= BonRecPListSanTAXfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_f').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonRecPListSanTAXfrxRprt.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonRecGCbx.Text;

    NCHeqRX:= BonRecPListSanTAXfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonRecGCbx.Text;

    OLDCredit:= BonRecPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
    OLDCredit.Text:= BonRecGFourOLDCredit.Caption;


    NEWCredit:= BonRecPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
    NEWCredit.Text:= BonRecGFourNEWCredit.Caption;

 end;

procedure TBonRecGestionF.GettingData;
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

    Name:= BonRecPListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonRecPListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

    Mob:= BonRecPListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

    Adr:= BonRecPListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonRecPListfrxRprt.FindObject('Logo') as TfrxPictureView;
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

  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonRecPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonRecPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonRecGEdt.Caption;

  DateRX:= BonRecPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonRecGD.Date);

  NameRX:= BonRecPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= FournisseurBonRecGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_f,adr_f,ville_f,willaya_f ,rc_f,nart_f,nif_f,nis_f FROM fournisseur WHERE code_f ='
    + IntToStr(MainForm.Bona_recTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonRecPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_f').AsString;

      VilleRX:= BonRecPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_f').AsString;

      WilayaRX:= BonRecPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_f').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonRecPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonRecGCbx.Text;

    NCHeqRX:= BonRecPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonRecGCbx.Text;


        OLDCredit:= BonRecPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonRecGFourOLDCredit.Caption;


      NEWCredit:= BonRecPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonRecGFourNEWCredit.Caption;

 end;


procedure TBonRecGestionF.sSpeedButton4Click(Sender: TObject);
begin
   GettingData;
MainForm.Bona_recPlistTable.DisableControls;
BonRecPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Bon de Réception N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bona_recTable.FieldByName('code_barec').AsInteger)]);
BonRecPListfrxRprt.Export(frxXLSExport1);
MainForm.Bona_recPlistTable.EnableControls;
end;

procedure TBonRecGestionF.sSpeedButton6Click(Sender: TObject);
begin
 GettingData;
MainForm.Bona_recPlistTable.DisableControls;
BonRecPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Bon de Réception N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bona_recTable.FieldByName('code_barec').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonRecPListfrxRprt.Export(frxPDFExport1);

MainForm.Bona_recPlistTable.EnableControls;
end;

procedure TBonRecGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonRecGestionF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
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
//  if  (MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsFloat )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsFloat )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsFloat )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsFloat )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsFloat > MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsFloat )
//         then
// begin
// ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
// ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;
end;

end.
