unit UBonComAGestion;

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
  Vcl.AppEvnts, frxExportBaseDialog, System.Actions, Vcl.ActnList;

type
  TBonComAGestionF = class(TForm)
    Panel3: TPanel;
    BonComPListDataS: TDataSource;
    TopP2: TPanel;
    EditBAComBonComGBtn: TAdvToolButton;
    AddBAComBonComGBtn: TAdvToolButton;
    Label4: TLabel;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    NumBonComGEdt: TLabel;
    AddFourBonComGBtn: TAdvToolButton;
    Label8: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonComGD: TDateTimePicker;
    FournisseurBonComGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    ValiderBAComBonComGBtn: TAdvToolButton;
    Panel2: TPanel;
    ProduitsListDBGridEh: TDBGridEh;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonComGCbx: TComboBox;
    Label7: TLabel;
    AddModePaieBonComGBtn: TAdvToolButton;
    Label16: TLabel;
    AddCompteBonComGBtn: TAdvToolButton;
    CompteBonComGCbx: TComboBox;
    ListAddProduitBonComGBtn: TAdvToolButton;
    Panel5: TPanel;
    BonComGFourOLDCredit: TLabel;
    BonComGFourNEWCredit: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    DeleteProduitBonComGBtn: TAdvToolButton;
    ValiderBAComBonComGLbl: TLabel;
    NewAddProduitBonComGBtn: TAdvToolButton;
    Panel18: TPanel;
    Panel4: TPanel;
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
    Panel14: TPanel;
    NameFourGErrorP: TPanel;
    RequiredFourGlbl: TLabel;
    EnterAddProduitBonComGBtn: TAdvToolButton;
    ClearProduitBonComGBtn: TAdvToolButton;
    ValiderBAComBonComGImg: TsImage;
    Shape1: TShape;
    Label3: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label11: TLabel;
    RemisePerctageBonComGEdt: TEdit;
    Label14: TLabel;
    RemiseBonComGEdt: TEdit;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel1: TPanel;
    RemiseTypeBonComGCbx: TComboBox;
    Label15: TLabel;
    BonCATotalTTCNewLbl: TLabel;
    BonCATotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    NChequeBonComGCbx: TEdit;
    ObserBonComGLbl: TLabel;
    ObserBonComGMem: TMemo;
    BonRRemiseHTNewLbl: TLabel;
    Label19: TLabel;
    BonComGOLDStock: TLabel;
    Label20: TLabel;
    BonComGNEWStock: TLabel;
    frxBonComDT: TfrxDBDataset;
    frxBonComPListDB: TfrxDBDataset;
    frxFourDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonComPListfrxRprt: TfrxReport;
    sImage1: TsImage;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    ProduitBonComGCbx: TcxComboBox;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeCommande1: TMenuItem;
    BonComPListSanTAXfrxRprt: TfrxReport;
    RequiredStarProduitGLbl: TLabel;
    ModepPaiGErrorP: TPanel;
    Label22: TLabel;
    CompteGErrorP: TPanel;
    Label21: TLabel;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
    N1: TMenuItem;
    Bondecommande2: TMenuItem;
    Bondecommandehorstaxe1: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    ApplicationEvents1: TApplicationEvents;
    Label31: TLabel;
    ListFourBonComGBtn: TAdvToolButton;
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
    procedure ProduitBonComGCbxEnter(Sender: TObject);
    procedure ProduitBonComGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure FournisseurBonComGCbxEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FournisseurBonComGCbxExit(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
    procedure ListAddProduitBonComGBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ProduitBonComGCbxExit(Sender: TObject);
    procedure BonComPListDataSDataChange(Sender: TObject; Field: TField);
    procedure EnterAddProduitBonComGBtnClick(Sender: TObject);
    procedure NewAddProduitBonComGBtnClick(Sender: TObject);
    procedure ClearProduitBonComGBtnClick(Sender: TObject);
    procedure DeleteProduitBonComGBtnClick(Sender: TObject);
    procedure AddModePaieBonComGBtnClick(Sender: TObject);
    procedure CompteBonComGCbxEnter(Sender: TObject);
    procedure AddCompteBonComGBtnClick(Sender: TObject);
    procedure AddFourBonComGBtnClick(Sender: TObject);
    procedure ModePaieBonComGCbxClick(Sender: TObject);
    procedure ModePaieBonComGCbxDropDown(Sender: TObject);
    procedure CompteBonComGCbxChange(Sender: TObject);
    procedure ProduitBonComGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonComGCbxChange(Sender: TObject);
    procedure ValiderBAComBonComGBtnClick(Sender: TObject);
    procedure RemiseBonComGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonComGEdtExit(Sender: TObject);
    procedure RemiseBonComGEdtClick(Sender: TObject);
    procedure RemiseBonComGEdtChange(Sender: TObject);
    procedure RemisePerctageBonComGEdtClick(Sender: TObject);
    procedure RemisePerctageBonComGEdtChange(Sender: TObject);
    procedure RemiseTypeBonComGCbxChange(Sender: TObject);
    procedure RemisePerctageBonComGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure EditBAComBonComGBtnClick(Sender: TObject);
    procedure AddBAComBonComGBtnClick(Sender: TObject);
    procedure FournisseurBonComGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure sSpeedButton10Click(Sender: TObject);
    procedure sSpeedButton9Click(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure FournisseurBonComGCbxChange(Sender: TObject);
    procedure RemisePerctageBonComGEdtEnter(Sender: TObject);
    procedure RemiseBonComGEdtEnter(Sender: TObject);
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
    procedure BondeCommande1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ModePaieBonComGCbxChange(Sender: TObject);
    procedure Bondecommande2Click(Sender: TObject);
    procedure Bondecommandehorstaxe1Click(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ListFourBonComGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FournisseurBonComGCbxSelect(Sender: TObject);
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
    procedure GettingDataSansTax;
    { Private declarations }
  public
    { Public declarations }

    const BCFLSQL =
      ' SELECT BCFL.code_bacom,BCFL.code_bacoml,BCFL.qut_p,BCFL.cond_p,BCFL.code_p,BCFL.tva_p,BCFL.prixht_p,P.nom_p as nomp, P.refer_p as referp,  '
      +' BCFL.prixvd_p,BCFL.prixvr_p,BCFL.prixvg_p,BCFL.prixva_p,BCFL.prixva2_p,BCFL.dateperiss_p,BCFL.qutinstock_p, '
      +'   (((BCFL.prixht_p * BCFL.tva_p)/100)+BCFL.prixht_p) AS PrixATTC, '
      +'   ((BCFL.prixht_p * BCFL.qut_p) * cond_p) AS MontantHT, '
      +'   (((((BCFL.prixht_p * BCFL.tva_p)/100)+BCFL.prixht_p) * BCFL.qut_p)*cond_p) AS MontantTTC, '
      +'   (((((((BCFL.prixht_p * BCFL.tva_p)/100)+BCFL.prixht_p) * BCFL.qut_p)*cond_p) )-(((BCFL.prixht_p * BCFL.qut_p) * cond_p))) AS MontantTVA, '
      +'   ((BCFL.prixht_p * BCFL.qut_p)* cond_p) AS MontantAHT, '
      +'  CASE  '
      +'       WHEN BCFL.prixvd_p <> ''0'' THEN '
      +'     CASE WHEN BCFL.prixht_p <> ''0''   '
      +'       THEN ( ((BCFL.prixvd_p - BCFL.prixht_p) / BCFL.prixht_p  ) *100) '
      +'       ELSE ''100''  '
      +'     END           '
      +'  END AS MargeD,   '
      +'  CASE             '
      +'     WHEN BCFL.prixvr_p <> ''0'' THEN '
      +'   CASE WHEN BCFL.prixht_p <> ''0''    '
      +'     THEN ( ((BCFL.prixvr_p - BCFL.prixht_p) / BCFL.prixht_p  ) *100) '
      +'     ELSE ''100''  '
      +'   END          '
      +'  END AS MargeR, '
      +'  CASE   '
      +'     WHEN BCFL.prixvg_p <> ''0'' THEN  '
      +'   CASE WHEN BCFL.prixht_p <> ''0''   '
      +'     THEN ( ((BCFL.prixvg_p - BCFL.prixht_p) / BCFL.prixht_p  ) *100)  '
      +'     ELSE ''100''  '
      +'   END   '
      +'  END AS MargeG,  '
      +'   CASE    '
      +'     WHEN BCFL.prixva_p <> ''0'' THEN  '
      +'   CASE WHEN BCFL.prixht_p <> ''0''  '
      +'     THEN ( ((BCFL.prixva_p - BCFL.prixht_p) / BCFL.prixht_p  ) *100) '
      +'     ELSE ''100''  '
      +'   END  '
      +'  END AS MargeA, '
      +'   CASE   '
      +'     WHEN BCFL.prixva2_p <> ''0'' THEN  '
      +'   CASE WHEN BCFL.prixht_p <> ''0''   '
      +'     THEN ( ((BCFL.prixva2_p - BCFL.prixht_p) / BCFL.prixht_p  ) *100)  '
      +'     ELSE ''100''  '
      +'   END  '
      +'  END AS MargeA2   '
      +' FROM bona_com_list as BCFL '
      +' LEFT JOIN produit as P   '
      +'  ON BCFL.code_p = P.code_p ';
    
    procedure EnableBonCom;
  end;

var
  BonComAGestionF: TBonComAGestionF;

implementation

uses   StringTool,Vcl.Imaging.jpeg, IniFiles,
  UBonComA, UMainF, UFournisseurGestion, UFournisseurList, UFastProduitsList,
  UProduitGestion, USplashAddUnite, UProduitsList, USplashAddCompte,
  USplashVersement, UDataModule;

{$R *.dfm}


//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
 begin

   BonComAGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonComAGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonComAGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
  // DisableControls;
   RecNo := row;
   MoveBy(-rowDelta) ;
   MoveBy(rowDelta) ;
  // EnableControls;
   end;

   BonComAGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

procedure TBonComAGestionF.EnableBonCom;
  begin

        AddBAComBonComGBtn.Enabled:= False;
        AddBAComBonComGBtn.ImageIndex:=28;// 4 For D
        EditBAComBonComGBtn.Enabled:= False;
        EditBAComBonComGBtn.ImageIndex:=29;// 5 for D
        ValiderBAComBonComGBtn.Enabled:= True;
        ValiderBAComBonComGBtn.ImageIndex:=12;//30 for D

        DateBonComGD.Enabled:= True;
        ObserBonComGMem.Enabled:= True;
        FournisseurBonComGCbx.Enabled:= True;
        AddFourBonComGBtn.Enabled:= True ; //
        AddFourBonComGBtn.ImageIndex:=10;//35 fo D
        ListFourBonComGBtn.Enabled:= True;
        ListFourBonComGBtn.ImageIndex:= 59;
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
//        ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
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

        ValiderBAComBonComGImg.ImageIndex:=1;//0 fo D
        ValiderBAComBonComGLbl.Color:=$007374FF;// $004AC38B for D
        ValiderBAComBonComGLbl.Font.Color:= clWhite;// clBlack for D
        ValiderBAComBonComGLbl.Caption:='Ce bon n''est pas encore Validé';// 'Ce bon est Valid' for D
  end;

procedure TBonComAGestionF.ProduitBonComGCbxChange(Sender: TObject);
begin
{if ProduitBonComGCbx.Text<>'' then
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin

 Cursor := crDefault;
 end;
end; }
end;

procedure TBonComAGestionF.ProduitBonComGCbxEnter(Sender: TObject);
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
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ORDER By code_p ';
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
      MainForm.SQLQuery.SQL.Text:= 'SELECT refer_p FROM produit ORDER By code_p ';
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

procedure TBonComAGestionF.ProduitBonComGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonComGCbx.AutoDropDown:= True;
  end;

end;

procedure addToQutIfSameProduit(CodeP:Integer);
begin
          //This is for adding qut if it the same produit
      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
      MainForm.SQLQuery4.SQL.Text := 'SELECT code_bacoml,qut_p,code_p FROM bona_com_list WHERE code_bacom = ' + QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger));
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
          BonComAGestionF.ProduitBonComGCbx.Clear;
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

          Exit;

        end;
        MainForm.SQLQuery4.Next;
      end;

      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
//      DataModuleF.Bona_com_listTable.Refresh;
end;

procedure TBonComAGestionF.ProduitBonComGCbxKeyPress(Sender: TObject; var Key: Char);
  var CodeBCF,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;
  const
  N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
 if key = #13 then
 begin
 if (ProduitBonComGCbx.Text <>'') AND NOT (ProduitBonComGCbx.Text[1] in N ) then
 begin
  key := #0;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonComGCbx.Text)+')';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := DataModuleF.Bona_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            DataModuleF.Bona_com_listTable.DisableControls;
            DataModuleF.Bona_com_listTable.IndexFieldNames:='';
            DataModuleF.Bona_com_listTable.Active:=False;
            DataModuleF.Bona_com_listTable.SQL.Clear;
            DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' ORDER by code_bacoml' ;
            DataModuleF.Bona_com_listTable.Active:=True;

            DataModuleF.Bona_com_listTable.Last;
             if  DataModuleF.Bona_com_listTable.IsEmpty then
             begin
               DataModuleF.Bona_com_listTable.Last;
               CodeBCF := 1;
             end else
                 begin
                  DataModuleF.Bona_com_listTable.Last;
                  CodeBCF:= DataModuleF.Bona_com_listTable.FieldValues['code_bacoml'] + 1 ;
                 end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             DataModuleF.Bona_com_listTable.Last;
             DataModuleF.Bona_com_listTable.Append;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacoml']:= CodeBCF ;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacom']:= DataModuleF.Bona_comTable.FieldValues['code_bacom'];
             DataModuleF.Bona_com_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.Bona_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bona_com_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             DataModuleF.Bona_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bona_com_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             DataModuleF.Bona_com_listTable.FieldValues['qutinstock_p']:= 
             (DataModuleF.Bona_com_listTable.FieldValues['qut_p'])*(DataModuleF.Bona_com_listTable.FieldValues['cond_p']);     
             
             DataModuleF.Bona_com_listTable.Post ;
             DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

            DataModuleF.Bona_com_listTable.Active:=False;
            DataModuleF.Bona_com_listTable.SQL.Clear;
            DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' WHERE code_bacom = ' + QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldValues['code_bacom']));
            DataModuleF.Bona_com_listTable.Active:=True;

            ProduitBonComGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.Bona_com_listTable.EnableControls;
           DataModuleF.Bona_com_listTable.Last;
           if FournisseurBonComGCbx.Text<>'' then
            begin
            ValiderBAComBonComGBtn.Enabled:= True;
            ValiderBAComBonComGBtn.ImageIndex:=12;
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
//      if  DataModuleF.Bona_com_listTable.FieldValues['code_p'] <> NULL then
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
//      FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
//      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//       FSplashAddUnite.Show;
//    //--- this tage = 0 is for multi name added by produit combobox----//
//       FSplashAddUnite.Tag:=0;
     end;

     end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefProduitsRdioBtn.Checked then
  begin
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,refer_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonComGCbx.Text)+')';
            MainForm.SQLQuery.Active:=True;
            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := DataModuleF.Bona_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            DataModuleF.Bona_com_listTable.DisableControls;
            DataModuleF.Bona_com_listTable.IndexFieldNames:='';
            DataModuleF.Bona_com_listTable.Active:=False;
            DataModuleF.Bona_com_listTable.SQL.Clear;
            DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' ORDER by code_bacoml' ;
            DataModuleF.Bona_com_listTable.Active:=True;
           if  DataModuleF.Bona_com_listTable.RecordCount <= 0 then
           begin
             CodeBCF := 1;
           end else
               begin
                DataModuleF.Bona_com_listTable.Last;
                CodeBCF:= DataModuleF.Bona_com_listTable.FieldValues['code_bacoml'] + 1 ;
               end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;
                                
             DataModuleF.Bona_com_listTable.Insert;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacoml']:= CodeBCF ;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacom']:= DataModuleF.Bona_comTable.FieldValues['code_bacom'];
             DataModuleF.Bona_com_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.Bona_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bona_com_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             DataModuleF.Bona_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bona_com_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

              DataModuleF.Bona_com_listTable.FieldValues['qutinstock_p']:= 
             (DataModuleF.Bona_com_listTable.FieldValues['qut_p'])*(DataModuleF.Bona_com_listTable.FieldValues['cond_p']);     

             DataModuleF.Bona_com_listTable.Post ;
             DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

            DataModuleF.Bona_com_listTable.Active:=False;
            DataModuleF.Bona_com_listTable.SQL.Clear;
            DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' WHERE code_bacom = ' + QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldValues['code_bacom']));
            DataModuleF.Bona_com_listTable.Active:=True;
            DataModuleF.Bona_com_listTable.EnableControls;

            ProduitBonComGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

            DataModuleF.Bona_com_listTable.Last;
            if FournisseurBonComGCbx.Text<>'' then
              begin
              ValiderBAComBonComGBtn.Enabled:= True;
              ValiderBAComBonComGBtn.ImageIndex:=12;
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
//            if  DataModuleF.Bona_com_listTable.FieldValues['code_p'] <> NULL then
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
//            FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
//            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//             FSplashAddUnite.Show;
//          //--- this tage = 0 is for multi name added by produit combobox----//
//             FSplashAddUnite.Tag:=0;
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

     if  (MainForm.SQLQuery.RecordCount > 0 )   then
      begin

         lookupResultRefP := DataModuleF.Bona_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            DataModuleF.Bona_com_listTable.DisableControls;
            DataModuleF.Bona_com_listTable.IndexFieldNames:='';
            DataModuleF.Bona_com_listTable.Active:=False;
            DataModuleF.Bona_com_listTable.SQL.Clear;
            DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' ORDER by code_bacoml' ;
            DataModuleF.Bona_com_listTable.Active:=True;

           if  DataModuleF.Bona_com_listTable.RecordCount <= 0 then
           begin
             CodeBCF := 1;
           end else
               begin
                DataModuleF.Bona_com_listTable.Last;
                CodeBCF:= DataModuleF.Bona_com_listTable.FieldValues['code_bacoml'] + 1 ;
               end;
               
                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;               

             DataModuleF.Bona_com_listTable.Last;
             DataModuleF.Bona_com_listTable.Append;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacoml']:= CodeBCF ;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacom']:= DataModuleF.Bona_comTable.FieldValues['code_bacom'];
             DataModuleF.Bona_com_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.Bona_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bona_com_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             DataModuleF.Bona_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bona_com_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             DataModuleF.Bona_com_listTable.FieldValues['qutinstock_p']:= 
             (DataModuleF.Bona_com_listTable.FieldValues['qut_p'])*(DataModuleF.Bona_com_listTable.FieldValues['cond_p']);             
             
             DataModuleF.Bona_com_listTable.Post ;
             DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

             DataModuleF.Bona_com_listTable.Active:=False;
             DataModuleF.Bona_com_listTable.SQL.Clear;
             DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' WHERE code_bacom = ' + QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldValues['code_bacom']));
             DataModuleF.Bona_com_listTable.Active:=True;
             DataModuleF.Bona_com_listTable.EnableControls;

            ProduitBonComGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

            DataModuleF.Bona_com_listTable.Last;
            if FournisseurBonComGCbx.Text<>'' then
              begin
              ValiderBAComBonComGBtn.Enabled:= True;
              ValiderBAComBonComGBtn.ImageIndex:=12;
              end;
         end else
             begin

           //  ShowMessage(' code bare deja kain : p ');

                    //This is for adding qut if it the same produit
                    addToQutIfSameProduit(CodeP);


                    //We use this when when we to disabable multiple qut for same produit
