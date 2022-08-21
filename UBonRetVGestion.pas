unit UBonRetVGestion;

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
  TBonRetVGestionF = class(TForm)
    Panel3: TPanel;
    BonRetPListDataS: TDataSource;
    TopP2: TPanel;
    EditBVRetBonRetGBtn: TAdvToolButton;
    AddBVRetBonRetGBtn: TAdvToolButton;
    Label4: TLabel;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    NumBonRetVGEdt: TLabel;
    AddClientBonRetGBtn: TAdvToolButton;
    Label8: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DateBonRetVGD: TDateTimePicker;
    ClientBonRetVGCbx: TComboBox;
    Panel12: TPanel;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARCBProduitsRdioBtn: TRadioButton;
    ValiderBVRetBonRetGBtn: TAdvToolButton;
    Panel2: TPanel;
    ProduitsListDBGridEh: TDBGridEh;
    ResherchPARRefProduitsRdioBtn: TRadioButton;
    Panel13: TPanel;
    ModePaieBonRetVGCbx: TComboBox;
    Label7: TLabel;
    AddModePaieBonRetGBtn: TAdvToolButton;
    Label16: TLabel;
    AddCompteBonRetGBtn: TAdvToolButton;
    CompteBonRetVGCbx: TComboBox;
    ListAddProduitBonRetGBtn: TAdvToolButton;
    Panel5: TPanel;
    BonRetGClientOLDCredit: TLabel;
    BonRetGClientNEWCredit: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    DeleteProduitBonRetGBtn: TAdvToolButton;
    ValiderBVRetBonRetGLbl: TLabel;
    NewAddProduitBonRetGBtn: TAdvToolButton;
    Panel18: TPanel;
    Panel4: TPanel;
    label13: TLabel;
    label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BonRetTotalTVALbl: TLabel;
    BonRetRegleLbl: TLabel;
    BonRetResteLbl: TLabel;
    BonRetTotalHTLbl: TLabel;
    BonRetTotalTTCLbl: TLabel;
    Label10: TLabel;
    Panel14: TPanel;
    NameClientGErrorP: TPanel;
    RequiredClientGlbl: TLabel;
    EnterAddProduitBonRetGBtn: TAdvToolButton;
    ClearProduitBonRetGBtn: TAdvToolButton;
    ValiderBVRetBonRetGImg: TsImage;
    Shape1: TShape;
    Label3: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label11: TLabel;
    RemisePerctageBonRetVGEdt: TEdit;
    Label14: TLabel;
    RemiseBonRetVGEdt: TEdit;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel1: TPanel;
    RemiseTypeBonRetGCbx: TComboBox;
    Label15: TLabel;
    BonRVTotalTTCNewLbl: TLabel;
    BonRVTotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    NChequeBonRetVGCbx: TEdit;
    ObserBonRetGLbl: TLabel;
    ObserBonRetVGMem: TMemo;
    BonRVRemiseHTNewLbl: TLabel;
    Label19: TLabel;
    BonRetGOLDStock: TLabel;
    Label20: TLabel;
    BonRetGNEWStock: TLabel;
    frxBonRetDT: TfrxDBDataset;
    frxBonRetPListDB: TfrxDBDataset;
    frxClientDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonRetPListfrxRprt: TfrxReport;
    sImage1: TsImage;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    ProduitBonRetGCbx: TcxComboBox;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    BondeRetourClient1: TMenuItem;
    BonRetPListSanTAXfrxRprt: TfrxReport;
    RequiredStarProduitGLbl: TLabel;
    ModepPaiGErrorP: TPanel;
    Label22: TLabel;
    CompteGErrorP: TPanel;
    Label21: TLabel;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
    N1: TMenuItem;
    BondeRetourClient2: TMenuItem;
    BondeRetourClienthorstaxe1: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    ApplicationEvents1: TApplicationEvents;
    Label31: TLabel;
    ListClientBonRetGBtn: TAdvToolButton;
    procedure ProduitBonRetGCbxEnter(Sender: TObject);
    procedure ProduitBonRetGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ClientBonRetVGCbxEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ClientBonRetVGCbxExit(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
    procedure ListAddProduitBonRetGBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ProduitBonRetGCbxExit(Sender: TObject);
    procedure BonRetPListDataSDataChange(Sender: TObject; Field: TField);
    procedure EnterAddProduitBonRetGBtnClick(Sender: TObject);
    procedure NewAddProduitBonRetGBtnClick(Sender: TObject);
    procedure ClearProduitBonRetGBtnClick(Sender: TObject);
    procedure DeleteProduitBonRetGBtnClick(Sender: TObject);
    procedure AddModePaieBonRetGBtnClick(Sender: TObject);
    procedure CompteBonRetVGCbxEnter(Sender: TObject);
    procedure AddCompteBonRetGBtnClick(Sender: TObject);
    procedure AddClientBonRetGBtnClick(Sender: TObject);
    procedure ModePaieBonRetVGCbxClick(Sender: TObject);
    procedure ModePaieBonRetVGCbxDropDown(Sender: TObject);
    procedure CompteBonRetVGCbxChange(Sender: TObject);
    procedure ProduitBonRetGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitBonRetGCbxChange(Sender: TObject);
    procedure ValiderBVRetBonRetGBtnClick(Sender: TObject);
    procedure RemiseBonRetVGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure RemiseBonRetVGEdtExit(Sender: TObject);
    procedure RemiseBonRetVGEdtClick(Sender: TObject);
    procedure RemiseBonRetVGEdtChange(Sender: TObject);
    procedure RemisePerctageBonRetVGEdtClick(Sender: TObject);
    procedure RemisePerctageBonRetVGEdtChange(Sender: TObject);
    procedure RemiseTypeBonRetGCbxChange(Sender: TObject);
    procedure RemisePerctageBonRetVGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure EditBVRetBonRetGBtnClick(Sender: TObject);
    procedure AddBVRetBonRetGBtnClick(Sender: TObject);
    procedure ClientBonRetVGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure sSpeedButton10Click(Sender: TObject);
    procedure sSpeedButton9Click(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure ClientBonRetVGCbxChange(Sender: TObject);
    procedure RemisePerctageBonRetVGEdtEnter(Sender: TObject);
    procedure RemiseBonRetVGEdtEnter(Sender: TObject);
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
    procedure BondeRetourClient1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ModePaieBonRetVGCbxChange(Sender: TObject);
    procedure BondeRetourClient2Click(Sender: TObject);
    procedure BondeRetourClienthorstaxe1Click(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ListClientBonRetGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientBonRetVGCbxSelect(Sender: TObject);
  private
    procedure GettingData;
    procedure GettingDataSansTax;
    { Private declarations }
  public
    { Public declarations }

    const BRVLSQL = 'Select BRVL.code_bvret,BRVL.code_bvretl,BRVL.qut_p,BRVL.prixht_p,BRVL.prixvd_p,BRVL.cond_p,BRVL.code_p,BRVL.tva_p,BRVL.code_bvliv,P.prixht_p,P.nom_p as nomp, P.refer_p as referp,L.nom_l AS Localisation, '
          +' (((BRVL.prixvd_p * BRVL.tva_p)/100)+BRVL.prixvd_p) AS PrixVTTC, '
          +' ((BRVL.prixht_p * BRVL.qut_p) * cond_p) AS MontantAHT, '
          +' ((BRVL.prixvd_p * BRVL.qut_p) * cond_p) AS MontantHT, '
          +' (((((BRVL.prixvd_p * BRVL.tva_p)/100)+BRVL.prixvd_p) * BRVL.qut_p)*cond_p) AS MontantTTC, '
          +' (((((((BRVL.prixvd_p * BRVL.tva_p)/100)+BRVL.prixvd_p) * BRVL.qut_p)*cond_p) )-(((BRVL.prixvd_p * BRVL.qut_p) * cond_p))) AS MontantTVA, '
          +' ((P.prixht_p * BRVL.qut_p)* cond_p) AS MontantAHT, '
          +' CASE '
          +'      WHEN BRVL.prixvd_p <> ''0''  THEN '
          +'   CASE WHEN ((P.prixht_p * BRVL.qut_p)* cond_p) <> ''0'' '
          +'     THEN ( ( (((BRVL.prixvd_p * BRVL.qut_p) * cond_p) - ((P.prixht_p * BRVL.qut_p)* cond_p)) / ((P.prixht_p * BRVL.qut_p)* cond_p) ) *100) '
          +'     ELSE ''100'' '
          +'   END '
          +' END AS Marge, '
          +' (((BRVL.prixvd_p * BRVL.qut_p) * cond_p) - ((P.prixht_p * BRVL.qut_p)* cond_p) ) AS MargeM '
          +' FROM bonv_ret_list as BRVL '
          +' LEFT JOIN produit as P '
          +' ON BRVL.code_p = P.code_p '
          +' LEFT JOIN localisation as L '
          +' ON P.code_l = L.code_l ';

    procedure EnableBonRetV;
  end;

var
  BonRetVGestionF: TBonRetVGestionF;

implementation

uses   StringTool,Vcl.Imaging.jpeg, IniFiles,
  UMainF, UClientsList, UClientGestion, UFastProduitsList,
  UProduitGestion, USplashAddUnite, UProduitsList, USplashAddCompte,
  USplashVersement, UDataModule, UBonRetV;

{$R *.dfm}


//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
 begin

   BonRetVGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(BonRetVGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonRetVGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;
   with ds do   begin
  // DisableControls;
   RecNo := row;
   MoveBy(-rowDelta) ;
   MoveBy(rowDelta) ;
  // EnableControls;
   end;

   BonRetVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

procedure TBonRetVGestionF.EnableBonRetV;
  begin

        AddBVRetBonRetGBtn.Enabled:= False;
        AddBVRetBonRetGBtn.ImageIndex:=28;// 4 For D
        EditBVRetBonRetGBtn.Enabled:= False;
        EditBVRetBonRetGBtn.ImageIndex:=29;// 5 for D
        ValiderBVRetBonRetGBtn.Enabled:= True;
        ValiderBVRetBonRetGBtn.ImageIndex:=12;//30 for D

        DateBonRetVGD.Enabled:= True;
        ObserBonRetVGMem.Enabled:= True;
        ClientBonRetVGCbx.Enabled:= True;
        AddClientBonRetGBtn.Enabled:= True ; //
        AddClientBonRetGBtn.ImageIndex:=10;//35 fo D
        ListClientBonRetGBtn.Enabled:= True;
        ListClientBonRetGBtn.ImageIndex:= 59;
        ModePaieBonRetVGCbx.Enabled:= True;
        AddModePaieBonRetGBtn.Enabled:= True ;
        AddModePaieBonRetGBtn.ImageIndex:=10;// 35 fo D
        CompteBonRetVGCbx.Enabled:= True;
        AddCompteBonRetGBtn.Enabled:= True ;
        AddCompteBonRetGBtn.ImageIndex:=10;// 35 fo D
        NChequeBonRetVGCbx.Enabled:= True;
        ProduitBonRetGCbx.Enabled:= True;
        EnterAddProduitBonRetGBtn.Enabled:= True;
        EnterAddProduitBonRetGBtn.ImageIndex:=15;// 40 fo D
        ListAddProduitBonRetGBtn.Enabled:= True;
        ListAddProduitBonRetGBtn.ImageIndex:=13;//41 fo D
        NewAddProduitBonRetGBtn.Enabled:= True;
        NewAddProduitBonRetGBtn.ImageIndex:=4;//28 fo D
        DeleteProduitBonRetGBtn.Enabled:= True;
        DeleteProduitBonRetGBtn.ImageIndex:=14;//36 fo D
        ClearProduitBonRetGBtn.Enabled:= True;
        ClearProduitBonRetGBtn.ImageIndex:=16;//39 fo A
//        ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
        ProduitsListDBGridEh.Columns[2].TextEditing :=True;//False for D
        ProduitsListDBGridEh.Columns[3].TextEditing:=True;//False for D
        ProduitsListDBGridEh.Columns[4].TextEditing:=True;//False for D
        ProduitsListDBGridEh.Options:=
        ProduitsListDBGridEh.Options +[dgEditing] +[dgAlwaysShowSelection]+[dgMultiSelect]- [dgRowSelect] ; //flip + and -  for A
        ProduitsListDBGridEh.Color:= clWhite;// $00D9D7D3 for D
        ProduitsListDBGridEh.FixedColor:=clwindow;//$00D9D7D3 for D
        ProduitsListDBGridEh.EvenRowColor:=clwindow;//$00EFE9E8 for D
        RemisePerctageBonRetVGEdt.Enabled:=True;//False for D
        RemiseBonRetVGEdt.Enabled:=True;//False for D
        RemiseTypeBonRetGCbx.Enabled:= True;//False for D;

        ResherchPARDesProduitsRdioBtn.Enabled:= True;//False for D
        ResherchPARRefProduitsRdioBtn.Enabled:= True;//False for D
        ResherchPARCBProduitsRdioBtn.Enabled:= True;//False for D

        ValiderBVRetBonRetGImg.ImageIndex:=1;//0 fo D
        ValiderBVRetBonRetGLbl.Color:=$007374FF;// $004AC38B for D
        ValiderBVRetBonRetGLbl.Font.Color:= clWhite;// clBlack for D
        ValiderBVRetBonRetGLbl.Caption:='Ce bon n''est pas encore Validé';// 'Ce bon est Valid' for D
  end;

procedure TBonRetVGestionF.ProduitBonRetGCbxChange(Sender: TObject);
begin
{if ProduitBonRetGCbx.Text<>'' then
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin

 Cursor := crDefault;
 end;
end; }
end;

procedure TBonRetVGestionF.ProduitBonRetGCbxEnter(Sender: TObject);
var
  I : Integer;
  KeyState: TKeyboardState;
begin

    if ClientBonRetVGCbx.Text <> '' then
    begin

     if ResherchPARDesProduitsRdioBtn.Checked then
     begin
      ProduitBonRetGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:=  'SELECT BLL.code_p, P.nom_p '
                                    +'     FROM bonv_liv_list AS BLL '
                                    +' INNER JOIN produit P             '
                                    +'     on BLL.code_p = p.code_p     '
                                    +' INNER JOIN bonv_liv BL           '
                                    +'     on BLL.code_bvliv = BL.code_bvliv '
                                    +' INNER JOIN client CL             '
                                    +'     on BL.code_c = CL.code_c     '
                                    +' WHERE BL.valider_bvliv = TRUE AND LOWER(CL.nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+') '
                                    +'         GROUP BY BLL.code_p, P.nom_p;';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
       begin
         ProduitBonRetGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
         MainForm.SQLQuery.Next;
        end;


      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin
      ProduitBonRetGCbx.Properties.Items.Clear;
//      Cursor := crHourGlass;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:=  'SELECT BLL.code_p, P.refer_p '
                                    +'     FROM bonv_liv_list AS BLL '
                                    +' INNER JOIN produit P             '
                                    +'     on BLL.code_p = p.code_p     '
                                    +' INNER JOIN bonv_liv BL           '
                                    +'     on BLL.code_bvliv = BL.code_bvliv '
                                    +' INNER JOIN client CL             '
                                    +'     on BL.code_c = CL.code_c     '
                                    +' WHERE BL.valider_bvliv = TRUE AND LOWER(CL.nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+') '
                                    +'         GROUP BY BLL.code_p, P.refer_p;';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;

       for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
       if( MainForm.SQLQuery.FieldByName('refer_p').IsNull = False )  then
       begin
            ProduitBonRetGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('refer_p').AsString);
         MainForm.SQLQuery.Next;
        end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
//      Cursor := crDefault;
     end;

       if ResherchPARCBProduitsRdioBtn.Checked then
       begin
        ProduitBonRetGCbx.Properties.Items.Clear;

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
end;

procedure TBonRetVGestionF.ProduitBonRetGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonRetGCbx.AutoDropDown:= True;
  end;

end;

procedure addToQutIfSameProduit(CodeP:Integer);
begin
          //This is for adding qut if it the same produit
      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
      MainForm.SQLQuery4.SQL.Text := 'SELECT qut_p,code_p FROM bonv_ret_list WHERE code_bvret = ' + QuotedStr(IntToStr(DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger));
      MainForm.SQLQuery4.Active := True;

      MainForm.SQLQuery4.First;
      while not MainForm.SQLQuery4.Eof do
      begin

        if MainForm.SQLQuery4.FieldByName('code_p').AsInteger = CodeP then
        begin
          MainForm.SQLQuery4.Edit;
          MainForm.SQLQuery4.FieldByName('qut_p').AsFloat := MainForm.SQLQuery4.FieldByName('qut_p').AsFloat + 1;
          MainForm.SQLQuery4.Post;
          Refresh_PreservePosition;
          BonRetVGestionF.ProduitBonRetGCbx.Clear;
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT or SND_ASYNC or SND_RING);

          Exit;

        end;
        MainForm.SQLQuery4.Next;
      end;

      MainForm.SQLQuery4.Active := False;
      MainForm.SQLQuery4.SQL.Clear;
      DataModuleF.Bonv_ret_listTable.Refresh;
