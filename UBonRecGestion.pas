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
  Data.Bind.DBScope, frxClass, frxExportPDF, frxExportXLS, frxDBSet;

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
    ProduitBonRecGCbx: TComboBox;
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
    Shape5: TShape;
    RemiseTypeBonRecGCbx: TComboBox;
    Label15: TLabel;
    BonRTotalTTCNewLbl: TLabel;
    BonRTotalHTNewLbl: TLabel;
    TotalTVANewLbl: TLabel;
    NChequeBonRecGCbx: TEdit;
    Label23: TLabel;
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
    procedure ProduitBonRecGCbxEnter(Sender: TObject);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ResherchPARCBProduitsRdioBtnClick(Sender: TObject);
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
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
    procedure EnableBonRec;
  end;

var
  BonRecGestionF: TBonRecGestionF;

implementation

uses   StringTool,
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
 ds := TDBGridEh(BonRecGestionF.ProduitsListDBGridEh).DataSource.DataSet;
 rowDelta := -1 + TDBGridEh(BonRecGestionF.ProduitsListDBGridEh).Row;
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
        DeleteProduitBonRecGBtn.Enabled:= True;
        DeleteProduitBonRecGBtn.ImageIndex:=14;//36 fo D
        ClearProduitBonRecGBtn.Enabled:= True;
        ClearProduitBonRecGBtn.ImageIndex:=16;//39 fo A
        ProduitsListDBGridEh.DataSource.DataSet.EnableControls;//DisableControls    For A
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
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonRecGCbx.Refresh;
      ProduitBonRecGCbx.Items.Clear;
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
       ProduitBonRecGCbx.Items.Add(MainForm.ProduitTable.FieldByName('nom_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

      if ResherchPARRefProduitsRdioBtn.Checked then
     begin

     for I := 0 to MainForm.ProduitTable.RecordCount - 1 do
     if( MainForm.ProduitTable.FieldByName('refer_p').IsNull = False )  then
     begin
          ProduitBonRecGCbx.Items.Add(MainForm.ProduitTable.FieldByName('refer_p').AsString);
       MainForm.ProduitTable.Next;
      end;
     end;

     MainForm.ProduitTable.EnableControls;

end;

procedure TBonRecGestionF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonRecGCbx.Clear;
ProduitBonRecGCbx.SetFocus;
end;

procedure TBonRecGestionF.ResherchPARCBProduitsRdioBtnClick(Sender: TObject);
begin
ProduitBonRecGCbx.Clear;
ProduitBonRecGCbx.SetFocus;
end;

procedure TBonRecGestionF.ProduitBonRecGCbxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if ResherchPARCBProduitsRdioBtn.Checked = False then
  begin
  ProduitBonRecGCbx.AutoDropDown:= True;
  end;

end;

procedure TBonRecGestionF.ProduitBonRecGCbxKeyPress(Sender: TObject; var Key: Char);
  var CodeBR,CodeCB : Integer;
      lookupResultRefP : Variant;
      NomP: String;
      CodeP: Integer;
begin
 if key = #13 then
 begin
 if ProduitBonRecGCbx.Text <>'' then
 begin
  key := #0;

       if ResherchPARDesProduitsRdioBtn.Checked then
   begin
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(ProduitBonRecGCbx.Text)+')';
        MainForm.ProduitTable.Active:=True;
        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bona_recPlistTable.DisableControls;
            MainForm.Bona_recPlistTable.IndexFieldNames:='';
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list ORDER by code_barecl' ;
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

             MainForm.Bona_recPlistTable.Last;
             MainForm.Bona_recPlistTable.Append;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_recPlistTable.Post ;
             MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
            MainForm.Bona_recPlistTable.Active:=True;

            ProduitBonRecGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
            MainForm.ProduitTable.Active:=False;
            MainForm.ProduitTable.SQL.Clear;
            MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE LOWER(refer_p) LIKE LOWER('+QuotedStr(ProduitBonRecGCbx.Text)+')';
            MainForm.ProduitTable.Active:=True;
            CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

         lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
       if  MainForm.ProduitTable.RecordCount > 0  then
          begin

            MainForm.Bona_recPlistTable.DisableControls;
            MainForm.Bona_recPlistTable.IndexFieldNames:='';
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list' ;
            MainForm.Bona_recPlistTable.Active:=True;
           if  MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_recPlistTable.Last;
                CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
               end;
             MainForm.Bona_recPlistTable.Insert;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_recPlistTable.Post ;
             MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
            MainForm.Bona_recPlistTable.Active:=True;
            MainForm.Bona_recPlistTable.EnableControls;

            ProduitBonRecGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(ProduitBonRecGCbx.Text)+')';
    MainForm.ProduitTable.Active:=True;
    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

     if  (MainForm.ProduitTable.RecordCount > 0 )   then
      begin

         lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin

            MainForm.Bona_recPlistTable.DisableControls;
            MainForm.Bona_recPlistTable.IndexFieldNames:='';
            MainForm.Bona_recPlistTable.Active:=False;
            MainForm.Bona_recPlistTable.SQL.Clear;
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list' ;
            MainForm.Bona_recPlistTable.Active:=True;

           if  MainForm.Bona_recPlistTable.RecordCount <= 0 then
           begin
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_recPlistTable.Last;
                CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
               end;

             MainForm.Bona_recPlistTable.Insert;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_recPlistTable.Post ;
             MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

             MainForm.Bona_recPlistTable.Active:=False;
             MainForm.Bona_recPlistTable.SQL.Clear;
             MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
             MainForm.Bona_recPlistTable.Active:=True;
             MainForm.Bona_recPlistTable.EnableControls;

            ProduitBonRecGCbx.Text:='';
            ProduitsListDBGridEh.SetFocus;

           ProduitsListDBGridEh.SelectedIndex:=2;
           ProduitsListDBGridEh.EditorMode:=True;

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
            FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
            AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
             FSplashAddUnite.Show;
          //--- this tage = 0 is for multi name added by produit combobox----//
             FSplashAddUnite.Tag:=0;
             end;
          end;

   end;
          MainForm.ProduitTable.Active:=False;
          MainForm.ProduitTable.SQL.Clear;
          MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit';
          MainForm.ProduitTable.Active := True;

         MainForm.Bona_recPlistTable.Refresh;
        ProduitBonRecGCbx.AutoDropDown:=False;
         ProduitBonRecGCbx.SelectAll;

     end;
     MainForm.Bona_recPlistTable.Last;
 end;

end;

procedure TBonRecGestionF.FournisseurBonRecGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
          FournisseurBonRecGCbx.Items.Clear;
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
          MainForm.FournisseurTable.Active:=True;

       MainForm.FournisseurTable.first;

     for I := 0 to MainForm.FournisseurTable.RecordCount - 1 do
     if MainForm.FournisseurTable.FieldByName('nom_f').IsNull = False then
     begin
          FournisseurBonRecGCbx.Items.Add(MainForm.FournisseurTable.FieldByName('nom_f').AsString);
       MainForm.FournisseurTable.Next;
      end;

      MainForm.FournisseurTable.EnableControls;
  end;


procedure TBonRecGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

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
          MainForm.Bona_recPlistTable.SQL.Text:='Select * FROM bona_rec_list' ;
          MainForm.Bona_recPlistTable.Active:=True;
          MainForm.Bona_recPlistTable.EnableControls;

  MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

//  FreeAndNil(BonRecGestionF);
//  Destroy
 end;

procedure TBonRecGestionF.FormShow(Sender: TObject);

var CodeCB: Integer;
begin
// use this tage when i click on edit button for bon
 if Tag = 1 then
 begin
     BonRecGFourOLDCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonRecGFourOLDCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
     BonRecGFourNEWCredit.Caption:= FloatToStrF(StrToFloat(StringReplace(BonRecGFourNEWCredit.Caption, #32, '', [rfReplaceAll])),ffNumber,14,2) ;
  end;


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
   FournisseurBonRecGCbx.Text:= MainForm.Bona_recTable.FieldValues['fourbarec'];
   ProduitBonRecGCbx.SetFocus;
 end else
     begin
   //    FournisseurBonRecGCbx.SetFocus;
     end;

  FournisseurBonRecGCbx.SetFocus;
 end;

  sImage1.ImageIndex:= MainForm.sImage1.ImageIndex;
 end;

procedure TBonRecGestionF.FournisseurBonRecGCbxExit(Sender: TObject);
var CodeF: Integer;
OLDCreditF,RegFCreditF,OLDCreditFV,OLDCreditFINI : Currency;
begin

  if FournisseurBonRecGCbx.Text <> '' then
    begin
     FournisseurBonRecGCbxChange(Sender);
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurBonRecGCbx.Text )+')'  ;
      MainForm.FournisseurTable.Active:=True;
      if NOT  MainForm.FournisseurTable.IsEmpty then
     begin
      OLDCreditFINI:= MainForm.FournisseurTable.FieldByName('oldcredit_f').AsCurrency ;

     if MainForm.FournisseurTable.FieldByName('activ_f').AsBoolean <> False then
     begin

      if (MainForm.FournisseurTable.IsEmpty) then
      begin
       FournisseurBonRecGCbx.Text := '';
       BonRecGFourOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       BonRecGFourNEWCredit.Caption:=BonRecGFourOLDCredit.Caption;
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
     OLDCreditF := OLDCreditF + MainForm.Bona_recTableCredit.FieldValues['MontantRes'];
     MainForm.Bona_recTableCredit.Next;
     end;

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


      MainForm.Bona_recTableCredit.EnableControls;
      if NOT (MainForm.Bona_recTableCredit.IsEmpty ) OR NOT (MainForm.RegfournisseurTable.IsEmpty ) OR NOT (OLDCreditFINI = 0) then
      begin
       MainForm.Bona_recTableCredit.last;
//       MainForm.Bona_facTableCredit.last;
       BonRecGFourOLDCredit.Caption:= CurrToStrF(((OLDCreditF - RegFCreditF) + OLDCreditFINI ),ffNumber,2) ;

       if NOT (BonRecPListDataS.DataSet.IsEmpty) then
        begin
         if Tag = 0 then
         begin
         BonRecGFourNEWCredit.Caption:=
         CurrToStrF((MainForm.Bona_recTableCredit.FieldByName('MontantRes').AsCurrency )+ StrToCurr (StringReplace(BonRecResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer
        end else
            begin
              BonRecGFourNEWCredit.Caption:=
              CurrToStrF((MainForm.Bona_recTableCredit.FieldByName('MontantRes').AsCurrency )+ StrToCurr (StringReplace(BonRecResteLbl.Caption, #32, '', [rfReplaceAll])),ffNumber,2);//  anyways i'm software developer

            end;

        end;
        end else
        begin
         BonRecGFourOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
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

              MainForm.FournisseurTable.Active:=false;
              MainForm.FournisseurTable.SQL.Clear;
              MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
              MainForm.FournisseurTable.Active:=True;
              MainForm.FournisseurTable.EnableControls;
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

procedure TBonRecGestionF.ListAddProduitBonRecGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
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
          MainForm.Bona_recTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bona_recTable.FieldByName('date_bafac').AsDateTime:= DateBonRecGD.DateTime;
          MainForm.Bona_recTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_recTable.FieldValues['obser_barec']:= ObserBonRecGMem.Text;
          MainForm.Bona_recTable.FieldValues['num_cheque_barec']:= NChequeBonRecGCbx.Text;
          MainForm.Bona_recTable.FieldByName('montht_barec').AsCurrency:= StrToCurr(StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonRecGEdt.Text<>'' then
          begin
             MainForm.Bona_recTable.FieldByName('remise_barec').AsCurrency:=StrToCurr(StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_recTable.FieldByName('remise_barec').AsCurrency:=0;
                   end;


          MainForm.Bona_recTable.FieldByName('montver_barec').AsCurrency:=StrToCurr(StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('montttc_barec').AsCurrency:=StrToCurr(StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

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
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
              MainForm.RegfournisseurTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

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
        end;
  end  else
  begin

     if  (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = false)  then
         begin
          codeBR:= MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;

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
          MainForm.Bona_recTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
//          MainForm.Bona_recTable.FieldByName('date_bafac').AsDateTime:= DateBonRecGD.DateTime;
          MainForm.Bona_recTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.Bona_recTable.FieldValues['obser_barec']:= ObserBonRecGMem.Text;
          MainForm.Bona_recTable.FieldValues['num_cheque_barec']:= NChequeBonRecGCbx.Text;
          MainForm.Bona_recTable.FieldByName('montht_barec').AsCurrency:= StrToCurr(StringReplace(BonRecTotalHTLbl.Caption, #32, '', [rfReplaceAll]));

          if RemiseBonRecGEdt.Text<>'' then
          begin
             MainForm.Bona_recTable.FieldByName('remise_barec').AsCurrency:=StrToCurr(StringReplace(RemiseBonRecGEdt.Text, #32, '', [rfReplaceAll]));
          end else begin
                    MainForm.Bona_recTable.FieldByName('remise_barec').AsCurrency:=0;
                   end;


          MainForm.Bona_recTable.FieldByName('montver_barec').AsCurrency:=StrToCurr(StringReplace(BonRecRegleLbl.Caption, #32, '', [rfReplaceAll]));
          MainForm.Bona_recTable.FieldByName('montttc_barec').AsCurrency:=StrToCurr(StringReplace(BonRecTotalTTCLbl.Caption, #32, '', [rfReplaceAll]));

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
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec = ' + IntToStr(codeBR));
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec = ' + IntToStr(codeBR));
              MainForm.RegfournisseurTable.Refresh ;
              MainForm.Opt_cas_bnk_CaisseTable.Refresh ;

          end;


     CanClose:= True;
  end;

end;

procedure TBonRecGestionF.ProduitBonRecGCbxExit(Sender: TObject);
begin
ProduitBonRecGCbx.Text:='';
ProduitBonRecGCbx.AutoDropDown:=False;
end;

procedure TBonRecGestionF.BonRecPListDataSDataChange(Sender: TObject;
  Field: TField);
begin
  if NOT BonRecPListDataS.DataSet.IsEmpty then
  begin
    DeleteProduitBonRecGBtn.Visible:= True;
    ClearProduitBonRecGBtn.Visible:= True;

    if (FournisseurBonRecGCbx.Text<>'')  AND (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean <> True) then
    begin
    ValiderBARecBonRecGBtn.Enabled:= True;
    ValiderBARecBonRecGBtn.ImageIndex:=12;
    end;
    
   if MainForm.Bona_recTable.FieldValues['valider_barec'] <> True then
   begin

    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +IntToStr(MainForm.Bona_recPlistTable.FieldValues['code_p']);
    MainForm.ProduitTable.Active:=True;


    BonRecGOLDStock.Caption:=
     floatTostrF((MainForm.ProduitTable.FieldValues['QutDispo']),ffNumber,14,2);
    BonRecGNEWStock.Caption:=
     floatTostrF(((MainForm.ProduitTable.FieldValues['QutDispo'])+((MainForm.Bona_recPlistTable.FieldValues['qut_p']) * (MainForm.Bona_recPlistTable.FieldValues['cond_p']))),ffNumber,14,2);

//     if(StrToFloat (StringReplace(BonRecGNEWStock.Caption, #32, '', [rfReplaceAll])))  < 0 then
//    begin
//     Timer1.Enabled:= true;
//    end else
//        begin
//        Timer1.Enabled:= False;
//        Label20.Visible:=false;
//        end;

    MainForm.ProduitTable.Active:=False;
    MainForm.ProduitTable.SQL.Clear;
    MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ';
    MainForm.ProduitTable.Active:=True;
    MainForm.ProduitTable.EnableControls;


    RemisePerctageBonRecGEdt.Enabled:=True;
    RemiseBonRecGEdt.Enabled:=True;
    RemiseTypeBonRecGCbx.Enabled:= True;

   end;
     ProduitsListDBGridEh.ReadOnly:=False;
    end else
    begin
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
end;

procedure TBonRecGestionF.ValiderBARecBonRecGBtnClick(Sender: TObject);
begin
    if FournisseurBonRecGCbx.Text <> '' then
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
begin

  if not(Key in N) then
  begin
     key := #0;
  end;
end;

procedure TBonRecGestionF.RemiseBonRecGEdtExit(Sender: TObject);
var
RemiseBonRecG: Currency;
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
var RemiseBonRecG,BonRTotalHT,BonRTotalTVA,OLDTTC : Currency;
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
var BonRTotalHT,RemisePerctageBonRec,TotalTVANet,NewHT,NewTVA,NewTTC,Remise,OldTTC,OldFourCredit : Currency;
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
         BonRecTotalTVALbl.Caption:= FloatToStrF((TotalTVANet - (( TotalTVANet  * RemisePerctageBonRec)/(100))),ffNumber,14,2); //TVA
         BonRTotalHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - (( BonRTotalHT  * RemisePerctageBonRec)/(100))),ffNumber,14,2); //HT
            if BonRTotalHTNewLbl.Caption <>'' then
            begin
            NewHT:=StrToFloat (StringReplace(BonRTotalHTNewLbl.Caption , #32, '', [rfReplaceAll]));
            end;
            if BonRecTotalTVALbl.Caption <> '' then
            begin
            NewTVA:=StrToFloat(StringReplace(BonRecTotalTVALbl.Caption, #32, '', [rfReplaceAll]));
            end;
         BonRecTotalTTCLbl.Caption:=  FloatToStrF((NewHT + NewTVA),ffNumber,14,2); // TTC
         BonRecResteLbl.Caption:= BonRecTotalTTCLbl.Caption;                       //REst
            if RemisePerctageBonRecGEdt.Focused then
            begin
            RemiseBonRecGEdt.Text:=FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);
            end;

        BonRRemiseHTNewLbl.Caption:= FloatToStrF((BonRTotalHT - NewHT),ffNumber,14,2);

            if BonRecGFourOLDCredit.Caption <>'' then
            begin
            OldFourCredit:=StrToFloat (StringReplace(BonRecGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
            end;

        BonRecGFourNEWCredit.Caption:=  FloatToStrF(((NewHT + NewTVA) + (OldFourCredit)),ffNumber,14,2);

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
            BonRecResteLbl.Caption:= BonRecTotalTTCLbl.Caption;
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
          BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
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


         BonRecResteLbl.Caption:=BonRecTotalTTCLbl.Caption;

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

        BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);
        end else
            begin
             RemiseBonRecGEdt.Text:='';
             BonRRemiseHTNewLbl.Caption:='0';
             BonRecTotalTTCLbl.Caption := BonRTotalTTCNewLbl.Caption;
             BonRecResteLbl.Caption:=BonRecTotalTTCLbl.Caption;
             BonRecTotalTVALbl.Caption:=TotalTVANewLbl.Caption;
             BonRTotalHTNewLbl.Caption:=BonRecTotalHTLbl.Caption;
             BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC  + OldFourCredit),ffNumber,14,2);

              if BonRecGFourOLDCredit.Caption <>'' then
              begin
              OldFourCredit:=StrToFloat (StringReplace(BonRecGFourOLDCredit.Caption , #32, '', [rfReplaceAll]));
              end;
              if BonRecGFourOLDCredit.Caption <>'' then
              begin
              NewTTC:=StrToFloat (StringReplace(BonRecTotalTTCLbl.Caption , #32, '', [rfReplaceAll]));
              end;
           BonRecGFourNEWCredit.Caption:=  FloatToStrF((NewTTC + OldFourCredit),ffNumber,14,2);
          //   BonRecGFourNEWCredit.Caption:= BonRecTotalTTCLbl.Caption;
            end;
      end;
end;

procedure TBonRecGestionF.RemiseTypeBonRecGCbxChange(Sender: TObject);
begin
RemiseBonRecGEdt.Text:='';
RemisePerctageBonRecGEdt.Text:='';
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
end;

procedure TBonRecGestionF.EditBARecBonRecGBtnClick(Sender: TObject);
begin
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
  CurrToStrF((((MainForm.FournisseurTable.FieldValues['credit_f'])-(StringReplace(BonRecResteLbl.Caption, #32, '', [rfReplaceAll])))),ffNumber,2);

        begin
      MainForm.FournisseurTable.Edit;
      MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency:= (MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency) - (MainForm.Bona_recTable.FieldByName('MontantRes').AsCurrency);
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
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
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
            MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit WHERE code_p = ' +QuotedStr(MainForm.SQLQuery.FieldValues['code_p']) ;
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
           MainForm.ProduitTable.SQL.Text:='SELECT * FROM produit ' ;
           MainForm.ProduitTable.Active:=True;
           MainForm.ProduitTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bona_recTable.Refresh;
     end;

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
            MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(codeBR));
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
            ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
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
  BonRecResteLbl.Caption:=CurrToStrF(((MainForm.Bona_recTable.FieldValues['MontantRes'])),ffNumber,2) ;
  end;

  NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;

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
BonRecResteLbl.Caption:=CurrToStrF(((MainForm.Bona_recTable.FieldValues['MontantRes'])),ffNumber,2) ;
end;

 NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;
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
BonRecResteLbl.Caption:=CurrToStrF(((MainForm.Bona_recTable.FieldValues['MontantRes'])),ffNumber,2) ;
end;

 NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;
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
BonRecResteLbl.Caption:=CurrToStrF(((MainForm.Bona_recTable.FieldValues['MontantRes'])),ffNumber,2) ;
end;

 NumBonRecGEdt.Caption:= MainForm.Bona_recTable.FieldByName('num_barec').AsString;
end;

procedure TBonRecGestionF.FournisseurBonRecGCbxChange(Sender: TObject);
begin
// use this code to make mode pai espece
      ModePaieBonRecGCbxDropDown(Self);
      ModePaieBonRecGCbx.ItemIndex:=0;
      ModePaieBonRecGCbxClick(Self) ;
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

procedure TBonRecGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13 ) OR (Key=#9)then
  begin
//    Key := 0;
// i really forget why i used that code for -_- !!  ok i remmebr this is to jume to the next field i gues lol


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

procedure TBonRecGestionF.FormCreate(Sender: TObject);
begin
MainForm.Bona_recPlistTable.Active:=True;
end;

procedure TBonRecGestionF.GettingData;

 var
  MoneyWordRX,NumRX,DateRX,NameRX,AdrRX,VilleRX,WilayaRX,MPRX,NCHeqRX : TfrxMemoView;

  str1 : string;
begin
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

    MainForm.FournisseurTable.Active:=False;
    MainForm.FournisseurTable.SQL.Clear;
    MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur WHERE code_f ='+ IntToStr(MainForm.Bona_recTable.FieldByName('code_f').AsInteger);
    MainForm.FournisseurTable.Active:=True;


    AdrRX:= BonRecPListfrxRprt.FindObject('AdrRX') as TfrxMemoView;
  AdrRX.Text:= MainForm.FournisseurTable.FieldByName('adr_f').AsString;

    VilleRX:= BonRecPListfrxRprt.FindObject('VilleRX') as TfrxMemoView;
  VilleRX.Text:= MainForm.FournisseurTable.FieldByName('ville_f').AsString;

    WilayaRX:= BonRecPListfrxRprt.FindObject('WilayaRX') as TfrxMemoView;
  WilayaRX.Text:=  MainForm.FournisseurTable.FieldByName('willaya_f').AsString;

    MainForm.FournisseurTable.Active:=False;
    MainForm.FournisseurTable.SQL.Clear;
    MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
    MainForm.FournisseurTable.Active:=True;

    MPRX:= BonRecPListfrxRprt.FindObject('MPRX') as TfrxMemoView;
  MPRX.Text:= ModePaieBonRecGCbx.Text;

    NCHeqRX:= BonRecPListfrxRprt.FindObject('NCHeqRX') as TfrxMemoView;
  NCHeqRX.Text:= NChequeBonRecGCbx.Text;

 end;


procedure TBonRecGestionF.sSpeedButton5Click(Sender: TObject);
begin
 GettingData;
MainForm.Bona_recPlistTable.DisableControls;
BonRecPListfrxRprt.PrepareReport;
BonRecPListfrxRprt.ShowReport;
MainForm.Bona_recPlistTable.EnableControls;
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
//  if  (MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency )
//    OR(MainForm.Bona_recPlistTable.FieldByName('prixht_p').AsCurrency > MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency )
//         then
// begin
// ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
// ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;
end;

end.