//                  FSplashAddUnite:=TFSplashAddUnite.Create(Application);
//                  FSplashAddUnite.Image1.ImageIndex:=3;
//                  FSplashAddUnite.Width:=300;
//                  FSplashAddUnite.Height:=160;
//                  FSplashAddUnite.Panel1.Color:= $0028CAFE;
//                  FSplashAddUnite.Color:= $00EFE9E8;
//                  FSplashAddUnite.LineP.Color:=$0028CAFE;
//                  FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
//                  FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
//                  FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
//                  FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
//                  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
//                  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
//                  if  DataModuleF.Bona_com_listTable.FieldValues['code_p'] <> NULL then
//                  begin
//                  NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//                  end else begin
//                    NomP:='';
//                  end;
//                  FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
//                  FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
//                  FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
//                  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
//                  FSplashAddUnite.Image1.Visible:=True;
//                  FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
//                  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
//                  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
//                  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
//                  FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
//                  FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
//                  FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
//                  FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
//                  FSplashAddUnite.Top:=   MainForm.Top + 5;
//                  FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
//                  FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
//                  FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
//                  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//                   FSplashAddUnite.Show;
//                //--- this tage = 0 is for multi name added by produit combobox----//
//                   FSplashAddUnite.Tag:=0;
             end;
          end;

   end;
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;

         DataModuleF.Bona_com_listTable.Refresh;
