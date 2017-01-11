unit UBonLivGestion;

interface

uses
  Winapi.Windows,System.DateUtils,Winapi.MMSystem, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus;

type
  TBonLivGestionF  = class(TForm)
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
    Shape5: TShape;
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
    BonLivPListBonSIMPLEfrxRprt: TfrxReport;
    N1: TMenuItem;
    RequiredMPGlbl: TLabel;
    RequiredCompteGlbl: TLabel;
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
    procedure cxComboBox1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure B1Click(Sender: TObject);
    procedure BondeRception1Click(Sender: TObject);
    procedure BondeCaisseSimple1Click(Sender: TObject);
    procedure ModePaieBonLivGCbxChange(Sender: TObject);
  private
    { Private declarations }
    procedure GettingData;
    procedure GettingDataSansTax;
    procedure GettingDataBonSimple;
  public
    { Public declarations }
     procedure EnableBonLiv;
  end;

var
  BonLivGestionF : TBonLivGestionF ;

implementation

uses   WinSpool,Vcl.Imaging.jpeg,
  StringTool, UMainF, USplashAddUnite, UClientsList, UClientGestion, USplashAddCompte,
  UFastProduitsList, UProduitsList, USplashVersement, UBonLiv, UProduitGestion;

  {$R *.dfm}

//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin
   ds := TDBGridEh(BonLivGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonLivGestionF.ProduitsListDBGridEh).Row;
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

 procedure TBonLivGestionF .EnableBonLiv;
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
      DeleteProduitBonLivGBtn.Enabled:= True;
      DeleteProduitBonLivGBtn.ImageIndex:=14;//36 fo D
      ClearProduitBonLivGBtn.Enabled:= True;
      ClearProduitBonLivGBtn.ImageIndex:=16;//39 fo A
      ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
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

procedure TBonLivGestionF .FormShow(Sender: TObject);
var CodeBL: Integer;
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
 CodeBL:= MainForm.Bonv_livTable.FieldValues['code_bvliv']   ;
    NumBonLivGEdt.Caption := 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeBL]);
  if (MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> null)
  AND(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger <> 0) then
 begin
   ClientBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldValues['clientbvliv'];
   ProduitBonLivGCbx.SetFocus;
 end else
     begin
       ClientBonLivGCbx.SetFocus;
     end;
 end;
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonLivGClientOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonLivGClientOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonLivGClientNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonLivGClientNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
end;

procedure TBonLivGestionF .FormClose(Sender: TObject; var Action: TCloseAction);
begin
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


          MainForm.Bonv_liv_listTable.Active:=false;
          MainForm.Bonv_liv_listTable.SQL.Clear;
          MainForm.Bonv_liv_listTable.SQL.Text:='Select * FROM bonv_liv_list' ;
          MainForm.Bonv_liv_listTable.Active:=True;
          MainForm.Bonv_liv_listTable.EnableControls;

  MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

//  FormatSettings.DecimalSeparator := '.';
end;

