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
  sSpeedButton, AdvToolBtn, frxExportPDF, frxClass, frxExportXLS, frxDBSet;

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
    Shape5: TShape;
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
    ProduitBonFacAGCbx: TComboBox;
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
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
    procedure EnableBonFacA ;
  end;

var
  BonFacAGestionF: TBonFacAGestionF;

implementation

uses  StringTool,
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
   ds := TDBGridEh(BonFacAGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(BonFacAGestionF.ProduitsListDBGridEh).Row;
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
          ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
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
          ValiderBAFacBonFacAGLbl.Caption:='Ce Facture n''est pas encore Validé';// 'Ce facture est Valid' for D
end;

procedure TBonFacAGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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
          MainForm.Bona_fac_listTable.SQL.Text:='Select * FROM bona_fac_list' ;
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
      RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;

      FourBonFacAGCbx.SetFocus;
      CanClose := false;
    end else
        begin
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
          MainForm.Bona_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_facTable.FieldValues['obser_bafac']:= ObserBonFacAGMem.Text;
          MainForm.Bona_facTable.FieldValues['num_cheque_bafac']:= NChequeBonFacAGCbx.Text;
          MainForm.Bona_facTable.FieldByName('montht_bafac').AsCurrency:= StrToCurr(StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacAGEdt.Text<>'' then
          begin
             MainForm.Bona_facTable.FieldByName('remise_bafac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_facTable.FieldByName('remise_bafac').AsCurrency:=0;
                   end;


          MainForm.Bona_facTable.FieldByName('montver_bafac').AsCurrency:=StrToCurr(StringReplace(BonFacARegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('montttc_bafac').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacAGEdt.Visible = True then
          begin
          MainForm.Bona_facTable.FieldByName('timber_bafac').AsCurrency:=StrToCurr(StringReplace(TimberBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
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
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(CodeFA));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(CodeFA));
            MainForm.RegfournisseurTable.Refresh ;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;

              end else
                begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  FourBonFacAGCbx.StyleElements:= [];
                  RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqué' ;
                  RequiredFourGlbl.Visible:= True;
                  NameFourGErrorP.Visible:= True;
                  FourBonFacAGCbx.SetFocus;
                  CanClose:= False;

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
          MainForm.Bona_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_facTable.FieldValues['obser_bafac']:= ObserBonFacAGMem.Text;
          MainForm.Bona_facTable.FieldValues['num_cheque_bafac']:= NChequeBonFacAGCbx.Text;
          MainForm.Bona_facTable.FieldByName('montht_bafac').AsCurrency:= StrToCurr(StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonFacAGEdt.Text<>'' then
          begin
             MainForm.Bona_facTable.FieldByName('remise_bafac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_facTable.FieldByName('remise_bafac').AsCurrency:=0;
                   end;


          MainForm.Bona_facTable.FieldByName('montver_bafac').AsCurrency:=StrToCurr(StringReplace(BonFacARegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('montttc_bafac').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacAGEdt.Visible = True then
          begin
          MainForm.Bona_facTable.FieldByName('timber_bafac').AsCurrency:=StrToCurr(StringReplace(TimberBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
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
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac = ' + IntToStr(CodeFA));
            MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac = ' + IntToStr(CodeFA));
            MainForm.RegfournisseurTable.Refresh ;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

         end;


     CanClose:= True;
  end;
end;

procedure TBonFacAGestionF.FormShow(Sender: TObject);
var CodeFA: Integer;
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
 CodeFA:= MainForm.Bona_facTable.FieldValues['code_bafac']   ;
    NumBonFacAGEdt.Caption := 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeFA]);
 if (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> null)
AND (MainForm.Bona_facTable.FieldByName('code_f').AsInteger <> 0)  then
 begin
   FourBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldValues['fourbafac'];
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
  end;


  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
end;

procedure TBonFacAGestionF.sSpeedButton7Click(Sender: TObject);
begin
  MainForm.Bona_facTable.First;
  MainForm.Bona_facTable.Refresh;
  MainForm.Bona_fac_listTable.Refresh;

  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = True then
  begin
       FSplashVersement.DisableBonFacA;
  end;
  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = False then
   begin
     EnableBonFacA;
    end;


  if (MainForm.Bona_facTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_f']<> null) then
  begin
  FourBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['fourbafac'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bona_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacAResteLbl.Caption:=CurrToStrF(((MainForm.Bona_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacAGEdt.Caption:= MainForm.Bona_facTable.FieldByName('num_bafac').AsString;
end;

procedure TBonFacAGestionF.sSpeedButton6Click(Sender: TObject);
begin
  MainForm.Bona_facTable.Prior;
  MainForm.Bona_facTable.Refresh;
  MainForm.Bona_fac_listTable.Refresh;

  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = True then
  begin
       FSplashVersement.DisableBonFacA;
  end;
  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = False then
   begin
     EnableBonFacA;
    end;


  if (MainForm.Bona_facTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_f']<> null) then
  begin
  FourBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['fourbafac'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bona_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacAResteLbl.Caption:=CurrToStrF(((MainForm.Bona_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacAGEdt.Caption:= MainForm.Bona_facTable.FieldByName('num_bafac').AsString;
end;

procedure TBonFacAGestionF.sSpeedButton5Click(Sender: TObject);
begin
  MainForm.Bona_facTable.Next;
  MainForm.Bona_facTable.Refresh;
  MainForm.Bona_fac_listTable.Refresh;

  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = True then
  begin
       FSplashVersement.DisableBonFacA;
  end;
  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = False then
   begin
     EnableBonFacA;
    end;


  if (MainForm.Bona_facTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_f']<> null) then
  begin
  FourBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['fourbafac'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bona_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacAResteLbl.Caption:=CurrToStrF(((MainForm.Bona_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacAGEdt.Caption:= MainForm.Bona_facTable.FieldByName('num_bafac').AsString;
end;

procedure TBonFacAGestionF.sSpeedButton4Click(Sender: TObject);
begin
  MainForm.Bona_facTable.Last;
  MainForm.Bona_facTable.Refresh;
  MainForm.Bona_fac_listTable.Refresh;

  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = True then
  begin
       FSplashVersement.DisableBonFacA;
  end;
  if MainForm.Bona_facTable.FieldValues['valider_bafac'] = False then
   begin
     EnableBonFacA;
    end;


  if (MainForm.Bona_facTable.FieldValues['code_f']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_f']<> null) then
  begin
  FourBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['fourbafac'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_mdpai']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_mdpai']<>null)  then
  begin
  ModePaieBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['ModePaie'];
  end;
  if (MainForm.Bona_facTable.FieldValues['code_cmpt']<> 0) AND (MainForm.Bona_facTable.FieldValues['code_cmpt']<>null)  then
  begin
  CompteBonFacAGCbx.Text:=MainForm.Bona_facTable.FieldValues['Compte'];
  end;

  if  (MainForm.Bona_facTable.FieldValues['MontantRes']<>null)  then
  begin
  BonFacAResteLbl.Caption:=CurrToStrF(((MainForm.Bona_facTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonFacAGEdt.Caption:= MainForm.Bona_facTable.FieldByName('num_bafac').AsString;
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
        MainForm.Bona_facTable.FieldValues['code_bafac']:=1;
        MainForm.Bona_facTable.FieldValues['num_bafac']:= 'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
        MainForm.Bona_facTable.FieldValues['time_bafac']:=TimeOf(Now);
        MainForm.Bona_facTable.Post;
        codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
      end else
          begin
            MainForm.Bona_facTable.Last;
            codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(codeFA));
            MainForm.Bona_fac_listTable.Active:=True;

           if MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin
           codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
           end else
           begin

           MainForm.Bona_facTable.Insert;
           MainForm.Bona_facTable.FieldValues['code_bafac']:= codeFA + 1;
           MainForm.Bona_facTable.FieldValues['num_bafac']:=  'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFA + 1)]);
           MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
           MainForm.Bona_facTable.FieldValues['time_bafac']:= TimeOf(Now);
           MainForm.Bona_facTable.Post;

           end;
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
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

 CodeCB:= MainForm.Bona_FacTable.FieldValues['code_bafac']   ;
 NumBonFacAGEdt.Caption := 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, CodeCB]);

     FourBonFacAGCbx.SetFocus;

     Tag :=0;

     MainForm.Bona_fac_listTable.Refresh;

end;

procedure TBonFacAGestionF.EditBAFacBonFacAGBtnClick(Sender: TObject);
begin

      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      MainForm.FournisseurTable.Active:=True;
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
  CurrToStrF((((MainForm.FournisseurTable.FieldValues['credit_f'])-(StringReplace(BonFacAResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

  BonFacARegleLbl.Caption:=FloatToStrF(0,ffNumber,14,2) ;
  BonFacAResteLbl.Caption:= BonFacATotalTTCLbl.Caption;

      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls ;
 //----------------------------------------
      begin
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bafacl,code_p,  qut_p, cond_p  FROM bona_fac_list WHERE code_bafac =  '
                                                 + IntToStr (MainForm.Bona_facTable.FieldValues['code_bafac'])
                                                 + 'GROUP BY code_bafacl, code_p, qut_p, cond_p ' ;
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
                                                         - ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
//            MainForm.ProduitTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
//            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
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
          MainForm.Bona_facTable.Refresh;

     end;

  //---thise is to visivle timber after edit and calculate it----//
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


 //      FourBonFacAGCbxChange(Sender);
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      MainForm.FournisseurTable.Active:=True;


      if (MainForm.FournisseurTable.IsEmpty) then
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

           MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls;

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
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:=False;
           MainForm.ProduitTable.SQL.Clear;
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           Mainform.Sqlquery.Active:=False;
           Mainform.Sqlquery.Sql.Clear;
           Mainform.Sqlquery.Sql.Text:='SELECT code_bafacl,code_p,  qut_p, cond_p , prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p FROM bona_fac_list WHERE code_bafac =  '
                                                 + IntToStr (MainForm.Bona_facTable.FieldValues['code_bafac'])
                                                 + 'GROUP BY code_bafacl, code_p, qut_p, cond_p,prixht_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p' ;
           MainForm.SQLQuery.Active:=True;
           MainForm.SQLQuery.First;
           while  NOT (MainForm.SQLQuery.Eof) do
           begin
//            MainForm.ProduitTable.DisableControls;
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
            MainForm.ProduitTable.Active:=True;
            MainForm.ProduitTable.Edit;
            MainForm.ProduitTable.FieldValues['qut_p']:= ( MainForm.ProduitTable.FieldValues['qut_p']
                                                         + ((MainForm.SQLQuery.FieldValues['qut_p']) * ((MainForm.SQLQuery.FieldValues['cond_p']))));
            MainForm.ProduitTable.FieldValues['prixht_p']:= MainForm.SQLQuery.FieldValues['prixht_p'];
            MainForm.ProduitTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
            MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixvr_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixvg_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency:=  MainForm.SQLQuery.FieldByName('prixva_p').AsCurrency;
            MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency:= MainForm.SQLQuery.FieldByName('prixva2_p').AsCurrency;
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
          MainForm.Bona_facTable.Refresh;
          DataModuleF.Top5produit.Refresh;

     end;
//--- this is to set the facture de vente fileds
     begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr(FourBonFacAGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;

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
          MainForm.Bona_facTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          MainForm.Bona_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          if Tag = 0 then
          begin
          MainForm.Bona_facTable.FieldByName('date_bafac').AsDateTime:= DateBonFacAGD.DateTime;
          MainForm.Bona_facTable.FieldValues['time_bafac']:=TimeOf(Now);
          end;
          MainForm.Bona_facTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.Bona_facTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_facTable.FieldValues['obser_bafac']:= ObserBonFacAGMem.Text;
          MainForm.Bona_facTable.FieldValues['num_cheque_bafac']:= NChequeBonFacAGCbx.Text;
          MainForm.Bona_facTable.FieldByName('montht_bafac').AsCurrency:= StrToCurr(StringReplace(BonFacATotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if TimberBonFacaGEdt.Visible = True then
          begin
          MainForm.Bona_facTable.FieldByName('timber_bafac').AsCurrency:= StrToCurr(StringReplace(TimberBonFacaGEdt.Text, #32, '', [rfReplaceAll]));
          end;

          if RemiseBonFacAGEdt.Text<>'' then
          begin
          MainForm.Bona_facTable.FieldByName('remise_bafac').AsCurrency:=StrToCurr(StringReplace(RemiseBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_facTable.FieldByName('remise_bafac').AsCurrency:=0;
                   end;

          MainForm.Bona_facTable.FieldByName('montver_bafac').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('montttc_bafac').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean:= True;

          if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
          begin
           MainForm.Bona_facTable.FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
          begin
           MainForm.Bona_facTable.FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
             OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
          begin
           MainForm.Bona_facTable.FieldValues['code_mdpai']:=3 ;
          end;
          if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
          begin
           MainForm.Bona_facTable.FieldValues['code_mdpai']:=4 ;
          end;

          MainForm.Bona_facTable.Post;

       //if (VerVersementSEdt.Text <> '' ) AND (VerVersementSEdt.Text <> '0' ) AND ((StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then

        begin


          if Tag = 0 then

          begin
             if NOT (MainForm.RegfournisseurTable.IsEmpty) then
            begin
             MainForm.RegfournisseurTable.Last;
             CodeRF:= MainForm.RegfournisseurTable.FieldValues['code_rf'] + 1;
            end else
                begin
                 CodeRF:= 1;
                end;

            MainForm.RegfournisseurTable.Append;
            MainForm.RegfournisseurTable.FieldValues['code_rf']:= CodeRF;
            MainForm.RegfournisseurTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
            MainForm.RegfournisseurTable.FieldValues['nom_rf']:= NumBonFacAGEdt.Caption;
            MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
            MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
            MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
            MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.RegfournisseurTable.FieldValues['obser_rf']:= ObserBonFacAGMem.Text;
            MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= NChequeBonFacAGCbx.Text;
            MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 3;
            MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

            MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

            if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
            end;
             if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
            end;
            if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
               OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
            end;
            if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
            begin
             MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=4 ;
            end;

            MainForm.RegfournisseurTable.Post;
            MainForm.RegfournisseurTable.Refresh;

          end else

              begin
                    MainForm.RegfournisseurTable.DisableControls;
                    MainForm.RegfournisseurTable.Active:=false;
                    MainForm.RegfournisseurTable.SQL.Clear;
                    MainForm.RegfournisseurTable.SQL.Text:='SELECT * FROM regfournisseur WHERE code_bafac ='+IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']);
                    MainForm.RegfournisseurTable.Active:=True;

                    if NOT (MainForm.RegfournisseurTable.IsEmpty) then
                 begin
                  MainForm.RegfournisseurTable.Edit;
                  MainForm.RegfournisseurTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
                  MainForm.RegfournisseurTable.FieldValues['nom_rf']:= NumBonFacAGEdt.Caption;
                  MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
                  MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
                  MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
                  MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegfournisseurTable.FieldValues['obser_rf']:= ObserBonFacAGMem.Text;
                  MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= NChequeBonFacAGCbx.Text;
                  MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 3;
                  MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                  MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                  if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
                  end;
                   if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
                  end;
                  if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                     OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
                  begin
                   MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
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
                       CodeRF:= MainForm.RegfournisseurTable.FieldValues['code_rf'] + 1;
                      end else
                          begin
                           CodeRF:= 1;
                          end;

                      MainForm.RegfournisseurTable.Append;
                      MainForm.RegfournisseurTable.FieldValues['code_rf']:= CodeRF;
                      MainForm.RegfournisseurTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
                      MainForm.RegfournisseurTable.FieldValues['nom_rf']:= NumBonFacAGEdt.Caption;
                      MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
                      MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
                      MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
                      MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                      MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                      MainForm.RegfournisseurTable.FieldValues['obser_rf']:= ObserBonFacAGMem.Text;
                      MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= NChequeBonFacAGCbx.Text;
                      MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 3;
                      MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);

                      MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                      if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                      begin
                       MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
                      end;
                       if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                      begin
                       MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
                      end;
                      if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                         OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
                      begin
                       MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
                      end;
                      if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                      begin
                       MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=4 ;
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

          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

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
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur pièce N° '+NumBonFacAGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= FourBonFacAGCbx.Text;
                 //   MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                     if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                    end;
                     if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                    end;
                    if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                       OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                    end;
                    if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                    end;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt (MainForm.UserIDLbl.Caption);

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
                        MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_bafac ='+IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']) ;
                        MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                        if NOT ( MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
                        begin

                          MainForm.Opt_cas_bnk_CaisseTable.Edit;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur pièce N° '+NumBonFacAGEdt.Caption;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= FourBonFacAGCbx.Text;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                           if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                          end;
                           if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                          end;
                          if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                             OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                          end;
                          if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                          begin
                           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                          end;

                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
                          MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt (MainForm.UserIDLbl.Caption);

                          MainForm.Opt_cas_bnk_CaisseTable.Post;
                          MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                          MainForm.Opt_cas_bnk_BankTable.Refresh;

                        end else
                            begin
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
                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur pièce N° '+NumBonFacAGEdt.Caption;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= FourBonFacAGCbx.Text;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(BonFacATotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

                                 if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                                end;
                                 if (LowerCase(ModePaieBonFacAGCbx.Text)='chèque') OR (LowerCase(ModePaieBonFacAGCbx.Text)='cheque') then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                                end;
                                if (LowerCase(ModePaieBonFacAGCbx.Text)='à terme' ) OR (LowerCase(ModePaieBonFacAGCbx.Text)='a terme' )
                                   OR (LowerCase(ModePaieBonFacAGCbx.Text)='À terme' ) then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                                end;
                                if (LowerCase(ModePaieBonFacAGCbx.Text)='virement' ) then
                                begin
                                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=4 ;
                                end;

                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
                                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:= StrToInt (MainForm.UserIDLbl.Caption);

                                MainForm.Opt_cas_bnk_CaisseTable.Post;
                                MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                                MainForm.Opt_cas_bnk_BankTable.Refresh;


                              MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                              MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                              MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                              MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                            end;

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
            ModePaieBonFacAGCbx.StyleElements:= [];
//            RequiredFourGlbl.Visible:= True;
            ModepPaiGErrorP.Visible:= True;
            ModePaieBonFacAGCbx.SetFocus;
           end;

                  end else
                begin
                  sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  FourBonFacAGCbx.StyleElements:= [];
                  RequiredFourGlbl.Caption:= 'Ce Fournisseur est bloqué' ;
                  RequiredFourGlbl.Visible:= True;
                  NameFourGErrorP.Visible:= True;
                  FourBonFacAGCbx.SetFocus;
                end;
  end else
        begin
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          FourBonFacAGCbx.StyleElements:= [];
          RequiredFourGlbl.Caption:= 'S''il vous plaît entrer le nom de le Fournisseur' ;
          RequiredFourGlbl.Visible:= True;
          NameFourGErrorP.Visible:= True;

          FourBonFacAGCbx.SetFocus;
        end;
end;

procedure TBonFacAGestionF.FourBonFacAGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece
      ModePaieBonFacAGCbxDropDown(Self);
      ModePaieBonFacAGCbx.ItemIndex:=0;
      ModePaieBonFacAGCbxClick(Self) ;
end;

procedure TBonFacAGestionF.FourBonFacAGCbxExit(Sender: TObject);
var CodeF: Integer;
RegFCreditF,OLDCreditC,OLDCreditFINI : Currency;
begin

  if FourBonFacAGCbx.Text <> '' then
    begin
     FourBonFacAGCbxChange(Sender);
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FourBonFacAGCbx.Text )+')'  ;
      MainForm.FournisseurTable.Active:=True;
     if NOT  MainForm.FournisseurTable.IsEmpty then
     begin
      OLDCreditFINI:= MainForm.FournisseurTable.FieldByName('oldcredit_f').AsCurrency;

      if MainForm.FournisseurTable.FieldByName('activ_f').AsBoolean <> False then
      begin

      if (MainForm.FournisseurTable.IsEmpty) then
      begin
       FourBonFacAGCbx.Text := '';
       BonFacAGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonFacAGFourNEWCredit.Caption:=BonFacAGFourOLDCredit.Caption;
       exit;
      end;
      CodeF:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger ;

       MainForm.Bona_recTableCredit.DisableControls;
      MainForm.Bona_recTableCredit.Active:=false;
      MainForm.Bona_recTableCredit.SQL.Clear;
      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec WHERE valider_barec = true AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_barec '  ;
      MainForm.Bona_recTableCredit.Active:=True;


      while NOT (MainForm.Bona_recTableCredit.Eof) do
     begin
     OLDCreditC := OLDCreditC + MainForm.Bona_recTableCredit.FieldValues['MontantRes'];
     MainForm.Bona_recTableCredit.Next;
     end;
      MainForm.Bona_recTableCredit.EnableControls;



      MainForm.RegfournisseurTable.DisableControls;
      MainForm.RegfournisseurTable.Active:=false;
      MainForm.RegfournisseurTable.SQL.Clear;
      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur WHERE bon_or_no_rf = 1 AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_rf '  ;
      MainForm.RegfournisseurTable.Active:=True;

     while NOT (MainForm.RegfournisseurTable.Eof) do
     begin
     RegFCreditF := RegFCreditF + MainForm.RegfournisseurTable.FieldValues['montver_rf'];
     MainForm.RegfournisseurTable.Next;
     end;


      if  NOT (MainForm.Bona_recTableCredit.IsEmpty) OR NOT (MainForm.RegfournisseurTable.IsEmpty ) OR NOT (OLDCreditFINI = 0) then
      begin
       MainForm.Bona_recTableCredit.last;
       BonFacAGFourOLDCredit.Caption:= CurrToStrF(((OLDCreditC - RegFCreditF) + OLDCreditFINI ),ffNumber,2) ;

       if NOT (BonFacAPListDataS.DataSet.IsEmpty) then
        begin
         BonFacAGFourNEWCredit.Caption:=
         CurrToStrF((MainForm.Bona_recTableCredit.FieldByName('MontantRes').AsCurrency ) + StrToCurr(StringReplace(BonFacAResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
        end;
        end else
        begin
         BonFacAGFourOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
        end;



      MainForm.Bona_recTableCredit.DisableControls;
      MainForm.Bona_recTableCredit.Active:=false;
      MainForm.Bona_recTableCredit.SQL.Clear;
      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec '  ;
      MainForm.Bona_recTableCredit.Active:=True;
      MainForm.Bona_recTableCredit.last;
      MainForm.Bona_recTableCredit.EnableControls;



      MainForm.RegfournisseurTable.Active:=false;
      MainForm.RegfournisseurTable.SQL.Clear;
      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur ORDER BY time_rf  '  ;
      MainForm.RegfournisseurTable.Active:=True;
      MainForm.RegfournisseurTable.EnableControls;



      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls;

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
            RequiredFourGlbl.Caption:='Ce Fournisseur est bloqué';
            RequiredFourGlbl.Visible:= True;
            NameFourGErrorP.Visible:= True;
            FourBonFacAGCbx.SetFocus;
           end;

           end else
           begin
              FourBonFacAGCbx.Text:='';

              MainForm.FournisseurTable.Active:=false;
              MainForm.FournisseurTable.SQL.Clear;
              MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
              MainForm.FournisseurTable.Active:=True;
              MainForm.FournisseurTable.EnableControls;
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
        MainForm.FournisseurTable.DisableControls;
        MainForm.FournisseurTable.Active:=false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
        MainForm.FournisseurTable.Active:=True;

       MainForm.FournisseurTable.first;

     for I := 0 to MainForm.FournisseurTable.RecordCount - 1 do
     if MainForm.FournisseurTable.FieldByName('nom_f').IsNull = False then
     begin
          FourBonFacAGCbx.Items.Add(MainForm.FournisseurTable.FieldByName('nom_f').AsString);
       MainForm.FournisseurTable.Next;
      end;

      MainForm.FournisseurTable.EnableControls;
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

procedure TBonFacAGestionF.ModePaieBonFacAGCbxChange(Sender: TObject);
begin
  if (LowerCase(ModePaieBonFacAGCbx.Text)='espèce') OR (LowerCase(ModePaieBonFacAGCbx.Text)='espece') then
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
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonFacAGCbx.Refresh;
      ProduitBonFacAGCbx.Items.Clear;
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
       ProduitBonFacAGCbx.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonFacAGCbx.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;
end;

procedure TBonFacAGestionF.ProduitBonFacAGCbxExit(Sender: TObject);
begin
ProduitBonFacAGCbx.Text:='';
ProduitBonFacAGCbx.AutoDropDown:=False;
end;

procedure TBonFacAGestionF.ProduitBonFacAGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
  ProduitBonFacAGCbx.AutoDropDown:= True;
  end;
end;

procedure TBonFacAGestionF.ProduitBonFacAGCbxKeyPress(Sender: TObject;
  var Key: Char);

    var CodeFA,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;
begin
if key = #13 then
 begin
 if ProduitBonFacAGCbx.Text <>'' then
 begin
  key := #0;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonFacAGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bona_fac_listTable.DisableControls;
            MainForm.Bona_fac_listTable.IndexFieldNames:='';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list ORDER by code_bafacl' ;
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

             MainForm.Bona_fac_listTable.Last;
             MainForm.Bona_fac_listTable.Append;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeFA ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_fac_listTable.Post ;
             MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
            MainForm.Bona_fac_listTable.Active:=True;

            ProduitBonFacAGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
      if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
       FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by produit combobox----//
       FSplashAddUnite.Tag:=4;
     end;

     end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefProduitsRdioBtn.Checked then
  begin
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonFacAGCbx.Text)+')';
            MainForm.ProduitTable.Active:=True;
            CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bona_fac_listTable.DisableControls;
            MainForm.Bona_fac_listTable.IndexFieldNames:='';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list' ;
            MainForm.Bona_fac_listTable.Active:=True;
           if  MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin
             CodeFA := 1;
           end else
               begin
                MainForm.Bona_fac_listTable.Last;
                CodeFA:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
               end;
             MainForm.Bona_fac_listTable.Insert;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeFA ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_fac_listTable.Post ;
             MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';

            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
            MainForm.Bona_fac_listTable.Active:=True;
            MainForm.Bona_fac_listTable.EnableControls;

            ProduitBonFacAGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
            if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 3 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=4;
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

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonFacAGCbx.Text)+')';
    MainForm.ProduitTable.Active:=True;
    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

     if  (MainForm.ProduitTable.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bona_fac_listTable.DisableControls;
            MainForm.Bona_fac_listTable.IndexFieldNames:='';
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list' ;
            MainForm.Bona_fac_listTable.Active:=True;

           if  MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin
             CodeFA := 1;
           end else
               begin
                MainForm.Bona_fac_listTable.Last;
                CodeFA:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
               end;

             MainForm.Bona_fac_listTable.Insert;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeFA ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_fac_listTable.Post ;
             MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';

             MainForm.Bona_fac_listTable.Active:=False;
             MainForm.Bona_fac_listTable.SQL.Clear;
             MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
             MainForm.Bona_fac_listTable.Active:=True;
             MainForm.Bona_fac_listTable.EnableControls;

            ProduitBonFacAGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bona_fac_listTable.EnableControls;
            MainForm.Bona_fac_listTable.Last;
            if FourBonFacAGCbx.Text<>'' then
              begin
              ValiderBAFacBonFacAGBtn.Enabled:= True;
              ValiderBAFacBonFacAGBtn.ImageIndex:=12;
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
            if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=4;
             end;
          end;

   end;
          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
          MainForm.ProduitTable.Active := True;

         MainForm.Bona_fac_listTable.Refresh;
        ProduitBonFacAGCbx.AutoDropDown:=False;
         ProduitBonFacAGCbx.SelectAll;

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

procedure TBonFacAGestionF.BonFacAPListDataSDataChange(Sender: TObject;
  Field: TField);
var  TTCbeforeTimber,TTCafterTimber: Currency;
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

    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bona_fac_listTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;

    BonFacAGOLDStock.Caption:=
      floatTostrF((MainForm.ProduitTable.FieldValues['QutDispo']),ffNumber,14,2);
    BonFacAGNEWStock.Caption:=
      floatTostrF(((MainForm.ProduitTable.FieldValues['QutDispo'])+((MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']))),ffNumber,14,2);

    if(StrToFloat (StringReplace(BonFacAGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
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

procedure TBonFacAGestionF.RemisePerctageBonFacAGEdtChange(Sender: TObject);
var BonFATotalHT,RemisePerctageBonFacA,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldFourCredit,Timber : Currency;
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
         BonFacATotalTVALbl.Caption:= FloatToStrF((TotalTVANet - (( TotalTVANet  * RemisePerctageBonFacA)/(100))),ffNumber,14,2); //TVA
         BonFATotalHTNewLbl.Caption:= FloatToStrF((BonFATotalHT - (( BonFATotalHT  * RemisePerctageBonFacA)/(100))),ffNumber,14,2); //HT
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
             BonFacATotalTTCLbl.Caption:=  FloatToStrF((NewHT + NewTVA + Timber),ffNumber,14,2); // TTC
            end else
                begin
                  BonFacATotalTTCLbl.Caption:=  FloatToStrF((NewHT + NewTVA ),ffNumber,14,2); // TTC
                end;



         BonFacAResteLbl.Caption:= BonFacATotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonFacAGEdt.Focused then
            begin
            RemiseBonFacAGEdt.Text:=FloatToStrF((BonFATotalHT - NewHT),ffNumber,14,2);
            end;

        BonFARemiseHTNewLbl.Caption:= FloatToStrF((BonFATotalHT - NewHT),ffNumber,14,2);

            if BonFacAGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonFacAGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

        BonFacAGFourNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldFourCredit)),ffNumber,14,2);

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
            BonFacAResteLbl.Caption:= BonFacATotalTTCLbl.Caption;
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
          BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
          MainForm.Bona_fac_listTable.Refresh;
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


         BonFacAResteLbl.Caption:=BonFacATotalTTCLbl.Caption;

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

        BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonFacAGEdt.Text:='';
             BonFARemiseHTNewLbl.Caption:='0';
             BonFacATotalTTCLbl.Caption := BonFATotalTTCNewLbl.Caption;
             BonFacAResteLbl.Caption:=BonFacATotalTTCLbl.Caption;
             BonFacATotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonFATotalHTNewLbl.Caption:=BonFacATotalHTLbl.Caption;
             BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);

              if BonFacAGFourOLDCredit.Caption <>'' then
              begin
              OldFourCredit:=StrToFloat (StringReplace(BonFacAGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonFacAGFourOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonFacATotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
             BonFacAGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
             MainForm.Bona_fac_listTable.Refresh;
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
begin
  if not(Key in N) then
  begin
     key := #0;
  end;
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtChange(Sender: TObject);
var RemiseBonFacAG,BonFATotalHT,BonFATotalTVA,OLDTTC : Currency;
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
          MainForm.Bona_fac_listTable.Refresh;
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
MainForm.Bona_fac_listTable.Refresh;
 RemisePerctageBonFacAGEdtChange(Sender);
end;

procedure TBonFacAGestionF.RemiseBonFacAGEdtExit(Sender: TObject);
var
RemiseBonFacAG: Currency;
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

  if not(Key in N) then
  begin
     key := #0;
  end;
  if (Key in F) then
  begin

    key :=  #44;

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
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 19 ;
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
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(Application);


//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;
//---------Use this tag = 2 for adding from facture dd'achat
  FastProduitsListF.Tag := 3;
end;

procedure TBonFacAGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
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

procedure TBonFacAGestionF.FormCreate(Sender: TObject);
begin
MainForm.Bona_fac_listTable.Active:= True;
end;


procedure TBonFacAGestionF.GettingData;

 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX,
  TauxTVA17,TauxTVA7,MontantTVA17,MontantTVA7,RC,NArt,NIF,NIS : TfrxMemoView;

  str1 : string;
  Taux17,Taux7,Montant17,Montant7,RemisePerctageBonFacA : Currency;

begin
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

    MainForm.FournisseurTable.Active:=False;
    MainForm.FournisseurTable.SQL.Clear;
    MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur WHERE code_f ='+ IntToStr(MainForm.Bona_facTable.FieldByName('code_f').AsInteger);
    MainForm.FournisseurTable.Active:=True;


    AdrRX:= BonFacAPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.FournisseurTable.FieldByName('adr_f').AsString;

    VilleRX:= BonFacAPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.FournisseurTable.FieldByName('ville_f').AsString;

    WilayaRX:= BonFacAPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.FournisseurTable.FieldByName('willaya_f').AsString;



      RC:= BonFacAPListfrxRprt.FindObject('RC') as TfrxMemoView;
  RC.Text:= MainForm.FournisseurTable.FieldByName('rc_f').AsString;

    NArt:= BonFacAPListfrxRprt.FindObject('NArt') as TfrxMemoView;
  NArt.Text:= MainForm.FournisseurTable.FieldByName('nart_f').AsString;

    NIF:= BonFacAPListfrxRprt.FindObject('NIF') as TfrxMemoView;
  NIF.Text:=  MainForm.FournisseurTable.FieldByName('nif_f').AsString;

      NIS:= BonFacAPListfrxRprt.FindObject('NIS') as TfrxMemoView;
  NIS.Text:=  MainForm.FournisseurTable.FieldByName('nis_f').AsString;



    MainForm.FournisseurTable.Active:=False;
    MainForm.FournisseurTable.SQL.Clear;
    MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
    MainForm.FournisseurTable.Active:=True;

     begin
      MainForm.Bona_fac_listTable.DisableControls;

        begin
           MainForm.Bona_fac_listTable.Active:=false;
           MainForm.Bona_fac_listTable.SQL.Clear;
           MainForm.Bona_fac_listTable.SQL.Text:='Select * FROM bona_fac_list WHERE tva_p = 17' ;
           MainForm.Bona_fac_listTable.Active:=True;
            if NOT (MainForm.Bona_fac_listTable.IsEmpty) then
           begin

            MainForm.Bona_fac_listTable.First;

            while not MainForm.Bona_fac_listTable.Eof do
            begin
              Montant17:= Montant17 + MainForm.Bona_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bona_fac_listTable.Next;
            end;

             TauxTVA17:= BonFacAPListfrxRprt.FindObject('TauxTVA17') as TfrxMemoView;
             TauxTVA17.Text:=  '17 %';
             TauxTVA17.Visible:=True;

             MontantTVA17:= BonFacAPListfrxRprt.FindObject('MontantTVA17') as TfrxMemoView;

           if RemisePerctageBonFacAGEdt.Text <> '' then
            begin
            RemisePerctageBonFacA:=StrToFloat(StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacAGEdt.Text = '') OR (RemisePerctageBonFacA = 0) then
             begin
             MontantTVA17.Text:= floatToStrF(Montant17,ffNumber,14,2);
             end else
                 begin
                   MontantTVA17.Text:=   floatToStrF((Montant17 - (Montant17*RemisePerctageBonFacA)/100) ,ffNumber,14,2);
                 end;

                 MontantTVA17.Visible:=True;

            end;
        end;
        begin
           MainForm.Bona_fac_listTable.Active:=false;
           MainForm.Bona_fac_listTable.SQL.Clear;
           MainForm.Bona_fac_listTable.SQL.Text:='Select * FROM bona_fac_list WHERE tva_p = 7' ;
           MainForm.Bona_fac_listTable.Active:=True;
          if NOT (MainForm.Bona_fac_listTable.IsEmpty) then
           begin

            MainForm.Bona_fac_listTable.First;

            while not MainForm.Bona_fac_listTable.Eof do
            begin
              Montant7:= Montant7 + MainForm.Bona_fac_listTable.FieldValues['MontantTVA'];
              MainForm.Bona_fac_listTable.Next;
            end;
             TauxTVA7:= BonFacAPListfrxRprt.FindObject('TauxTVA7') as TfrxMemoView;
             TauxTVA7.Text:=  '7 %';
             TauxTVA7.Visible:= True;

             MontantTVA7:= BonFacAPListfrxRprt.FindObject('MontantTVA7') as TfrxMemoView;


                        if RemisePerctageBonFacAGEdt.Text <> '' then
            begin
            RemisePerctageBonFacA:=StrToFloat(StringReplace(RemisePerctageBonFacAGEdt.Text, #32, '', [rfReplaceAll]));
            end;

             if (RemisePerctageBonFacAGEdt.Text = '') OR (RemisePerctageBonFacA = 0) then
             begin
             MontantTVA7.Text:= CurrToStrF(Montant7,ffCurrency,2);
             end else
                 begin
                   MontantTVA7.Text:=   CurrToStrF((Montant7 - (Montant7*RemisePerctageBonFacA)/100) ,ffCurrency,2);
                 end;

                 MontantTVA7.Visible:=True;
            end;
        end;
             MainForm.Bona_fac_listTable.Active:=false;
             MainForm.Bona_fac_listTable.SQL.Clear;
             MainForm.Bona_fac_listTable.SQL.Text:='Select * FROM bona_fac_list ORDER BY code_bafacl ' ;
             MainForm.Bona_fac_listTable.Active:=True;
         MainForm.Bona_fac_listTable.EnableControls;
     end;


    MPRX:= BonFacAPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonFacAGCbx.Text;

    NCHeqRX:= BonFacAPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonFacAGCbx.Text;

 end;

procedure TBonFacAGestionF.sSpeedButton2Click(Sender: TObject);
begin
 GettingData;
MainForm.Bona_fac_listTable.DisableControls;
BonFacAPListfrxRprt.PrepareReport;
BonFacAPListfrxRprt.ShowReport;
MainForm.Bona_fac_listTable.EnableControls;
end;

procedure TBonFacAGestionF.sSpeedButton1Click(Sender: TObject);
begin
   GettingData;
 MainForm.Bona_fac_listTable.DisableControls;
BonFacAPListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Facture D''achat N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(MainForm.Bona_facTable.FieldByName('code_bafac').AsInteger)]);
BonFacAPListfrxRprt.Export(frxXLSExport1);
MainForm.Bona_fac_listTable.EnableControls;
end;

procedure TBonFacAGestionF.sSpeedButton3Click(Sender: TObject);
begin
 GettingData;
MainForm.Bona_fac_listTable.DisableControls;
BonFacAPListfrxRprt.PrepareReport;

frxPDFExport1.FileName := 'Facture D''achat N° '
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
//  if  (MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency )
//    OR(MainForm.Bona_fac_listTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency )
//         then
// begin
// ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
// ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;

end;

end.