//        ProduitBonComGCbx.AutoDropDown:=False;
         ProduitBonComGCbx.SelectAll;

     end else
         begin
           ProduitBonComGCbx.Text:= '';
         end;

     DataModuleF.Bona_com_listTable.Last;
 end;

end;

procedure TBonComAGestionF.FournisseurBonComGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
          FournisseurBonComGCbx.Items.Clear;
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select nom_f FROM fournisseur ORDER BY code_f'  ;
          MainForm.SQLQuery.Active:=True;

       MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_f').IsNull = False then
     begin
          FournisseurBonComGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_f').AsString);
       MainForm.SQLQuery.Next;
      end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
  end;




procedure TBonComAGestionF.F3Execute(Sender: TObject);
begin
     //--- this is to focus in produit --------------------------
  if  AddBAComBonComGBtn.Enabled = False then
  begin
     ProduitBonComGCbx.SetFocus;
  end;
end;

procedure TBonComAGestionF.F4Execute(Sender: TObject);
begin
   if AddBAComBonComGBtn.Enabled = True then
  begin
     AddBAComBonComGBtnClick(Screen);
  end;
end;

procedure TBonComAGestionF.F5Execute(Sender: TObject);
begin
  if EditBAComBonComGBtn.Enabled = True then
  begin
     EditBAComBonComGBtnClick(Screen);
  end;
end;

procedure TBonComAGestionF.F6Execute(Sender: TObject);
Var I :Integer;
begin
  //--- this is to switch between produits and quntity--------------------------
  if EditBAComBonComGBtn.Enabled = False then
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

procedure TBonComAGestionF.F7Execute(Sender: TObject);
Var I: Integer;
begin
  //--- this is to switch between produits and prix----------------------------
  if EditBAComBonComGBtn.Enabled = False then
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

procedure TBonComAGestionF.F8Execute(Sender: TObject);
begin
   if EditBAComBonComGBtn.Enabled = False then
  begin
     ListAddProduitBonComGBtnClick(Screen);
  end;
end;

procedure TBonComAGestionF.F9Execute(Sender: TObject);
begin
  if ValiderBAComBonComGBtn.Enabled = True then
  begin
    ValiderBAComBonComGBtnClick(Screen);
  end;
end;

procedure TBonComAGestionF.F10Execute(Sender: TObject);
begin
  if EditBAComBonComGBtn.Enabled = False then
  begin
     ListFourBonComGBtnClick(Screen);
  end;
end;

procedure TBonComAGestionF.F11Execute(Sender: TObject);
begin
  if NewAddProduitBonComGBtn.Enabled = True then
  begin
     NewAddProduitBonComGBtnClick(Screen);
  end;
end;

procedure TBonComAGestionF.F12Execute(Sender: TObject);
var
Ini: TIniFile;
indexP: Integer;
begin
  if ValiderBAComBonComGImg.ImageIndex <> 1 then
  begin
        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
        indexP:= Ini.ReadInteger('', 'Format BCF',0);
        if (indexP = 0) or (indexP = -1) then
        begin
         B1Click(Screen);
        end;
        if indexP = 1 then
        begin
          BondeCommande1Click(Screen);
        end;
        if indexP = 2 then
        begin
          Bondecommande2Click(Screen);
        end;
        if indexP = 3 then
        begin
          Bondecommandehorstaxe1Click(Screen);
        end;
        Ini.Free;
  end;

end;

procedure TBonComAGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_BCF');

 if ValiderBAComBonComGImg.ImageIndex = 1 then
  begin

    DataModuleF.Bona_comTable.Refresh;

    DataModuleF.Bona_com_listTable.Refresh;
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


          DataModuleF.Bona_com_listTable.Active:=false;
          DataModuleF.Bona_com_listTable.SQL.Clear;
          DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL ;
          DataModuleF.Bona_com_listTable.Active:=True;
          DataModuleF.Bona_com_listTable.EnableControls;

  DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

//  FreeAndNil(BonComAGestionF);
//  Destroy


 end;