procedure TBonLivGestionF .FormCloseQuery(Sender: TObject;
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
          MainForm.Bonv_livTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_livTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_livTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_livTable.FieldValues['obser_bvliv']:= ObserBonLivGMem.Text;
          MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv']:= NChequeBonLivGCbx.Text;
          MainForm.Bonv_livTable.FieldByName('montht_bvliv').AsCurrency:= StrToCurr(StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonLivGEdt.Text<>'' then
          begin
             MainForm.Bonv_livTable.FieldByName('remise_bvliv').AsCurrency:=StrToCurr(StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_livTable.FieldByName('remise_bvliv').AsCurrency:=0;
                   end;


          MainForm.Bonv_livTable.FieldByName('montver_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montttc_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

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
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBL));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBL));
              MainForm.RegclientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

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
          MainForm.Bonv_livTable.FieldValues['code_c']:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
          MainForm.Bonv_livTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bonv_livTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bonv_livTable.FieldValues['obser_bvliv']:= ObserBonLivGMem.Text;
          MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv']:= NChequeBonLivGCbx.Text;
          MainForm.Bonv_livTable.FieldByName('montht_bvliv').AsCurrency:= StrToCurr(StringReplace(BonLivTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonLivGEdt.Text<>'' then
          begin
             MainForm.Bonv_livTable.FieldByName('remise_bvliv').AsCurrency:=StrToCurr(StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bonv_livTable.FieldByName('remise_bvliv').AsCurrency:=0;
                   end;


          MainForm.Bonv_livTable.FieldByName('montver_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bonv_livTable.FieldByName('montttc_bvliv').AsCurrency:=StrToCurr(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

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
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv = ' + IntToStr(codeBL));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv = ' + IntToStr(codeBL));
              MainForm.RegclientTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;

     CanClose:= True;
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

procedure TBonLivGestionF .ProduitBonLivGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonLivGCbx.Refresh;
      ProduitBonLivGCbx.Properties.Items.Clear;
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
       ProduitBonLivGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonLivGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;

end;

procedure TBonLivGestionF .ProduitBonLivGCbxExit(Sender: TObject);
begin
ProduitBonLivGCbx.Text:='';
//ProduitBonLivGCbx.AutoDropDown:=False;
end;

procedure TBonLivGestionF .ProduitBonLivGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
//  ProduitBonLivGCbx.AutoDropDown:= True;
  end;

end;

procedure TBonLivGestionF .ProduitBonLivGCbxKeyPress(Sender: TObject;
  var Key: Char);
  var CodeBL,CodeCB,CodeP : Integer;
      lookupResultRefP : Variant;
      NomP: String;
begin
 if key = #13 then
 begin
 if ProduitBonLivGCbx.Text <>'' then
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
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonLivGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonv_liv_listTable.DisableControls;
            MainForm.Bonv_liv_listTable.IndexFieldNames:='';
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list ORDER by code_bvlivl' ;
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
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:=  MainForm.ProduitTable.FieldValues['tva_p'] ;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonLivGCbx.Text<> '' ) then
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


             MainForm.Bonv_liv_listTable.Post ;
             MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
            MainForm.Bonv_liv_listTable.Active:=True;

            ProduitBonLivGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
      if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
      begin
      NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=2;
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
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonLivGCbx.Text)+')';
            MainForm.ProduitTable.Active:=True;
            CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bonv_liv_listTable.DisableControls;
            MainForm.Bonv_liv_listTable.IndexFieldNames:='';
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list' ;
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
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:=  MainForm.ProduitTable.FieldValues['tva_p'] ;

            if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonLivGCbx.Text<> '' ) then
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


             MainForm.Bonv_liv_listTable.Post ;
             MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
            MainForm.Bonv_liv_listTable.Active:=True;
            MainForm.Bonv_liv_listTable.EnableControls;

            ProduitBonLivGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
            if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=2;
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

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonLivGCbx.Text)+')';
    MainForm.ProduitTable.Active:=True;
    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

     if  (MainForm.ProduitTable.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bonv_liv_listTable.DisableControls;
            MainForm.Bonv_liv_listTable.IndexFieldNames:='';
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list' ;
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
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:=  MainForm.ProduitTable.FieldValues['tva_p'] ;
           if  NOT (MainForm.ClientTable.IsEmpty) AND (ClientBonLivGCbx.Text<> '' ) then
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

             MainForm.Bonv_liv_listTable.Post ;
             MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

             MainForm.Bonv_liv_listTable.Active:=False;
             MainForm.Bonv_liv_listTable.SQL.Clear;
             MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
             MainForm.Bonv_liv_listTable.Active:=True;
             MainForm.Bonv_liv_listTable.EnableControls;

            ProduitBonLivGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
            if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
            begin
            NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=2;
             end;
          end;

   end;
          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
          MainForm.ProduitTable.Active := True;

         MainForm.Bonv_liv_listTable.Refresh;
//        ProduitBonLivGCbx.AutoDropDown:=False;
         ProduitBonLivGCbx.SelectAll;

     end;
     MainForm.Bonv_liv_listTable.Last;
 end;

end;

procedure TBonLivGestionF .ClientBonLivGCbxEnter(Sender: TObject);
var
I : Integer;
  begin

          ClientBonLivGCbx.Items.Clear;
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client '  ;
          MainForm.ClientTable.Active:=True;

//       MainForm.ClientTable.Refresh;

         MainForm.ClientTable.first;

     for I := 0 to MainForm.ClientTable.RecordCount - 1 do
     if MainForm.ClientTable.FieldByName('nom_c').IsNull = False then
     begin
          ClientBonLivGCbx.Items.Add(MainForm.ClientTable.FieldByName('nom_c').AsString);
       MainForm.ClientTable.Next;
      end;

        MainForm.ClientTable.EnableControls;
end;

procedure TBonLivGestionF .ClientBonLivGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TBonLivGestionF .ClientBonLivGCbxExit(Sender: TObject);
var CodeC: Integer;
OLDCreditC,RegCCreditC,OLDCreditCINI : Currency;
begin
  if ClientBonLivGCbx.Text <> '' then
    begin
      ClientBonLivGCbxChange(Sender);
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;

     if NOT MainForm.ClientTable.IsEmpty then
     begin
      OLDCreditCINI:=MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency;

      if MainForm.ClientTable.FieldByName('activ_c').AsBoolean <> False then
      begin

        if (MainForm.ClientTable.IsEmpty) then
        begin
         ClientBonLivGCbx.Text := '';
         BonLivGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
         BonLivGClientNEWCredit.Caption:=BonLivGClientOLDCredit.Caption;
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

        if NOT (MainForm.Bonv_livTableCredit.IsEmpty ) OR NOT (MainForm.RegclientTable.IsEmpty) OR NOT (OLDCreditCINI = 0) then
        begin
         MainForm.Bonv_livTableCredit.last;
         BonLivGClientOLDCredit.Caption:= CurrToStrF(((OLDCreditC - RegCCreditC) + OLDCreditCINI ),ffNumber,2) ;

         if NOT (BonLivPListDataS.DataSet.IsEmpty) then
          begin
          if Tag = 0 then
           begin
           BonLivGClientNEWCredit.Caption:=
           CurrToStrF((MainForm.Bonv_livTableCredit.FieldByName('MontantRes').AsCurrency ) + StrToCurr(StringReplace(BonLivResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
           end else
               begin
                BonLivGClientNEWCredit.Caption:=
                CurrToStrF((MainForm.Bonv_livTableCredit.FieldByName('MontantRes').AsCurrency ) + StrToCurr(StringReplace(BonLivTotalTTCLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer


               end;

          end;
          end else
          begin
           BonLivGClientOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
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
        MainForm.RegclientTable.SQL.Text:='Select * FROM regclient ORDER BY time_rc '  ;
        MainForm.RegclientTable.Active:=True;
        MainForm.RegclientTable.EnableControls;

        MainForm.ClientTable.Active:=false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;
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
                MainForm.ClientTable.Active:=false;
                MainForm.ClientTable.SQL.Clear;
                MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
                MainForm.ClientTable.Active:=True;
                MainForm.ClientTable.EnableControls;
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

procedure TBonLivGestionF .ClientBonLivGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece

      ModePaieBonLivGCbxDropDown(Self);
      ModePaieBonLivGCbx.ItemIndex:=0;
      ModePaieBonLivGCbxClick(Self) ;

end;

procedure TBonLivGestionF .ModePaieBonLivGCbxDropDown(Sender: TObject);
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

procedure TBonLivGestionF .ModePaieBonLivGCbxClick(Sender: TObject);
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

procedure TBonLivGestionF .CompteBonLivGCbxChange(Sender: TObject);
begin
CompteBonLivGCbx.AutoDropDown:=True;

RequiredCompteGlbl.Visible:= False;
CompteGErrorP.Visible:= False;
end;

procedure TBonLivGestionF .CompteBonLivGCbxEnter(Sender: TObject);
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

procedure TBonLivGestionF .cxComboBox1Enter(Sender: TObject);
var
I : Integer;
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonLivGCbx.Refresh;
      ProduitBonLivGCbx.Properties.Items.Clear;
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
       ProduitBonLivGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonLivGCbx.Properties.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;

end;

procedure TBonLivGestionF .AddClientBonLivGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 3 ;
ClientBonLivGCbx.StyleElements:= [seFont,seBorder,seBorder];
RequiredClientGlbl.Visible:= False;
NameClientGErrorP.Visible:= False;
end;

procedure TBonLivGestionF .AddModePaieBonLivGBtnClick(Sender: TObject);
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

procedure TBonLivGestionF .AddCompteBonLivGBtnClick(Sender: TObject);
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

procedure TBonLivGestionF .EnterAddProduitBonLivGBtnClick(Sender: TObject);
var key : char  ;
begin
key := #13;
ProduitBonLivGCbxKeyPress(Sender, key);
end;

procedure TBonLivGestionF .ListAddProduitBonLivGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;
  //use this tag = 1 for adding from bon livration
  FastProduitsListF.Tag := 1;

 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
 // produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TBonLivGestionF .NewAddProduitBonLivGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TBonLivGestionF .DeleteProduitBonLivGBtnClick(Sender: TObject);
begin
 if  MainForm.Bonv_liv_listTable.RecordCount = 1 then
 begin
    MainForm.Bonv_liv_listTable.DisableControls;
    MainForm.Bonv_liv_listTable.Refresh;
    MainForm.Bonv_liv_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
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
      MainForm.Bonv_liv_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      MainForm.Bonv_liv_listTable.Refresh;
      MainForm.Bonv_liv_listTable.EnableControls;
     end;
end;

procedure TBonLivGestionF .ClearProduitBonLivGBtnClick(Sender: TObject);
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
begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingData;

BonLivPListfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;

procedure TBonLivGestionF.BondeCaisseSimple1Click(Sender: TObject);
begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataBonSimple;

BonLivPListBonSIMPLEfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListBonSIMPLEfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;

procedure TBonLivGestionF.BondeRception1Click(Sender: TObject);
begin
MainForm.Bonv_liv_listTable.DisableControls;
 GettingDataSansTax;

BonLivPListSansTaxfrxRprt.PrepareReport;
//BonLivPListfrxRprt.PrintOptions.ShowDialog := False;
BonLivPListSansTaxfrxRprt.ShowReport;

//BonLivPListfrxRprt.Print;   // this is to print directly
MainForm.Bonv_liv_listTable.EnableControls;
end;

procedure TBonLivGestionF .BonLivPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonLivPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonLivGBtn.Visible:= True;
    ClearProduitBonLivGBtn.Visible:= True;

    if (ClientBonLivGCbx.Text<>'') AND (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean <> True) then
    begin
    ValiderBVLivBonLivGBtn.Enabled:= True;
    ValiderBVLivBonLivGBtn.ImageIndex:=12;
    end;

   if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] <> True then
   begin

    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_liv_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;

    BonLivGOLDStock.Caption:=
      floatTostrF((MainForm.ProduitTable.FieldValues['QutDispo']),ffNumber,14,2);
    BonLivGNEWStock.Caption:=
      floatTostrF(((MainForm.ProduitTable.FieldValues['QutDispo'])-((MainForm.Bonv_liv_listTable.FieldValues['qut_p'])*(MainForm.Bonv_liv_listTable.FieldValues['cond_p']))),ffNumber,14,2);

    if(StrToFloat (StringReplace(BonLivGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
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

    RemisePerctageBonLivGEdt.Enabled:=True;
    RemiseBonLivGEdt.Enabled:=True;
    RemiseTypeBonLivGCbx.Enabled:= True;    

   end;
     ProduitsListDBGridEh.ReadOnly:=False;

    end else
    begin
    DeleteProduitBonLivGBtn.Visible:= False;
    ClearProduitBonLivGBtn.Visible:= False;
     Timer1.Enabled:=False;

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

procedure TBonLivGestionF .RemiseTypeBonLivGCbxChange(Sender: TObject);
begin
RemiseBonLivGEdt.Text:='';
RemisePerctageBonLivGEdt.Text:='';
end;

procedure TBonLivGestionF .RemisePerctageBonLivGEdtChange(Sender: TObject);
var BonLTotalHT,RemisePerctageBonLiv,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldClientCredit : Currency;
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
         BonLivTotalTVALbl.Caption:= FloatToStrF((TotalTVANet - (( TotalTVANet  * RemisePerctageBonLiv)/(100))),ffNumber,14,2); //TVA
         BonLTotalHTNewLbl.Caption:= FloatToStrF((BonLTotalHT - (( BonLTotalHT  * RemisePerctageBonLiv)/(100))),ffNumber,14,2); //HT
            if BonLTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonLTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonLivTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonLivTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonLivTotalTTCLbl.Caption:=  FloatToStrF((NewHT + NewTVA),ffNumber,14,2); // TTC
         BonLivResteLbl.Caption:= BonLivTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonLivGEdt.Focused then
            begin
            RemiseBonLivGEdt.Text:=FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);
            end;

        BonLRemiseHTNewLbl.Caption:= FloatToStrF((BonLTotalHT - NewHT),ffNumber,14,2);

            if BonLivGClientOLDCredit.Caption <>'' then
            begin
            OldClientCredit:=StrToFloat (StringReplace(BonLivGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

        BonLivGClientNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldClientCredit)),ffNumber,14,2);

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
            BonLivResteLbl.Caption:= BonLivTotalTTCLbl.Caption;
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
          BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
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


         BonLivResteLbl.Caption:=BonLivTotalTTCLbl.Caption;

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

        BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonLivGEdt.Text:='';
             BonLRemiseHTNewLbl.Caption:='0';
             BonLivTotalTTCLbl.Caption := BonLTotalTTCNewLbl.Caption;
             BonLivResteLbl.Caption:=BonLivTotalTTCLbl.Caption;
             BonLivTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonLTotalHTNewLbl.Caption:=BonLivTotalHTLbl.Caption;
             BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldClientCredit),ffNumber,14,2);

              if BonLivGClientOLDCredit.Caption <>'' then
              begin
              OldClientCredit:=StrToFloat (StringReplace(BonLivGClientOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonLivGClientOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonLivTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
           BonLivGClientNEWCredit.Caption:=  FloatToStrF((NewTTC + OldClientCredit),ffNumber,14,2);
            end;
      end;
end;

procedure TBonLivGestionF .RemisePerctageBonLivGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemisePerctageBonLivGEdt.Text := StringReplace(RemisePerctageBonLivGEdt.Text, #32, '', [rfReplaceAll]);
RemisePerctageBonLivGEdt.SelectAll;
end;

procedure TBonLivGestionF .RemisePerctageBonLivGEdtEnter(Sender: TObject);
begin
MainForm.Bonv_liv_listTable.Refresh;
 RemisePerctageBonLivGEdtChange(Sender);
end;

procedure TBonLivGestionF .RemisePerctageBonLivGEdtKeyPress(Sender: TObject;
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

procedure TBonLivGestionF .RemiseBonLivGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
begin

  if not(Key in N) then
  begin
     key := #0;
  end;
end;

procedure TBonLivGestionF .RemiseBonLivGEdtExit(Sender: TObject);
var
RemiseBonLivG: Currency;
begin
  if RemiseBonLivGEdt.Text<>'' then
  begin
  RemiseBonLivG:=StrToFloat(StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]));
  RemiseBonLivGEdt.Text := FloatToStrF(RemiseBonLivG,ffNumber,14,2);
  end;
end;
procedure TBonLivGestionF .RemiseBonLivGEdtEnter(Sender: TObject);
begin
MainForm.Bonv_liv_listTable.Refresh;
 RemisePerctageBonLivGEdtChange(Sender);
end;

procedure TBonLivGestionF .RemiseBonLivGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RemiseBonLivGEdt.Text := StringReplace(RemiseBonLivGEdt.Text, #32, '', [rfReplaceAll]);
RemiseBonLivGEdt.SelectAll;
end;

procedure TBonLivGestionF .RemiseBonLivGEdtChange(Sender: TObject);
var RemiseBonLivG,BonLTotalHT,BonLTotalTVA,OLDTTC : Currency;
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

procedure TBonLivGestionF .sSpeedButton7Click(Sender: TObject);
begin
  MainForm.Bonv_livTable.First;
  MainForm.Bonv_livTable.Refresh;
  MainForm.Bonv_liv_listTable.Refresh;

  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = True then
  begin
       FSplashVersement.DisableBonLiv;
  end;
  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = False then
   begin
     EnableBonLiv;
    end;


  if (MainForm.Bonv_livTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_c']<> null) then
  begin
  ClientBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['clientbvliv'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_livTable.FieldValues['MontantRes']<>null)  then
  begin
  BonLivResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_livTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

   NumBonLivGEdt.Caption:= MainForm.Bonv_livTable.FieldByName('num_bvliv').AsString;
end;

procedure TBonLivGestionF .sSpeedButton6Click(Sender: TObject);
begin
  MainForm.Bonv_livTable.Prior;
  MainForm.Bonv_livTable.Refresh;
  MainForm.Bonv_liv_listTable.Refresh;

  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = True then
  begin
       FSplashVersement.DisableBonLiv;
  end;
  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = False then
   begin
     EnableBonLiv;
    end;


  if (MainForm.Bonv_livTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_c']<> null) then
  begin
  ClientBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['clientbvliv'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_livTable.FieldValues['MontantRes']<>null)  then
  begin
  BonLivResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_livTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonLivGEdt.Caption:= MainForm.Bonv_livTable.FieldByName('num_bvliv').AsString;
end;

procedure TBonLivGestionF .sSpeedButton5Click(Sender: TObject);
begin
  MainForm.Bonv_livTable.Next;
  MainForm.Bonv_livTable.Refresh;
  MainForm.Bonv_liv_listTable.Refresh;

  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = True then
  begin
       FSplashVersement.DisableBonLiv;
  end;
  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = False then
   begin
     EnableBonLiv;
    end;


  if (MainForm.Bonv_livTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_c']<> null) then
  begin
  ClientBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['clientbvliv'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_livTable.FieldValues['MontantRes']<>null)  then
  begin
  BonLivResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_livTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonLivGEdt.Caption:= MainForm.Bonv_livTable.FieldByName('num_bvliv').AsString;
end;

procedure TBonLivGestionF .sSpeedButton4Click(Sender: TObject);
begin
  MainForm.Bonv_livTable.Last;
  MainForm.Bonv_livTable.Refresh;
  MainForm.Bonv_liv_listTable.Refresh;

  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = True then
  begin
       FSplashVersement.DisableBonLiv;
  end;
  if MainForm.Bonv_livTable.FieldValues['valider_bvliv'] = False then
   begin
     EnableBonLiv;
    end;


  if (MainForm.Bonv_livTable.FieldValues['code_c']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_c']<> null) then
  begin
  ClientBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['clientbvliv'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bonv_livTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonLivGCbx.Text:=MainForm.Bonv_livTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bonv_livTable.FieldValues['MontantRes']<>null)  then
  begin
  BonLivResteLbl.Caption:=CurrToStrF(((MainForm.Bonv_livTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonLivGEdt.Caption:= MainForm.Bonv_livTable.FieldByName('num_bvliv').AsString;
end;

procedure TBonLivGestionF .AddBVlivBonLivGBtnClick(Sender: TObject);
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
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(codeBL));
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
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
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

end;

procedure TBonLivGestionF .EditBVlivBonLivGBtnClick(Sender: TObject);
begin

      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientBonLivGCbx.Text )+')'  ;
      MainForm.ClientTable.Active:=True;
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
  CurrToStrF((((MainForm.ClientTable.FieldValues['credit_c'])-(StringReplace(BonLivResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

      if  (MainForm.ClientTable.FieldByName('code_c').AsInteger <> 1) then
      begin
      MainForm.ClientTable.Edit;
      MainForm.ClientTable.FieldByName('credit_c').AsCurrency:= (MainForm.ClientTable.FieldByName('credit_c').AsCurrency) - (MainForm.Bonv_livTable.FieldByName('MontantRes').AsCurrency);
      MainForm.ClientTable.Post;
      end;

  BonLivRegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonLivResteLbl.Caption:= BonLivTotalTTCLbl.Caption;



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
           Mainform.Sqlquery.Sql.Text:='SELECT code_bvlivl,code_p,  qut_p, cond_p  FROM bonv_liv_list WHERE code_bvliv =  '
                                                 + IntToStr (MainForm.Bonv_livTable.FieldValues['code_bvliv'])
                                                 + 'GROUP BY code_bvlivl, code_p, qut_p, cond_p ' ;
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
           MainForm.Bonv_livTable.Refresh;

     end;

end;

procedure TBonLivGestionF .ValiderBVlivBonLivGBtnClick(Sender: TObject);
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
       FSplashVersement:=TFSplashVersement.Create(Application);
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
if NOT (MainForm.Bonv_liv_listTable.IsEmpty) then
  begin
    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bonv_liv_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;


    //ProduitsListDBGridEh.hint:= ('Prix seuil de vente: '+MainForm.ProduitTable.FieldByName('prixht_p').AsString+FormatSettings.DecimalSeparator+'00'  )     ;
       Application.HintPause := 3000;      // 250 mSec before hint is shown
     Application.HintHidePause := 5000;
   ProduitsListDBGridEh.ShowHint:= True;

     ChangeHint(TDBGridEh(Sender),
      ( 'Dés: '+ (MainForm.ProduitTable.FieldValues['nom_p'])
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

procedure TBonLivGestionF.Timer1Timer(Sender: TObject);
begin
if label20.Visible=True then
   label20.Visible:=False
else
   label20.Visible:=True;
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
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX : TfrxMemoView;
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

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client WHERE code_c ='+ IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.ClientTable.Active:=True;


    AdrRX:= BonLivPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.ClientTable.FieldByName('adr_c').AsString;

    VilleRX:= BonLivPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.ClientTable.FieldByName('ville_c').AsString;

    WilayaRX:= BonLivPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.ClientTable.FieldByName('willaya_c').AsString;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
    MainForm.ClientTable.Active:=True;

    MPRX:= BonLivPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;

 end;



procedure TBonLivGestionF.GettingDataSansTax;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX : TfrxMemoView;
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

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client WHERE code_c ='+ IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.ClientTable.Active:=True;


    AdrRX:= BonLivPListSansTaxfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.ClientTable.FieldByName('adr_c').AsString;

    VilleRX:= BonLivPListSansTaxfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.ClientTable.FieldByName('ville_c').AsString;

    WilayaRX:= BonLivPListSansTaxfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.ClientTable.FieldByName('willaya_c').AsString;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
    MainForm.ClientTable.Active:=True;

    MPRX:= BonLivPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;

 end;



procedure TBonLivGestionF.GettingDataBonSimple;
 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX : TfrxMemoView;
  str1 : string;
  Name,Tel,Mob,Adr : TfrxMemoView;
  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin

  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= BonLivPListBonSIMPLEfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= BonLivPListBonSIMPLEfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= BonLivPListBonSIMPLEfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= BonLivPListBonSIMPLEfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= BonLivPListBonSIMPLEfrxRprt.FindObject('Logo') as TfrxPictureView;
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
  MoneyWordRX := BonLivPListBonSIMPLEfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
  MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  NumRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('NumRX') as TfrxMemoView;
  NumRX.Text:= NumBonLivGEdt.Caption;

    DateRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('DateRX') as TfrxMemoView;
  DateRX.Text:= DateToStr(DateBonLivGD.Date);

      NameRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('NameRX') as TfrxMemoView;
  NameRX.Text:= ClientBonLivGCbx.Text;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client WHERE code_c ='+ IntToStr(MainForm.Bonv_livTable.FieldByName('code_c').AsInteger);
    MainForm.ClientTable.Active:=True;


    AdrRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.ClientTable.FieldByName('adr_c').AsString;

    VilleRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.ClientTable.FieldByName('ville_c').AsString;

    WilayaRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.ClientTable.FieldByName('willaya_c').AsString;

    MainForm.ClientTable.Active:=False;
    MainForm.ClientTable.SQL.Clear;
    MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
    MainForm.ClientTable.Active:=True;

    MPRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonLivGCbx.Text;

    NCHeqRX:= BonLivPListBonSIMPLEfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonLivGCbx.Text;

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

procedure TBonLivGestionF .ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin
Refresh_PreservePosition;
end;

procedure TBonLivGestionF .ProduitsListDBGridEhExit(Sender: TObject);
begin
Refresh_PreservePosition;
end;

end.