end;

procedure TBonRetVGestionF.ProduitBonRetGCbxKeyPress(Sender: TObject; var Key: Char);
  var CodeBR,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;
  const
  N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
 if key = #13 then
 begin
 if (ProduitBonRetGCbx.Text <>'') AND NOT (ProduitBonRetGCbx.Text[1] in N ) then
 begin
  key := #0;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,prixht_p,prixvd_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonRetGCbx.Text)+')';
        MainForm.SQLQuery.SQL.Text:=  'SELECT BLL.code_p, P.nom_p '
                                    +'     FROM bonv_liv_list AS BLL '
                                    +' INNER JOIN produit P             '
                                    +'     on BLL.code_p = p.code_p     '
                                    +' INNER JOIN bonv_liv BL           '
                                    +'     on BLL.code_bvliv = BL.code_bvliv '
                                    +' INNER JOIN client CL             '
                                    +'     on BL.code_c = CL.code_c     '
                                    +' WHERE BL.valider_bvliv = TRUE AND LOWER(CL.nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+') '
                                    +'         GROUP BY BLL.code_p, P.nom_p;';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := DataModuleF.Bonv_ret_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            DataModuleF.Bonv_ret_listTable.DisableControls;
            DataModuleF.Bonv_ret_listTable.IndexFieldNames:='';
            DataModuleF.Bonv_ret_listTable.Active:=False;
            DataModuleF.Bonv_ret_listTable.SQL.Clear;
            DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' ORDER by code_bvretl' ;
            DataModuleF.Bonv_ret_listTable.Active:=True;

            DataModuleF.Bonv_ret_listTable.Last;
             if  DataModuleF.Bonv_ret_listTable.IsEmpty then
             begin
               DataModuleF.Bonv_ret_listTable.Last;
               CodeBR := 1;
             end else
                 begin
                  DataModuleF.Bonv_ret_listTable.Last;
                  CodeBR:= DataModuleF.Bonv_ret_listTable.FieldValues['code_bvretl'] + 1 ;
                 end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             DataModuleF.Bonv_ret_listTable.Last;
             DataModuleF.Bonv_ret_listTable.Append;
             DataModuleF.Bonv_ret_listTable.FieldValues['code_bvretl']:= CodeBR ;
             DataModuleF.Bonv_ret_listTable.FieldValues['code_bvret']:= DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
             DataModuleF.Bonv_ret_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.Bonv_ret_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bonv_ret_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bonv_ret_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;

             DataModuleF.Bonv_ret_listTable.FieldValues['qutinstock_p']:=
             (DataModuleF.Bonv_ret_listTable.FieldValues['qut_p'])*(DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']);

             DataModuleF.Bonv_ret_listTable.Post ;
             DataModuleF.Bonv_ret_listTable.IndexFieldNames:='code_bvret';

            DataModuleF.Bonv_ret_listTable.Active:=False;
            DataModuleF.Bonv_ret_listTable.SQL.Clear;
            DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' WHERE code_bvret = ' + QuotedStr(IntToStr(DataModuleF.Bonv_retTable.FieldValues['code_bvret']));
            DataModuleF.Bonv_ret_listTable.Active:=True;

            ProduitBonRetGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.Bonv_ret_listTable.EnableControls;
           DataModuleF.Bonv_ret_listTable.Last;
           if ClientBonRetVGCbx.Text<>'' then
            begin
            ValiderBVRetBonRetGBtn.Enabled:= True;
            ValiderBVRetBonRetGBtn.ImageIndex:=12;
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
//      if  DataModuleF.Bonv_ret_listTable.FieldValues['code_p'] <> NULL then
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
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,refer_p,nom_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonRetGCbx.Text)+')';
            MainForm.SQLQuery.Active:=True;
            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

         lookupResultRefP := DataModuleF.Bonv_ret_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.SQLQuery.RecordCount > 0  then
          begin

            DataModuleF.Bonv_ret_listTable.DisableControls;
            DataModuleF.Bonv_ret_listTable.IndexFieldNames:='';
            DataModuleF.Bonv_ret_listTable.Active:=False;
            DataModuleF.Bonv_ret_listTable.SQL.Clear;
            DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' ORDER by code_bvretl' ;
            DataModuleF.Bonv_ret_listTable.Active:=True;
           if  DataModuleF.Bonv_ret_listTable.RecordCount <= 0 then
           begin
             CodeBR := 1;
           end else
               begin
                DataModuleF.Bonv_ret_listTable.Last;
                CodeBR:= DataModuleF.Bonv_ret_listTable.FieldValues['code_bvretl'] + 1 ;
               end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             DataModuleF.Bonv_ret_listTable.Insert;
             DataModuleF.Bonv_ret_listTable.FieldValues['code_bvretl']:= CodeBR ;
             DataModuleF.Bonv_ret_listTable.FieldValues['code_bvret']:= DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
             DataModuleF.Bonv_ret_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.Bonv_ret_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bonv_ret_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bonv_ret_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

              DataModuleF.Bonv_ret_listTable.FieldValues['qutinstock_p']:=
             (DataModuleF.Bonv_ret_listTable.FieldValues['qut_p'])*(DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']);

             DataModuleF.Bonv_ret_listTable.Post ;
             DataModuleF.Bonv_ret_listTable.IndexFieldNames:='code_bvret';

            DataModuleF.Bonv_ret_listTable.Active:=False;
            DataModuleF.Bonv_ret_listTable.SQL.Clear;
            DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' WHERE code_bvret = ' + QuotedStr(IntToStr(DataModuleF.Bonv_retTable.FieldValues['code_bvret']));
            DataModuleF.Bonv_ret_listTable.Active:=True;

            ProduitBonRetGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.Bonv_ret_listTable.EnableControls;
            DataModuleF.Bonv_ret_listTable.Last;
            if ClientBonRetVGCbx.Text<>'' then
              begin
              ValiderBVRetBonRetGBtn.Enabled:= True;
              ValiderBVRetBonRetGBtn.ImageIndex:=12;
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
//            if  DataModuleF.Bonv_ret_listTable.FieldValues['code_p'] <> NULL then
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
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( ProduitBonRetGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
   begin
    CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
   end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,nom_p,codebar_p,prixht_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p,perissable_p FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonRetGCbx.Text)+')';
    MainForm.SQLQuery.Active:=True;
    CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

     if  (MainForm.SQLQuery.RecordCount > 0 )   then
      begin

         lookupResultRefP := DataModuleF.Bonv_ret_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            DataModuleF.Bonv_ret_listTable.DisableControls;
            DataModuleF.Bonv_ret_listTable.IndexFieldNames:='';
            DataModuleF.Bonv_ret_listTable.Active:=False;
            DataModuleF.Bonv_ret_listTable.SQL.Clear;
            DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' ORDER by code_bvretl' ;
            DataModuleF.Bonv_ret_listTable.Active:=True;

           if  DataModuleF.Bonv_ret_listTable.RecordCount <= 0 then
           begin
             CodeBR := 1;
           end else
               begin
                DataModuleF.Bonv_ret_listTable.Last;
                CodeBR:= DataModuleF.Bonv_ret_listTable.FieldValues['code_bvretl'] + 1 ;
               end;

                 if MainForm.SQLQuery.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             DataModuleF.Bonv_ret_listTable.Last;
             DataModuleF.Bonv_ret_listTable.Append;
             DataModuleF.Bonv_ret_listTable.FieldValues['code_bvretl']:= CodeBR ;
             DataModuleF.Bonv_ret_listTable.FieldValues['code_bvret']:= DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
             DataModuleF.Bonv_ret_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             DataModuleF.Bonv_ret_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bonv_ret_listTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
             DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bonv_ret_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvd_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvr_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixvg_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixva_p').AsFloat:=  MainForm.SQLQuery.FieldByName('prixva_p').AsFloat;
             DataModuleF.Bonv_ret_listTable.FieldByName('prixva2_p').AsFloat:= MainForm.SQLQuery.FieldByName('prixva2_p').AsFloat;

             DataModuleF.Bonv_ret_listTable.FieldValues['qutinstock_p']:=
             (DataModuleF.Bonv_ret_listTable.FieldValues['qut_p'])*(DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']);

             DataModuleF.Bonv_ret_listTable.Post ;
             DataModuleF.Bonv_ret_listTable.IndexFieldNames:='code_bvret';

             DataModuleF.Bonv_ret_listTable.Active:=False;
             DataModuleF.Bonv_ret_listTable.SQL.Clear;
             DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' WHERE code_bvret = ' + QuotedStr(IntToStr(DataModuleF.Bonv_retTable.FieldValues['code_bvret']));
             DataModuleF.Bonv_ret_listTable.Active:=True;

            ProduitBonRetGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           DataModuleF.Bonv_ret_listTable.EnableControls;
            DataModuleF.Bonv_ret_listTable.Last;
            if ClientBonRetVGCbx.Text<>'' then
              begin
              ValiderBVRetBonRetGBtn.Enabled:= True;
              ValiderBVRetBonRetGBtn.ImageIndex:=12;
              end;
         end else
             begin

           //  ShowMessage(' code bare deja kain : p ');

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
//                if  DataModuleF.Bonv_ret_listTable.FieldValues['code_p'] <> NULL then
//                begin
//                NomP:=   MainForm.SQLQuery.FieldValues['nom_p'];
//                end else begin
//                  NomP:='';
//                end;
//                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
//                FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
//                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//                 FSplashAddUnite.Show;
//              //--- this tage = 0 is for multi name added by produit combobox----//
//                 FSplashAddUnite.Tag:=0;
             end;
          end;

   end;
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;

         DataModuleF.Bonv_ret_listTable.Refresh;
//        ProduitBonRetGCbx.AutoDropDown:=False;
         ProduitBonRetGCbx.SelectAll;

     end else
         begin
           ProduitBonRetGCbx.Text:= '';
         end;

     DataModuleF.Bonv_ret_listTable.Last;
 end;

end;

procedure TBonRetVGestionF.ClientBonRetVGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
          ClientBonRetVGCbx.Items.Clear;
//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select nom_c FROM client ORDER by code_c'  ;
          MainForm.SQLQuery.Active:=True;

       MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonRetVGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_c').AsString);
       MainForm.SQLQuery.Next;
      end;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
  end;


procedure TBonRetVGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_br');

 if ValiderBVRetBonRetGImg.ImageIndex = 1 then
  begin

    DataModuleF.Bonv_retTable.Refresh;

    DataModuleF.Bonv_ret_listTable.Refresh;
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


          DataModuleF.Bonv_ret_listTable.Active:=false;
          DataModuleF.Bonv_ret_listTable.SQL.Clear;
          DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL ;
          DataModuleF.Bonv_ret_listTable.Active:=True;
          DataModuleF.Bonv_ret_listTable.EnableControls;

  DataModuleF.Bonv_ret_listTable.IndexFieldNames:='code_bvret';

//  FreeAndNil(BonRetVGestionF);
//  Destroy


 end;

procedure TBonRetVGestionF.FormShow(Sender: TObject);
var CodeCB: Integer;
OLDCredit,NEWCredit : Double;
begin
// use this tage when i click AddBVRetBonRetGBtn bon button
 if Tag = 0 then
 begin

    DateBonRetVGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//-- use this code to make the montants look lake money values-------//
    BonRetTotalHTLbl.Caption :=       FloatToStrF(StrToFloat(BonRetTotalHTLbl.Caption),ffNumber,14,2) ;
//    RemiseBonRetVGEdt.Text :=       FloatToStrF(StrToFloat(RemiseBonRetVGEdt.Text),ffNumber,14,2) ;
    BonRetTotalTVALbl.Caption :=      FloatToStrF(StrToFloat(BonRetTotalTVALbl.Caption),ffNumber,14,2) ;
    BonRetTotalTTCLbl.Caption :=      FloatToStrF(StrToFloat(BonRetTotalTTCLbl.Caption),ffNumber,14,2) ;
    BonRetResteLbl.Caption :=         FloatToStrF(StrToFloat(BonRetResteLbl.Caption),ffNumber,14,2) ;
    BonRetRegleLbl.Caption :=         FloatToStrF(StrToFloat(BonRetRegleLbl.Caption),ffNumber,14,2) ;
    BonRetGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(BonRetGClientOLDCredit.Caption),ffNumber,14,2) ;
    BonRetGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(BonRetGClientNEWCredit.Caption),ffNumber,14,2) ;
 CodeCB:= DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger   ;
 NumBonRetVGEdt.Caption := 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);
  if (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> null)
 AND (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> 0)  then
 begin
   if DataModuleF.Bonv_retTable.FieldByName('clientbvret').AsWideString <> null then
    begin
   ClientBonRetVGCbx.Text:= DataModuleF.Bonv_retTable.FieldByName('clientbvret').AsWideString;
    end;
    if DataModuleF.Bonv_retTable.FieldByName('ModePaie').AsString <> null then
    begin
   ModePaieBonRetVGCbx.Text:= DataModuleF.Bonv_retTable.FieldByName('ModePaie').AsString;
    end;
    if DataModuleF.Bonv_retTable.FieldByName('Compte').AsString <> null then
    begin
   CompteBonRetVGCbx.Text:= DataModuleF.Bonv_retTable.FieldByName('Compte').AsString;
    end;
   ClientBonRetVGCbxExit(Sender);
   ProduitBonRetGCbx.SetFocus;
 end else
     begin
       ClientBonRetVGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonRetGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonRetGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonRetGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonRetGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;

   if DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = True then
   begin
    MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'select code_c, credit_c from client where code_c = ' + IntToStr( DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:= True;

      if NOT (MainForm.SQLQuery.IsEmpty) then
     begin
      OLDCredit:= (MainForm.SQLQuery.FieldByName('credit_c').AsFloat);// - (DataModuleF.Bonv_retTable.FieldByName('MontantRes').AsFloat) ;

      NewCredit:=  MainForm.SQLQuery.FieldByName('credit_c').AsFloat;

     BonRetGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( OLDCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonRetGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(CurrToStr( NewCredit), #32, '', [rfReplaceAll])),ffNumber,14,2) ;

     end;
        MainForm.SQLQuery.Active:= False;
    MainForm.SQLQuery.SQL.Clear;
   end else
       begin
         ClientBonRetVGCbxExit(Sender);
       end;
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
 end;

procedure TBonRetVGestionF.ClientBonRetVGCbxExit(Sender: TObject);
var CodeF: Integer;
OLDCreditF,RegFCreditF,OLDCreditFV,OLDCreditFINI : Double;
begin

  if ClientBonRetVGCbx.Text <> '' then
    begin
     ClientBonRetVGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c,oldcredit_c,credit_c,activ_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;
      if NOT  MainForm.SQLQuery.IsEmpty then
     begin
      OLDCreditFINI:= MainForm.SQLQuery.FieldByName('credit_c').AsFloat ;

     if MainForm.SQLQuery.FieldByName('activ_c').AsBoolean <> False then
     begin

      if (MainForm.SQLQuery.IsEmpty) then
      begin
       ClientBonRetVGCbx.Text := '';
       BonRetGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonRetGClientNEWCredit.Caption:=BonRetGClientOLDCredit.Caption;
       exit;
      end;
      CodeF:= MainForm.SQLQuery.FieldByName('code_c').AsInteger ;


//      DataModuleF.Bonv_retTableCredit.DisableControls;
//      DataModuleF.Bonv_retTableCredit.Active:=false;
//      DataModuleF.Bonv_retTableCredit.SQL.Clear;
//      DataModuleF.Bonv_retTableCredit.SQL.Text:='Select * FROM bonv_ret WHERE valider_bvret = true AND code_c = '+ IntToStr( CodeF )+' ORDER BY code_bvret '  ;
//      DataModuleF.Bonv_retTableCredit.Active:=True;
//
//     while NOT (DataModuleF.Bonv_retTableCredit.Eof) do
//     begin
//     OLDCreditF := OLDCreditF + DataModuleF.Bonv_retTableCredit.FieldValues['MontantRes'];
//     DataModuleF.Bonv_retTableCredit.Next;
//     end;
//
//      MainForm.RegClientTable.DisableControls;
//      MainForm.RegClientTable.Active:=false;
//      MainForm.RegClientTable.SQL.Clear;
//      MainForm.RegClientTable.SQL.Text:='Select * FROM regclient WHERE bon_or_no_rf = 1 AND code_c = '+ IntToStr( CodeF )+' ORDER BY code_rf '  ;
//      MainForm.RegClientTable.Active:=True;
//
//     while NOT (MainForm.RegClientTable.Eof) do
//     begin
//     RegFCreditF := RegFCreditF + MainForm.RegClientTable.FieldValues['montver_rf'];
//     MainForm.RegClientTable.Next;
//     end;


//      DataModuleF.Bonv_retTableCredit.EnableControls;
      if NOT (OLDCreditFINI = 0) then
      begin
//       DataModuleF.Bonv_retTableCredit.last;
       BonRetGClientOLDCredit.Caption:= CurrToStrF((OLDCreditFINI ),ffNumber,2) ;

       if NOT (BonRetPListDataS.DataSet.IsEmpty) then
        begin
//         if Tag = 0 then
//         begin
//         BonRetGClientNEWCredit.Caption:=
//         CurrToStrF((DataModuleF.Bonv_retTableCredit.FieldByName('MontantRes').AsFloat )+ StrToFloat (StringReplace(BonRetResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//        end else
//            begin
//              BonRetGClientNEWCredit.Caption:=
//              CurrToStrF((DataModuleF.Bonv_retTableCredit.FieldByName('MontantRes').AsFloat )+ StrToFloat (StringReplace(BonRetResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
//
//            end;

        end;
        end else
        begin
         BonRetGClientOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
        end;

//      DataModuleF.Bonv_retTableCredit.DisableControls;
//      DataModuleF.Bonv_retTableCredit.Active:=false;
//      DataModuleF.Bonv_retTableCredit.SQL.Clear;
//      DataModuleF.Bonv_retTableCredit.SQL.Text:='Select * FROM bonv_ret '  ;
//      DataModuleF.Bonv_retTableCredit.Active:=True;
//      DataModuleF.Bonv_retTableCredit.last;
//      DataModuleF.Bonv_retTableCredit.EnableControls;
//
//
//
//      MainForm.RegClientTable.Active:=false;
//      MainForm.RegClientTable.SQL.Clear;
//      MainForm.RegClientTable.SQL.Text:='Select * FROM regclient ORDER BY time_rf  '  ;
//      MainForm.RegClientTable.Active:=True;
//      MainForm.RegClientTable.EnableControls;


      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//      MainForm.SQLQuery.Active:=True;
//      MainForm.SQLQuery.EnableControls;
      if NOT (BonRetPListDataS.DataSet.IsEmpty) AND NOT (DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = true) then
      begin
      ValiderBVRetBonRetGBtn.Enabled:= True;
      ValiderBVRetBonRetGBtn.ImageIndex:=12;
      end;

      DataModuleF.Bonv_ret_listTable.Refresh;

        ClientBonRetVGCbx.StyleElements:= [seFont,seBorder,seBorder];
        RequiredClientGlbl.Visible:= False;
        NameClientGErrorP.Visible:= False;

       end else
           begin
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ClientBonRetVGCbx.StyleElements:= [];
            RequiredClientGlbl.Caption:='Ce Client est bloqué';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            ClientBonRetVGCbx.SetFocus;
           end;

       end else
           begin
             ClientBonRetVGCbx.Text:='';

              MainForm.SQLQuery.Active:=false;
              MainForm.SQLQuery.SQL.Clear;
//              MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//              MainForm.SQLQuery.Active:=True;
//              MainForm.SQLQuery.EnableControls;
           end;

    end else
    begin
     BonRetGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
     BonRetGClientNEWCredit.Caption:=BonRetGClientOLDCredit.Caption;
     end;

end;

procedure TBonRetVGestionF.AdvToolButton4Click(Sender: TObject);
begin
BonRetVF.AddBVRetBtnClick(Sender);
end;

procedure TBonRetVGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl  : TfrxMemoView;
LineCredit,LineCreditTop :TfrxShapeView;
I : Integer;
Ini: TIniFile;
indexP: Integer;
begin

   //--- this is to focus in produit --------------------------
  if  (GetKeyState(VK_F3) < 0) and (AddBVRetBonRetGBtn.Enabled = False ) then
  begin
      ProduitBonRetGCbx.SetFocus;
      Handled := true;
  end;



  if  (GetKeyState(VK_F4) < 0) and (AddBVRetBonRetGBtn.Enabled = True ) then
  begin
      AddBVRetBonRetGBtnClick(Screen);

    Handled := true;
  end;


  if  (GetKeyState(VK_F5) < 0) and (EditBVRetBonRetGBtn.Enabled = True ) then
  begin
      EditBVRetBonRetGBtnClick(Screen);

    Handled := true;
  end;

     //--- this is to switch between produits and quntity--------------------------
   if  (GetKeyState(VK_F6) < 0) and (EditBVRetBonRetGBtn.Enabled = False ) then
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
   if  (GetKeyState(VK_F7) < 0) and (EditBVRetBonRetGBtn.Enabled = False ) then
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


  if  (GetKeyState(VK_F8) < 0) and (EditBVRetBonRetGBtn.Enabled = False ) then
  begin
      ListAddProduitBonRetGBtnClick(Screen);

    Handled := true;
  end;

   if  (GetKeyState(VK_F9) < 0)  then
  begin

      ValiderBVRetBonRetGBtnClick(Screen);

    Handled := true;
  end;

     //--- this is for new produit--------------------------
     if  (GetKeyState(VK_F11) < 0)  then
  begin

      NewAddProduitBonRetGBtnClick(Screen);

    Handled := true;
  end;

     if  (GetKeyState(VK_F12) < 0)  then
  begin

     if ValiderBVRetBonRetGImg.ImageIndex <> 1 then
     begin
        Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
        indexP:= Ini.ReadInteger('', 'Format FA',0);
        if (indexP = 0) or (indexP = -1) then
        begin
         B1Click(Screen);
        end;
        if indexP = 1 then
        begin
          BondeRetourClient1Click(Screen);
        end;
        if indexP = 2 then
        begin
          BondeRetourClient2Click(Screen);
        end;
        if indexP = 3 then
        begin
          BondeRetourClienthorstaxe1Click(Screen);
        end;

        Ini.Free;
        Handled := true;
     end;
  end;

end;

procedure TBonRetVGestionF.ListAddProduitBonRetGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  ProduitBonRetGCbx.Text:='';
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

procedure TBonRetVGestionF.ListClientBonRetGBtnClick(Sender: TObject);
Var I:Integer;
begin
//-------- use this code to start creating th form-----//
  FastProduitsListF := TFastProduitsListF.Create(Application);

  MainForm.FDQuery2.Active:=False;
  MainForm.FDQuery2.SQL.Clear;
  MainForm.FDQuery2.SQL.TExt:= 'SELECT code_c,nom_c,fix_c,mob_c,adr_c,credit_c FROM client';
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

//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activité';
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
//  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='fix_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Téléphone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='mob_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='Téléphone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='adr_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='credit_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Crédit';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 130;;


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

procedure TBonRetVGestionF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  Var CodeBR : Integer;
 begin
   codeBR:= DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;
 if  NOT ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if ClientBonRetVGCbx.Text = '' then
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonRetVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonRetVGCbx.SetFocus;
      CanClose := false;
  end else
    begin

     if ModePaieBonRetVGCbx.Text = '' then
     begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ModePaieBonRetVGCbx.StyleElements:= [];
        RequiredMPGlbl.Visible:= True;
        ModepPaiGErrorP.Visible:= True;

        ModePaieBonRetVGCbx.SetFocus;
        CanClose := false;
     end else
     begin

       if CompteBonRetVGCbx.Text = '' then
       begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          CompteBonRetVGCbx.StyleElements:= [];
          RequiredCompteGlbl.Visible:= True;
          CompteGErrorP.Visible:= True;

          CompteBonRetVGCbx.SetFocus;
          CanClose := false;
       end else
       begin

         //---------------------------------------------------
         if RequiredClientGlbl.Visible <> True then
           begin
             if  (DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = false)  then
             begin
              MainForm.ClientTable.DisableControls;
              MainForm.ClientTable.Active:=false;
              MainForm.ClientTable.SQL.Clear;
              MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+')'  ;
              MainForm.ClientTable.Active:=True;

              MainForm.Mode_paiementTable.DisableControls;
              MainForm.Mode_paiementTable.Active:=false;
              MainForm.Mode_paiementTable.SQL.Clear;
              MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonRetVGCbx.Text )+')'  ;
              MainForm.Mode_paiementTable.Active:=True;

              MainForm.CompteTable.DisableControls;
              MainForm.CompteTable.Active:=false;
              MainForm.CompteTable.SQL.Clear;
              MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonRetVGCbx.Text )+')'  ;
              MainForm.CompteTable.Active:=True;


              DataModuleF.Bonv_retTable.DisableControls;
              DataModuleF.Bonv_retTable.Edit;
              DataModuleF.Bonv_retTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
              DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime:= DateBonRetVGD.DateTime;
              DataModuleF.Bonv_retTable.FieldValues['time_bvret']:=TimeOf(Now);
              DataModuleF.Bonv_retTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
              DataModuleF.Bonv_retTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
              DataModuleF.Bonv_retTable.FieldValues['obser_bvret']:= ObserBonRetVGMem.Text;
              DataModuleF.Bonv_retTable.FieldValues['num_cheque_bvret']:= NChequeBonRetVGCbx.Text;
              DataModuleF.Bonv_retTable.FieldByName('montht_bvret').AsFloat:= StrToFloat(StringReplace(BonRetTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

              if RemiseBonRetVGEdt.Text<>'' then
              begin
                 DataModuleF.Bonv_retTable.FieldByName('remise_bvret').AsFloat:=StrToFloat(StringReplace(RemiseBonRetVGEdt.Text, #32, '', [rfReplaceAll]));
              end else begin
                        DataModuleF.Bonv_retTable.FieldByName('remise_bvret').AsFloat:=0;
                       end;


              DataModuleF.Bonv_retTable.FieldByName('montver_bvret').AsFloat:=StrToFloat(StringReplace(BonRetRegleLbl.Caption, #32, '', [rfReplaceAll]));
              DataModuleF.Bonv_retTable.FieldByName('montttc_bvret').AsFloat:=StrToFloat(StringReplace(BonRetTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

              DataModuleF.Bonv_retTable.Post;
              DataModuleF.Bonv_retTable.EnableControls;

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
//               if (codeBR <> 0) AND (codeBR <> null) then
//               begin
//                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvret = ' + IntToStr(codeBR));
//                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvret = ' + IntToStr(codeBR));
//                  MainForm.RegClientTable.Refresh ;
//                  MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
//               end;

              end;

              end else
                  begin
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    ClientBonRetVGCbx.StyleElements:= [];
                    RequiredClientGlbl.Caption:= 'Ce Client est bloqué' ;
                    RequiredClientGlbl.Visible:= True;
                    NameClientGErrorP.Visible:= True;

                    ClientBonRetVGCbx.SetFocus;
                    CanClose:= False;
                  end;
          //---------------------------------------------------

        end;
        end;
      end;
  end  else
  begin

          if  (DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = false)  then
         begin
//          codeBR:= DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;

          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+')'  ;
          MainForm.ClientTable.Active:=True;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr( ModePaieBonRetVGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr( CompteBonRetVGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Edit;
          DataModuleF.Bonv_retTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime:= DateBonRetVGD.DateTime;
          DataModuleF.Bonv_retTable.FieldValues['time_bvret']:=TimeOf(Now);
          DataModuleF.Bonv_retTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          DataModuleF.Bonv_retTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          DataModuleF.Bonv_retTable.FieldValues['obser_bvret']:= ObserBonRetVGMem.Text;
          DataModuleF.Bonv_retTable.FieldValues['num_cheque_bvret']:= NChequeBonRetVGCbx.Text;
          DataModuleF.Bonv_retTable.FieldByName('montht_bvret').AsFloat:= StrToFloat(StringReplace(BonRetTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonRetVGEdt.Text<>'' then
          begin
             DataModuleF.Bonv_retTable.FieldByName('remise_bvret').AsFloat:=StrToFloat(StringReplace(RemiseBonRetVGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    DataModuleF.Bonv_retTable.FieldByName('remise_bvret').AsFloat:=0;
                   end;


          DataModuleF.Bonv_retTable.FieldByName('montver_bvret').AsFloat:=StrToFloat(StringReplace(BonRetRegleLbl.Caption, #32, '', [rfReplaceAll]));
          DataModuleF.Bonv_retTable.FieldByName('montttc_bvret').AsFloat:=StrToFloat(StringReplace(BonRetTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          DataModuleF.Bonv_retTable.Post;
          DataModuleF.Bonv_retTable.EnableControls;

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
           if (codeBR <> 0) AND (codeBR <> null) then
           begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvret = ' + IntToStr(codeBR));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvret = ' + IntToStr(codeBR));
              MainForm.RegClientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
           end;

          end;


     CanClose:= True;
  end;

end;

procedure TBonRetVGestionF.ProduitBonRetGCbxExit(Sender: TObject);
begin
ProduitBonRetGCbx.Text:='';
//ProduitBonRetGCbx.AutoDropDown:=False;
end;

procedure TBonRetVGestionF.B1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVRetBonRetGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bonv_ret_listTable.DisableControls;
 GettingData;

   OLDCredit:= BonRetPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonRetPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonRetPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonRetPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonRetPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonRetPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonRetPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonRetPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonRetPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonRetPListfrxRprt.PrepareReport;
BonRetPListfrxRprt.ShowReport;
DataModuleF.Bonv_ret_listTable.EnableControls;
 end;
end;

procedure TBonRetVGestionF.BondeRetourClient1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVRetBonRetGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bonv_ret_listTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonRetPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= True;
  NEWCredit:= BonRetPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= True;
  OLDCreditLbl:= BonRetPListSanTAXfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= True;
  NEWCreditLbl:= BonRetPListSanTAXfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= True;

  TotalACHAT:= BonRetPListSanTAXfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= True;
  Versement:= BonRetPListSanTAXfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= True;

  TotalACHATLbl:= BonRetPListSanTAXfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= True;
  VersementLbl:= BonRetPListSanTAXfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= True;

  LineCredit:= BonRetPListSanTAXfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= True;

BonRetPListSanTAXfrxRprt.PrepareReport;
BonRetPListSanTAXfrxRprt.ShowReport;
DataModuleF.Bonv_ret_listTable.EnableControls;
 end;
end;

procedure TBonRetVGestionF.BondeRetourClient2Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVRetBonRetGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bonv_ret_listTable.DisableControls;
 GettingData;

   OLDCredit:= BonRetPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonRetPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonRetPListfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonRetPListfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonRetPListfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonRetPListfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonRetPListfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonRetPListfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonRetPListfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonRetPListfrxRprt.PrepareReport;
BonRetPListfrxRprt.ShowReport;
DataModuleF.Bonv_ret_listTable.EnableControls;
 end;
end;

procedure TBonRetVGestionF.BondeRetourClienthorstaxe1Click(Sender: TObject);
 var
NEWCredit,OLDCredit,NEWCreditLbl,OLDCreditLbl , TotalACHAT,Versement,TotalACHATLbl,VersementLbl    : TfrxMemoView;
LineCredit :TfrxShapeView;
begin
if ValiderBVRetBonRetGImg.ImageIndex <> 1 then
 begin
DataModuleF.Bonv_ret_listTable.DisableControls;
 GettingDataSansTax;

   OLDCredit:= BonRetPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Visible:= False;
  NEWCredit:= BonRetPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Visible:= False;
  OLDCreditLbl:= BonRetPListSanTAXfrxRprt.FindObject('OLDCreditLbl') as TfrxMemoView;
  OLDCreditLbl.Visible:= False;
  NEWCreditLbl:= BonRetPListSanTAXfrxRprt.FindObject('NEWCreditLbl') as TfrxMemoView;
  NEWCreditLbl.Visible:= False;

  TotalACHAT:= BonRetPListSanTAXfrxRprt.FindObject('TotalACHAT') as TfrxMemoView;
  TotalACHAT.Visible:= False;
  Versement:= BonRetPListSanTAXfrxRprt.FindObject('Versement') as TfrxMemoView;
  Versement.Visible:= False;

  TotalACHATLbl:= BonRetPListSanTAXfrxRprt.FindObject('TotalACHATLbl') as TfrxMemoView;
  TotalACHATLbl.Visible:= False;
  VersementLbl:= BonRetPListSanTAXfrxRprt.FindObject('VersementLbl') as TfrxMemoView;
  VersementLbl.Visible:= False;

  LineCredit:= BonRetPListSanTAXfrxRprt.FindObject('LineCredit') as TfrxShapeView;
  LineCredit.Visible:= False;

BonRetPListSanTAXfrxRprt.PrepareReport;
BonRetPListSanTAXfrxRprt.ShowReport;
DataModuleF.Bonv_ret_listTable.EnableControls;
 end;
end;

procedure TBonRetVGestionF.BonRetPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonRetPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonRetGBtn.Visible:= True;
    ClearProduitBonRetGBtn.Visible:= True;

    if (ClientBonRetVGCbx.Text<>'')  AND (DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean <> True) then
    begin
    ValiderBVRetBonRetGBtn.Enabled:= True;
    ValiderBVRetBonRetGBtn.ImageIndex:=12;
    end;

   if DataModuleF.Bonv_retTable.FieldValues['valider_bvret'] <> True then
   begin

//    MainForm.SQLQuery.DisableControls;
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_p,qut_p,qutini_p FROM produit WHERE code_p = ' +IntToStr(DataModuleF.Bonv_ret_listTable.FieldValues['code_p']);
    MainForm.SQLQuery.Active:=True;


    BonRetGOLDStock.Caption:=
     floatTostrF(((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'])),ffNumber,14,2);
    BonRetGNEWStock.Caption:=
     floatTostrF((((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']))+((DataModuleF.Bonv_ret_listTable.FieldValues['qut_p']) * (DataModuleF.Bonv_ret_listTable.FieldValues['cond_p']))),ffNumber,14,2);

//     if(StrToFloat (StringReplace(BonRetGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
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


    RemisePerctageBonRetVGEdt.Enabled:=True;
    RemiseBonRetVGEdt.Enabled:=True;
    RemiseTypeBonRetGCbx.Enabled:= True;

   end;
     ProduitsListDBGridEh.ReadOnly:=False;
    end else
    begin
    DeleteProduitBonRetGBtn.Visible:= False;
    ClearProduitBonRetGBtn.Visible:= False;


    ValiderBVRetBonRetGBtn.Enabled:= False;
    ValiderBVRetBonRetGBtn.ImageIndex:=30;

    RemisePerctageBonRetVGEdt.Enabled:=False;
    RemiseBonRetVGEdt.Enabled:=False;
    RemiseTypeBonRetGCbx.Enabled:= False;

    RemisePerctageBonRetVGEdt.Text:='';
    RemiseBonRetVGEdt.Text:='';
    RemiseTypeBonRetGCbx.Text:='';

    BonRetGOLDStock.Caption:=  floatTostrF((0),ffNumber,14,2);
    BonRetGNEWStock.Caption:=  floatTostrF((0),ffNumber,14,2);

     ProduitsListDBGridEh.ReadOnly:=True;
  end;

end;

procedure TBonRetVGestionF.EnterAddProduitBonRetGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonRetGCbxKeyPress(Sender, key);
end;

procedure TBonRetVGestionF.NewAddProduitBonRetGBtnClick(Sender: TObject);
begin

ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonRetVGestionF.ClearProduitBonRetGBtnClick(Sender: TObject);
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
procedure TBonRetVGestionF.DeleteProduitBonRetGBtnClick(Sender: TObject);
begin
 if  DataModuleF.Bonv_ret_listTable.RecordCount = 1 then
 begin
    DataModuleF.Bonv_ret_listTable.DisableControls;
    DataModuleF.Bonv_ret_listTable.Refresh;
    DataModuleF.Bonv_ret_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    DataModuleF.Bonv_ret_listTable.EnableControls;
    ClientBonRetVGCbx.StyleElements:= [];
    RequiredClientGlbl.Visible:= False;
    NameClientGErrorP.Visible:= False;
    BonRetTotalHTLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRetTotalTVALbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRetTotalTTCLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRetRegleLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRetResteLbl.Caption:=FloatToStrF(0, ffNumber, 14, 2);
    BonRetGClientNEWCredit.Caption:= BonRetTotalTTCLbl.Caption;
 end else
 if DataModuleF.Bonv_ret_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      DataModuleF.Bonv_ret_listTable.DisableControls;
      DataModuleF.Bonv_ret_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      DataModuleF.Bonv_ret_listTable.Refresh;
      DataModuleF.Bonv_ret_listTable.EnableControls;
     end;
end;

procedure TBonRetVGestionF.AddModePaieBonRetGBtnClick(Sender: TObject);
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

procedure TBonRetVGestionF.CompteBonRetVGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteBonRetVGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteBonRetVGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TBonRetVGestionF.AddCompteBonRetGBtnClick(Sender: TObject);
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

procedure TBonRetVGestionF.AddClientBonRetGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 3 ;
ClientBonRetVGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredClientGlbl.Visible:= False;
NameClientGErrorP.Visible:= False;
end;

procedure TBonRetVGestionF.ModePaieBonRetVGCbxChange(Sender: TObject);
begin
RequiredMPGlbl.Visible:= False;
ModepPaiGErrorP.Visible:= False;
end;

procedure TBonRetVGestionF.ModePaieBonRetVGCbxClick(Sender: TObject);
begin
  if ModePaieBonRetVGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieBonRetVGCbx.Text)+')'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteBonRetVGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;



  ModePaieBonRetVGCbxChange(Sender);
end;

procedure TBonRetVGestionF.ModePaieBonRetVGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieBonRetVGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieBonRetVGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
end;

procedure TBonRetVGestionF.CompteBonRetVGCbxChange(Sender: TObject);
begin
CompteBonRetVGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonRetVGestionF.ValiderBVRetBonRetGBtnClick(Sender: TObject);
begin
  if ClientBonRetVGCbx.Text <> '' then
  begin

   if ModePaieBonRetVGCbx.Text <> '' then
   begin

    if CompteBonRetVGCbx.Text <> '' then
    begin


      if  RequiredClientGlbl.Visible <> True then
      begin

           //-------- Show the splash screan for the adding comptes ---------//
       FSplashVersement:=TFSplashVersement.Create(self);
       FSplashVersement.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashVersement.Width div 2);
       FSplashVersement.Top:=  MainForm.Top + 5 ;

      FSplashVersement.OldCreditVersementSLbl.Caption:= BonRetGClientOLDCredit.Caption;


        FSplashVersement.MontantTTCVersementSLbl.Caption:= FloatToStrF((
             (StrToFloat (StringReplace(BonRetTotalTTCLbl.Caption, #32, '', [rfReplaceAll])))
           //  -
          //   (StrToFloat (StringReplace(BonRetRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

        FSplashVersement.VerVersementSEdt.Text:=FloatToStrF((

             (StrToFloat (StringReplace(BonRetRegleLbl.Caption, #32, '', [rfReplaceAll])))
             ),ffNumber,14,2);

       FSplashVersement.Tag := 1 ;
       FSplashVersement.OKVersementSBtn.Tag:= 0 ;

       AnimateWindow(FSplashVersement.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashVersement.Show;


       end else
           begin
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              ClientBonRetVGCbx.StyleElements:= [];
              RequiredClientGlbl.Caption:= 'Ce Client est bloqué' ;
              RequiredClientGlbl.Visible:= True;
              NameClientGErrorP.Visible:= True;
              ClientBonRetVGCbx.SetFocus;
           end;

          end else
              begin
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                CompteBonRetVGCbx.StyleElements:= [];
                RequiredCompteGlbl.Visible:= True;
                CompteGErrorP.Visible:= True;
                CompteBonRetVGCbx.SetFocus;
              end;

     end else
     begin

            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            ModePaieBonRetVGCbx.StyleElements:= [];
            RequiredMPGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonRetVGCbx.SetFocus;

     end;

    end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonRetVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonRetVGCbx.SetFocus;
    end;

end;

procedure TBonRetVGestionF.RemiseBonRetVGEdtKeyPress(Sender: TObject; var Key: Char);
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
  if (Key = '.') AND (Pos(Key, (RemiseBonRetVGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonRetVGestionF.RemiseBonRetVGEdtExit(Sender: TObject);
var
RemiseBonRetG: Double;
begin
  if RemiseBonRetVGEdt.Text<>'' then
  begin
  RemiseBonRetG:=StrToFloat(StringReplace(RemiseBonRetVGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonRetVGEdt.Text := FloatToStrF(RemiseBonRetG,ffNumber,14,2);
  end;
end;

procedure TBonRetVGestionF.RemiseBonRetVGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonRetVGEdt.Text := StringReplace(RemiseBonRetVGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonRetVGEdt.SelectAll;
end;

procedure TBonRetVGestionF.RemiseBonRetVGEdtChange(Sender: TObject);
var RemiseBonRetG,BonRTotalHT,BonRTotalTVA,OLDTTC : Double;
begin
if RemiseBonRetVGEdt.Focused then
 begin

      if RemiseBonRetVGEdt.Text<>'' then
     begin
     RemiseBonRetG:=StrToFloat (StringReplace(RemiseBonRetVGEdt.Text, #32, '', [rfReplaceAll]));
     end;

     if (RemiseBonRetVGEdt.Text<>'') AND (RemiseBonRetG<>0) then
    begin
       if RemiseTypeBonRetGCbx.ItemIndex = 0 then
       begin
         if BonRetTotalHTLbl.Caption<>'' then
         begin
         BonRTotalHT:=StrToFloat (StringReplace(BonRetTotalHTLbl.Caption, #32, '', [rfReplaceAll]))  ;
         end;
         if BonRetTotalTVALbl.Caption<>'' then
         begin
          BonRTotalTVA:=StrToFloat (StringReplace(BonRetTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
         end;
         RemisePerctageBonRetVGEdt.Text := FloatToStrF(((RemiseBonRetG / BonRTotalHT) * 100),ffNumber,14,2) ;
           end;

      if RemiseTypeBonRetGCbx.ItemIndex = 1 then
        begin
         if BonRVTotalTTCNewLbl.Caption<>'' then
         begin
          OLDTTC:=StrToFloat (StringReplace(BonRVTotalTTCNewLbl.Caption, #32, '', [rfReplaceAll]));
         end;
        RemisePerctageBonRetVGEdt.Text := FloatToStrF(((RemiseBonRetG / OLDTTC) * 100),ffNumber,14,2) ;


        end;

    end else
        begin
          BonRVRemiseHTNewLbl.Caption:='0';
          RemisePerctageBonRetVGEdt.Text:='';
          BonRVTotalHTNewLbl.Caption:=BonRetTotalHTLbl.Caption;
        end;
 end;
end;

procedure TBonRetVGestionF.RemisePerctageBonRetVGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonRetVGEdt.Text := StringReplace(RemisePerctageBonRetVGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonRetVGEdt.SelectAll;
end;

procedure TBonRetVGestionF.RemisePerctageBonRetVGEdtChange(Sender: TObject);
var BonRTotalHT,RemisePerctageBonRet,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldClientCredit : Double;
begin
//------ this is to set the remise on tyhe prix HT ---------//

   //-- use this code to HT TVA calculation
      if RemiseTypeBonRetGCbx.ItemIndex = 0 then
       begin
        if RemisePerctageBonRetVGEdt.Text<>''  then
        begin
            if RemisePerctageBonRetVGEdt.Text <> '' then
            begin
            RemisePerctageBonRet:=StrToFloat(StringReplace(RemisePerctageBonRetVGEdt.Text, #32, '', [rfReplaceAll]));
            end;
            if BonRetTotalHTLbl.Caption<>'' then
            begin
            BonRTotalHT:=StrToFloat (StringReplace(BonRetTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
            end;
            if TotalTVANewLbl.Caption <> '' then
            begin
            TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonRetTotalTVALbl.Caption:= FloatToStrF(Round(TotalTVANet - (( TotalTVANet  * RemisePerctageBonRet)/(100))),ffNumber,14,2); //TVA
         BonRVTotalHTNewLbl.Caption:= FloatToStrF(Round(BonRTotalHT - (( BonRTotalHT  * RemisePerctageBonRet)/(100))),ffNumber,14,2); //HT
            if BonRVTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonRetTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonRetTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonRetTotalTTCLbl.Caption:=  FloatToStrF(Round(NewHT + NewTVA),ffNumber,14,2); // TTC
//         BonRetResteLbl.Caption:= BonRetTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonRetVGEdt.Focused then
            begin
            RemiseBonRetVGEdt.Text:=FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);
            end;

        BonRVRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonRetGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonRetGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonRetGClientNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldClientCredit)),ffNumber,14,2);

        end else
          begin
           if BonRetTotalHTLbl.Caption<>'' then
           begin
           BonRTotalHT:=StrToFloat (StringReplace(BonRetTotalHTLbl.Caption, #32, '', [rfReplaceAll]));
           end;
           if TotalTVANewLbl.Caption <> '' then
           begin
           TotalTVANet:=StrToFloat(StringReplace(TotalTVANewLbl.Caption, #32, '', [rfReplaceAll]));
           end;
            BonRetTotalTTCLbl.Caption:=FloatToStrF((BonRTotalHT + TotalTVANet ),ffNumber,14,2);
//            BonRetResteLbl.Caption:= BonRetTotalTTCLbl.Caption;
            BonRetTotalTVALbl.Caption := TotalTVANewLbl.Caption;
            RemiseBonRetVGEdt.Text:='';
            BonRVRemiseHTNewLbl.Caption:='0';
            BonRVTotalHTNewLbl.Caption:=BonRetTotalHTLbl.Caption;

            if BonRetGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonRetGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonRetGClientOLDCredit.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonRetTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
            end;
//          BonRetGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
          end;
       end;
       //------ this is to set the remise on the prix TTC only ---------//
       if RemiseTypeBonRetGCbx.ItemIndex = 1 then
       begin
        if RemisePerctageBonRetVGEdt.Text<>'' then
        begin
             if RemisePerctageBonRetVGEdt.Text <> '' then
            begin
            RemisePerctageBonRet:=StrToFloat(StringReplace(RemisePerctageBonRetVGEdt.Text, #32, '', [rfReplaceAll]));
            end;
             if TotalTVANewLbl.Caption <>'' then
            begin
            NewTVA:=StrToFloat (StringReplace(TotalTVANewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonRetTotalHTLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRetTotalHTLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         BonRetTotalTVALbl.Caption:= FloatToStrF(( NewTVA - ((RemisePerctageBonRet/100) * NewTVA)),ffNumber,14,2);
         BonRVTotalHTNewLbl.Caption:= FloatToStrF(( NewHT - ((RemisePerctageBonRet/100) * NewHT)),ffNumber,14,2);
         BonRetTotalTTCLbl.Caption:= FloatToStrF((( NewHT - ((RemisePerctageBonRet/100) * NewHT))+( NewTVA - ((RemisePerctageBonRet/100) * NewTVA))),ffNumber,14,2);
            if BonRVTotalTTCNewLbl.Caption <>'' then
            begin
            OldTTC:=StrToFloat (StringReplace(BonRVTotalTTCNewLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
            if BonRetTotalTTCLbl.Caption <>'' then
            begin
            NewTTC:=StrToFloat (StringReplace(BonRetTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));  //TTC
            end;
         if RemisePerctageBonRetVGEdt.Focused then
         begin
         RemiseBonRetVGEdt.Text:= FloatToStrF((OldTTC - NewTTC),ffNumber,14,2); //RemiseAMount
         end;


//         BonRetResteLbl.Caption:=BonRetTotalTTCLbl.Caption;

           if BonRetTotalHTLbl.Caption <>'' then
            begin
            BonRTotalHT:=StrToFloat (StringReplace(BonRetTotalHTLbl.Caption , #32, '', [rfReplaceAll]));
            end;

         NewHT:=StrToFloat (StringReplace(BonRVTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));  //

        BonRVRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonRetGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonRetGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

//        BonRetGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonRetVGEdt.Text:='';
             BonRVRemiseHTNewLbl.Caption:='0';
             BonRetTotalTTCLbl.Caption := BonRVTotalTTCNewLbl.Caption;
//             BonRetResteLbl.Caption:=BonRetTotalTTCLbl.Caption;
             BonRetTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonRVTotalHTNewLbl.Caption:=BonRetTotalHTLbl.Caption;

              if BonRetGClientOLDCredit.Caption <>'' then
              begin
              OldClientCredit:=StrToFloat (StringReplace(BonRetGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonRetGClientOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonRetTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
//              BonRetGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
          //   BonRetGClientNEWCredit.Caption:= BonRetTotalTTCLbl.Caption;
            end;
      end;
end;

procedure TBonRetVGestionF.RemiseTypeBonRetGCbxChange(Sender: TObject);
begin
RemiseBonRetVGEdt.Text:='';
RemisePerctageBonRetVGEdt.Text:='';
end;

procedure TBonRetVGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonRetGCbx.Clear;
ProduitBonRetGCbx.SetFocus;
ProduitBonRetGCbx.EditText:= '0';
end;

procedure TBonRetVGestionF.RemisePerctageBonRetVGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (RemisePerctageBonRetVGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TBonRetVGestionF.EditBVRetBonRetGBtnClick(Sender: TObject);
  Var CodeBR : Integer;
 begin
   codeBR:= DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;
                 //------- This is to delete data from tre and reg ih not valide----------------------------------------------
               if (codeBR <> 0) AND (codeBR <> null) then
               begin
                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvret = ' + IntToStr(codeBR));
                  MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvret = ' + IntToStr(codeBR));
                  MainForm.RegClientTable.Refresh ;
                  MainForm.Opt_cas_bnk_CaisseTable.Refresh ;
               end;


 // this is to enable the componets to edit the bon
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
  EnableBonRetV;
 // this is to unvalider the bon
  begin
  DataModuleF.Bonv_retTable.Edit;
  DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean:= False;
  DataModuleF.Bonv_retTable.Post;
  end;

// use this code to rest the old credit to the to the last time before he pay anything in that bon so you can aclculate again
  BonRetGClientOLDCredit.Caption:=
  CurrToStrF((((MainForm.ClientTable.FieldValues['credit_c'])-(StringReplace(BonRetResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

        begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldByName('credit_c').AsFloat:= (MainForm.ClientTable.FieldByName('credit_c').AsFloat) - (DataModuleF.Bonv_retTable.FieldByName('MontantRes').AsFloat);
      MainForm.ClientTable.Post;
      end;

  BonRetRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonRetResteLbl.Caption:= BonRetTotalTTCLbl.Caption;

      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;
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
            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
            +' FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvretl,code_p,  qut_p, cond_p  FROM bonv_ret_list WHERE code_bvret =  '
                                                 + IntToStr (DataModuleF.Bonv_retTable.FieldValues['code_bvret'])
                                                 + 'GROUP BY code_bvretl, code_p, qut_p, cond_p ' ;
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
            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
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
            +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
            +' FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           DataModuleF.Bonv_retTable.Refresh;
     end;


     ClientBonRetVGCbxExit(Sender);

end;

procedure TBonRetVGestionF.AddBVRetBonRetGBtnClick(Sender: TObject);
var
  codeBR,CodeCB : integer;
begin
      begin
     ClientBonRetVGCbx.Clear;
     ModePaieBonRetVGCbx.Clear;
     CompteBonRetVGCbx.Clear;
     NChequeBonRetVGCbx.Clear;
 //    ClientBonRetVGCbx.SetFocus;
   end;

   MainForm.ProduitTable.Refresh;
   MainForm.ClientTable.Refresh;
   DataModuleF.Bonv_retTable.Refresh;
   DataModuleF.Bonv_ret_listTable.Refresh;
   MainForm.Mode_paiementTable.Refresh;
   MainForm.CompteTable.Refresh;
   BonRetPListDataS.DataSet.Refresh;
   DataModuleF.BonRetVListDataS.DataSet.Refresh;
   Refresh;

   ModePaieBonRetVGCbx.Refresh;
   CompteBonRetVGCbx.Refresh;

   EnableBonRetV;

 codeBR:= 0;
   //   BonRetVGestionF := TBonRetVGestionF.Create(BonRetVGestionF);
     if DataModuleF.Bonv_retTable.RecordCount <= 0 then
      begin

        DataModuleF.Bonv_retTable.Insert;
        DataModuleF.Bonv_retTable.FieldValues['code_bvret']:=1;
        DataModuleF.Bonv_retTable.FieldValues['num_bvret']:= 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        DataModuleF.Bonv_retTable.FieldValues['date_bvret']:= DateOf(Today);
        DataModuleF.Bonv_retTable.FieldValues['time_bvret']:=TimeOf(Now);
        DataModuleF.Bonv_retTable.Post;
        codeBR := DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
      end else
          begin
            DataModuleF.Bonv_retTable.Last;
            codeBR := DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
            DataModuleF.Bonv_ret_listTable.Active:=False;
            DataModuleF.Bonv_ret_listTable.SQL.Clear;
            DataModuleF.Bonv_ret_listTable.SQL.Text:= BRVLSQL+ ' WHERE code_bvret = ' + QuotedStr(IntToStr(codeBR));
            DataModuleF.Bonv_ret_listTable.Active:=True;

           if DataModuleF.Bonv_ret_listTable.RecordCount <= 0 then
           begin
        //   DataModuleF.Bonv_retTable.Last;
           codeBR := DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
           end else
           begin
        //   DataModuleF.Bonv_retTable.Last;
          // codeBR := DataModuleF.Bonv_retTable.FieldValues['code_bvret'];
           DataModuleF.Bonv_retTable.Insert;
           DataModuleF.Bonv_retTable.FieldValues['code_bvret']:= codeBR + 1;
           DataModuleF.Bonv_retTable.FieldValues['num_bvret']:=  'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBR + 1)]);
           DataModuleF.Bonv_retTable.FieldValues['date_bvret']:= DateOf(Today);
           DataModuleF.Bonv_retTable.FieldValues['time_bvret']:= TimeOf(Now);
           DataModuleF.Bonv_retTable.Post;

           end;
//            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;



//-- use this code to make the montants look lake money values-------//
    BonRetTotalHTLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
//    RemiseBonRetVGEdt.Text :=       FloatToStrF(StrToInt64(RemiseBonRetVGEdt.Text),ffNumber,14,2) ;
BonRetTotalTVALbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
BonRetTotalTTCLbl.Caption :=      FloatToStrF(0,ffNumber,14,2) ;
BonRetResteLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
BonRetRegleLbl.Caption :=         FloatToStrF(0,ffNumber,14,2) ;
BonRetGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
BonRetGClientNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;

 CodeCB:= DataModuleF.Bonv_retTable.FieldValues['code_bvret']   ;
 NumBonRetVGEdt.Caption := 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     ClientBonRetVGCbx.SetFocus;

     Tag:=0;

     DataModuleF.Bonv_ret_listTable.Refresh;

end;

procedure TBonRetVGestionF.ClientBonRetVGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonRetVGestionF.ClientBonRetVGCbxSelect(Sender: TObject);
var CodeC: Integer;
begin

      if ClientBonRetVGCbx.Text <> '' then
    begin
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonRetVGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;

      CodeC:= MainForm.SQLQuery.FieldByName('code_c').AsInteger ;

        //Here we pot code_f in bonrec table
        DataModuleF.Bonv_retTable.Edit;
        DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger := CodeC;
        DataModuleF.Bonv_retTable.Post;

      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
     end;

end;

procedure FullfillFormBonRetV;
begin
   if DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = True then
  begin
       FSplashVersement.DisableBonRetV;
  end;
  if DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = False then
   begin
     BonRetVGestionF.EnableBonRetV;
    end;


  if (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger<> 0) AND (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger<> null) then
  begin
  BonRetVGestionF.ClientBonRetVGCbx.Text:=DataModuleF.Bonv_retTable.FieldByName('clientbvret').AsWideString;
  end;
  if (DataModuleF.Bonv_retTable.FieldByName('code_mdpai').AsInteger<> 0) AND (DataModuleF.Bonv_retTable.FieldByName('code_mdpai').AsInteger<>null)  then
  begin
  BonRetVGestionF.ModePaieBonRetVGCbx.Text:=DataModuleF.Bonv_retTable.FieldByName('ModePaie').AsString;
  end;
  if (DataModuleF.Bonv_retTable.FieldByName('code_cmpt').AsInteger<> 0) AND (DataModuleF.Bonv_retTable.FieldByName('code_cmpt').AsInteger<>null)  then
  begin
  BonRetVGestionF.CompteBonRetVGCbx.Text:=DataModuleF.Bonv_retTable.FieldByName('Compte').AsString;
  end;

  if  (DataModuleF.Bonv_retTable.FieldByName('MontantRes').AsFloat<>null)  then
  begin
  BonRetVGestionF.BonRetResteLbl.Caption:=CurrToStrF(((DataModuleF.Bonv_retTable.FieldByName('MontantRes').AsFloat)),ffNumber,2) ;
  end;

  BonRetVGestionF.NumBonRetVGEdt.Caption:= DataModuleF.Bonv_retTable.FieldByName('num_bvret').AsString;
  BonRetVGestionF.DateBonRetVGD.DateTime:= DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime;
  BonRetVGestionF.ObserBonRetVGMem.Text:= DataModuleF.Bonv_retTable.FieldByName('obser_bvret').AsString;

   if DataModuleF.Bonv_ret_listTable.ControlsDisabled  then
   begin
     DataModuleF.Bonv_ret_listTable.EnableControls;
   end;
end;

procedure TBonRetVGestionF.sSpeedButton10Click(Sender: TObject);
begin

  if (ClientBonRetVGCbx.Text <> '')
    and (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> 0)
    and (DataModuleF.Bonv_retTable.FieldValues['code_c'] <> Null )  then

    begin
    DataModuleF.Bonv_retTable.First;
  //  DataModuleF.Bonv_retTable.Refresh;
    DataModuleF.Bonv_ret_listTable.Refresh;

     FullfillFormBonRetV();
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonRetVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonRetVGCbx.SetFocus;
  end

end;

procedure TBonRetVGestionF.sSpeedButton9Click(Sender: TObject);
begin
  if (ClientBonRetVGCbx.Text <> '')
    and (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> 0)
    and (DataModuleF.Bonv_retTable.FieldValues['code_c'] <> Null )  then

    begin
    DataModuleF.Bonv_retTable.Prior;
    //DataModuleF.Bonv_retTable.Refresh;
    DataModuleF.Bonv_ret_listTable.Refresh;

    FullfillFormBonRetV();
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonRetVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonRetVGCbx.SetFocus;
  end
end;

procedure TBonRetVGestionF.sSpeedButton8Click(Sender: TObject);
begin

  if (ClientBonRetVGCbx.Text <> '')
    and (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> 0)
    and (DataModuleF.Bonv_retTable.FieldValues['code_c'] <> Null )  then

    begin
    DataModuleF.Bonv_retTable.Next;
    //DataModuleF.Bonv_retTable.Refresh;
    DataModuleF.Bonv_ret_listTable.Refresh;

    FullfillFormBonRetV();
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonRetVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonRetVGCbx.SetFocus;
  end
end;

procedure TBonRetVGestionF.sSpeedButton7Click(Sender: TObject);
begin

  if (ClientBonRetVGCbx.Text <> '')
    and (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger <> 0)
    and (DataModuleF.Bonv_retTable.FieldValues['code_c'] <> Null )  then

    begin
    DataModuleF.Bonv_retTable.Last;
    //DataModuleF.Bonv_retTable.Refresh;
    DataModuleF.Bonv_ret_listTable.Refresh;

    FullfillFormBonRetV();
  end else
    begin
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      ClientBonRetVGCbx.StyleElements:= [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer le nom de le Client' ;
      RequiredClientGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;

      ClientBonRetVGCbx.SetFocus;
  end
end;

procedure TBonRetVGestionF.ClientBonRetVGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece
      ModePaieBonRetVGCbxDropDown(Self);
      if Tag = 0 then
      begin
      ModePaieBonRetVGCbx.ItemIndex:=0;
      ModePaieBonRetVGCbxClick(Self) ;
      end;
end;




procedure TBonRetVGestionF.RemisePerctageBonRetVGEdtEnter(Sender: TObject);
begin
DataModuleF.Bonv_ret_listTable.Refresh;
 RemisePerctageBonRetVGEdtChange(Sender);
end;

procedure TBonRetVGestionF.RemiseBonRetVGEdtEnter(Sender: TObject);
begin
DataModuleF.Bonv_ret_listTable.Refresh;
 RemisePerctageBonRetVGEdtChange(Sender);
end;

procedure TBonRetVGestionF.ProduitsListDBGridEhExit(Sender: TObject);
var key : Char;
begin
Refresh_PreservePosition;
end;

procedure TBonRetVGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (DataModuleF.Bonv_ret_listTable.RecNo=DataModuleF.Bonv_ret_listTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;
end;

procedure TBonRetVGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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

procedure TBonRetVGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_br') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_br');
   end;


DataModuleF.Bonv_ret_listTable.Active:=True;
if Assigned(ProduitsListF) then
  begin
   ProduitsListF.ResearchProduitsEdt.Text:='';
   MainForm.ProduitTable.Filtered:= False;
   end;
end;




procedure TBonRetVGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  Close;

 end;
end;

procedure TBonRetVGestionF.GettingDataSansTax;
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

    Name:= BonRetPListSanTAXfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonRetPListSanTAXfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonRetPListSanTAXfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonRetPListSanTAXfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonRetPListSanTAXfrxRprt.FindObject('Logo') as TfrxPictureView;
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

    str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonRetTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
    str1[1] := Upcase(str1[1]);
    MoneyWordRX := BonRetPListSanTAXfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
    MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

    NumRX:= BonRetPListSanTAXfrxRprt.FindObject('NumRX') as TfrxMemoView;
    NumRX.Text:= NumBonRetVGEdt.Caption;

    DateRX:= BonRetPListSanTAXfrxRprt.FindObject('DateRX') as TfrxMemoView;
    DateRX.Text:= DateToStr(DateBonRetVGD.Date);

    NameRX:= BonRetPListSanTAXfrxRprt.FindObject('NameRX') as TfrxMemoView;
    NameRX.Text:= ClientBonRetVGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_v,willaya_c ,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonRetPListSanTAXfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonRetPListSanTAXfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_v').AsString;

      WilayaRX:= BonRetPListSanTAXfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonRetPListSanTAXfrxRprt.FindObject('MPRX') as TfrxMemoView;
    MPRX.Text:= ModePaieBonRetVGCbx.Text;

    NCHeqRX:= BonRetPListSanTAXfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
    NCHeqRX.Text:= NChequeBonRetVGCbx.Text;

    OLDCredit:= BonRetPListSanTAXfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
    OLDCredit.Text:= BonRetGClientOLDCredit.Caption;


    NEWCredit:= BonRetPListSanTAXfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
    NEWCredit.Text:= BonRetGClientNEWCredit.Caption;

 end;

procedure TBonRetVGestionF.GettingData;
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

    Name:= BonRetPListfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonRetPListfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

    Mob:= BonRetPListfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

    Adr:= BonRetPListfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonRetPListfrxRprt.FindObject('Logo') as TfrxPictureView;
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

  str1:= MontantEnToutesLettres(StrToFloat(StringReplace(BonRetTotalTTCLbl.Caption, #32, '', [rfReplaceAll])));
  str1[1] := Upcase(str1[1]);
  MoneyWordRX := BonRetPListfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonRetPListfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonRetVGEdt.Caption;

  DateRX:= BonRetPListfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonRetVGD.Date);

  NameRX:= BonRetPListfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonRetVGCbx.Text;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT code_c,adr_c,ville_v,willaya_c ,rc_c,nart_c,nif_c,nis_c FROM client WHERE code_c ='
    + IntToStr(DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger);
    MainForm.SQLQuery.Active:=True;

    with MainForm.SQLQuery do
    begin
      AdrRX:= BonRetPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
      AdrRX.Text:= FieldByName('adr_c').AsString;

      VilleRX:= BonRetPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
      VilleRX.Text:= FieldByName('ville_v').AsString;

      WilayaRX:= BonRetPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
      WilayaRX.Text:=  FieldByName('willaya_c').AsString;
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;

    MPRX:= BonRetPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonRetVGCbx.Text;

    NCHeqRX:= BonRetPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonRetVGCbx.Text;


        OLDCredit:= BonRetPListfrxRprt.FindObject('OLDCredit') as TfrxMemoView;
  OLDCredit.Text:= BonRetGClientOLDCredit.Caption;


      NEWCredit:= BonRetPListfrxRprt.FindObject('NEWCredit') as TfrxMemoView;
  NEWCredit.Text:= BonRetGClientNEWCredit.Caption;

 end;


procedure TBonRetVGestionF.sSpeedButton4Click(Sender: TObject);
begin
   GettingData;
DataModuleF.Bonv_ret_listTable.DisableControls;
BonRetPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Bon de Retour Client N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger)]);
BonRetPListfrxRprt.Export(frxXLSExport1);
DataModuleF.Bonv_ret_listTable.EnableControls;
end;

procedure TBonRetVGestionF.sSpeedButton6Click(Sender: TObject);
begin
 GettingData;
DataModuleF.Bonv_ret_listTable.DisableControls;
BonRetPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Bon de Retour Client N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger)]);

frxPDFExport1.EmbeddedFonts:=True;

BonRetPListfrxRprt.Export(frxPDFExport1);

DataModuleF.Bonv_ret_listTable.EnableControls;
end;

procedure TBonRetVGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonRetVGestionF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
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
//  if  (DataModuleF.Bonv_ret_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bonv_ret_listTable.FieldByName('prixvd_p').AsFloat )
//    OR(DataModuleF.Bonv_ret_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bonv_ret_listTable.FieldByName('prixvr_p').AsFloat )
//    OR(DataModuleF.Bonv_ret_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bonv_ret_listTable.FieldByName('prixvg_p').AsFloat )
//    OR(DataModuleF.Bonv_ret_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bonv_ret_listTable.FieldByName('prixva_p').AsFloat )
//    OR(DataModuleF.Bonv_ret_listTable.FieldByName('prixht_p').AsFloat > DataModuleF.Bonv_ret_listTable.FieldByName('prixva2_p').AsFloat )
//         then
// begin
// ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
// ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;
end;

end.