procedure TBonComAGestionF.FormShow(Sender: TObject);
var CodeCB: Integer;
OLDCredit,NEWCredit : Double;
begin
// use this tage when i click AddBAComBonComGBtn bon button
 if Tag = 0 then
 begin

    DateBonComGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//-- use this code to make the montants look lake money values-------//
    BonComTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonComTotalHTLbl.Caption),ffNumber,14,2) ;
//    RemiseBonComGEdt.Text :=       FloatToStrF(StrToFloat(RemiseBonComGEdt.Text),ffNumber,14,2) ;
    BonComTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonComTotalTVALbl.Caption),ffNumber,14,2) ;
    BonComTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonComTotalTTCLbl.Caption),ffNumber,14,2) ;
    BonComResteLbl.Caption :=         FloatToStrF(StrToFloat(BonComResteLbl.Caption),ffNumber,14,2) ;
    BonComRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonComRegleLbl.Caption),ffNumber,14,2) ;
    BonComGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(BonComGFourOLDCredit.Caption),ffNumber,14,2) ;
    BonComGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(BonComGFourNEWCredit.Caption),ffNumber,14,2) ;
 CodeCB:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger   ;
 NumBonComGEdt.Caption := 'BCF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);
  if (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> null)
 AND (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> 0)  then
 begin
   if DataModuleF.Bona_comTable.FieldByName('fourbacom').AsWideString <> null then
    begin
   FournisseurBonComGCbx.Text:= DataModuleF.Bona_comTable.FieldByName('fourbacom').AsWideString;
    end;
    if DataModuleF.Bona_comTable.FieldByName('ModePaie').AsString <> null then
    begin
   ModePaieBonComGCbx.Text:= DataModuleF.Bona_comTable.FieldByName('ModePaie').AsString;
    end;
    if DataModuleF.Bona_comTable.FieldByName('Compte').AsString <> null then
    begin
   CompteBonComGCbx.Text:= DataModuleF.Bona_comTable.FieldByName('Compte').AsString;
    end;
   FournisseurBonComGCbxExit(Sender);
   ProduitBonComGCbx.SetFocus;
 end else
     begin
       FournisseurBonComGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonComGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonComGFourOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonComGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonComGFourNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;

   if DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = True then
   begin
    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'select code_f, credit_f from fournisseur where code_f = ' + IntToStr( DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:= True;

      if NOT (MainForm.SQLQuery.IsEmpty) then
     begin
      OLDCredit:= (MainForm.SQLQuery.FieldByName('credit_f').AsFloat);// - (DataModuleF.Bona_comTable.FieldByName('MontantRes').AsFloat) ;

      NewCredit:=  MainForm.SQLQuery.FieldByName('credit_f').AsFloat;

     BonComGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( OLDCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonComGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( NewCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;

     end;
        MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
   end else
       begin
         FournisseurBonComGCbxExit(Sender);
       end;
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
 end;

procedure TBonComAGestionF.FournisseurBonComGCbxExit(Sender: TObject);
var CodeF: Integer;
OLDCreditF,RegFCreditF,OLDCreditFV,OLDCreditFINI : Double;
begin

  if FournisseurBonComGCbx.Text <> '' then
    begin
     FournisseurBonComGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_f,oldcredit_f,credit_f,activ_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonComGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;
      if NOT  MainForm.SQLQuery.IsEmpty then
     begin
      OLDCreditFINI:= MainForm.SQLQuery.FieldByName('credit_f').AsFloat ;

     if MainForm.SQLQuery.FieldByName('activ_f').AsBoolean <> False then
     begin

      if (MainForm.SQLQuery.IsEmpty) then
      begin
       FournisseurBonComGCbx.Text := '';
       BonComGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonComGFourNEWCredit.Caption:=BonComGFourOLDCredit.Caption;
       exit;
      end;
      CodeF:= MainForm.SQLQuery.FieldByName('code_f').AsInteger ;


//      DataModuleF.Bona_comTableCredit.DisableControls;
//      DataModuleF.Bona_comTableCredit.Active:=false;
//      DataModuleF.Bona_comTableCredit.SQL.Clear;
//      DataModuleF.Bona_comTableCredit.SQL.Text:='Select * FROM bona_com WHERE valider_bacom = true AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_bacom '  ;
//      DataModuleF.Bona_comTableCredit.Active:=True;
//
//     while NOT (DataModuleF.Bona_comTableCredit.Eof) do
//     begin
//     OLDCreditF := OLDCreditF + DataModuleF.Bona_comTableCredit.FieldValues['MontantRes'];
//     DataModuleF.Bona_comTableCredit.Next;
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


//      DataModuleF.Bona_comTableCredit.EnableControls;
      if NOT (OLDCreditFINI = 0) then
      begin
//       DataModuleF.Bona_comTableCredit.last;
       BonComGFourOLDCredit.Caption:= CurrToStrF((OLDCreditFINI ),ffNumber,2) ;

       if NOT (BonComPListDataS.DataSet.IsEmpty) then
        begin
//         if Tag = 0 then
//         begin
//         BonComGFourNEWCredit.Caption:=
//         CurrToStrF((DataModuleF.Bona_comTableCredit.FieldByName('MontantRes').AsFloat )+ StrToFloat (StringReplace(BonComResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//        end else
//            begin
//              BonComGFourNEWCredit.Caption:=
//              CurrToStrF((DataModuleF.Bona_comTableCredit.FieldByName('MontantRes').AsFloat )+ StrToFloat (StringReplace(BonComResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//
//            end;

        end;
        end else
        begin
         BonComGFourOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
        end;

//      DataModuleF.Bona_comTableCredit.DisableControls;
//      DataModuleF.Bona_comTableCredit.Active:=false;
//      DataModuleF.Bona_comTableCredit.SQL.Clear;
//      DataModuleF.Bona_comTableCredit.SQL.Text:='Select * FROM bona_com '  ;
//      DataModuleF.Bona_comTableCredit.Active:=True;
//      DataModuleF.Bona_comTableCredit.last;
//      DataModuleF.Bona_comTableCredit.EnableControls;
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
      if NOT (BonComPListDataS.DataSet.IsEmpty) AND NOT (DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = true) then
      begin
      ValiderBAComBonComGBtn.Enabled:= True;
      ValiderBAComBonComGBtn.ImageIndex:=12;
      end;

      DataModuleF.Bona_com_listTable.Refresh;

        FournisseurBonComGCbx.StyleElements:= [seFont,seBorder,seBorder];
        RequiredFourGlbl.Visible:= False;
        NameFourGErrorP.Visible:= False;

       end else
           begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            FournisseurBonComGCbx.StyleElements:= [];
            RequiredFourGlbl.Caption:='Ce Fournisseur est bloqué';
            RequiredFourGlbl.Visible:= True;
            NameFourGErrorP.Visible:= True;
            FournisseurBonComGCbx.SetFocus;
           end;

       end else
           begin
             FournisseurBonComGCbx.Text:='';

              MainForm.SQLQuery.Active:=false;
              MainForm.SQLQuery.SQL.Clear;
//              MainForm.SQLQuery.SQL.Text:='Select * FROM fournisseur' ;
//              MainForm.SQLQuery.Active:=True;
//              MainForm.SQLQuery.EnableControls;
           end;
           
    end else
    begin
     BonComGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonComGFourNEWCredit.Caption:=BonComGFourOLDCredit.Caption;
     end;

end;

procedure TBonComAGestionF.AdvToolButton4Click(Sender: TObject);
begin
BonComAF.AddBAComBtnClick(Sender);
end;

procedure TBonComAGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
//var
//NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
//LineCredit,LineCreditTop :TfrxShapeView;
//I : Integer;
//Ini: TIniFile;
//indexP: Integer;
begin
//
//   //--- this is to focus in produit --------------------------
//  if  (GetKeyState(VK_F3) < 0) and (AddBAComBonComGBtn.Enabled = False ) then
//  begin
//      ProduitBonComGCbx.SetFocus;
//      Handled := true;
//  end;
//
//  if  (GetKeyState(VK_F4) < 0) and (AddBAComBonComGBtn.Enabled = True ) then
//  begin
//      AddBAComBonComGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//  if  (GetKeyState(VK_F5) < 0) and (EditBAComBonComGBtn.Enabled = True ) then
//  begin
//      EditBAComBonComGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//     //--- this is to switch between produits and quntity--------------------------
//   if  (GetKeyState(VK_F6) < 0) and (EditBAComBonComGBtn.Enabled = False ) then
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
//   if  (GetKeyState(VK_F7) < 0) and (EditBAComBonComGBtn.Enabled = False ) then
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
//  if  (GetKeyState(VK_F8) < 0) and (EditBAComBonComGBtn.Enabled = False ) then
//  begin
//      ListAddProduitBonComGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//  if (GetKeyState(VK_F9) < 0) AND (ValiderBAComBonComGBtn.Enabled = True)
//      AND NOT (Assigned(FSplashVersement)) then
//  begin
//      ValiderBAComBonComGBtnClick(Screen);
//
//    Handled := true;
//  end else
//  if  (GetKeyState(VK_F9) < 0) AND (ValiderBAComBonComGBtn.Enabled = True)
//       AND NOT (FSplashVersement.Showing) then
//      begin
//        ValiderBAComBonComGBtnClick(Screen);
//
//      Handled := true;
//      end;
//
//     //--- this is for new produit--------------------------
//     if  (GetKeyState(VK_F11) < 0)  then
//  begin
//
//      NewAddProduitBonComGBtnClick(Screen);
//
//    Handled := true;
//  end;
//
//     if  (GetKeyState(VK_F12) < 0)  then
//  begin
//
//     if ValiderBAComBonComGImg.ImageIndex <> 1 then
//     begin
//        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
//        indexP:= Ini.ReadInteger('', 'Format FA',0);
//        if (indexP = 0) or (indexP = -1) then
//        begin
//         B1Click(Screen);
//        end;
//        if indexP = 1 then
//        begin
//          BondeCommande1Click(Screen);
//        end;
//        if indexP = 2 then
//        begin
//          Bondecommande2Click(Screen);
//        end;
//        if indexP = 3 then
//        begin
//          Bondecommandehorstaxe1Click(Screen);
//        end;
//
//        Ini.Free;
//        Handled := true;
//     end;
//  end;

end;

procedure TBonComAGestionF.ListAddProduitBonComGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonComGCbx.Text:='';
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Tag := 11;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
//  produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TBonComAGestionF.ListFourBonComGBtnClick(Sender: TObject);
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

  FastProduitsListF.Tag := 4;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TBonComAGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  Var CodeBCF : Integer;
 begin
   codeBCF:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if FournisseurBonComGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonComGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonComGCbx.SetFocus;
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
         if RequiredFourGlbl.Visible <> True then
           begin
             if  (DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = false)  then
             begin
              MainForm.FournisseurTable.DisableControls;
              MainForm.FournisseurTable.Active:=false;
              MainForm.FournisseurTable.SQL.Clear;
              MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonComGCbx.Text )+')'  ;
              MainForm.FournisseurTable.Active:=True;

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


              DataModuleF.Bona_comTable.DisableControls;
              DataModuleF.Bona_comTable.Edit;
              DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
              DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime:= DateBonComGD.DateTime;
              DataModuleF.Bona_comTable.FieldByName('time_bacom').AsDateTime:=TimeOf(Now);
              DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              DataModuleF.Bona_comTable.FieldByName('obser_bacom').AsWideString:= ObserBonComGMem.Text;
              DataModuleF.Bona_comTable.FieldByName('num_cheque_bacom').AsString:= NChequeBonComGCbx.Text;
              DataModuleF.Bona_comTable.FieldByName('montht_bacom').Value:= StrToFloat(StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

              if RemiseBonComGEdt.Text<>'' then
              begin
                 DataModuleF.Bona_comTable.FieldByName('remise_bacom').Value:=StrToFloat(StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
              end else begin
                        DataModuleF.Bona_comTable.FieldByName('remise_bacom').Value:=0;
                       end;


              DataModuleF.Bona_comTable.FieldByName('montver_bacom').Value:=StrToFloat(StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll]));
              DataModuleF.Bona_comTable.FieldByName('montttc_bacom').Value:=StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              DataModuleF.Bona_comTable.Post;
              DataModuleF.Bona_comTable.EnableControls;

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
//               if (codeBCF <> 0) AND (codeBCF <> null) then
//               begin
//                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bacom = ' + IntToStr(codeBCF));
//                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bacom = ' + IntToStr(codeBCF));
//                  MainForm.RegfournisseurTable.Refresh ;
//                  MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
//               end;

              end;

              end else
                  begin
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    FournisseurBonComGCbx.StyleElements:= [];
                    RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqué' ;
                    RequiredFourGlbl.Visible:= True;
                    NameFourGErrorP.Visible:= True;

                    FournisseurBonComGCbx.SetFocus;
                    CanClose:= False;
                  end;
          //---------------------------------------------------

        end;
        end;
      end;
  end  else
  begin

          if  (DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = false)  then
         begin
//          codeBCF:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;

          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonComGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;

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


          DataModuleF.Bona_comTable.DisableControls;
          DataModuleF.Bona_comTable.Edit;
          DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime:= DateBonComGD.DateTime;
          DataModuleF.Bona_comTable.FieldByName('time_bacom').AsDateTime:=TimeOf(Now);
          DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          DataModuleF.Bona_comTable.FieldByName('obser_bacom').AsWideString:= ObserBonComGMem.Text;
          DataModuleF.Bona_comTable.FieldByName('num_cheque_bacom').AsString:= NChequeBonComGCbx.Text;
          DataModuleF.Bona_comTable.FieldByName('montht_bacom').Value:= StrToFloat(StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonComGEdt.Text<>'' then
          begin
             DataModuleF.Bona_comTable.FieldByName('remise_bacom').Value:=StrToFloat(StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    DataModuleF.Bona_comTable.FieldByName('remise_bacom').Value:=0;
                   end;


          DataModuleF.Bona_comTable.FieldByName('montver_bacom').Value:=StrToFloat(StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bona_comTable.FieldByName('montttc_bacom').Value:=StrToFloat(StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          DataModuleF.Bona_comTable.Post;
          DataModuleF.Bona_comTable.EnableControls;

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
           if (codeBCF <> 0) AND (codeBCF <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bacom = ' + IntToStr(codeBCF));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bacom = ' + IntToStr(codeBCF));
              MainForm.RegfournisseurTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

          end;


     CanClose:= True;
  end;

end;

procedure TBonComAGestionF.ProduitBonComGCbxExit(Sender: TObject);
begin
ProduitBonComGCbx.Text:='';
//ProduitBonComGCbx.AutoDropDown:=False;
end;

procedure TBonComAGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBAComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bona_com_listTable.DisableControls;
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
BonComPListfrxRprt.ShowReport;
DataModuleF.Bona_com_listTable.EnableControls;
 end;
end;

procedure TBonComAGestionF.BondeCommande1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBAComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bona_com_listTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonComPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonComPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonComPListSanTAXfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonComPListSanTAXfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonComPListSanTAXfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonComPListSanTAXfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonComPListSanTAXfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonComPListSanTAXfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonComPListSanTAXfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonComPListSanTAXfrxRprt.PrepareReport;
BonComPListSanTAXfrxRprt.ShowReport;
DataModuleF.Bona_com_listTable.EnableControls;
 end;
end;

procedure TBonComAGestionF.Bondecommande2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBAComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bona_com_listTable.DisableControls;
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

BonComPListfrxRprt.PrepareReport;
BonComPListfrxRprt.ShowReport;
DataModuleF.Bona_com_listTable.EnableControls;
 end;
end;

procedure TBonComAGestionF.Bondecommandehorstaxe1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBAComBonComGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bona_com_listTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonComPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonComPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonComPListSanTAXfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonComPListSanTAXfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonComPListSanTAXfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonComPListSanTAXfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonComPListSanTAXfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonComPListSanTAXfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonComPListSanTAXfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonComPListSanTAXfrxRprt.PrepareReport;
BonComPListSanTAXfrxRprt.ShowReport;
DataModuleF.Bona_com_listTable.EnableControls;
 end;
end;

procedure TBonComAGestionF.BonComPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonComPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonComGBtn.Visible:= True;
    ClearProduitBonComGBtn.Visible:= True;

    if (FournisseurBonComGCbx.Text<>'')  AND (DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean <> True) then
    begin
    ValiderBAComBonComGBtn.Enabled:= True;
    ValiderBAComBonComGBtn.ImageIndex:=12;
    end;
    
   if DataModuleF.Bona_comTable.FieldValues['valider_bacom'] <> True then
   begin

//    MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_p,qut_p,qutini_p FROM produit WHERE code_p = ' +IntToStr(DataModuleF.Bona_com_listTable.FieldValues['code_p']);
    MainForm.SQLQuery.Active:=True;


    BonComGOLDStock.Caption:=
     floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])),ffNumber,14,2);
    BonComGNEWStock.Caption:=
     floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']))+((DataModuleF.Bona_com_listTable.FieldValues['qut_p']) * (DataModuleF.Bona_com_listTable.FieldValues['cond_p']))),ffNumber,14,2);

//     if(StrToFloat (StringReplace(BonComGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
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


    RemisePerctageBonComGEdt.Enabled:=True;
    RemiseBonComGEdt.Enabled:=True;
    RemiseTypeBonComGCbx.Enabled:= True;

   end;
     ProduitsListDBGridEh.ReadOnly:=False;
    end else
    begin
    DeleteProduitBonComGBtn.Visible:= False;
    ClearProduitBonComGBtn.Visible:= False;


    ValiderBAComBonComGBtn.Enabled:= False;
    ValiderBAComBonComGBtn.ImageIndex:=30;

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

procedure TBonComAGestionF.EnterAddProduitBonComGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonComGCbxKeyPress(Sender, key);
end;

procedure TBonComAGestionF.NewAddProduitBonComGBtnClick(Sender: TObject);
begin

ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonComAGestionF.ClearProduitBonComGBtnClick(Sender: TObject);
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
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 43 ;

end;
procedure TBonComAGestionF.DeleteProduitBonComGBtnClick(Sender: TObject);
begin
 if  DataModuleF.Bona_com_listTable.RecordCount = 1 then
 begin
    DataModuleF.Bona_com_listTable.DisableControls;
    DataModuleF.Bona_com_listTable.Refresh;
    DataModuleF.Bona_com_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    DataModuleF.Bona_com_listTable.EnableControls;
    FournisseurBonComGCbx.StyleElements:= [];
    RequiredFourGlbl.Visible:= False;
    NameFourGErrorP.Visible:= False;
    BonComTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComTotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonComGFourNEWCredit.Caption:= BonComTotalTTCLbl.Caption;
 end else
 if DataModuleF.Bona_com_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      DataModuleF.Bona_com_listTable.DisableControls;
      DataModuleF.Bona_com_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      DataModuleF.Bona_com_listTable.Refresh;
      DataModuleF.Bona_com_listTable.EnableControls;
     end;
end;

procedure TBonComAGestionF.AddModePaieBonComGBtnClick(Sender: TObject);
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
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 47 ;
end;

procedure TBonComAGestionF.CompteBonComGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
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

procedure TBonComAGestionF.AddCompteBonComGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(Application);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 12 ;
end;

procedure TBonComAGestionF.AddFourBonComGBtnClick(Sender: TObject);
begin
FournisseurListF.AddFournisseursBtnClick(Sender);
FournisseurGestionF.OKFournisseurGBtn.Tag := 6 ;
FournisseurBonComGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredFourGlbl.Visible:= False;
NameFourGErrorP.Visible:= False;
end;

procedure TBonComAGestionF.ModePaieBonComGCbxChange(Sender: TObject);
begin
RequiredMPGlbl.Visible:= False;
ModepPaiGErrorP.Visible:= False;
end;

procedure TBonComAGestionF.ModePaieBonComGCbxClick(Sender: TObject);
begin
  if ModePaieBonComGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonComGCbx.Text)+')'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonComGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;



  ModePaieBonComGCbxChange(Sender);
end;

procedure TBonComAGestionF.ModePaieBonComGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
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

procedure TBonComAGestionF.CompteBonComGCbxChange(Sender: TObject);
begin
CompteBonComGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonComAGestionF.ValiderBAComBonComGBtnClick(Sender: TObject);
begin
  if FournisseurBonComGCbx.Text <> '' then
  begin

   if ModePaieBonComGCbx.Text <> '' then
   begin

    if CompteBonComGCbx.Text <> '' then
    begin


      if  RequiredFourGlbl.Visible <> True then
      begin

           //-------- Show the splash screan for the adding comptes ---------//
       FSplashVersement:=TFSplashVersement.Create(self);
       FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
       FSplashVersement.Top:=  MainForm.Top + 5 ;

      FSplashVersement.OldCreditVersementSLbl.Caption:= BonComGFourOLDCredit.Caption;


        FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
             (StrToFloat (StringReplace(BonComTotalTTCLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((

             (StrToFloat (StringReplace(BonComRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

       FSplashVersement.Tag := 8 ;
       FSplashVersement.OKVersementSBtn.Tag:= 7 ;

       AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashVersement.Show;


       end else
           begin
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              FournisseurBonComGCbx.StyleElements:= [];
              RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqué' ;
              RequiredFourGlbl.Visible:= True;
              NameFourGErrorP.Visible:= True;
              FournisseurBonComGCbx.SetFocus;
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
      FournisseurBonComGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonComGCbx.SetFocus;
    end;

end;

procedure TBonComAGestionF.RemiseBonComGEdtKeyPress(Sender: TObject; var Key: Char);
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
  if (Key = '.') AND (Pos(Key, (RemiseBonComGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonComAGestionF.RemiseBonComGEdtExit(Sender: TObject);
var
RemiseBonComG: Double;
begin
  if RemiseBonComGEdt.Text<>'' then
  begin
  RemiseBonComG:=StrToFloat(StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonComGEdt.Text := FloatToStrF(RemiseBonComG,ffNumber,14,2);
  end;
end;

procedure TBonComAGestionF.RemiseBonComGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonComGEdt.Text := StringReplace(RemiseBonComGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonComGEdt.SelectAll;
end;

procedure TBonComAGestionF.RemiseBonComGEdtChange(Sender: TObject);
var RemiseBonComG,BonRTotalHT,BonRTotalTVA,OLDTTC : Double;
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
         BonRTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonComTotalTVALbl.Caption<>'' then
         begin
          BonRTotalTVA:=StrToFloat (StringReplace(BonComTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonComGEdt.Text := FloatToStrF(((RemiseBonComG / BonRTotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonComGCbx.ItemIndex = 1 then
        begin
         if BonCATotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonCATotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonComGEdt.Text := FloatToStrF(((RemiseBonComG / OLDTTC) * 100),ffNumber,14,2) ;


        end;

    end else
        begin
          BonRRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonComGEdt.Text:='';
          BonCATotalHTNewLbl.Caption:=BonComTotalHTLbl.Caption;
        end;
 end;
end;

procedure TBonComAGestionF.RemisePerctageBonComGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonComGEdt.Text := StringReplace(RemisePerctageBonComGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonComGEdt.SelectAll;
end;

procedure TBonComAGestionF.RemisePerctageBonComGEdtChange(Sender: TObject);
var BonRTotalHT,RemisePerctageBonCom,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldFourCredit : Double;
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
            BonRTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonComTotalTVALbl.Caption:= FloatToStrF(Round(TotalTVANet - (( TotalTVANet  * RemisePerctageBonCom)/(100))),ffNumber,14,2); //TVA
         BonCATotalHTNewLbl.Caption:= FloatToStrF(Round(BonRTotalHT - (( BonRTotalHT  * RemisePerctageBonCom)/(100))),ffNumber,14,2); //HT
            if BonCATotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonCATotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonComTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonComTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonComTotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA),ffNumber,14,2); // TTC
//         BonComResteLbl.Caption:= BonComTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonComGEdt.Focused then
            begin
            RemiseBonComGEdt.Text:=FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);
            end;

        BonRRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonComGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonComGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonComGFourNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldFourCredit)),ffNumber,14,2);

        end else
          begin
           if BonComTotalHTLbl.Caption<>'' then
           begin
           BonRTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonComTotalTTCLbl.Caption:=FloatToStrF((BonRTotalHT + TotalTVANet ),ffNumber,14,2);
//            BonComResteLbl.Caption:= BonComTotalTTCLbl.Caption;
            BonComTotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonComGEdt.Text:='';
            BonRRemiseHTNewLbl.Caption:='0';
            BonCATotalHTNewLbl.Caption:=BonComTotalHTLbl.Caption;
            
            if BonComGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonComGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonComGFourOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonComTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
//          BonComGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
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
         BonCATotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonCom/100) * NewHT)),ffNumber,14,2);
         BonComTotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonCom/100) * NewHT))+( NewTVA - ((RemisePerctageBonCom/100) * NewTVA))),ffNumber,14,2);
            if BonCATotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonCATotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
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
            BonRTotalHT:=StrToFloat (StringReplace(BonComTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonCATotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonRRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonComGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonComGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonComGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonComGEdt.Text:='';
             BonRRemiseHTNewLbl.Caption:='0';
             BonComTotalTTCLbl.Caption := BonCATotalTTCNewLbl.Caption;
//             BonComResteLbl.Caption:=BonComTotalTTCLbl.Caption;
             BonComTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonCATotalHTNewLbl.Caption:=BonComTotalHTLbl.Caption;

              if BonComGFourOLDCredit.Caption <>'' then
              begin
              OldFourCredit:=StrToFloat (StringReplace(BonComGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonComGFourOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonComTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
//              BonComGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
          //   BonComGFourNEWCredit.Caption:= BonComTotalTTCLbl.Caption;
            end;
      end;
end;

procedure TBonComAGestionF.RemiseTypeBonComGCbxChange(Sender: TObject);
begin
RemiseBonComGEdt.Text:='';
RemisePerctageBonComGEdt.Text:='';
end;

procedure TBonComAGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonComGCbx.Clear;
ProduitBonComGCbx.SetFocus;
ProduitBonComGCbx.EditText:= '0';
end;

procedure TBonComAGestionF.RemisePerctageBonComGEdtKeyPress(Sender: TObject;
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

procedure TBonComAGestionF.EditBAComBonComGBtnClick(Sender: TObject);
  Var CodeBCF : Integer;
 begin
   codeBCF:= DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
                 //------- This is to delete data from tre and reg ih not valide----------------------------------------------
               if (codeBCF <> 0) AND (codeBCF <> null) then
               begin
                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bacom = ' + IntToStr(codeBCF));
                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bacom = ' + IntToStr(codeBCF));
                  MainForm.RegfournisseurTable.Refresh ;
                  MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
               end;


 // this is to enable the componets to edit the bon

      DataModuleF.SQLQuery3.Active:=False;
      DataModuleF.SQLQuery3.SQL.Clear;
      DataModuleF.SQLQuery3.SQL.Text:='Select credit_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonComGCbx.Text )+')'  ;
      DataModuleF.SQLQuery3.Active:=True;
  EnableBonCom;
 // this is to unvalider the bon
  begin
  DataModuleF.Bona_comTable.Edit;
  DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean:= False;
  DataModuleF.Bona_comTable.Post;
  end;

// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonComGFourOLDCredit.Caption:=
  FloatToStrF((((DataModuleF.SQLQuery3.FieldByName('credit_f').AsFloat)- StrToFloat(StringReplace(BonComResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,14,2);

    begin
      DataModuleF.SQLQuery3.Edit;
      DataModuleF.SQLQuery3.FieldByName('credit_f').AsFloat:= (DataModuleF.SQLQuery3.FieldByName('credit_f').AsFloat) - (DataModuleF.Bona_comTable.FieldByName('MontantRes').AsFloat);
      DataModuleF.SQLQuery3.Post;
    end;

  BonComRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonComResteLbl.Caption:= BonComTotalTTCLbl.Caption;

      DataModuleF.SQLQuery3.Active:=false;
      DataModuleF.SQLQuery3.SQL.Clear;
      MainForm.FournisseurTable.Refresh;
  //-------------------------------------------
  
  //== This is to delete produit from store after editing bon
  // We dont need it bcus it bon command
    // begin
    // end;
 


     FournisseurBonComGCbxExit(Sender);

end;

procedure TBonComAGestionF.AddBAComBonComGBtnClick(Sender: TObject);
var
  codeBCF,CodeCB : integer;
begin
      begin
     FournisseurBonComGCbx.Clear;
     ModePaieBonComGCbx.Clear;
     CompteBonComGCbx.Clear;
     NChequeBonComGCbx.Clear;
 //    FournisseurBonComGCbx.SetFocus;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.FournisseurTable.Refresh;
   DataModuleF.Bona_comTable.Refresh;
   DataModuleF.Bona_com_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonComPListDataS.DataSet.Refresh;
   DataModuleF.BonComAListDataS.DataSet.Refresh;
   Refresh;

   ModePaieBonComGCbx.Refresh;
   CompteBonComGCbx.Refresh;

   EnableBonCom;

 codeBCF:= 0;
   //   BonComAGestionF := TBonComAGestionF.Create(BonComAGestionF);
     if DataModuleF.Bona_comTable.RecordCount <= 0 then
      begin

        DataModuleF.Bona_comTable.Insert;
        DataModuleF.Bona_comTable.FieldValues['code_bacom']:=1;
        DataModuleF.Bona_comTable.FieldValues['num_bacom']:= 'BCF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        DataModuleF.Bona_comTable.FieldValues['date_bacom']:= DateOf(Today);
        DataModuleF.Bona_comTable.FieldValues['time_bacom']:=TimeOf(Now);
        DataModuleF.Bona_comTable.Post;
        codeBCF := DataModuleF.Bona_comTable.FieldValues['code_bacom'];
      end else
          begin
            DataModuleF.Bona_comTable.Last;
            codeBCF := DataModuleF.Bona_comTable.FieldValues['code_bacom'];
            DataModuleF.Bona_com_listTable.Active:=False;
            DataModuleF.Bona_com_listTable.SQL.Clear;
            DataModuleF.Bona_com_listTable.SQL.Text:= BCFLSQL+ ' WHERE code_bacom = ' + QuotedStr(IntToStr(codeBCF));
            DataModuleF.Bona_com_listTable.Active:=True;

           if DataModuleF.Bona_com_listTable.RecordCount <= 0 then
           begin
        //   DataModuleF.Bona_comTable.Last;
           codeBCF := DataModuleF.Bona_comTable.FieldValues['code_bacom'];
           end else
           begin
        //   DataModuleF.Bona_comTable.Last;
          // codeBCF := DataModuleF.Bona_comTable.FieldValues['code_bacom'];
           DataModuleF.Bona_comTable.Insert;
           DataModuleF.Bona_comTable.FieldValues['code_bacom']:= codeBCF + 1;
           DataModuleF.Bona_comTable.FieldValues['num_bacom']:=  'BCF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBCF + 1)]);
           DataModuleF.Bona_comTable.FieldValues['date_bacom']:= DateOf(Today);
           DataModuleF.Bona_comTable.FieldValues['time_bacom']:= TimeOf(Now);
           DataModuleF.Bona_comTable.Post;

           end;
//            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonComTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonComGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonComGEdt.Text),ffNumber,14,2) ;
BonComTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
BonComTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
BonComResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
BonComRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
BonComGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
BonComGFourNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= DataModuleF.Bona_comTable.FieldValues['code_bacom']   ;
 NumBonComGEdt.Caption := 'BCF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     FournisseurBonComGCbx.SetFocus;

     Tag:=0;

     DataModuleF.Bona_com_listTable.Refresh;

end;

procedure TBonComAGestionF.FournisseurBonComGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;


procedure TBonComAGestionF.FournisseurBonComGCbxSelect(Sender: TObject);
var CodeF: Integer;
begin

      if FournisseurBonComGCbx.Text <> '' then
    begin
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonComGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

      CodeF:= MainForm.SQLQuery.FieldByName('code_f').AsInteger ;

        //Here we pot code_f in bonrec table
        DataModuleF.Bona_comTable.Edit;
        DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger := CodeF;
        DataModuleF.Bona_comTable.Post;

      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
     end;

end;

procedure FullfillFormBonComA;
begin
  if DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = True then
  begin
       FSplashVersement.DisableBonComA;
  end;
  if DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = False then
   begin
     BonComAGestionF.EnableBonCom;
    end;


  if (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger<> 0) AND (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger<> null) then
  begin
  BonComAGestionF.FournisseurBonComGCbx.Text:=DataModuleF.Bona_comTable.FieldByName('fourbacom').AsString;
  end;
  if (DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger<> 0) AND (DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger<>null)  then
  begin
  BonComAGestionF.ModePaieBonComGCbx.Text:=DataModuleF.Bona_comTable.FieldByName('ModePaie').AsString;
  end;
  if (DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger<> 0) AND (DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger<>null)  then
  begin
  BonComAGestionF.CompteBonComGCbx.Text:=DataModuleF.Bona_comTable.FieldByName('Compte').AsString;
  end;

  if  (DataModuleF.Bona_comTable.FieldByName('MontantRes').AsFloat<>null)  then
  begin
  BonComAGestionF.BonComResteLbl.Caption:=CurrToStrF(((DataModuleF.Bona_comTable.FieldByName('MontantRes').AsFloat)),ffNumber,2) ;
  end;

  BonComAGestionF.NumBonComGEdt.Caption:= DataModuleF.Bona_comTable.FieldByName('num_bacom').AsString;
  BonComAGestionF.DateBonComGD.DateTime:= DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime;
  BonComAGestionF.ObserBonComGMem.Text:= DataModuleF.Bona_comTable.FieldByName('obser_bacom').AsString;

   if DataModuleF.Bona_com_listTable.ControlsDisabled  then
   begin
     DataModuleF.Bona_com_listTable.EnableControls;
   end;
end;

procedure FullfillCredits(CodeF :Integer) ;
begin
   DataModuleF.SQLQuery3.Active:=False;
   DataModuleF.SQLQuery3.SQL.Clear;
   DataModuleF.SQLQuery3.SQL.Text:= 'SELECT credit_f from fournisseur where code_f ='+ IntToStr(CodeF);
   DataModuleF.SQLQuery3.Active:=True;

   BonComAGestionF.BonComGFourOLDCredit.Caption:= FloatToStrF(((DataModuleF.SQLQuery3.FieldByName('credit_f').AsFloat)),ffNumber,14,2);
   BonComAGestionF.BonComGFourNEWCredit.Caption:=FloatToStrF(0,ffNumber,14,2);

   DataModuleF.SQLQuery3.Active:=False;
   DataModuleF.SQLQuery3.SQL.Clear;

end;

procedure TBonComAGestionF.sSpeedButton10Click(Sender: TObject);
begin
  if (FournisseurBonComGCbx.Text <> '')
    and (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> 0)
    and (DataModuleF.Bona_comTable.FieldValues['code_f'] <> Null )  then

    begin
    DataModuleF.Bona_comTable.First;
  //  DataModuleF.Bona_comTable.Refresh;
    DataModuleF.Bona_com_listTable.Refresh;

    FullfillFormBonComA();

      FullfillCredits(DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonComGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonComGCbx.SetFocus;
  end

end;

procedure TBonComAGestionF.sSpeedButton9Click(Sender: TObject);
begin

  if (FournisseurBonComGCbx.Text <> '')
    and (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> 0)
    and (DataModuleF.Bona_comTable.FieldValues['code_f'] <> Null )  then

    begin
    DataModuleF.Bona_comTable.Prior;
    //DataModuleF.Bona_comTable.Refresh;
    DataModuleF.Bona_com_listTable.Refresh;

    FullfillFormBonComA();

      FullfillCredits(DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonComGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonComGCbx.SetFocus;
  end
end;

procedure TBonComAGestionF.sSpeedButton8Click(Sender: TObject);
begin
;
  if (FournisseurBonComGCbx.Text <> '')
    and (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> 0)
    and (DataModuleF.Bona_comTable.FieldValues['code_f'] <> Null )  then

    begin
    DataModuleF.Bona_comTable.Next;
    //DataModuleF.Bona_comTable.Refresh;
    DataModuleF.Bona_com_listTable.Refresh;

    FullfillFormBonComA();

      FullfillCredits(DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonComGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonComGCbx.SetFocus;
  end
end;

procedure TBonComAGestionF.sSpeedButton7Click(Sender: TObject);
begin

  if (FournisseurBonComGCbx.Text <> '')
    and (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger <> 0)
    and (DataModuleF.Bona_comTable.FieldValues['code_f'] <> Null )  then

    begin
    DataModuleF.Bona_comTable.Last;
    //DataModuleF.Bona_comTable.Refresh;
    DataModuleF.Bona_com_listTable.Refresh;

    FullfillFormBonComA();

      FullfillCredits(DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      FournisseurBonComGCbx.StyleElements:= [];
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FournisseurBonComGCbx.SetFocus;
  end
end;

procedure TBonComAGestionF.FournisseurBonComGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece
      ModePaieBonComGCbxDropDown(Self);
      if Tag = 0 then
      begin
      ModePaieBonComGCbx.ItemIndex:=0;
      ModePaieBonComGCbxClick(Self) ;
      end;
end;




procedure TBonComAGestionF.RemisePerctageBonComGEdtEnter(Sender: TObject);
begin
DataModuleF.Bona_com_listTable.Refresh;
 RemisePerctageBonComGEdtChange(Sender);
end;

procedure TBonComAGestionF.RemiseBonComGEdtEnter(Sender: TObject);
begin
//DataModuleF.Bona_com_listTable.Refresh;
 RemisePerctageBonComGEdtChange(Sender);
end;

procedure TBonComAGestionF.ProduitsListDBGridEhExit(Sender: TObject);
var key : Char;
begin
Refresh_PreservePosition;
end;

procedure TBonComAGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (DataModuleF.Bona_com_listTable.RecNo=DataModuleF.Bona_com_listTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;
end;

procedure TBonComAGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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

procedure TBonComAGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_BCF') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_BCF');
   end;


DataModuleF.Bona_com_listTable.Active:=True;
if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;




procedure TBonComAGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonComAGestionF.GettingDataSansTax;
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

    Name:= BonComPListSanTAXfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonComPListSanTAXfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonComPListSanTAXfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonComPListSanTAXfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonComPListSanTAXfrxRprt.FindObject('Logo') as TfrxPictureView;
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
    MoneyWordRX := BonComPListSanTAXfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
    MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

    NumRX:= BonComPListSanTAXfrxRprt.FindObject('NumRX') as TfrxMemoView;
    NumRX.Text:= NumBonComGEdt.Caption;

    DateRX:= BonComPListSanTAXfrxRprt.FindObject('DateRX') as TfrxMemoView;
    DateRX.Text:= DateToStr(DateBonComGD.Date);

    NameRX:= BonComPListSanTAXfrxRprt.FindObject('NameRX') as TfrxMemoView;
    NameRX.Text:= FournisseurBonComGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_f,adr_f,ville_f,willaya_f ,rc_f,nart_f,nif_f,nis_f FROM fournisseur WHERE code_f ='
    + IntToStr(DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonComPListSanTAXfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_f').AsString;

      VilleRX:= BonComPListSanTAXfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_f').AsString;

      WilayaRX:= BonComPListSanTAXfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_f').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListSanTAXfrxRprt.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListSanTAXfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonComGCbx.Text;

    OLDCredit:= BonComPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
    OLDCredit.Text:= BonComGFourOLDCredit.Caption;


    NEWCredit:= BonComPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
    NEWCredit.Text:= BonComGFourNEWCredit.Caption;

 end;

procedure TBonComAGestionF.GettingData;
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
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonComPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonComGEdt.Caption;

  DateRX:= BonComPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonComGD.Date);

  NameRX:= BonComPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= FournisseurBonComGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_f,adr_f,ville_f,willaya_f ,rc_f,nart_f,nif_f,nis_f FROM fournisseur WHERE code_f ='
    + IntToStr(DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonComPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_f').AsString;

      VilleRX:= BonComPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_f').AsString;

      WilayaRX:= BonComPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_f').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonComPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonComGCbx.Text;

    NCHeqRX:= BonComPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonComGCbx.Text;


        OLDCredit:= BonComPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonComGFourOLDCredit.Caption;


      NEWCredit:= BonComPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonComGFourNEWCredit.Caption;

 end;


procedure TBonComAGestionF.sSpeedButton4Click(Sender: TObject);
begin
   GettingData;
DataModuleF.Bona_com_listTable.DisableControls;
BonComPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Bon de Commande N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger)]);
BonComPListfrxRprt.Export(frxXLSExport1);
DataModuleF.Bona_com_listTable.EnableControls;
end;

procedure TBonComAGestionF.sSpeedButton6Click(Sender: TObject);
begin
 GettingData;
DataModuleF.Bona_com_listTable.DisableControls;
BonComPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Bon de Commande N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonComPListfrxRprt.Export(frxPDFExport1);

DataModuleF.Bona_com_listTable.EnableControls;
end;

procedure TBonComAGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonComAGestionF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
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
//  if  (DataModuleF.Bona_com_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsFloat )
//    OR(DataModuleF.Bona_com_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsFloat )
//    OR(DataModuleF.Bona_com_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsFloat )
//    OR(DataModuleF.Bona_com_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsFloat )
//    OR(DataModuleF.Bona_com_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsFloat )
//         then
// begin
// ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
// ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;
end;

end.
