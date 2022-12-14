unit UProduitGestion;

interface

uses
  Winapi.Windows,MMSystem,Data.DB, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  acAlphaImageList, sPanel, acSlider, Vcl.StdCtrls, AdvToolBtn, Vcl.ExtCtrls,
  Vcl.ComCtrls, sPageControl,sComboBox, acImage,Vcl.Imaging.jpeg, Vcl.ExtDlgs;

type
  TProduitGestionF = class(TForm)
    ProduitGPgControl: TsPageControl;
    GeneralClientGTB: TsTabSheet;
    GeneralTB: TPanel;
    FamilleProduitGLbl: TLabel;
    RefProduitGLbl: TLabel;
    NameProduitGLbl: TLabel;
    PrixAHTProduitLbl: TLabel;
    RequiredStarProduitGLbl: TLabel;
    RequiredProduitGlbl: TLabel;
    Label1: TLabel;
    NameProduitGErrorP: TPanel;
    LineP: TPanel;
    PrixAHTProduitEdt: TEdit;
    NameProduitGEdt: TEdit;
    FamilleProduitGCbx: TComboBox;
    RefProduitGEdt: TEdit;
    SFamilleProduitGCbx: TComboBox;
    PlusInfoClientGTB: TsTabSheet;
    PlusInfoTB: TPanel;
    ObserClientGLbl: TLabel;
    LineP03: TPanel;
    ObserProduitGMem: TMemo;
    BottomP: TPanel;
    UniteProduitGCbx: TComboBox;
    Label2: TLabel;
    TVAProduitGCbx: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    PerProduitGLbl: TLabel;
    PerProduitGSlider: TsSlider;
    DatePerProduitGLbl: TLabel;
    AlertJoursProduitEdt: TEdit;
    AlertJoursProduitLbl: TLabel;
    AlertJoursProduitLbl2: TLabel;
    PrixATTCProduitEdt: TEdit;
    PrixATTCProduitLbl: TLabel;
    Label10: TLabel;
    LineP3: TPanel;
    PrixVHTDProduitEdt: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    PrixVTTCDProduitEdt: TEdit;
    Label13: TLabel;
    LineP4: TPanel;
    MargeDProduitEdt: TEdit;
    Label14: TLabel;
    PrixVHTDProduitLbl: TLabel;
    PrixVHTRProduitEdt: TEdit;
    PrixVTTCRProduitEdt: TEdit;
    MargeRProduitEdt: TEdit;
    PrixVHTRProduitLbl: TLabel;
    PrixVHTGProduitEdt: TEdit;
    PrixVTTCGProduitEdt: TEdit;
    MargeGProduitEdt: TEdit;
    PrixVHTGProduitLbl: TLabel;
    PrixVHTA1ProduitEdt: TEdit;
    PrixVTTCA1ProduitEdt: TEdit;
    MargeA1ProduitEdt: TEdit;
    PrixVHTA1ProduitLbl: TLabel;
    PrixVHTA2ProduitEdt: TEdit;
    PrixVTTCA2ProduitEdt: TEdit;
    MargeA2ProduitEdt: TEdit;
    PrixVHTA2ProduitLbl: TLabel; Label20: TLabel;
    Label21: TLabel; Label22: TLabel;
    Label23: TLabel; Label24: TLabel;
    LineP2: TPanel;  Label25: TLabel;
    StockINProduitEdt: TEdit;
    StockAlertProduitEdt: TEdit;
    Label26: TLabel;
    StockActuelProduitEdt: TEdit;
    Label27: TLabel;
    Label29: TLabel;
    CodeBarProduitGEdt: TEdit;
    RandomCBProduitGBtn: TAdvToolButton;
    Label9: TLabel;
    AddSousFamilleProduitGBtn: TAdvToolButton;
    AddFamilleProduitGBtn: TAdvToolButton;
    AddUniteProduitGBtn: TAdvToolButton;
    LocalisationProduitGCbx: TComboBox;
    Label30: TLabel;
    AddLocationProduitGBtn: TAdvToolButton;
    ShowCalculaturProduitGBtn: TAdvToolButton;
    LineP5: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    MinStockProduitGCbx: TEdit;
    MaxStockProduitGCbx: TEdit;
    MulteCBProduitGBtn: TAdvToolButton;
    Label5: TLabel;
    ImageShowProduitG: TsImage;
    ImageEditProduitGBtn: TAdvToolButton;
    ImageDeleteProduitGBtn: TAdvToolButton;
    OpenPictureDialogProduitG: TOpenPictureDialog;
    sAlphaImageList1: TsAlphaImageList;
    RequiredRefProduitGlbl: TLabel;
    RefProduitGErrorP: TPanel;
    DatePerProduitGD: TDateTimePicker;
    ShowKeyBoardProduitGBtn: TAdvToolButton;
    Shape1: TShape;
    PMPProduitLbl: TLabel;
    PMPProduitEdt: TEdit;
    MarkProduitGLbl: TLabel;
    MarkProduitGCbx: TComboBox;
    AddMarkProduitGBtn: TAdvToolButton;
    NSeriesProduitGMem: TMemo;
    NSeriesProduitGLbl: TLabel;
    CancelProduitGBtn: TAdvToolButton;
    OKProduitGBtn: TAdvToolButton;
    Panel1: TPanel;
    NSeriesCountProduitGLbl: TLabel;
    Label28: TLabel;
    FournisseurProduitGCbx: TComboBox;
    AddFourProduitGBtn: TAdvToolButton;
    Label6: TLabel;
    DetailProduitGMem: TMemo;
    procedure ShowCalculaturProduitGBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelProduitGBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NameProduitGEdtChange(Sender: TObject);
    procedure NameProduitGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure PrixAHTProduitEdtChange(Sender: TObject);
    procedure PrixAHTProduitEdtExit(Sender: TObject);
    procedure PrixATTCProduitEdtExit(Sender: TObject);
    procedure PrixVHTDProduitEdtChange(Sender: TObject);
    procedure TVAProduitGCbxChange(Sender: TObject);
    procedure MargeDProduitEdtChange(Sender: TObject);
    procedure PrixVHTDProduitEdtExit(Sender: TObject);
    procedure PrixVTTCDProduitEdtExit(Sender: TObject);
    procedure MargeDProduitEdtExit(Sender: TObject);
    procedure PrixVHTRProduitEdtChange(Sender: TObject);
    procedure PrixVHTRProduitEdtExit(Sender: TObject);
    procedure PrixVTTCRProduitEdtExit(Sender: TObject);
    procedure MargeRProduitEdtExit(Sender: TObject);
    procedure MargeRProduitEdtChange(Sender: TObject);
    procedure PrixVHTGProduitEdtChange(Sender: TObject);
    procedure PrixVHTGProduitEdtExit(Sender: TObject);
    procedure PrixVTTCGProduitEdtExit(Sender: TObject);
    procedure MargeGProduitEdtChange(Sender: TObject);
    procedure PrixVHTA1ProduitEdtChange(Sender: TObject);
    procedure PrixVHTA1ProduitEdtExit(Sender: TObject);
    procedure PrixVTTCA1ProduitEdtExit(Sender: TObject);
    procedure MargeA1ProduitEdtChange(Sender: TObject);
    procedure PrixVHTA2ProduitEdtChange(Sender: TObject);
    procedure PrixVHTA2ProduitEdtExit(Sender: TObject);
    procedure PrixVTTCA2ProduitEdtExit(Sender: TObject);
    procedure MargeA2ProduitEdtChange(Sender: TObject);
    procedure PerProduitGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure FournisseurProduitGCbxEnter(Sender: TObject);
    procedure AddUniteProduitGBtnClick(Sender: TObject);
    procedure AddFourProduitGBtnClick(Sender: TObject);
    procedure UniteProduitGCbxEnter(Sender: TObject);
    procedure AddFamilleProduitGBtnClick(Sender: TObject);
    procedure AddSousFamilleProduitGBtnClick(Sender: TObject);
    procedure SFamilleProduitGCbxEnter(Sender: TObject);
    procedure MulteCBProduitGBtnClick(Sender: TObject);
    procedure RandomCBProduitGBtnClick(Sender: TObject);
    procedure CodeBarProduitGEdtChange(Sender: TObject);
    procedure OKProduitGBtnClick(Sender: TObject);
    procedure LocalisationProduitGCbxEnter(Sender: TObject);
    procedure AddLocationProduitGBtnClick(Sender: TObject);
    procedure ImageShowProduitGMouseEnter(Sender: TObject);
    procedure ImageShowProduitGMouseLeave(Sender: TObject);
    procedure ImageShowProduitGClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImageDeleteProduitGBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RefProduitGEdtChange(Sender: TObject);
    procedure DatePerProduitGDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MargeDProduitEdtClick(Sender: TObject);
    procedure MargeRProduitEdtClick(Sender: TObject);
    procedure MargeGProduitEdtClick(Sender: TObject);
    procedure MargeA1ProduitEdtClick(Sender: TObject);
    procedure MargeA2ProduitEdtClick(Sender: TObject);
    procedure PrixAHTProduitEdtClick(Sender: TObject);
    procedure PrixATTCProduitEdtClick(Sender: TObject);
    procedure PrixVHTDProduitEdtClick(Sender: TObject);
    procedure PrixVTTCDProduitEdtClick(Sender: TObject);
    procedure PrixVHTRProduitEdtClick(Sender: TObject);
    procedure PrixVTTCRProduitEdtClick(Sender: TObject);
    procedure PrixVHTGProduitEdtClick(Sender: TObject);
    procedure PrixVTTCGProduitEdtClick(Sender: TObject);
    procedure PrixVHTA1ProduitEdtClick(Sender: TObject);
    procedure PrixVTTCA1ProduitEdtClick(Sender: TObject);
    procedure PrixVHTA2ProduitEdtClick(Sender: TObject);
    procedure PrixVTTCA2ProduitEdtClick(Sender: TObject);
    procedure PrixVHTDProduitEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeBarProduitGEdtExit(Sender: TObject);
    procedure CodeBarProduitGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrixVTTCDProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixAHTProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure CodeBarProduitGEdtEnter(Sender: TObject);
    procedure ShowKeyBoardProduitGBtnClick(Sender: TObject);
    procedure NameProduitGEdtMouseEnter(Sender: TObject);
    procedure TVAProduitGCbxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MarkProduitGCbxEnter(Sender: TObject);
    procedure AddMarkProduitGBtnClick(Sender: TObject);
    procedure CancelProduitGBtnMouseEnter(Sender: TObject);
    procedure CancelProduitGBtnMouseLeave(Sender: TObject);
    procedure SFamilleProduitGCbxDropDown(Sender: TObject);
    procedure FamilleProduitGCbxEnter(Sender: TObject);
    procedure FamilleProduitGCbxExit(Sender: TObject);
    procedure SFamilleProduitGCbxExit(Sender: TObject);
    procedure MarkProduitGCbxExit(Sender: TObject);
    procedure UniteProduitGCbxExit(Sender: TObject);
    procedure NSeriesProduitGMemChange(Sender: TObject);

  private
    { Private declarations }
     lastkey:char;

  public
    { Public declarations }
    PAdded : Boolean;
  end;

var
  ProduitGestionF: TProduitGestionF;


implementation

{$R *.dfm}

uses Winapi.ShellAPI,DateUtils,Math,IniFiles,
  UMainF, UDataModule, USplashAddUnite, UFournisseurList,USplashAddCodeBarre,
  UFournisseurGestion,UClientGestion, USplash, UProduitsList,UPertesGestion,UInventoryGestion,
  UComptoir, UBonFacAGestion,UBonFacVGestion,UBonLivGestion,UBonRecGestion,
  UBonFacPGestion,UBonComAGestion,UBonComVGestion,UBonRetVGestion, UBonRetAGestion;


//----------- use this procedure to set center aligment text for the combobox---////

procedure ComboboxAligment;
 Var
R:THandle;
begin

R := FindWindowEx(ProduitGestionF.TVAProduitGCbx.Handle,0,'EDIT','');
SendMessage(R,EM_SETMARGINS,EC_LEFTMARGIN or EC_RIGHTMARGIN,MakeLong(21,3));

end;


//----- this function is for check if the edit has character

  function IsValidEntry(s:String):Boolean;
var
  n:Integer;
begin
  result := true;
  for n := 1 to Length(s) do begin
    if (s[n] < '0') or (s[n] > '9') then
    begin
       result := false;
       exit;
    end;
  end;
end;


procedure  CleaningProduitGEdt;
begin
  ProduitGestionF.RefProduitGEdt.Clear;
  ProduitGestionF.CodeBarProduitGEdt.Clear;
  ProduitGestionF.NameProduitGEdt.Clear;
  ProduitGestionF.FamilleProduitGCbx.Clear;
  ProduitGestionF.SFamilleProduitGCbx.Clear;
  ProduitGestionF.UniteProduitGCbx.Clear;
//  ProduitGestionF.TVAProduitGCbx.ItemIndex := 0;
  ProduitGestionF.PerProduitGSlider.SliderOn := False;
  ProduitGestionF.AlertJoursProduitEdt.Text:= '0';
  ProduitGestionF.StockINProduitEdt.Clear;
  ProduitGestionF.StockAlertProduitEdt.Clear;
  ProduitGestionF.FournisseurProduitGCbx.Clear;
  ProduitGestionF.MinStockProduitGCbx.Clear;
  ProduitGestionF.MaxStockProduitGCbx.Clear;
  ProduitGestionF.LocalisationProduitGCbx.Clear;
  ProduitGestionF.ObserProduitGMem.Clear;


end;


procedure TProduitGestionF.AddFamilleProduitGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the produit familly to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(ProduitGestionF);
  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00B0279C;
  FSplashAddUnite.LineP.Color:= $00B0279C;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Famille:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer une Famille' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Famille';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (ProduitGestionF.Left + ProduitGestionF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=7;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 0 ;
end;

procedure TProduitGestionF.RandomCBProduitGBtnClick(Sender: TObject);
var CodeB: String;
    CodeP: Integer;
begin

 if Tag = 1 then
 begin
  CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
 end;

   //------ this code is to select the last code_cb in the database and add the value to oune number 1070000000111 then pust it in tyhe code a barre new number
      MainForm.CodebarresTable.Active:= False;
      MainForm.CodebarresTable.sql.Clear;
      mainform.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ORDER by code_cb '   ;
      MainForm.CodebarresTable.Active:= True;
      MainForm.CodebarresTable.IndexFieldNames:='';
  //------ if the edit was empty set oune number first when the tabel is empty if not empty add our number to the last in the databse
     if IsValidEntry(CodeBarProduitGEdt.Text)   then
    begin
      if CodeBarProduitGEdt.Text = ''  then
         begin
          if (MainForm.CodebarresTable.RecordCount <= 0) AND (MainForm.ProduitTable.RecordCount <= 0)   then
             begin
             CodeBarProduitGEdt.Text := '1050000000111' ;
             CodeBarProduitGEdt.Text  := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + 6);
                end else
            begin
              MainForm.ProduitTable.Last;
              CodeB := IntToStr(  StrToInt64(MainForm.ProduitTable.FieldValues['code_p']) + 1050000000111);
                if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                 OR
                   (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                 then
                 begin
                   CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );
                  end else
                     begin
                        CodeBarProduitGEdt.Text:= CodeB;
                     end;
                 end;
             end else
       //------ if the edit not empty add our number to the last in the edit
           begin
         if (MainForm.CodebarresTable.RecordCount <= 0) AND (MainForm.ProduitTable.RecordCount <= 0) then
             begin
             CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + StrToInt64(MainForm.ProduitTable.FieldValues['code_p']));
           end else
                begin
             // use this tag to put the random number at first from the number 1050000000111 + code_p then the second press from the edit + code_p
                if RandomCBProduitGBtn.Tag = 0 then
                begin
                    MainForm.ProduitTable.Last;
                    CodeB := IntToStr(  StrToInt64(MainForm.ProduitTable.FieldValues['code_p']) + 1050000000111);
                   if  (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                     OR
                      (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                     then
                     begin
                       CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + Random(99) );
                     end else
                         begin
                          CodeBarProduitGEdt.Text:= CodeB;
                         end;
                    end ;
                if RandomCBProduitGBtn.Tag = 1 then
                begin
                  CodeB := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + StrToInt64(MainForm.ProduitTable.FieldValues['code_p']));
                 if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                     OR
                      (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                 then
                 begin
                 CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + Random(99) );
                 end else
                     begin
                      CodeBarProduitGEdt.Text:= CodeB;
                     end;
                  end;
              end;
       end;
      RandomCBProduitGBtn.Tag := 1 ;
      CodeBarProduitGEdt.SelectAll;
      CodeBarProduitGEdt.SetFocus;
      MainForm.CodebarresTable.IndexFieldNames:='code_p';
     end else
   begin
          CodeBarProduitGEdt.Text := '' ;
     begin
      if CodeBarProduitGEdt.Text = ''  then
         begin
          if (MainForm.CodebarresTable.RecordCount <= 0) AND (MainForm.ProduitTable.RecordCount <= 0)   then
             begin
             CodeBarProduitGEdt.Text := '1050000000111' ;
             CodeBarProduitGEdt.Text  := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + 6);
                end else
            begin
              MainForm.ProduitTable.Last;
              CodeB := IntToStr(  StrToInt64(MainForm.ProduitTable.FieldValues['code_p']) + 1050000000111);
              if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                 OR
                   (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                 then
                 begin
                 CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeB) + Random(99) );
                 end else
                     begin
                       CodeBarProduitGEdt.Text:= CodeB;
                     end;
                 end;
             end else
   //------ if the edit not empty add our number to the last in the edit
       begin
              if (MainForm.CodebarresTable.RecordCount <= 0) AND (MainForm.ProduitTable.RecordCount <= 0) then
             begin
             CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + StrToInt64(MainForm.ProduitTable.FieldValues['code_p']));
            end else
             begin
             // use this tag to put the random number at first from the number 1050000000111 + code_p then the second press from the edit + code_p
                if RandomCBProduitGBtn.Tag = 0 then
                begin
                    MainForm.ProduitTable.Last;
                    CodeB := IntToStr(  StrToInt64(MainForm.ProduitTable.FieldValues['code_p']) + 1050000000111);
                  if  (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                     OR
                      (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                     then
                     begin
                      CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + Random(99) );
                     end else
                         begin
                          CodeBarProduitGEdt.Text:= CodeB;
                         end;
                    end ;
                if RandomCBProduitGBtn.Tag = 1 then
                begin
                  CodeB := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + StrToInt64(MainForm.ProduitTable.FieldValues['code_p']));
                 if   (MainForm.ProduitTable.Locate('codebar_p', CodeB, [loCaseInsensitive]))
                     OR
                      (MainForm.CodebarresTable.Locate('nom_cb', CodeB, [loCaseInsensitive]))
                 then
                 begin
                 CodeBarProduitGEdt.Text := IntToStr(  StrToInt64(CodeBarProduitGEdt.Text) + Random(99) );
                 end else
                     begin
                      CodeBarProduitGEdt.Text:= CodeB;
                     end;
                  end;
              end;
       end;
      RandomCBProduitGBtn.Tag := 1 ;
      CodeBarProduitGEdt.SelectAll;
      CodeBarProduitGEdt.SetFocus;
      MainForm.CodebarresTable.IndexFieldNames:='code_p';
         end;
         end;

         if Tag = 1 then
         begin
         MainForm.ProduitTable.DisableControls;
         MainForm.ProduitTable.Active:= False;
         MainForm.ProduitTable.SQL.Text:= ProduitsListF.PSQL
          +' WHERE code_p = ' +IntToStr(CodeP);
         MainForm.ProduitTable.Active:= True;
         MainForm.ProduitTable.EnableControls;

         end;

end;

procedure TProduitGestionF.RefProduitGEdtChange(Sender: TObject);
begin
if NameProduitGEdt.Text <> '' then
  begin
  OKProduitGBtn.Enabled := true;
  OKProduitGBtn.ImageIndex := 17;
  RefProduitGEdt.BorderStyle:= bsSingle;
  RefProduitGEdt.StyleElements:= [seClient,seBorder];
  RequiredRefProduitGlbl.Visible:= False;
  RefProduitGErrorP.Visible:= False;
  end;
end;

procedure TProduitGestionF.AddSousFamilleProduitGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the produit Sous familly to add new one---------//

    FSplashAddUnite:=TFSplashAddUnite.Create(ProduitGestionF);
    FSplashAddUnite.Width:= 355;
    FSplashAddUnite.Panel1.Color:= $005F1AD8;
    FSplashAddUnite.LineP.Color:= $005F100F8CA90;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 20 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 20;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Sous Famille:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer une Sous Famille' ;
    FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Sous Famille';
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  //  FSplashAddUnite.NameAddUniteSLbl.Left:=8;
    FSplashAddUnite.Left:=  (ProduitGestionF.Left + ProduitGestionF.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.Image1.Visible:= True;
    FSplashAddUnite.Image1.ImageIndex:=7;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 1 ;
end;


procedure TProduitGestionF.AddUniteProduitGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the produit Unite  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(ProduitGestionF);
  FSplashAddUnite.Panel1.Color:= $0028CAFE;
  FSplashAddUnite.LineP.Color:= $0028CAFE;
  FSplashAddUnite.Left:=  (ProduitGestionF.Left + ProduitGestionF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=6;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 2 ;
end;

procedure TProduitGestionF.AddFourProduitGBtnClick(Sender: TObject);
begin
FournisseurListF.AddFournisseursBtnClick(Sender);
FournisseurGestionF.OKFournisseurGBtn.Tag := 2 ;
end;

procedure TProduitGestionF.AddLocationProduitGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the produit Localisation to add new one---------//

  FSplashAddUnite:=TFSplashAddUnite.Create(ProduitGestionF);
  FSplashAddUnite.Width:= 355;
  FSplashAddUnite.Panel1.Color:= $000098FF;
  FSplashAddUnite.LineP.Color:= $000098FF;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 20 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 20;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Localisation:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer Localisation' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Localisation';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  FSplashAddUnite.Left:=  (ProduitGestionF.Left + ProduitGestionF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=8;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 3 ;

end;

procedure TProduitGestionF.AddMarkProduitGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the produit mark to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(ProduitGestionF);
  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00B0279C;
  FSplashAddUnite.LineP.Color:= $00B0279C;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Marque:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer une Marque' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Marque';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (ProduitGestionF.Left + ProduitGestionF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=7;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 52 ;
end;

procedure TProduitGestionF.ShowCalculaturProduitGBtnClick(Sender: TObject);
begin
 WinExec('C:\Windows\system32\Calc.exe' ,SW_SHOW) ;WinExec('c:\windows\calc.exe', sw_Normal);
end;


function Wow64DisableWow64FsRedirection(var Wow64FsEnableRedirection: LongBool): LongBool; stdcall; external 'Kernel32.dll' name 'Wow64DisableWow64FsRedirection';

function Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection: LongBool): LongBool; stdcall; external 'Kernel32.dll' name 'Wow64EnableWow64FsRedirection';


procedure TProduitGestionF.ShowKeyBoardProduitGBtnClick(Sender: TObject);
var
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile, ParamString, StartInString: string;
  Wow64FsEnableRedirection: LongBool;
begin

  if not (BonCtrGestionF.GetWindowsVersion = 'Windows XP') then
  begin

    if Wow64DisableWow64FsRedirection(Wow64FsEnableRedirection) then
    begin
      ExecuteFile := 'C:\Windows\System32\osk.exe';
      FillChar(SEInfo, SizeOf(SEInfo), 0);
      SEInfo.cbSize := SizeOf(TShellExecuteInfo);
      with SEInfo do
      begin
        fMask := SEE_MASK_NOCLOSEPROCESS;
        Wnd := Application.Handle;
        lpFile := PChar(ExecuteFile);
    { ParamString can contain the application parameters. }
  //   lpParameters := PChar('/C pg_dump -U postgres -W -F t GSTOCKDC > d:\dd') ;
    { StartInString specifies the name of the working directory. If ommited, the current directory is used. }
    // lpDirectory := PChar(StartInString) ;
        nShow := SW_SHOWNORMAL;
      end;
      if ShellExecuteEx(@SEInfo) then
      begin
        repeat
          Application.ProcessMessages;
          GetExitCodeProcess(SEInfo.hProcess, ExitCode);
        until (ExitCode <> STILL_ACTIVE) or Application.Terminated;

//  ShowMessage('Calculator terminated') ;
      end
      else
        ShowMessage('Error starting Keyboard!');

      if not Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection) then
        RaiseLastOSError;
    end
    else
      RaiseLastOSError;

  end;

end;

procedure TProduitGestionF.ImageDeleteProduitGBtnClick(Sender: TObject);
begin

ImageEditProduitGBtn.Visible:=false;
ImageDeleteProduitGBtn.Visible:=false;
ImageShowProduitG.ImageIndex:=0;
ImageShowProduitG.Stretch:=False;
ImageShowProduitG.Grayed:=True;
ImageShowProduitG.Blend:=40;
ImageShowProduitG.Picture.Graphic:= nil;
OpenPictureDialogProduitG.CleanupInstance;
MainForm.ProduitTable.Edit;
MainForm.ProduitTable.FieldValues['logo_p']:= null;
MainForm.ProduitTable.Post;
end;

procedure TProduitGestionF.ImageShowProduitGClick(Sender: TObject);
var
 Jpg:  TJPEGImage;
 bmp: TBitmap;
 scale: Double;
begin

 if  OpenPictureDialogProduitG.Execute then
 begin
   Jpg := TJPEGImage.Create;
   try
   ImageEditProduitGBtn.Visible:=true;
   ImageDeleteProduitGBtn.Visible:=True;
   ImageShowProduitG.Stretch:=True;
   ImageShowProduitG.Grayed:=False;
   ImageShowProduitG.Blend:=0;
   ImageShowProduitG.ImageIndex:= -1;

    Jpg.LoadFromFile(OpenPictureDialogProduitG.FileName);
          if jpg.Height > jpg.Width then
        scale := 300 / jpg.Height
      else
        scale := 300 / jpg.Width;
      bmp := TBitmap.Create;
      try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg.Width * scale);
        bmp.Height:= Round(jpg.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
        {Convert back to JPEG and save to file}
          jpg.Assign(bmp);
        {CompressionQuality JPEG and save to file}

          Jpg.CompressionQuality:= 50;
          Jpg.Compress;

          ProduitGestionF.ImageShowProduitG.Picture.Assign(Jpg);
      finally
        bmp.free;
      end;

   finally

     Jpg.Free

   end;

 end else exit

end;

procedure TProduitGestionF.ImageShowProduitGMouseEnter(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse enter
  if ImageShowProduitG.Picture.Graphic = nil then
  begin
    ImageShowProduitG.Grayed:=false;
    ImageShowProduitG.Blend:=20;
  end else
      begin
      ImageShowProduitG.Grayed:=false;
      ImageShowProduitG.Blend:=20;
      end;
end;

procedure TProduitGestionF.ImageShowProduitGMouseLeave(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse leave
  if  ImageShowProduitG.Picture.Graphic <> nil then
    begin
     ImageShowProduitG.Grayed:= False;
     ImageShowProduitG.Blend:=0;
     end else
    begin
    ImageShowProduitG.Grayed:= true;
    ImageShowProduitG.Blend:=50;
    end;
end;

procedure TProduitGestionF.MulteCBProduitGBtnClick(Sender: TObject);
//var
//codeP : Integer;
begin
     MainForm.CodebarresTable.IndexFieldNames:='code_p';
     MainForm.CodebarresTable.Refresh;
  //-------- Show the splash screan for the produit Sous familly to add new one---------//

        FSplashAddCodeBarre:=TFSplashAddCodeBarre.Create(ProduitGestionF);
        FSplashAddCodeBarre.FormCaptionAddUniteSLbl.Left:=( FSplashAddCodeBarre.Width div 2) - ( FSplashAddCodeBarre.FormCaptionAddUniteSLbl.Width div 2);
        FSplashAddCodeBarre.Left:=ProduitGestionF.Left +  ProduitGestionF.Width ;
        FSplashAddCodeBarre.Top:=   ProduitGestionF.Top;
        AnimateWindow(FSplashAddCodeBarre.Handle, 175, AW_HOR_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );

        FSplashAddCodeBarre.Show;
        FSplashAddCodeBarre.NameAddCodeBarreSEdt.SetFocus;
      //  FSplashAddCodeBarre.OKAddUniteSBtn.Tag:= 1 ;
  //   MainForm.ProduitTable.Last;

   {   MainForm.ProduitTable.last;
      codeP:= MainForm.ProduitTable.FieldValues['code_p'];
      MainForm.CodebarresTable.Active:= False;
      MainForm.CodebarresTable.sql.Clear;
      mainform.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres where codebarres.code_p = ' + IntToStr(codeP)  ;
      MainForm.CodebarresTable.Active:= True;

      FSplashAddCodeBarre.NumberCBAddCodeBarreSLbl.Caption:= IntToStr(MainForm.CodebarresTable.RecordCount) ;
   }

end;

procedure TProduitGestionF.CancelProduitGBtnClick(Sender: TObject);
var
codeP : Integer;
begin
   // OKproduitGBtn.Enabled := false;
   // OKproduitGBtn.ImageIndex := 1;
    RandomCBProduitGBtn.Tag := 0;

    if ProduitGestionF.Tag <> 1 then
      begin
        codeP:= MainForm.ProduitTable.FieldValues['code_p'];
        MainForm.GstockdcConnection.ExecSQL('DELETE FROM codebarres where codebarres.code_p = ' + IntToStr(codeP));
        MainForm.ProduitTable.Delete;
        MainForm.ProduitTable.EnableControls;
        //--- this is to pervet adding dublicate produit when editing adn creatin codebare
       if NOT (Assigned(BonCtrGestionF)) AND NOT (Assigned(BonLivGestionF)) AND NOT (Assigned(BonFacVGestionF))
          AND NOT (Assigned(BonFacPGestionF)) AND NOT (Assigned(BonComVGestionF)) AND NOT (Assigned(BonRetVGestionF))
          AND NOT (Assigned(BonRecGestionF)) AND NOT (Assigned(BonFacAGestionF)) AND NOT (Assigned(BonComAGestionF)) AND NOT (Assigned(BonRetAGestionF))
          AND NOT (Assigned(InventoryGestionF))  AND NOT (Assigned(PertesGestionF))  then
        begin
        if (PAdded = False) AND (ProduitsListF.CodePToUseOut <> 0 )  then
        begin
         MainForm.ProduitTable.Locate('code_p',ProduitsListF.CodePToUseOut,[]) ;
        end;
       end;

      end else
          begin

           //--- this is to pervet adding dublicate produit when editing adn creatin codebare
           codeP:= MainForm.ProduitTable.FieldValues['code_p'];
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:= False;
           MainForm.ProduitTable.SQL.Text:= ProduitsListF.PSQL;
           MainForm.ProduitTable.Active:= True;
           MainForm.ProduitTable.EnableControls;

           MainForm.ProduitTable.Locate('code_p',CodeP,[]) ;
          end;

   if NOT (Assigned(BonCtrGestionF)) AND NOT (Assigned(BonLivGestionF)) AND NOT (Assigned(BonFacVGestionF))  /// To make sure access voltation wont show
      AND NOT (Assigned(BonFacPGestionF)) AND NOT (Assigned(BonComVGestionF)) AND NOT (Assigned(BonRetVGestionF))
      AND NOT (Assigned(BonRecGestionF)) AND NOT (Assigned(BonFacAGestionF)) AND NOT (Assigned(BonComAGestionF)) AND NOT (Assigned(BonRetAGestionF))
      AND NOT (Assigned(InventoryGestionF))  AND NOT (Assigned(PertesGestionF))  then   /// where we are in bons not produit list
    begin
    ProduitsListF.CodePToUseOut:= 0;
    end;
    PAdded := False;
    FreeAndNil(ProduitGestionF);
end;

procedure TProduitGestionF.CancelProduitGBtnMouseEnter(Sender: TObject);
begin
CancelProduitGBtn.Font.Color:= $00C90E84;
end;

procedure TProduitGestionF.CancelProduitGBtnMouseLeave(Sender: TObject);
begin
if Assigned(CancelProduitGBtn) then

CancelProduitGBtn.Font.Color:= $00FC575A;
end;

procedure TProduitGestionF.CodeBarProduitGEdtChange(Sender: TObject);
begin
if CodeBarProduitGEdt.Text <> '' then
 begin
  MulteCBProduitGBtn.Enabled:= True;
  MulteCBProduitGBtn.ImageIndex:=20;
  end

  else
  begin
  MulteCBProduitGBtn.Enabled:= False;
  MulteCBProduitGBtn.ImageIndex:=38;
  end;

end;

procedure TProduitGestionF.DatePerProduitGDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lastkey:=char(Key);
end;

procedure TProduitGestionF.FamilleProduitGCbxEnter(Sender: TObject);
var
I : Integer;
begin

//     FamilleProduitGCbx.Items.Clear;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
     mainform.SQLQuery4.SQL.Text:= 'SELECT * FROM famproduit WHERE nom_famp NOT LIKE'+ QuotedStr(FamilleProduitGCbx.Text) +' ORDER By code_famp' ;
     MainForm.SQLQuery4.Active := True;
     MainForm.SQLQuery4.first;

     for I := 0 to MainForm.SQLQuery4.RecordCount - 1 do
     if MainForm.SQLQuery4.FieldByName('nom_famp').IsNull = False then
     begin
       FamilleProduitGCbx.Items.Add(MainForm.SQLQuery4.FieldByName('nom_famp').AsString);
       MainForm.SQLQuery4.Next;
     end;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
end;

procedure TProduitGestionF.FamilleProduitGCbxExit(Sender: TObject);
Var KeepValue :String;
begin
  Keepvalue:= FamilleProduitGCbx.Text;
  FamilleProduitGCbx.Items.Clear;
  FamilleProduitGCbx.Items.Add(KeepValue);
  FamilleProduitGCbx.ItemIndex:=0;
end;

procedure TProduitGestionF.FormActivate(Sender: TObject);
begin

    SetWindowPos(ProduitGestionF.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TProduitGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
var codeP: integer;
begin
    CleaningproduitGEdt;
   if ProduitGestionF.Tag = 0 then
   begin
 //   MainForm.ProduitTable.Last ;
    codeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
    MainForm.GstockdcConnection.ExecSQL('DELETE FROM codebarres where codebarres.code_p = ' + IntToStr(codeP));
    MainForm.ProduitTable.Delete ;
    end;

////    MainForm.ProduitTable.DisableControls;
//    MainForm.ProduitTable.Active:= False;
//    MainForm.ProduitTable.SQL.Text:= 'SELECT *, '
//  +' ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC, '
//  +' ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
//  +' ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
//  +' ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
//  +' ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
//  +' ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2, '
//  +' (qut_p + qutini_p ) AS QutDispo, '
//  +' ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
//  +' FROM produit ';
//    MainForm.ProduitTable.Active:= True;
    MainForm.ProduitTable.EnableControls;

//   ProduitsListF.ProduitsListDBGridEh.Enabled:=True;
   NormalForms;
   ProduitGestionF.Tag := 0 ;
   FreeAndNil(ProduitGestionF);

end;

procedure TProduitGestionF.FormDestroy(Sender: TObject);
begin
 MainForm.ProduitTable.EnableControls;
// ProduitsListF.ProduitsListDBGridEh.Enabled:=True;
  NormalForms  ;
//  if ProduitsListF <> nil then
//  begin
 // ProduitsListF.ProduitsListDBGridEh.SetFocus;
//  end;

//  Application.UpdateFormatSettings := false;
//  FormatSettings.DecimalSeparator := ',';
//  FormatSettings.ThousandSeparator := ' ';
//  FormatSettings.CurrencyDecimals := 2;
//  FormatSettings.DateSeparator:= '/';

end;

procedure TProduitGestionF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Up key
  if Key = VK_UP then
    // previous control
    SelectNext(Self.ActiveControl, false, true);
  // Down key
  if Key = VK_DOWN then
    // next control
    SelectNext(Self.ActiveControl, true, true);
  // Enter key
  if NOT (NSeriesProduitGMem.Focused) AND NOT (DetailProduitGMem.Focused) then
  begin
    if (Key = VK_RETURN) then
    // next control
    SelectNext(Self.ActiveControl, true, true);
  end;

end;

procedure TProduitGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
 //CleaningProduitGEdt;

//  OKproduitGBtn.Enabled := false;
//  OKproduitGBtn.ImageIndex := 1;

//  RandomCBProduitGBtn.Tag := 0;
//   CancelProduitGBtnClick(Sender);

  CancelProduitGBtnClick(Sender);

 end;

// if key = #13 then
//  begin
//   key := #0;
//   OKProduitGBtnClick(Sender);
//
//  end;

  // this is to apply Ctrl + Enter when we want to save and close
  if (HiWord(GetKeyState(VK_CONTROL)) <> 0) AND (HiWord(GetKeyState(VK_RETURN)) <> 0)  then
   begin
     key := #0;
     OKProduitGBtnClick(Sender);

   end;

end;

procedure TProduitGestionF.FormShow(Sender: TObject);
Var Ini: TIniFile;
    SysDecimalSeparator :char;
begin
  //Here we get the system DecimalSeparator is being used
  SysDecimalSeparator:= FormatSettings.DecimalSeparator ;
  GrayForms  ;
  MainForm.ProduitTable.DisableControls;
  if NOT (ImageShowProduitG.Picture.Graphic = nil) then
  begin
    ImageShowProduitG.Grayed:=False;
    ImageShowProduitG.Blend:=0;
  end else
      begin
       ImageShowProduitG.Grayed:=True;
       ImageShowProduitG.Blend:=50;
      end;

  DatePerProduitGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

  //Update how many serial numbers it has this produit
  NSeriesCountProduitGLbl.Caption := IntToStr(NSeriesProduitGMem.Lines.Count);

  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
  //Here we check if is EU (FR) and change views and values
  if Ini.ReadBool('', 'Is EU',False) then
  begin
   PrixVHTDProduitLbl.Caption:='Particulier:';
   PrixVHTRProduitLbl.Caption:='Professional:';
   PrixVHTGProduitLbl.Caption:='Société:';
   PrixVHTA1ProduitLbl.Caption:='Catégorie 1:';
   PrixVHTA2ProduitLbl.Caption:='Catégorie 2:';

   TVAProduitGCbx.Items.Clear;
//   TVAProduitGCbx.Items.Add('0'+SysDecimalSeparator+'00'); //Active When we chnage tva_p from int to numiric in produit table and bons
   TVAProduitGCbx.Items.Add('0');
//   TVAProduitGCbx.Items.Add('2'+SysDecimalSeparator+'10');
   TVAProduitGCbx.Items.Add('5');
//   TVAProduitGCbx.Items.Add('5'+SysDecimalSeparator+'50');
   TVAProduitGCbx.Items.Add('7');
   TVAProduitGCbx.Items.Add('10');
//   TVAProduitGCbx.Items.Add('19'+SysDecimalSeparator+'60');
   TVAProduitGCbx.Items.Add('20');
//   TVAProduitGCbx.Items.Add('20'+SysDecimalSeparator+'60');

   if ProduitGestionF.Tag = 0 then//load last used TVA only when create
   TVAProduitGCbx.ItemIndex:= Ini.ReadInteger(Caption, 'Default TVA',TVAProduitGCbx.ItemIndex);
   if TVAProduitGCbx.ItemIndex = -1 then
   TVAProduitGCbx.ItemIndex := 0;

  end else
      begin
       ComboboxAligment;//Here we center the TVA cuz we use small numbers
       PrixVHTDProduitLbl.Caption:='Detail:';
       PrixVHTRProduitLbl.Caption:='Revendeur:';
       PrixVHTGProduitLbl.Caption:='Gros:';
       PrixVHTA1ProduitLbl.Caption:='Autre 1:';
       PrixVHTA2ProduitLbl.Caption:='Autre 2:';

       TVAProduitGCbx.Items.Clear;
       TVAProduitGCbx.Items.Add('0');
       TVAProduitGCbx.Items.Add('9');
       TVAProduitGCbx.Items.Add('19');

       if ProduitGestionF.Tag = 0 then//load last used TVA only when create
       TVAProduitGCbx.ItemIndex:= Ini.ReadInteger(Caption, 'Default TVA',TVAProduitGCbx.ItemIndex);
       if TVAProduitGCbx.ItemIndex = -1 then
       TVAProduitGCbx.ItemIndex := 0;
      end;

    //Here we change the visibility of components depends on EU or NOT
//      NISCompanyGLbl.Visible:= NOT Ini.ReadBool('', 'Is EU',False);
//      NISCompanyGEdt.Visible:= NOT Ini.ReadBool('', 'Is EU',False);


    Ini.Free;



end;

procedure TProduitGestionF.FournisseurProduitGCbxEnter(Sender: TObject);
var
I : Integer;
  begin

       MainForm.FournisseurTable.Refresh;
       FournisseurProduitGCbx.Items.Clear;
       MainForm.SQLQuery.Active := False;
       MainForm.SQLQuery.SQL.Clear;
       MainForm.SQLQuery.SQL.Text:= 'SELECT code_f,nom_f FROM fournisseur GROUP BY code_f,nom_f ';
       MainForm.SQLQuery.Active := True;
       MainForm.SQLQuery.first;


     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_f').IsNull = False then
     begin
          FournisseurProduitGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_f').AsString);
       MainForm.SQLQuery.Next;
      end;

       MainForm.SQLQuery.Active := False;
       MainForm.SQLQuery.SQL.Clear;
  end;

procedure TProduitGestionF.LocalisationProduitGCbxEnter(Sender: TObject);
var
I : Integer;
  begin

       MainForm.LocalisationTable.Refresh;
       LocalisationProduitGCbx.Items.Clear;
       MainForm.LocalisationTable.Active := True;
       MainForm.LocalisationTable.first;


     for I := 0 to MainForm.LocalisationTable.RecordCount - 1 do
     if MainForm.LocalisationTable.FieldByName('nom_l').IsNull = False then
     begin
       LocalisationProduitGCbx.Items.Add(MainForm.LocalisationTable.FieldByName('nom_l').AsString);
       MainForm.LocalisationTable.Next;
      end;
  end;


procedure TProduitGestionF.MargeA1ProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTA1Produit,MargeA1 : Double;
begin
 if MargeA1ProduitEdt.Focused then
  begin
    if PrixAHTProduitEdt.Text <> '' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    if MargeA1ProduitEdt.Text <> '' then
    begin
    MargeA1:=StrToFloat(StringReplace(MargeA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    PrixVHTA1ProduitEdt.Text := FloatToStrF((((PrixAHTProduit* (MargeA1))/(100)) + PrixAHTProduit ),ffNumber,14,2);
    if MargeA1ProduitEdt.Text='' then
    begin
    PrixVHTA1ProduitEdt.Text:= '';
    PrixVTTCA1ProduitEdt.Text:= ''
    end;
    end;
  end;
 TVAProduitGCbxChange(Sender);
//  if (TryStrToFloat(MargeA1ProduitEdt.Text, MargeA1))then
    if MargeA1ProduitEdt.Text <> '' then
    begin
    MargeA1:=StrToFloat(StringReplace(MargeA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if MargeA1 < 0 then begin
  MargeA1ProduitEdt.Font.Color:= $004735F9 end else
  if MargeA1  >= 0 then
  begin
  MargeA1ProduitEdt.Font.Color:= clWindowText ;
  end;
 // if(TryStrToFloat(PrixVHTA1ProduitEdt.Text, PrixVHTA1Produit))then
     if PrixVHTA1ProduitEdt.Text <> '' then
    begin
    PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTA1Produit = 0 then
  MargeA1ProduitEdt.Text:='';
end;

procedure TProduitGestionF.MargeA2ProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTA2Produit,MargeA2 : Double;
 begin
  if MargeA2ProduitEdt.Focused then
  begin
    if PrixAHTProduitEdt.Text <> '' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    if MargeA2ProduitEdt.Text <> '' then
    begin
    MargeA2:=StrToFloat(StringReplace(MargeA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    PrixVHTA2ProduitEdt.Text := FloatToStrF((((PrixAHTProduit* (MargeA2))/(100)) + PrixAHTProduit ),ffNumber,14,2);
    if MargeA2ProduitEdt.Text='' then
    begin
    PrixVHTA2ProduitEdt.Text:= '';
    PrixVTTCA2ProduitEdt.Text:= ''
    end;
    end;
  end;
 TVAProduitGCbxChange(Sender);
//  if (TryStrToFloat(MargeA2ProduitEdt.Text, MargeA2))then
     if MargeA2ProduitEdt.Text <> '' then
    begin
    MargeA2:=StrToFloat(StringReplace(MargeA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;

  if MargeA2 < 0 then begin
  MargeA2ProduitEdt.Font.Color:= $004735F9 end else
  if MargeA2  >= 0 then
  begin
  MargeA2ProduitEdt.Font.Color:= clWindowText ;
  end;
 // if(TryStrToFloat(PrixVHTA2ProduitEdt.Text, PrixVHTA2Produit))then
    if PrixVHTA2ProduitEdt.Text <> '' then
    begin
    PrixVHTA2Produit:=StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;

  if PrixVHTA2Produit = 0 then
  MargeA2ProduitEdt.Text:='';

  {   if MargeA2ProduitEdt.Focused then
      begin
        if TryStrToFloat(PrixAHTProduitEdt.Text, PrixAHTProduit) then
        if TryStrToFloat(MargeA2ProduitEdt.Text, MargeA2) then
        PrixVHTA2ProduitEdt.Text := FloatToStrF((((PrixAHTProduit* (MargeA2))/(100)) + PrixAHTProduit ),ffNumber,14,2);
        if MargeA2ProduitEdt.Text='' then
        begin
        PrixVHTA2ProduitEdt.Text:= '';
        PrixVTTCA2ProduitEdt.Text:= ''
        end;
      end;
      TVAProduitGCbxChange(Sender);}
  end;

procedure TProduitGestionF.MargeDProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTDProduit,MargeD : Double;
begin
 if MargeDProduitEdt.Focused then
  begin
    if PrixAHTProduitEdt.Text <> '' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    if MargeDProduitEdt.Text <> '' then
    begin
    MargeD:=StrToFloat(StringReplace(MargeDProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    PrixVHTDProduitEdt.Text := FloatToStrF((((PrixAHTProduit* (MargeD))/(100)) + PrixAHTProduit ),ffNumber,14,2);
    if MargeDProduitEdt.Text='' then
    begin
    PrixVHTDProduitEdt.Text:= '';
    PrixVTTCDProduitEdt.Text:= ''
    end;
    end;
  end;
 TVAProduitGCbxChange(Sender);
//  if (TryStrToFloat(MargeDProduitEdt.Text, MargeD))then
    if MargeDProduitEdt.Text <> '' then
    begin
    MargeD:=StrToFloat(StringReplace(MargeDProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    
  if MargeD < 0 then begin
  MargeDProduitEdt.Font.Color:= $004735F9 end else
  if MargeD  >= 0 then
  begin
  MargeDProduitEdt.Font.Color:= clWindowText ;
  end;
 // if(TryStrToFloat(PrixVHTDProduitEdt.Text, PrixVHTDProduit))then
     if PrixVHTDProduitEdt.Text <> '' then
    begin
    PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTDProduit = 0 then
  MargeDProduitEdt.Text:='';
end;

procedure TProduitGestionF.MargeDProduitEdtExit(Sender: TObject);
var
PrixVHTDProduit,PrixAHTProduit: Double;
begin
        if PrixVHTDProduitEdt.Text<>'' then
        begin
        PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
        PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));

     //   if TryStrToFloat(PrixVHTDProduitEdt.Text, PrixVHTDProduit) then
      //  if TryStrToFloat(PrixAHTProduitEdt.Text, PrixAHTProduit) then
        MargeDProduitEdt.Text := FloatToStrF(((((PrixVHTDProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
        end;
end;

procedure TProduitGestionF.MargeGProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTGProduit,MargeG : Double;
begin
 if MargeGProduitEdt.Focused then
  begin
    if PrixAHTProduitEdt.Text <> '' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    if MargeGProduitEdt.Text <> '' then
    begin
    MargeG:=StrToFloat(StringReplace(MargeGProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    PrixVHTGProduitEdt.Text := FloatToStrF((((PrixAHTProduit* (MargeG))/(100)) + PrixAHTProduit ),ffNumber,14,2);
    if MargeGProduitEdt.Text='' then
    begin
    PrixVHTGProduitEdt.Text:= '';
    PrixVTTCGProduitEdt.Text:= ''
    end;
    end;
  end;
 TVAProduitGCbxChange(Sender);
//  if (TryStrToFloat(MargeGProduitEdt.Text, MargeG))then
    if MargeGProduitEdt.Text <> '' then
    begin
    MargeG:=StrToFloat(StringReplace(MargeGProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if MargeG < 0 then begin
  MargeGProduitEdt.Font.Color:= $004735F9 end else
  if MargeG  >= 0 then
  begin
  MargeGProduitEdt.Font.Color:= clWindowText ;
  end;
//  if(TryStrToFloat(PrixVHTGProduitEdt.Text, PrixVHTGProduit))then
    if PrixVHTGProduitEdt.Text <> '' then
    begin
    PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTGProduit = 0 then
  MargeGProduitEdt.Text:='';

end;

procedure TProduitGestionF.MargeRProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTRProduit,MargeR : Double;

begin
 if MargeRProduitEdt.Focused then
  begin
    if PrixAHTProduitEdt.Text <> '' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    if MargeRProduitEdt.Text <> '' then
    begin
    MargeR:=StrToFloat(StringReplace(MargeRProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    PrixVHTRProduitEdt.Text := FloatToStrF((((PrixAHTProduit* (MargeR))/(100)) + PrixAHTProduit ),ffNumber,14,2);
    if MargeRProduitEdt.Text='' then
    begin
    PrixVHTRProduitEdt.Text:= '';
    PrixVTTCRProduitEdt.Text:= ''
    end;
    end;
  end;
 TVAProduitGCbxChange(Sender);
//  if (TryStrToFloat(MargeRProduitEdt.Text, MargeR))then
    if MargeRProduitEdt.Text <> '' then
    begin
    MargeR:=StrToFloat(StringReplace(MargeRProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if MargeR < 0 then begin
  MargeRProduitEdt.Font.Color:= $004735F9 end else
  if MargeR  >= 0 then
  begin
  MargeRProduitEdt.Font.Color:= clWindowText ;
  end;
//  if(TryStrToFloat(PrixVHTRProduitEdt.Text, PrixVHTRProduit))then
    if PrixVHTRProduitEdt.Text <> '' then
    begin
   PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTRProduit = 0 then
  MargeRProduitEdt.Text:='';
end;

procedure TProduitGestionF.MargeRProduitEdtExit(Sender: TObject);
var
PrixVHTRProduit,PrixAHTProduit: Double;
begin
        if TryStrToFloat(PrixVHTRProduitEdt.Text, PrixVHTRProduit) then
        if TryStrToFloat(PrixAHTProduitEdt.Text, PrixAHTProduit) then
        MargeRProduitEdt.Text := FloatToStrF(((((PrixVHTRProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
end;

procedure TProduitGestionF.NameProduitGEdtChange(Sender: TObject);
begin
  OKProduitGBtn.Enabled := true;
  OKProduitGBtn.ImageIndex := 17;
  NameProduitGEdt.BorderStyle:= bsSingle;
  NameProduitGEdt.StyleElements:= [seClient,seBorder];
  RequiredProduitGlbl.Visible:= False;
  NameProduitGErrorP.Visible:= False;
end;

procedure TProduitGestionF.NameProduitGEdtKeyPress(Sender: TObject;
  var Key: Char);
begin

 //---- jump to the next edit when i press enter-----//

//if key = #13 then
//
//begin
// key := #0;
// SelectNext(ActiveControl as TWinControl, True,True );
//
//end;
end;


procedure TProduitGestionF.NameProduitGEdtMouseEnter(Sender: TObject);
begin
  Application.HintPause := 500;      // 250 mSec before hint is shown
  Application.HintHidePause := 5000;
  NameProduitGEdt.ShowHint := True;
  NameProduitGEdt.Hint := 'Double-cliquez ici pour afficher le clavier';
end;

procedure TProduitGestionF.NSeriesProduitGMemChange(Sender: TObject);
begin
  //Update how many serial numbers it has this produit
  NSeriesCountProduitGLbl.Caption := IntToStr(NSeriesProduitGMem.Lines.Count)
end;

procedure TProduitGestionF.OKProduitGBtnClick(Sender: TObject);
var
AlertJours,MinStock,MaxStock,StockIN,StockAlert ,FamP,FamSP,MarkP,UnitP,FourP,LoucP,CodeP: Integer;
//DatePer : TDateTime;
  S : TStream;
  lookupResultNomP,lookupResultRefP : Variant;
  testInt : Integer;
  I : Integer;
  Ini: TIniFile;
begin
                  //AND  TryStrToInt(NameProduitGEdt.Text,testInt) = True
 if (NameProduitGEdt.Text <> '')  then
  begin
   if RefProduitGEdt.Text <> '' then
    begin
//---- use this tag for adding new produit --------//
    if ProduitGestionF.Tag = 0 then
     begin


      MainForm.SQLQuery.Active:= False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT code_p from produit WHERE LOWER(nom_p) ='
                                    + QuotedStr(LowerCase(NameProduitGEdt.Text));
      MainForm.SQLQuery.Active:= True;


//      lookupResultNomP := MainForm.ProduitTable.Lookup('LOWER(nom_p)',(LowerCase( NameProduitGEdt.Text)),'nom_p');
      if MainForm.SQLQuery.IsEmpty then
      begin

        MainForm.SQLQuery.Active:= False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p from produit WHERE LOWER(refer_p) ='
                                      + QuotedStr(LowerCase(RefProduitGEdt.Text));
        MainForm.SQLQuery.Active:= True;

//        lookupResultRefP := MainForm.ProduitTable.Lookup('LOWER(refer_p)',(LowerCase(RefProduitGEdt.Text)),'refer_p');
       if  MainForm.SQLQuery.IsEmpty then
        begin
           //----------- use this code to inster new famille when just type name it if empty exit-------------
          if FamilleProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.FamproduitTable.Locate('nom_famp', FamilleProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                with MainForm.FamproduitTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  FamP:= FieldByName('code_famp').AsInteger + 1;
                  end else
                      begin
                       FamP:= 1;
                      end;
                Append;
                fieldbyname('code_famp').AsInteger := FamP;
                fieldbyname('nom_famp').AsString := FamilleProduitGCbx.Text;
                post;
             end;
            end;
          end ;
          //----------- use this code to inster new sous famille when just type name it if empty exit-------------
          if SFamilleProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.SFamproduitTable.Locate('nom_sfamp', SFamilleProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with MainForm.SFamproduitTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  FamSP:= FieldByName('code_sfamp').AsInteger + 1;
                  end else
                      begin
                       FamSP:= 1;
                      end;
                    Append;
                    fieldbyname('code_sfamp').AsInteger := FamSP;
                    fieldbyname('nom_sfamp').Value := SFamilleProduitGCbx.Text;
                    post;
                  end;
            end;
            end ;
          //----------- use this code to inster new mark produit when just type name it if empty exit-------------
          if MarkProduitGCbx.Text <> '' then
          begin
          if NOT  DataModuleF.MrkProduitTable.Locate('nom_mrkp', MarkProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with DataModuleF.MrkProduitTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  MarkP:= FieldByName('code_mrkp').AsInteger + 1;
                  end else
                      begin
                       MarkP:= 1;
                      end;
                    Append;
                    fieldbyname('code_mrkp').AsInteger := MarkP;
                    fieldbyname('nom_mrkp').Value := MarkProduitGCbx.Text;
                    post;
                  end;
            end;
          end ;
          //----------- use this code to inster new unite when just type name it if empty exit-------------
           if UniteProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.UniteTable.Locate('nom_u', UniteProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with MainForm.UniteTable do begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  UnitP:= FieldByName('code_u').AsInteger + 1;
                  end else
                      begin
                       UnitP:= 1;
                      end;
                   Append;
                   fieldbyname('code_u').AsInteger := UnitP;
                   fieldbyname('nom_u').AsString := UniteProduitGCbx.Text;
                   post;
                  end;
            end;
            end ;
          //----------- use this code to inster new localisation when just type name it if empty exit-------------
          if LocalisationProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.LocalisationTable.Locate('nom_l', LocalisationProduitGCbx.Text, [loCaseInsensitive]) then
            begin
               with MainForm.LocalisationTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  LoucP:= FieldByName('code_l').AsInteger + 1;
                  end else
                      begin
                       LoucP:= 1;
                      end;
                Append;
                fieldbyname('code_l').AsInteger :=  LoucP ;
                fieldbyname('nom_l').AsString := LocalisationProduitGCbx.Text;
                post;
                end;
            end ;
          end;
         begin
          //----------- Making produit family integer in produit database table and read it as string from Combobox-------------
          MainForm.FamproduitTable.Active:=false;
          MainForm.FamproduitTable.SQL.Clear;
          MainForm.FamproduitTable.SQL.Text:='Select * FROM famproduit WHERE LOWER(nom_famp) LIKE LOWER('+ QuotedStr( FamilleProduitGCbx.Text )+')'  ;
          MainForm.FamproduitTable.Active:=True;
          FamP:= MainForm.FamproduitTable.FieldByName('code_famp').AsInteger;
          //----------- Making produit sous family integer in produit database table and read it as string from Combobox-------------
          MainForm.SFamproduitTable.Active:=false;
          MainForm.SFamproduitTable.SQL.Clear;
          MainForm.SFamproduitTable.SQL.Text:='Select * FROM sfamproduit WHERE LOWER(nom_sfamp) LIKE LOWER('+ QuotedStr( SFamilleProduitGCbx.Text )+')'  ;
          MainForm.SFamproduitTable.Active:=True;
          FamSP:= MainForm.SFamproduitTable.FieldByName('code_sfamp').AsInteger;
         //----------- Making produit mark produit integer in produit database table and read it as string from Combobox-------------
          DataModuleF.MrkProduitTable.Active:=false;
          DataModuleF.MrkProduitTable.SQL.Clear;
          DataModuleF.MrkProduitTable.SQL.Text:='Select * FROM markproduit WHERE LOWER(nom_mrkp) LIKE LOWER('+ QuotedStr( MarkProduitGCbx.Text )+')'  ;
          DataModuleF.MrkProduitTable.Active:=True;
          MarkP:= DataModuleF.MrkProduitTable.FieldByName('code_mrkp').AsInteger;
          //----------- Making produit unites integer in produit database table and read it as string from Combobox-------------
          MainForm.UniteTable.Active:=false;
          MainForm.UniteTable.SQL.Clear;
          MainForm.UniteTable.SQL.Text:='Select * FROM unite WHERE LOWER(nom_u) LIKE LOWER('+ QuotedStr( UniteProduitGCbx.Text )+')'  ;
          MainForm.UniteTable.Active:=True;
          UnitP:= MainForm.UniteTable.FieldByName('code_u').AsInteger;
          //----------- Making produit fournissour integer in produit database table and read it as string from Combobox-------------
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurProduitGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;
          FourP:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          //----------- Making produit localitation integer in produit database table and read it as string from Combobox-------------
          MainForm.LocalisationTable.Active:=false;
          MainForm.LocalisationTable.SQL.Clear;
          MainForm.LocalisationTable.SQL.Text:='Select * FROM localisation WHERE LOWER(nom_l) LIKE LOWER('+ QuotedStr( LocalisationProduitGCbx.Text )+')'  ;
          MainForm.LocalisationTable.Active:=True;
          LoucP:= MainForm.LocalisationTable.FieldByName('code_l').AsInteger;
          with MainForm.ProduitTable do  begin
           if OKProduitGBtn.Tag = 0 then
            begin Last; end;
            Edit;
            fieldbyname('refer_p').AsWideString := RefProduitGEdt.Text;
            fieldbyname('codebar_p').AsString := CodeBarProduitGEdt.Text;
            fieldbyname('nom_p').AsWideString := NameProduitGEdt.Text;
            fieldbyname('detail_p').AsWideString := DetailProduitGMem.Text;
            fieldbyname('code_famp').AsInteger := FamP;
            fieldbyname('code_sfamp').AsInteger := FamSP;
            fieldbyname('code_mrkp').AsInteger := MarkP;
            fieldbyname('code_u').AsInteger := UnitP;
            fieldbyname('tva_p').Value := TVAProduitGCbx.Text;
            fieldbyname('perissable_p').AsBoolean := PerProduitGSlider.SliderOn;
            if DatePerProduitGD.Format <>' ' then
            begin
        //     if TryStrToDate(DatePerProduitGD.Date, DatePer) then
            fieldbyname('dateperiss_p').Value := DatePerProduitGD.Date;
             end else
                 begin
                   fieldbyname('dateperiss_p').Value := null;
                 end;
            if TryStrToInt(AlertJoursProduitEdt.Text, AlertJours) then
            fieldbyname('alertdays_p').Value := AlertJours;
            if PrixAHTProduitEdt.Text<>'' then
            begin
            fieldbyname('prixht_p').Value :=       StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['prixht_p']:=  StrToFloat('0')  end;
            if PrixVHTDProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvd_p').Value := StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvd_p').Value:=  StrToFloat('0')  end;
            if PrixVHTRProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvr_p').Value := StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvr_p').Value := StrToFloat('0')  end;
            if PrixVHTGProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvg_p').Value := StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvg_p').Value := StrToFloat('0')  end;
            if PrixVHTA1ProduitEdt.Text<>'' then
            begin
            fieldbyname('prixva_p').Value := StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva_p').Value := StrToFloat('0')  end;
            if PrixVHTA2ProduitEdt.Text<>''  then
            begin
            fieldbyname('prixva2_p').Value:= StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva2_p').Value:= StrToFloat('0') end;

            {
            if StockINProduitEdt.Text<>''  then
            begin
            fieldbyname('qut_p').Value:= StrToFloat(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            fieldbyname('qutini_p').Value:= StrToFloat(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qut_p').Value:= StrToFloat('0'); fieldbyname('qutini_p').Value:= StrToFloat('0');end;
            }

           if StockINProduitEdt.Text<>''  then
            begin
             fieldbyname('qutini_p').Value:= StrToFloat(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else
                begin
                 fieldbyname('qutini_p').Value:= StrToFloat('0');
                end;


            if StockAlertProduitEdt.Text<>''  then
            begin
            fieldbyname('alertqut_p').Value:= StrToFloat(StringReplace(StockAlertProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('alertqut_p').Value:= StrToInt('0') end;
            fieldbyname('code_f').Value := FourP;
            if MinStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmin_p').Value:= StrToFloat(StringReplace(MinStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmin_p').Value:= StrToFloat('0') end;
            if MaxStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmax_p').Value:= StrToFloat(StringReplace(MaxStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmax_p').Value:= StrToFloat('0') end;
            fieldbyname('code_l').Value := LoucP;
            fieldbyname('obser_p').Value := ObserProduitGMem.Text;

            if NSeriesProduitGMem.Text<>'' then
            begin
              MainForm.SQLQuery4.Active:=false;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text:='Select * FROM n_series '  ;
              MainForm.SQLQuery4.Active:=True;
              for I := 0 to NSeriesProduitGMem.Lines.Count-1 do
              begin
               MainForm.SQLQuery4.Append;
               MainForm.SQLQuery4.FieldByName('nom_ns').AsString:= NSeriesProduitGMem.Lines.Strings[i];
               MainForm.SQLQuery4.FieldByName('code_p').AsInteger:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
               MainForm.SQLQuery4.Post;
              end;
              MainForm.SQLQuery4.Active:=false;
              MainForm.SQLQuery4.SQL.Clear;
            end;


            {Creat the stream using BlobStream is better the to the blob dictely }
            S :=CreateBlobStream(FieldByName('logo_p'), bmWrite);
           try
            if NOt (ImageShowProduitG.ImageIndex = 0) then
             begin
              ImageShowProduitG.Picture.Graphic.SaveToStream(S);
              S.Position := 0 ;
             end
               else
             begin
             ImageShowProduitG.Picture.Graphic := nil;
             ImageShowProduitG.ImageIndex:=0;
             ImageShowProduitG.Grayed:=True;
               end ;

           finally
            S.Free;
           end;
            post;
            Refresh;
           // Male PAdded tue if user add produit
            PAdded := True;

          end;
           MainForm.ProduitTable.EnableControls;
           MainForm.FamproduitTable.Active := False;
           MainForm.FamproduitTable.sql.Clear;
           mainform.FamproduitTable.SQL.Text:= 'SELECT * FROM famproduit ' ;
           MainForm.FamproduitTable.Active := True;

           MainForm.SFamproduitTable.Active := False;
           MainForm.SFamproduitTable.sql.Clear;
           mainform.SFamproduitTable.SQL.Text:= 'SELECT * FROM sfamproduit ' ;
           MainForm.SFamproduitTable.Active := True;

           MainForm.FournisseurTable.Active:=false;
           MainForm.FournisseurTable.SQL.Clear;
           MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
           MainForm.FournisseurTable.Active:=True;

           MainForm.LocalisationTable.Active:=false;
           MainForm.LocalisationTable.SQL.Clear;
           MainForm.LocalisationTable.SQL.Text:='Select * FROM localisation ' ;
           MainForm.LocalisationTable.Active:=True;

           MainForm.UniteTable.Active:=false;
           MainForm.UniteTable.SQL.Clear;
           MainForm.UniteTable.SQL.Text:='Select * FROM unite ' ;
           MainForm.UniteTable.Active:=True;


           //This code is for adding fat new produit in bons
           if Assigned(BonLivGestionF) AND BonLivGestionF.Showing = True then
           begin
                 BonLivGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonLivGestionF.ProduitsListDBGridEh.DataSource:= BonLivGestionF.BonLivPListDataS;
                 BonLivGestionF.ProduitBonLivGCbxEnter(Sender);
                 BonLivGestionF.ProduitBonLivGCbx.Text:= NameProduitGEdt.Text;
                 BonLivGestionF.EnterAddProduitBonLivGBtnClick(Sender);

           end;

           if Assigned(BonFacVGestionF) AND BonFacVGestionF.Showing = True then
           begin
                 BonFacVGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonFacVGestionF.ProduitsListDBGridEh.DataSource:= BonFacVGestionF.BonFacVPListDataS;
                 BonFacVGestionF.ProduitBonFacVGCbxEnter(Sender);
                 BonFacVGestionF.ProduitBonFacVGCbx.Text:= NameProduitGEdt.Text;
                 BonFacVGestionF.EnterAddProduitBonFacVGBtnClick(Sender);
           end;

           if Assigned(BonFacPGestionF) AND BonFacPGestionF.Showing = True then
           begin
                 BonFacPGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonFacPGestionF.ProduitsListDBGridEh.DataSource:= BonFacPGestionF.BonFacVPListDataS;
                 BonFacPGestionF.ProduitBonFacVGCbxEnter(Sender);
                 BonFacPGestionF.ProduitBonFacVGCbx.Text:= NameProduitGEdt.Text;
                 BonFacPGestionF.EnterAddProduitBonFacVGBtnClick(Sender);
           end;

           if (Assigned(BonCtrGestionF)) AND (BonCtrGestionF.Showing = True) AND
           ((BonCtrGestionF.WindowState = wsMaximized)OR(BonCtrGestionF.WindowState = wsNormal))
           AND (BonCtrGestionF <> nil) AND (BonCtrGestionF.Visible = True)  Then
           begin
                 BonCtrGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonCtrGestionF.ProduitsListDBGridEh.DataSource:= BonCtrGestionF.BonCtrPListDataS;
                 BonCtrGestionF.ProduitBonCtrGCbxEnter(Sender);
                 BonCtrGestionF.ProduitBonCTRGCbx.Text:= NameProduitGEdt.Text;
                 BonCtrGestionF.EnterAddProduitBonCTRGBtnClick(Sender);

                 end;

           if Assigned(BonRecGestionF) AND BonRecGestionF.Showing = True then
           begin
                 BonRecGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonRecGestionF.ProduitsListDBGridEh.DataSource:= BonRecGestionF.BonRecPListDataS;
                 BonRecGestionF.ProduitBonRecGCbxEnter(Sender);
                 BonRecGestionF.ProduitBonRecGCbx.Text:= NameProduitGEdt.Text;
                 BonRecGestionF.EnterAddProduitBonRecGBtnClick(Sender);
           end;

           if Assigned(BonFacAGestionF) AND BonFacAGestionF.Showing = True then
           begin
                 BonFacAGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonFacAGestionF.ProduitsListDBGridEh.DataSource:= BonFacAGestionF.BonFacAPListDataS;
                 BonFacAGestionF.ProduitBonFacAGCbxEnter(Sender);
                 BonFacAGestionF.ProduitBonFacAGCbx.Text:= NameProduitGEdt.Text;
                 BonFacAGestionF.EnterAddProduitBonFacAGBtnClick(Sender);
           end;

           if Assigned(BonComAGestionF) AND BonComAGestionF.Showing = True then
           begin
                 BonComAGestionF.ProduitsListDBGridEh.DataSource:= nil;
                 BonComAGestionF.ProduitsListDBGridEh.DataSource:= BonComAGestionF.BonComPListDataS;
                 BonComAGestionF.ProduitBonComGCbxEnter(Sender);
                 BonComAGestionF.ProduitBonComGCbx.Text:= NameProduitGEdt.Text;
                 BonComAGestionF.EnterAddProduitBonComGBtnClick(Sender);
           end;

           end;
          begin
            FSplash := TFSplash.Create(ProduitGestionF);
            try
              FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
              FSplash.Top := 0;
              AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR  AW_ACTIVATE);
              sleep(250);
              AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
            finally
              FSplash.free;
            end;
          end;
          ProduitGestionF.ProduitGPgControl.TabIndex:= 0;
  //      ProduitsListF.ProduitsListDBGridEh.DataSource:= ProduitsListF.ProduitListDataS;

          NameProduitGEdt.BorderStyle:= bsSingle;
          NameProduitGEdt.StyleElements:= [seClient,seBorder];
          RequiredProduitGlbl.Visible:= False;
          NameProduitGErrorP.Visible:= false;
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

          //Here we register the used TVA for next open
          Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
          Ini.WriteInteger(Caption, 'Default TVA', TVAProduitGCbx.ItemIndex);
          Ini.Free;
          FreeAndNil(ProduitGestionF);
        //  NormalForms;
          end else // End of lookup  ref_p
        try
          RefProduitGEdt.BorderStyle:= bsNone;
          RefProduitGEdt.StyleElements:= [];
          RequiredRefProduitGlbl.Caption:='R�ference Produit Existe D�ja !!';

          RequiredRefProduitGlbl.Visible:= True;
          RefProduitGErrorP.Visible:= True;
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          OKProduitGBtn.Enabled := False;
          OKProduitGBtn.ImageIndex := 18;

          NameProduitGEdt.BorderStyle:= bsSingle;
          NameProduitGEdt.StyleElements:= [seClient,seBorder];
          RequiredProduitGlbl.Visible:= False;
          NameProduitGErrorP.Visible:= False;
          exit;
        finally
                ProduitGPgControl.TabIndex:= 0;
                RefProduitGEdt.SetFocus;
        end;
              end else  // End of lookup nom_p
            try
          NameProduitGEdt.BorderStyle:= bsNone;
          NameProduitGEdt.StyleElements:= [];
          RequiredProduitGlbl.Caption:='D�signation Produit Existe D�ja !!';
          RequiredProduitGlbl.Visible:= True;
          NameProduitGErrorP.Visible:= True;
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          OKProduitGBtn.Enabled := False;
          OKProduitGBtn.ImageIndex := 18;

          RefProduitGEdt.BorderStyle:= bsSingle;
          RefProduitGEdt.StyleElements:= [seClient,seBorder];
          RequiredRefProduitGlbl.Visible:= False;
          RefProduitGErrorP.Visible:= False;
           exit;
         finally
                ProduitGPgControl.TabIndex:= 0;
                NameProduitGEdt.SetFocus;
        end;
//--------use this tag for eddting in the produit-----/////
       end else if ProduitGestionF.Tag = 1 then

       begin
             //////////////////
            //////////////////
            //////////////////         LOWER(nom_p)',(LowerCase
            //////////////////
            //////////////////
         CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;

       //---- WE need to use difrent sqlQuery to check if the same name and ref are not used twice
           MainForm.SQLQuery.Active:= False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.SQLQuery.SQL.Text:= ProduitsListF.PSQL
          +' WHERE code_p <> '+IntToStr(CodeP);
           MainForm.SQLQuery.Active:= True;

               lookupResultNomP := MainForm.SQLQuery.Lookup(LowerCase('nom_p'),(LowerCase(NameProduitGEdt.Text)),'nom_p');
     if  VarIsnull( lookupResultNomP) then
      begin
        lookupResultRefP := MainForm.SQLQuery.Lookup(LowerCase('refer_p'),(LowerCase(RefProduitGEdt.Text)),'refer_p');
       if  VarIsnull(lookupResultRefP) then
        begin

           //----------- use this code to inster new famille when just type name it if empty exit-------------
          if FamilleProduitGCbx.Text <> '' then
          begin
          if NOT  (MainForm.FamproduitTable.Locate('nom_famp', FamilleProduitGCbx.Text, [loCaseInsensitive]))    then
            begin
               with MainForm.FamproduitTable do begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  FamP:= FieldByName('code_famp').AsInteger + 1;
                  end else
                      begin
                       FamP:= 1;
                      end;
                Append;
                fieldbyname('code_famp').AsInteger := FamP;
                fieldbyname('nom_famp').AsString := FamilleProduitGCbx.Text;
                post;
             end;
            end;
          end ;
          //----------- use this code to inster new sous famille when just type name it if empty exit-------------
          if SFamilleProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.SFamproduitTable.Locate('nom_sfamp', SFamilleProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with MainForm.SFamproduitTable do begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  FamSP:= FieldByName('code_sfamp').AsInteger + 1;
                  end else
                      begin
                       FamSP:= 1;
                      end;
                    Append;
                    fieldbyname('code_sfamp').AsInteger := FamSP;
                    fieldbyname('nom_sfamp').Value := SFamilleProduitGCbx.Text;
                    post;
                  end;
            end;
            end ;
          //----------- use this code to inster new mark produit when just type name it if empty exit-------------
          if MarkProduitGCbx.Text <> '' then
          begin
            if NOT  DataModuleF.MrkProduitTable.Locate('nom_mrkp', MarkProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with DataModuleF.MrkProduitTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  MarkP:= FieldByName('code_mrkp').AsInteger + 1;
                  end else
                      begin
                       MarkP:= 1;
                      end;
                    Append;
                    fieldbyname('code_mrkp').AsInteger := MarkP;
                    fieldbyname('nom_mrkp').Value := MarkProduitGCbx.Text;
                    post;
                  end;
            end;
          end ;
          //----------- use this code to inster new unite when just type name it if empty exit-------------
           if UniteProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.UniteTable.Locate('nom_u', UniteProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with MainForm.UniteTable do begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  UnitP:= FieldByName('code_u').AsInteger + 1;
                  end else
                      begin
                       UnitP:= 1;
                      end;
                   Append;
                   fieldbyname('code_u').AsInteger := UnitP;
                   fieldbyname('nom_u').AsString := UniteProduitGCbx.Text;
                   post;
                  end;
            end;
            end ;
          //----------- use this code to inster new localisation when just type name it if empty exit-------------
          if LocalisationProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.LocalisationTable.Locate('nom_l', LocalisationProduitGCbx.Text, [loCaseInsensitive]) then
            begin
               with MainForm.LocalisationTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  LoucP:= FieldByName('code_l').AsInteger + 1;
                  end else
                      begin
                       LoucP:= 1;
                      end;
                Append;
                fieldbyname('code_l').AsInteger :=  LoucP ;
                fieldbyname('nom_l').AsString := LocalisationProduitGCbx.Text;
                post;
                end;
            end ;
          end;
         begin
          //----------- Making produit family integer in produit database table and read it as string from Combobox-------------
          MainForm.FamproduitTable.Active:=false;
          MainForm.FamproduitTable.SQL.Clear;
          MainForm.FamproduitTable.SQL.Text:='Select * FROM famproduit WHERE LOWER(nom_famp) LIKE LOWER('+ QuotedStr( FamilleProduitGCbx.Text )+')'  ;
          MainForm.FamproduitTable.Active:=True;
          FamP:= MainForm.FamproduitTable.FieldByName('code_famp').AsInteger;
          //----------- Making produit sous family integer in produit database table and read it as string from Combobox-------------
          MainForm.SFamproduitTable.Active:=false;
          MainForm.SFamproduitTable.SQL.Clear;
          MainForm.SFamproduitTable.SQL.Text:='Select * FROM sfamproduit WHERE LOWER(nom_sfamp) LIKE LOWER('+ QuotedStr( SFamilleProduitGCbx.Text )+')'  ;
          MainForm.SFamproduitTable.Active:=True;
          FamSP:= MainForm.SFamproduitTable.FieldByName('code_sfamp').AsInteger;
          //----------- Making produit mark produit integer in produit database table and read it as string from Combobox-------------
          DataModuleF.MrkProduitTable.Active:=false;
          DataModuleF.MrkProduitTable.SQL.Clear;
          DataModuleF.MrkProduitTable.SQL.Text:='Select * FROM markproduit WHERE LOWER(nom_mrkp) LIKE LOWER('+ QuotedStr( MarkProduitGCbx.Text )+')'  ;
          DataModuleF.MrkProduitTable.Active:=True;
          MarkP:= DataModuleF.MrkProduitTable.FieldByName('code_mrkp').AsInteger;
          //----------- Making produit unites integer in produit database table and read it as string from Combobox-------------
          MainForm.UniteTable.Active:=false;
          MainForm.UniteTable.SQL.Clear;
          MainForm.UniteTable.SQL.Text:='Select * FROM unite WHERE LOWER(nom_u) LIKE LOWER('+ QuotedStr( UniteProduitGCbx.Text )+')'  ;
          MainForm.UniteTable.Active:=True;
          UnitP:= MainForm.UniteTable.FieldByName('code_u').AsInteger;
          //----------- Making produit fournissour integer in produit database table and read it as string from Combobox-------------
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurProduitGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;
          FourP:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          //----------- Making produit localitation integer in produit database table and read it as string from Combobox-------------
          MainForm.LocalisationTable.Active:=false;
          MainForm.LocalisationTable.SQL.Clear;
          MainForm.LocalisationTable.SQL.Text:='Select * FROM localisation WHERE LOWER(nom_l) LIKE LOWER('+ QuotedStr( LocalisationProduitGCbx.Text )+')'  ;
          MainForm.LocalisationTable.Active:=True;
          LoucP:= MainForm.LocalisationTable.FieldByName('code_l').AsInteger;
          with MainForm.ProduitTable do  begin

            Edit;
            fieldbyname('refer_p').Value := RefProduitGEdt.Text;
            fieldbyname('codebar_p').Value := CodeBarProduitGEdt.Text;
            fieldbyname('nom_p').AsWideString := NameProduitGEdt.Text;
            fieldbyname('detail_p').AsWideString := DetailProduitGMem.Text;
            fieldbyname('code_famp').Value := FamP;
            fieldbyname('code_sfamp').Value := FamSP;
            fieldbyname('code_mrkp').AsInteger := MarkP;
            fieldbyname('code_u').Value := UnitP;
            fieldbyname('tva_p').Value := TVAProduitGCbx.Text;
            fieldbyname('perissable_p').Value := PerProduitGSlider.SliderOn;
            if DatePerProduitGD.Format <>' ' then
            begin
        //     if TryStrToDate(DatePerProduitGD.Date, DatePer) then
            fieldbyname('dateperiss_p').Value := DatePerProduitGD.Date;
             end else
                 begin
                   fieldbyname('dateperiss_p').Value := null;
                 end;
             if TryStrToInt(AlertJoursProduitEdt.Text, AlertJours) then
            fieldbyname('alertdays_p').Value := AlertJours;
            if PrixAHTProduitEdt.Text<>'' then
            begin
            FieldByName('prixht_p').Value :=       StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldByName('prixht_p').Value:=  StrToInt('0')  end;
            if PrixVHTDProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvd_p').Value := StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvd_p').Value:=  StrToInt('0')  end;
            if PrixVHTRProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvr_p').Value := StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvr_p').Value := StrToInt('0')  end;
            if PrixVHTGProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvg_p').Value := StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvg_p').Value := StrToInt('0')  end;
            if PrixVHTA1ProduitEdt.Text<>'' then
            begin
            fieldbyname('prixva_p').Value := StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva_p').Value := StrToInt('0')  end;
            if PrixVHTA2ProduitEdt.Text<>''  then
            begin
            fieldbyname('prixva2_p').Value:= StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva2_p').Value:= StrToInt('0') end;

            if StockINProduitEdt.Text<>''then
            begin
            fieldbyname('qutini_p').Value:= StrToFloat(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutini_p').Value:= StrToFloat('0'); end;
            if StockAlertProduitEdt.Text<>''  then
            begin
            fieldbyname('alertqut_p').Value:= StrToFloat(StringReplace(StockAlertProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('alertqut_p').Value:= StrToInt('0') end;
            fieldbyname('code_f').Value := FourP;
            if MinStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmin_p').Value:= StrToFloat(StringReplace(MinStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmin_p').Value:= StrToFloat('0') end;
            if MaxStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmax_p').Value:= StrToFloat(StringReplace(MaxStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmax_p').Value:= StrToFloat('0') end;
            fieldbyname('code_l').Value := LoucP;
            fieldbyname('obser_p').Value := ObserProduitGMem.Text;
            if NSeriesProduitGMem.Text<>'' then
            begin
              MainForm.SQLQuery4.Active:=false;
              MainForm.SQLQuery4.SQL.Clear;
              MainForm.SQLQuery4.SQL.Text:='Select * FROM n_series where code_p = '+ IntToStr(MainForm.ProduitTable.FieldByName('code_p').AsInteger) ;
              MainForm.SQLQuery4.Active:=True;
              if NOT MainForm.SQLQuery4.IsEmpty then
              begin
                MainForm.GstockdcConnection.ExecSQL('DELETE FROM n_series WHERE code_p = '+ IntToStr(MainForm.ProduitTable.FieldByName('code_p').AsInteger)
                +' AND code_barec IS NULL'
                );
              end;

              for I := 0 to NSeriesProduitGMem.Lines.Count-1 do
              begin
               if NSeriesProduitGMem.Lines.Strings[i] <> '' then
               begin

                  MainForm.SQLQuery4.Active:=false;
                  MainForm.SQLQuery4.SQL.Clear;
                  MainForm.SQLQuery4.SQL.Text:='Select * FROM n_series where code_p = '+ IntToStr(MainForm.ProduitTable.FieldByName('code_p').AsInteger)
                  +' AND LOWER(nom_ns) LIKE LOWER ' + '('''+'%'+(NSeriesProduitGMem.Lines.Strings[i])+'%'+''')';
                  MainForm.SQLQuery4.Active:=True;

                  if  MainForm.SQLQuery4.IsEmpty then
                  begin
                     MainForm.SQLQuery4.Append;
                     MainForm.SQLQuery4.FieldByName('nom_ns').AsString:= NSeriesProduitGMem.Lines.Strings[i];
                     MainForm.SQLQuery4.FieldByName('code_p').AsInteger:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
                     MainForm.SQLQuery4.Post;
                  end;
               end;
              end;
              MainForm.SQLQuery4.Active:=false;
              MainForm.SQLQuery4.SQL.Clear;
            end;
              {Creat the stream using BlobStream is better the to the blob dictely }
              S :=CreateBlobStream(FieldByName('logo_p'), bmWrite);
               try
                if NOt (ImageShowProduitG.ImageIndex = 0) then
                 begin
                  ImageShowProduitG.Picture.Graphic.SaveToStream(S);
                  S.Position := 0 ;
                 end
                   else
                 begin
                 ImageShowProduitG.Picture.Graphic := nil;
                 ImageShowProduitG.ImageIndex:=0;
                 ImageShowProduitG.Grayed:=True;
                   end ;

               finally
                S.Free;
               end;
             post;
          end;
           MainForm.ProduitTable.EnableControls;
           MainForm.FamproduitTable.Active := False;
           MainForm.FamproduitTable.sql.Clear;
           mainform.FamproduitTable.SQL.Text:= 'SELECT * FROM famproduit ' ;
           MainForm.FamproduitTable.Active := True;

           MainForm.SFamproduitTable.Active := False;
           MainForm.SFamproduitTable.sql.Clear;
           mainform.SFamproduitTable.SQL.Text:= 'SELECT * FROM sfamproduit ' ;
           MainForm.SFamproduitTable.Active := True;

           DataModuleF.MrkProduitTable.Active := False;
           DataModuleF.MrkProduitTable.sql.Clear;
           DataModuleF.MrkProduitTable.SQL.Text:= 'SELECT * FROM markproduit ' ;
           DataModuleF.MrkProduitTable.Active := True;

           MainForm.FournisseurTable.Active:=false;
           MainForm.FournisseurTable.SQL.Clear;
           MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
           MainForm.FournisseurTable.Active:=True;

           MainForm.LocalisationTable.Active:=false;
           MainForm.LocalisationTable.SQL.Clear;
           MainForm.LocalisationTable.SQL.Text:='Select * FROM localisation ' ;
           MainForm.LocalisationTable.Active:=True;

           MainForm.UniteTable.Active:=false;
           MainForm.UniteTable.SQL.Clear;
           MainForm.UniteTable.SQL.Text:='Select * FROM unite ' ;
           MainForm.UniteTable.Active:=True;

           //--- this is to pervet adding dublicate produit when editing adn creatin codebare
//           CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger;
           MainForm.ProduitTable.DisableControls;
           MainForm.ProduitTable.Active:= False;
           MainForm.ProduitTable.SQL.Text:= ProduitsListF.PSQL;
           MainForm.ProduitTable.Active:= True;
           MainForm.ProduitTable.EnableControls;

           MainForm.ProduitTable.Locate('code_p',CodeP,[]) ;

           end;
          begin
            FSplash := TFSplash.Create(ProduitGestionF);
            try
              FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
              FSplash.Top := 0;
              AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR  AW_ACTIVATE);
              sleep(250);
              AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
            finally
              FSplash.free;
            end;
          end;
          ProduitGestionF.ProduitGPgControl.TabIndex:= 0;
          NameProduitGEdt.BorderStyle:= bsSingle;
          NameProduitGEdt.StyleElements:= [seClient,seBorder];
          RequiredProduitGlbl.Visible:= False;
          NameProduitGErrorP.Visible:= false;
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

          //Here we register the used TVA for next open
          Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
          Ini.WriteInteger(Caption, 'Default TVA', TVAProduitGCbx.ItemIndex);
          Ini.Free;
          FreeAndNil(ProduitGestionF);
            //////////////////
            //////////////////
            //////////////////
            //////////////////

           end else // End of lookup  ref_p
        try
          RefProduitGEdt.BorderStyle:= bsNone;
          RefProduitGEdt.StyleElements:= [];
          RequiredRefProduitGlbl.Caption:='R�ference Produit Existe D�ja !!';

          RequiredRefProduitGlbl.Visible:= True;
          RefProduitGErrorP.Visible:= True;
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          OKProduitGBtn.Enabled := False;
          OKProduitGBtn.ImageIndex := 18;

          NameProduitGEdt.BorderStyle:= bsSingle;
          NameProduitGEdt.StyleElements:= [seClient,seBorder];
          RequiredProduitGlbl.Visible:= False;
          NameProduitGErrorP.Visible:= False;
          exit;
        finally
                ProduitGPgControl.TabIndex:= 0;
                RefProduitGEdt.SetFocus;
        end;
              end else  // End of lookup nom_p
            try
          NameProduitGEdt.BorderStyle:= bsNone;
          NameProduitGEdt.StyleElements:= [];
          RequiredProduitGlbl.Caption:='D�signation Produit Existe D�ja !!';
          RequiredProduitGlbl.Visible:= True;
          NameProduitGErrorP.Visible:= True;
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          OKProduitGBtn.Enabled := False;
          OKProduitGBtn.ImageIndex := 18;

          RefProduitGEdt.BorderStyle:= bsSingle;
          RefProduitGEdt.StyleElements:= [seClient,seBorder];
          RequiredRefProduitGlbl.Visible:= False;
          RefProduitGErrorP.Visible:= False;
           exit;
         finally
                ProduitGPgControl.TabIndex:= 0;
                NameProduitGEdt.SetFocus;
        end;


                   MainForm.SQLQuery.Active:= False;
              MainForm.SQLQuery.SQL.Clear;
//           MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM produit WHERE code_p <> '+IntToStr(CodeP);
//           MainForm.SQLQuery.Active:= True;


        end;

          end else // End OF if RefProduitGEdt.Text not Empty
       try
        RefProduitGEdt.BorderStyle:= bsNone;
        RefProduitGEdt.StyleElements:= [];
        RequiredRefProduitGlbl.Caption:='S''il vous pla�t entrer un R�ference';
        RequiredRefProduitGlbl.Visible:= True;
        RefProduitGErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        OKProduitGBtn.Enabled := False;
        OKProduitGBtn.ImageIndex := 18;
        finally
        ProduitGPgControl.TabIndex:= 0;
        RefProduitGEdt.SetFocus;
      end;
      end  else  //End OF if NameProduitGEdt.Text not Empty
      try
      NameProduitGEdt.BorderStyle:= bsNone;
      NameProduitGEdt.StyleElements:= [];
      RequiredProduitGlbl.Caption:='S''il vous pla�t entrer un d�signation';
      RequiredProduitGlbl.Visible:= True;
      NameProduitGErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKProduitGBtn.Enabled := False;
      OKProduitGBtn.ImageIndex := 18;
      finally
      ProduitGPgControl.TabIndex:= 0;
      NameProduitGEdt.SetFocus;
  end;

  MainForm.SQLQuery.Active := False;
  MainForm.SQLQuery.SQL.Clear;

end;

procedure TProduitGestionF.PerProduitGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
begin
  if PerProduitGLbl.Caption = 'Non' then
   begin
    AlertJoursProduitEdt.Font.Color:= clWindowText;
    DatePerProduitGLbl.Enabled := true;
    DatePerProduitGD.Enabled := true;
    AlertJoursProduitLbl.Enabled := true;
    AlertJoursProduitEdt.Enabled := true;
    AlertJoursProduitLbl2.Enabled := true;
    PerProduitGLbl.Caption := 'Oui';
     DatePerProduitGD.Format:='';
  end  else
  begin
    AlertJoursProduitEdt.Font.Color:= clSilver;
    DatePerProduitGLbl.Enabled := false;
    DatePerProduitGD.Enabled := false;
//    DatePerProduitGD.Text:='';
    AlertJoursProduitLbl.Enabled := false;
    AlertJoursProduitEdt.Enabled := false;
    AlertJoursProduitEdt.Text:='0';
    AlertJoursProduitLbl2.Enabled := false;
    PerProduitGLbl.Caption := 'Non';
     DatePerProduitGD.Format:=' ';
  end;
end;

procedure TProduitGestionF.PrixAHTProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,TVAProduit,PrixATTCProduit,PrixVHTDProduit,PrixVHTRProduit,PrixVHTGProduit,PrixVHTa1Produit,PrixVHTa2Produit : Double;
Key : CHar;
begin
  //--------- to calculate the PrixATTC using TVA------//
 if PrixAHTProduitEdt.Focused then
  begin
//        if (Key = '.') AND  (Pos(Key, PrixAHTProduitEdt.Text) > 0) then
//          begin
//            Key := #0;
//            Exit
//          end;

   if   (PrixAHTProduitEdt.Text <> '') AND (PrixAHTProduitEdt.Text <> '0') AND (PrixAHTProduitEdt.Text <> '00')
     AND (PrixAHTProduitEdt.Text <> '000') AND (PrixAHTProduitEdt.Text <> '0.00') AND (PrixAHTProduitEdt.Text <> '0.0')
     AND (PrixAHTProduitEdt.Text <> '.') AND (PrixAHTProduitEdt.Text <> '0000') AND (PrixAHTProduitEdt.Text <> '.0')
     AND (PrixAHTProduitEdt.Text <> '00000')  AND (PrixAHTProduitEdt.Text <> '0.') AND (PrixAHTProduitEdt.Text <> '000000')
   then
   begin

     if   (PrixAHTProduitEdt.Text <> '0000000') then
    begin
      PrixVHTDProduitEdt.Enabled:= True;PrixVTTCDProduitEdt.Enabled:= True; MargeDProduitEdt.Enabled:= True;
      PrixVHTRProduitEdt.Enabled:= True;PrixVTTCRProduitEdt.Enabled:= True; MargeRProduitEdt.Enabled:= True;
      PrixVHTGProduitEdt.Enabled:= True;PrixVTTCGProduitEdt.Enabled:= True; MargeGProduitEdt.Enabled:= True;
      PrixVHTA1ProduitEdt.Enabled:= True;PrixVTTCA1ProduitEdt.Enabled:= True; MargeA1ProduitEdt.Enabled:= True;
      PrixVHTA2ProduitEdt.Enabled:= True;PrixVTTCA2ProduitEdt.Enabled:= True; MargeA2ProduitEdt.Enabled:= True;

         if PrixAHTProduitEdt.Text<>'' then
         begin
         PrixAHTProduit:=StrToFloat (StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
         end;
         if TVAProduitGCbx.Text<>'' then
         begin
         TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
         end;
         PrixATTCProduitEdt.Text := FloatToStrF( (((PrixAHTProduit * TVAProduit)/100) + (PrixAHTProduit)),ffNumber,14,2);
            begin // margeD when exit ATTC
            if PrixVHTDProduitEdt.Text<>'' then
            begin
            PrixVHTDProduit:=StrToFloat (StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
            end;
            MargeDProduitEdt.Text := FloatToStrF(((((PrixVHTDProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
           end;
            begin // margeR when exit ATTC
            if PrixVHTRProduitEdt.Text<>'' then
            begin
            PrixVHTRProduit:=StrToFloat (StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
            end;
            MargeRProduitEdt.Text := FloatToStrF(((((PrixVHTRProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
           end;
           begin // margeG when exit ATTC
           if PrixVHTGProduitEdt.Text<>'' then
           begin
            PrixVHTGProduit:=StrToFloat (StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
           end;
            MargeGProduitEdt.Text := FloatToStrF(((((PrixVHTGProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
           end;
           begin // margeA1 when exit ATTC
           if PrixVHTA1ProduitEdt.Text<>'' then
            begin
            PrixVHTA1Produit:=StrToFloat (StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end;
            MargeA1ProduitEdt.Text := FloatToStrF(((((PrixVHTA1Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2)
           end;
            begin // margeA2 when exit ATTC
            if PrixVHTA2ProduitEdt.Text<>'' then
            begin
            PrixVHTA2Produit:=StrToFloat (StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end;
            MargeA2ProduitEdt.Text := FloatToStrF(((((PrixVHTA2Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
           end;
           end else
                 begin
                     PrixAHTProduitEdt.Text := '';
                 end;


     end else
     if (PrixAHTProduitEdt.Text='') OR (PrixAHTProduitEdt.Text='0')  then
     begin
       PrixATTCProduitEdt.Text:= '';
       MargeDProduitEdt.Text:= '';
       MargeRProduitEdt.Text:= '';
       MargeGProduitEdt.Text:= '';
       MargeA1ProduitEdt.Text:= '';
       MargeA2ProduitEdt.Text:= '';


       PrixVHTDProduitEdt.Text:= '';
       PrixVHTRProduitEdt.Text:= '';
       PrixVHTGProduitEdt.Text:= '';
       PrixVHTA1ProduitEdt.Text:= '';
       PrixVHTA2ProduitEdt.Text:= '';

       PrixVTTCDProduitEdt.Text:= '';
       PrixVTTCRProduitEdt.Text:= '';
       PrixVTTCGProduitEdt.Text:= '';
       PrixVTTCA1ProduitEdt.Text:= '';
       PrixVTTCA2ProduitEdt.Text:= '';


       PrixVHTDProduitEdt.Enabled:= False;PrixVTTCDProduitEdt.Enabled:= False; MargeDProduitEdt.Enabled:= False;
       PrixVHTRProduitEdt.Enabled:= False;PrixVTTCRProduitEdt.Enabled:= False; MargeRProduitEdt.Enabled:= False;
       PrixVHTGProduitEdt.Enabled:= False;PrixVTTCGProduitEdt.Enabled:= False; MargeGProduitEdt.Enabled:= False;
       PrixVHTA1ProduitEdt.Enabled:= False;PrixVTTCA1ProduitEdt.Enabled:= False; MargeA1ProduitEdt.Enabled:= False;
       PrixVHTA2ProduitEdt.Enabled:= False;PrixVTTCA2ProduitEdt.Enabled:= False; MargeA2ProduitEdt.Enabled:= False;
     end;
  end;
  if PrixATTCProduitEdt.Focused then
  begin
   if PrixATTCProduitEdt.Text <>'' then
    begin
      begin
        PrixVHTDProduitEdt.Enabled:= True;PrixVTTCDProduitEdt.Enabled:= True; MargeDProduitEdt.Enabled:= True;
        PrixVHTRProduitEdt.Enabled:= True;PrixVTTCRProduitEdt.Enabled:= True; MargeRProduitEdt.Enabled:= True;
        PrixVHTGProduitEdt.Enabled:= True;PrixVTTCGProduitEdt.Enabled:= True; MargeGProduitEdt.Enabled:= True;
        PrixVHTA1ProduitEdt.Enabled:= True;PrixVTTCA1ProduitEdt.Enabled:= True; MargeA1ProduitEdt.Enabled:= True;
        PrixVHTA2ProduitEdt.Enabled:= True;PrixVTTCA2ProduitEdt.Enabled:= True; MargeA2ProduitEdt.Enabled:= True;

      end;
     PrixATTCProduit:=StrToFloat (StringReplace(PrixATTCProduitEdt.Text, #32, '', [rfReplaceAll]));
     TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
     PrixAHTProduitEdt.Text := FloatToStrF(((PrixATTCProduit) -((PrixATTCProduit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
    end else
     if (PrixATTCProduitEdt.Text='') OR (PrixATTCProduitEdt.Text='0')  then
     begin
        PrixAHTProduitEdt.Text:= '';
        MargeDProduitEdt.Text:=  '';
        MargeRProduitEdt.Text:=  '';
        MargeGProduitEdt.Text:=  '';
        MargeA1ProduitEdt.Text:= '';
        MargeA2ProduitEdt.Text:= '';


       PrixVHTDProduitEdt.Text:= '';
       PrixVHTRProduitEdt.Text:= '';
       PrixVHTGProduitEdt.Text:= '';
       PrixVHTA1ProduitEdt.Text:= '';
       PrixVHTA2ProduitEdt.Text:= '';

       PrixVTTCDProduitEdt.Text:= '';
       PrixVTTCRProduitEdt.Text:= '';
       PrixVTTCGProduitEdt.Text:= '';
       PrixVTTCA1ProduitEdt.Text:= '';
       PrixVTTCA2ProduitEdt.Text:= '';

        PrixVHTDProduitEdt.Enabled:= False;PrixVTTCDProduitEdt.Enabled:= False; MargeDProduitEdt.Enabled:= False;
       PrixVHTRProduitEdt.Enabled:= False;PrixVTTCRProduitEdt.Enabled:= False; MargeRProduitEdt.Enabled:= False;
       PrixVHTGProduitEdt.Enabled:= False;PrixVTTCGProduitEdt.Enabled:= False; MargeGProduitEdt.Enabled:= False;
       PrixVHTA1ProduitEdt.Enabled:= False;PrixVTTCA1ProduitEdt.Enabled:= False; MargeA1ProduitEdt.Enabled:= False;
       PrixVHTA2ProduitEdt.Enabled:= False;PrixVTTCA2ProduitEdt.Enabled:= False; MargeA2ProduitEdt.Enabled:= False;
         Exit
     end;
  end;
end;

procedure TProduitGestionF.PrixAHTProduitEdtExit(Sender: TObject);
var
PrixHTCProduit: Double;
begin

  if PrixAHTProduitEdt.Text<>'' then
  begin
  PrixHTCProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixAHTProduitEdt.Text := FloatToStrF(PrixHTCProduit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixATTCProduitEdtExit(Sender: TObject);
var
PrixATTCProduit,PrixVHTDProduit,PrixAHTProduit,PrixVHTRProduit,PrixVHTGProduit,PrixVHTa1Produit,PrixVHTa2Produit: Double;
begin
 if PrixATTCProduitEdt.Text<>'' then
   begin
    if PrixAHTProduitEdt.Text<>'' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    if PrixATTCProduitEdt.Text<>'' then
    begin
    PrixATTCProduit:=StrToFloat(StringReplace(PrixATTCProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    PrixATTCProduitEdt.Text := FloatToStrF(PrixATTCProduit,ffNumber,14,2);
    begin  // margeD when exit ATTC
    if PrixVHTDProduitEdt.Text<>'' then
    begin
    PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    MargeDProduitEdt.Text := FloatToStrF(((((PrixVHTDProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
    end;
    begin // margeR when exit ATTC
    if PrixVHTRProduitEdt.Text<>'' then
     begin
     PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
     end;
    MargeRProduitEdt.Text := FloatToStrF(((((PrixVHTRProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
    end;
    begin // margeG when exit ATTC
    if PrixVHTGProduitEdt.Text<>'' then
    begin
    PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    MargeGProduitEdt.Text := FloatToStrF(((((PrixVHTGProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
    end;
    begin // margeA1 when exit ATTC
    if PrixVHTA1ProduitEdt.Text<>'' then
    begin
    PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    MargeA1ProduitEdt.Text := FloatToStrF(((((PrixVHTA1Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2)
    end;
    begin // margeA2 when exit ATTC
    if PrixVHTA2ProduitEdt.Text<>'' then
    begin
    PrixVHTA2Produit:=StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
    MargeA2ProduitEdt.Text := FloatToStrF(((((PrixVHTA2Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
    end;

   end;
end;


procedure TProduitGestionF.PrixVHTA1ProduitEdtChange(Sender: TObject);
var
PrixVHTA1Produit,PrixAHTProduit,PrixVTTCA1Produit,TVAProduit : Double;
begin
     if PrixVHTA1ProduitEdt.Focused then
      begin
         if PrixVHTA1ProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVHTA1ProduitEdt.Text<>'' then
        begin
        PrixVHTA1Produit:=StrToFloat (StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixAHTProduitEdt.Text<>'' then
        begin
        PrixAHTProduit:=StrToFloat (StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVTTCA1ProduitEdt.Text := FloatToStrF( (((PrixVHTA1Produit * TVAProduit)/100) + (PrixVHTA1Produit)),ffNumber,14,2);
        MargeA1ProduitEdt.Text := FloatToStrF( ((((PrixVHTA1Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
        end else
        if PrixVHTA1ProduitEdt.Text='' then
        begin
        PrixVTTCA1ProduitEdt.Text:= '' ;
         MargeA1ProduitEdt.Text:= '' ;
        end;
      end;
      if PrixVTTCA1ProduitEdt.Focused then
      begin
        if PrixVTTCA1ProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVTTCA1ProduitEdt.Text<>'' then
        begin
        PrixVTTCA1Produit:=StrToFloat (StringReplace(PrixVTTCA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVHTA1ProduitEdt.Text := FloatToStrF(((PrixVTTCA1Produit) -((PrixVTTCA1Produit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
        end else
        if PrixVTTCA1ProduitEdt.Text='' then
        begin
        PrixVHTA1ProduitEdt.Text:= '' ;
        MargeA1ProduitEdt.Text:= '' ;
        end;
      end;
end;

procedure TProduitGestionF.PrixVHTA1ProduitEdtExit(Sender: TObject);
var
PrixVHTA1Produit: Double;
begin
  if PrixVHTA1ProduitEdt.Text<>'' then
  begin
  PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVHTA1ProduitEdt.Text := FloatToStrF(PrixVHTA1Produit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixVHTA2ProduitEdtChange(Sender: TObject);
var
PrixVHTA2Produit,PrixAHTProduit,PrixVTTCA2Produit,TVAProduit : Double;
begin
     if PrixVHTA2ProduitEdt.Focused then
      begin
         if PrixVHTA2ProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
           begin
            TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
          end;
          if PrixVHTA2ProduitEdt.Text<>'' then
          begin
          PrixVHTA2Produit:=StrToFloat (StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
          end;
          if PrixAHTProduitEdt.Text<>'' then
          begin
          PrixAHTProduit:=StrToFloat (StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
          end;
          PrixVTTCA2ProduitEdt.Text := FloatToStrF( (((PrixVHTA2Produit * TVAProduit)/100) + (PrixVHTA2Produit)),ffNumber,14,2);
          MargeA2ProduitEdt.Text := FloatToStrF( ((((PrixVHTA2Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
        end else
        if PrixVHTA2ProduitEdt.Text='' then
        begin
        PrixVTTCA2ProduitEdt.Text:= '' ;
         MargeA2ProduitEdt.Text:= '' ;
        end;
      end;
      if PrixVTTCA2ProduitEdt.Focused then
      begin
        if PrixVTTCA2ProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVTTCA2ProduitEdt.Text<>'' then
        begin
        PrixVTTCA2Produit:=StrToFloat (StringReplace(PrixVTTCA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVHTA2ProduitEdt.Text := FloatToStrF(((PrixVTTCA2Produit) -((PrixVTTCA2Produit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
        end else
        if PrixVTTCA2ProduitEdt.Text='' then
        begin
        PrixVHTA2ProduitEdt.Text:= '' ;
        MargeA2ProduitEdt.Text:= ''   ;
        end;
      end;
  {
     if PrixVHTA2ProduitEdt.Focused then
      begin
       if TryStrToFloat(PrixVHTA2ProduitEdt.Text, PrixVHTA2Produit) then
       if TryStrToFloat(TVAProduitGCbx.Text, TVAProduit) then
       PrixVTTCA2ProduitEdt.Text := FloatToStrF( (((PrixVHTA2Produit * TVAProduit)/100) + (PrixVHTA2Produit)),ffNumber,14,2);
        if TryStrToFloat(PrixVHTA2ProduitEdt.Text, PrixVHTA2Produit) then
        if TryStrToFloat(PrixAHTProduitEdt.Text, PrixAHTProduit) then
        MargeA2ProduitEdt.Text := FloatToStrF( ((((PrixVHTA2Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
        if PrixVHTA2ProduitEdt.Text='' then
         begin
          PrixVTTCA2ProduitEdt.Text:= '' ;
           MargeA2ProduitEdt.Text:= '' ;
         end;
      end;
        if PrixVTTCA2ProduitEdt.Focused then
      begin
       if TryStrToFloat(PrixVTTCA2ProduitEdt.Text, PrixVTTCA2Produit) then
       if TryStrToFloat(TVAProduitGCbx.Text, TVAProduit) then
       PrixVHTA2ProduitEdt.Text := FloatToStrF(((PrixVTTCA2Produit) -((PrixVTTCA2Produit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
         if PrixVTTCA2ProduitEdt.Text='' then
         begin
         PrixVHTA2ProduitEdt.Text:= '' ;
       //  MargeA1ProduitEdt.Text:= '' ;
         end;
      end;  }
end;

procedure TProduitGestionF.PrixVHTA2ProduitEdtExit(Sender: TObject);
var
PrixVHTA2Produit: Double;
begin
  if PrixVHTA2ProduitEdt.Text<>'' then
  begin
  PrixVHTA2Produit:=StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVHTA2ProduitEdt.Text := FloatToStrF(PrixVHTA2Produit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixVHTDProduitEdtChange(Sender: TObject);
var
PrixVHTDProduit,PrixAHTProduit,PrixVTTCDProduit,TVAProduit : Double;
begin
  if PrixVHTDProduitEdt.Focused then
  begin
  if PrixVHTDProduitEdt.Text <> '' then
  begin
  if TVAProduitGCbx.Text<>'' then
   begin
   TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
   end;
   if PrixVHTDProduitEdt.Text<>'' then
   begin
   PrixVHTDProduit:=StrToFloat (StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
   end;
   if PrixAHTProduitEdt.Text<>'' then
   begin
   PrixAHTProduit:=StrToFloat (StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
   end;
   PrixVTTCDProduitEdt.Text := FloatToStrF( (((PrixVHTDProduit * TVAProduit)/100) + (PrixVHTDProduit)),ffNumber,14,2);
   MargeDProduitEdt.Text := FloatToStrF( ((((PrixVHTDProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
  end else
    if PrixVHTDProduitEdt.Text='' then
   begin
    PrixVTTCDProduitEdt.Text:= '' ;
     MargeDProduitEdt.Text:= '' ;
   end;
  end;
    if PrixVTTCDProduitEdt.Focused then
  begin
  if PrixVTTCDProduitEdt.Text <> '' then
  begin
   if TVAProduitGCbx.Text<>'' then
   begin
   TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
   end;
   if PrixVTTCDProduitEdt.Text<>'' then
   begin
   PrixVTTCDProduit:=StrToFloat (StringReplace(PrixVTTCDProduitEdt.Text, #32, '', [rfReplaceAll]));
   end;
   PrixVHTDProduitEdt.Text := FloatToStrF(((PrixVTTCDProduit) -((PrixVTTCDProduit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
  // MargeDProduitEdt.Text := FloatToStrF( ((((PrixVHTDProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
  end else
   if PrixVTTCDProduitEdt.Text='' then
   begin
   PrixVHTDProduitEdt.Text:= '' ;
   MargeDProduitEdt.Text:= '' ;
   end;
  end;
end;

procedure TProduitGestionF.PrixVHTDProduitEdtExit(Sender: TObject);
var
PrixVHTDProduit: Double;
begin
    if PrixVHTDProduitEdt.Text<>'' then
    begin
    PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTDProduitEdt.Text := FloatToStrF(PrixVHTDProduit,ffNumber,14,2);
    end;
end;

procedure TProduitGestionF.PrixVHTGProduitEdtChange(Sender: TObject);
var
PrixVHTGProduit,PrixAHTProduit,PrixVTTCGProduit,TVAProduit : Double;
begin
     if PrixVHTGProduitEdt.Focused then
      begin
         if PrixVHTGProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVHTGProduitEdt.Text<>'' then
        begin
        PrixVHTGProduit:=StrToFloat (StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixAHTProduitEdt.Text<>'' then
        begin
        PrixAHTProduit:=StrToFloat (StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVTTCGProduitEdt.Text := FloatToStrF( (((PrixVHTGProduit * TVAProduit)/100) + (PrixVHTGProduit)),ffNumber,14,2);
        MargeGProduitEdt.Text := FloatToStrF( ((((PrixVHTGProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
        end else
        if PrixVHTGProduitEdt.Text='' then
        begin
        PrixVTTCGProduitEdt.Text:= '' ;
         MargeGProduitEdt.Text:= '' ;
        end;
      end;
      if PrixVTTCGProduitEdt.Focused then
      begin
        if PrixVTTCGProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVTTCGProduitEdt.Text<>'' then
        begin
        PrixVTTCGProduit:=StrToFloat (StringReplace(PrixVTTCGProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVHTGProduitEdt.Text := FloatToStrF(((PrixVTTCGProduit) -((PrixVTTCGProduit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
        end else
        if PrixVTTCGProduitEdt.Text='' then
        begin
        PrixVHTGProduitEdt.Text:= '' ;
        MargeGProduitEdt.Text:= '' ;
        end;
      end;
end;

procedure TProduitGestionF.PrixVHTGProduitEdtExit(Sender: TObject);
var
PrixVHTGProduit: Double;
begin
  if PrixVHTGProduitEdt.Text<>'' then
  begin
  PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVHTGProduitEdt.Text := FloatToStrF(PrixVHTGProduit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixVHTRProduitEdtChange(Sender: TObject);
var
PrixVHTRProduit,PrixAHTProduit,PrixVTTCRProduit,TVAProduit : Double;
begin
     if PrixVHTRProduitEdt.Focused then
      begin
         if PrixVHTRProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVHTRProduitEdt.Text<>'' then
        begin
        PrixVHTRProduit:=StrToFloat (StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixAHTProduitEdt.Text<>'' then
        begin
        PrixAHTProduit:=StrToFloat (StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVTTCRProduitEdt.Text := FloatToStrF( (((PrixVHTRProduit * TVAProduit)/100) + (PrixVHTRProduit)),ffNumber,14,2);
        MargeRProduitEdt.Text := FloatToStrF( ((((PrixVHTRProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;
        end else
        if PrixVHTRProduitEdt.Text='' then
        begin
        PrixVTTCRProduitEdt.Text:= '' ;
         MargeRProduitEdt.Text:= '' ;
        end;
      end;
      if PrixVTTCRProduitEdt.Focused then
      begin
        if PrixVTTCRProduitEdt.Text <> '' then
        begin
        if TVAProduitGCbx.Text<>'' then
        begin
        TVAProduit:=StrToFloat (StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
        end;
        if PrixVTTCRProduitEdt.Text<>'' then
        begin
        PrixVTTCRProduit:=StrToFloat (StringReplace(PrixVTTCRProduitEdt.Text, #32, '', [rfReplaceAll]));
        end;
        PrixVHTRProduitEdt.Text := FloatToStrF(((PrixVTTCRProduit) -((PrixVTTCRProduit * TVAProduit)/(100+TVAProduit))),ffNumber,14,2);
        end else
        if PrixVTTCRProduitEdt.Text='' then
        begin
        PrixVHTRProduitEdt.Text:= '' ;
        MargeRProduitEdt.Text:= '' ;
        end;
      end;
end;

procedure TProduitGestionF.PrixVHTRProduitEdtExit(Sender: TObject);
var
PrixVHTRProduit: Double;
begin
    if PrixVHTRProduitEdt.Text<>'' then
    begin
    PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTRProduitEdt.Text := FloatToStrF(PrixVHTRProduit,ffNumber,14,2);
    end;
end;

procedure TProduitGestionF.PrixVTTCA1ProduitEdtExit(Sender: TObject);
var
PrixVTTCA1Produit,PrixVHTA1Produit,PrixAHTProduit: Double;
begin
  if PrixVTTCA1ProduitEdt.Text<>'' then
  begin
     if PrixVTTCA1ProduitEdt.Text<>'' then
    begin
    PrixVTTCA1Produit:=StrToFloat(StringReplace(PrixVTTCA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVTTCA1ProduitEdt.Text := FloatToStrF(PrixVTTCA1Produit,ffNumber,14,2);
    end;
    if PrixVHTA1ProduitEdt.Text<>'' then
    begin
    PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTA1ProduitEdt.Text := FloatToStrF(PrixVHTA1Produit,ffNumber,14,2);
    end;
    if PrixAHTProduitEdt.Text<>'' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixAHTProduitEdt.Text := FloatToStrF(PrixAHTProduit,ffNumber,14,2);
    end;
    MargeA1ProduitEdt.Text := FloatToStrF(((((PrixVHTA1Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;

  end;
 end;

procedure TProduitGestionF.PrixVTTCA2ProduitEdtExit(Sender: TObject);
var
PrixVTTCA2Produit,PrixVHTA2Produit,PrixAHTProduit: Double;
begin
  if PrixVTTCA2ProduitEdt.Text<>'' then
  begin
     if PrixVTTCA2ProduitEdt.Text<>'' then
    begin
    PrixVTTCA2Produit:=StrToFloat(StringReplace(PrixVTTCA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVTTCA2ProduitEdt.Text := FloatToStrF(PrixVTTCA2Produit,ffNumber,14,2);
    end;
    if PrixVHTA2ProduitEdt.Text<>'' then
    begin
    PrixVHTA2Produit:=StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTA2ProduitEdt.Text := FloatToStrF(PrixVHTA2Produit,ffNumber,14,2);
    end;
    if PrixAHTProduitEdt.Text<>'' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixAHTProduitEdt.Text := FloatToStrF(PrixAHTProduit,ffNumber,14,2);
    end;
    MargeA2ProduitEdt.Text := FloatToStrF(((((PrixVHTA2Produit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;

  end;
end;

procedure TProduitGestionF.PrixVTTCDProduitEdtExit(Sender: TObject);
var
PrixVTTCDProduit,PrixVHTDProduit,PrixAHTProduit: Double;
begin
  if PrixVTTCDProduitEdt.Text<>'' then
  begin
    if PrixVTTCDProduitEdt.Text<>'' then
    begin
    PrixVTTCDProduit:=StrToFloat(StringReplace(PrixVTTCDProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVTTCDProduitEdt.Text := FloatToStrF(PrixVTTCDProduit,ffNumber,14,2);
    end;
    if PrixVHTDProduitEdt.Text<>'' then
    begin
    PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTDProduitEdt.Text := FloatToStrF(PrixVHTDProduit,ffNumber,14,2);
    end;
    if PrixAHTProduitEdt.Text<>'' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixAHTProduitEdt.Text := FloatToStrF(PrixAHTProduit,ffNumber,14,2);
    end;
    MargeDProduitEdt.Text := FloatToStrF(((((PrixVHTDProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;

  end;
end;

procedure TProduitGestionF.PrixVTTCGProduitEdtExit(Sender: TObject);
var
PrixVTTCGProduit,PrixVHTGProduit,PrixAHTProduit: Double;
begin
  if PrixVTTCGProduitEdt.Text<>'' then
  begin
     if PrixVTTCGProduitEdt.Text<>'' then
    begin
    PrixVTTCGProduit:=StrToFloat(StringReplace(PrixVTTCGProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVTTCGProduitEdt.Text := FloatToStrF(PrixVTTCGProduit,ffNumber,14,2);
    end;
    if PrixVHTGProduitEdt.Text<>'' then
    begin
    PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTGProduitEdt.Text := FloatToStrF(PrixVHTGProduit,ffNumber,14,2);
    end;
    if PrixAHTProduitEdt.Text<>'' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixAHTProduitEdt.Text := FloatToStrF(PrixAHTProduit,ffNumber,14,2);
    end;
    MargeGProduitEdt.Text := FloatToStrF(((((PrixVHTGProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;

  end;
end;

procedure TProduitGestionF.PrixVTTCRProduitEdtExit(Sender: TObject);
var
PrixVTTCRProduit,PrixVHTRProduit,PrixAHTProduit: Double;
begin
  if PrixVTTCRProduitEdt.Text<>'' then
  begin
    if PrixVTTCRProduitEdt.Text<>'' then
    begin
    PrixVTTCRProduit:=StrToFloat(StringReplace(PrixVTTCRProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVTTCRProduitEdt.Text := FloatToStrF(PrixVTTCRProduit,ffNumber,14,2);
    end;
    if PrixVHTRProduitEdt.Text<>'' then
    begin
    PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTRProduitEdt.Text := FloatToStrF(PrixVHTRProduit,ffNumber,14,2);
    end;
    if PrixAHTProduitEdt.Text<>'' then
    begin
    PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixAHTProduitEdt.Text := FloatToStrF(PrixAHTProduit,ffNumber,14,2);
    end;
    MargeRProduitEdt.Text := FloatToStrF(((((PrixVHTRProduit - PrixAHTProduit) / (PrixAHTProduit)) * 100)),ffNumber,14,2) ;

  end;
end;

procedure TProduitGestionF.SFamilleProduitGCbxDropDown(Sender: TObject);
var
I : Integer;
begin
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
     mainform.SQLQuery4.SQL.Text:= 'SELECT * FROM sfamproduit WHERE nom_sfamp NOT LIKE'+ QuotedStr(SFamilleProduitGCbx.Text) +' ORDER By code_sfamp' ;
     MainForm.SQLQuery4.Active := True;
     MainForm.SQLQuery4.first;

     for I := 0 to MainForm.SQLQuery4.RecordCount - 1 do
     if MainForm.SQLQuery4.FieldByName('nom_sfamp').IsNull = False then
     begin
       SFamilleProduitGCbx.Items.Add(MainForm.SQLQuery4.FieldByName('nom_sfamp').AsString);
       MainForm.SQLQuery4.Next;
     end;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
end;

procedure TProduitGestionF.SFamilleProduitGCbxEnter(Sender: TObject);
var
I : Integer;
begin

//     SFamilleProduitGCbx.Items.Clear;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
     mainform.SQLQuery4.SQL.Text:= 'SELECT * FROM sfamproduit WHERE nom_sfamp NOT LIKE'+ QuotedStr(SFamilleProduitGCbx.Text) +' ORDER By code_sfamp' ;
     MainForm.SQLQuery4.Active := True;
     MainForm.SQLQuery4.first;

     for I := 0 to MainForm.SQLQuery4.RecordCount - 1 do
     if MainForm.SQLQuery4.FieldByName('nom_sfamp').IsNull = False then
     begin
       SFamilleProduitGCbx.Items.Add(MainForm.SQLQuery4.FieldByName('nom_sfamp').AsString);
       MainForm.SQLQuery4.Next;
     end;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
end;

procedure TProduitGestionF.SFamilleProduitGCbxExit(Sender: TObject);
Var KeepValue :String;
begin
  Keepvalue:= SFamilleProduitGCbx.Text;
  SFamilleProduitGCbx.Items.Clear;
  SFamilleProduitGCbx.Items.Add(KeepValue);
  SFamilleProduitGCbx.ItemIndex:=0;
end;

procedure TProduitGestionF.TVAProduitGCbxChange(Sender: TObject);
var
PrixAHTProduit,TVAProduit,PrixVHTDProduit,PrixVHTRProduit,PrixVHTGProduit,PrixVHTA1Produit,PrixVHTA2Produit : Double;
begin
   if TVAProduitGCbx.Text= '' then
   begin
    TVAProduitGCbx.Text:='0';
    TVAProduitGCbx.SelectAll;
   end;
   TVAProduit:=StrToFloat(StringReplace(TVAProduitGCbx.Text, #32, '', [rfReplaceAll]));
   if PrixAHTProduitEdt.Text<>'' then
  begin
  PrixAHTProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixATTCProduitEdt.Text := FloatToStrF((((PrixAHTProduit * TVAProduit)/100) + (PrixAHTProduit)),ffNumber,14,2);
  end;
    if PrixVHTDProduitEdt.Text<>'' then
  begin   // prix detail
  PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVTTCDProduitEdt.Text := FloatToStrF( (((PrixVHTDProduit * TVAProduit)/100) + (PrixVHTDProduit)),ffNumber,14,2);
  end;
    if PrixVHTRProduitEdt.Text<>'' then
  begin // prix revendour
  PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVTTCRProduitEdt.Text := FloatToStrF( (((PrixVHTRProduit * TVAProduit)/100) + (PrixVHTRProduit)),ffNumber,14,2);
  end;
    if PrixVHTGProduitEdt.Text<>'' then
   begin // prix gross
  PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVTTCGProduitEdt.Text := FloatToStrF( (((PrixVHTGProduit * TVAProduit)/100) + (PrixVHTGProduit)),ffNumber,14,2);
  end;
    if PrixVHTA1ProduitEdt.Text<>'' then
  begin // prix auter1
  PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVTTCA1ProduitEdt.Text := FloatToStrF( (((PrixVHTA1Produit * TVAProduit)/100) + (PrixVHTA1Produit)),ffNumber,14,2);
  end;
    if PrixVHTA2ProduitEdt.Text<>'' then
  begin // prix auter2
  PrixVHTA2Produit:=StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVTTCA2ProduitEdt.Text := FloatToStrF( (((PrixVHTA2Produit * TVAProduit)/100) + (PrixVHTA2Produit)),ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.TVAProduitGCbxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
SelectNext(ActiveControl as TWinControl, True,True );
end;

procedure TProduitGestionF.UniteProduitGCbxEnter(Sender: TObject);
var
I : Integer;
begin
//     FamilleProduitGCbx.Items.Clear;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
     mainform.SQLQuery4.SQL.Text:= 'SELECT * FROM unite WHERE nom_u NOT LIKE'+ QuotedStr(UniteProduitGCbx.Text) +' ORDER By code_u' ;
     MainForm.SQLQuery4.Active := True;
     MainForm.SQLQuery4.first;

     for I := 0 to MainForm.SQLQuery4.RecordCount - 1 do
     if MainForm.SQLQuery4.FieldByName('nom_u').IsNull = False then
     begin
       UniteProduitGCbx.Items.Add(MainForm.SQLQuery4.FieldByName('nom_u').AsString);
       MainForm.SQLQuery4.Next;
     end;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
end;

procedure TProduitGestionF.UniteProduitGCbxExit(Sender: TObject);
Var KeepValue :String;
begin
  Keepvalue:= UniteProduitGCbx.Text;
  UniteProduitGCbx.Items.Clear;
  UniteProduitGCbx.Items.Add(KeepValue);
  UniteProduitGCbx.ItemIndex:=0;
end;

procedure TProduitGestionF.MargeDProduitEdtClick(Sender: TObject);
begin
MargeDProduitEdt.SelectAll;
end;

procedure TProduitGestionF.MargeRProduitEdtClick(Sender: TObject);
begin
MargeRProduitEdt.SelectAll;
end;

procedure TProduitGestionF.MargeGProduitEdtClick(Sender: TObject);
begin
MargeGProduitEdt.SelectAll;
end;

procedure TProduitGestionF.MargeA1ProduitEdtClick(Sender: TObject);
begin
MargeA1ProduitEdt.SelectAll;
end;

procedure TProduitGestionF.MargeA2ProduitEdtClick(Sender: TObject);
begin
MargeA2ProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixAHTProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixAHTProduitEdt.Text := StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixAHTProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixATTCProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixATTCProduitEdt.Text := StringReplace(PrixATTCProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixATTCProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVHTDProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVHTDProduitEdt.Text := StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVHTDProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVTTCDProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVTTCDProduitEdt.Text := StringReplace(PrixVTTCDProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVTTCDProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVHTRProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVHTRProduitEdt.Text := StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVHTRProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVTTCRProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVTTCRProduitEdt.Text := StringReplace(PrixVTTCRProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVTTCRProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVHTGProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVHTGProduitEdt.Text := StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVHTGProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVTTCGProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVTTCGProduitEdt.Text := StringReplace(PrixVTTCGProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVTTCGProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVHTA1ProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVHTA1ProduitEdt.Text := StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVHTA1ProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVTTCA1ProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVTTCA1ProduitEdt.Text := StringReplace(PrixVTTCA1ProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVTTCA1ProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVHTA2ProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVHTA2ProduitEdt.Text := StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVHTA2ProduitEdt.SelectAll;
end;

procedure TProduitGestionF.PrixVTTCA2ProduitEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
PrixVTTCA2ProduitEdt.Text := StringReplace(PrixVTTCA2ProduitEdt.Text, #32, '', [rfReplaceAll]);
PrixVTTCA2ProduitEdt.SelectAll;
end;
procedure TProduitGestionF.PrixVHTDProduitEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_RETURN then
SelectNext(ActiveControl as TWinControl, True,True );
end;


function DecimalOK(Edit:TEdit):boolean;
{check there is not a decimal point already in the number where the cursor
 is located, return true if there is none, i.e. OK to add one}
var
  start,stop:integer;
  s:string;
begin
  start:=Edit.selstart;
  stop:=start+1;
  s:=edit.text;
  result:=true;
  {find the number being built}
  while (start>0) and (s[start]<>FormatSettings.DecimalSeparator) do dec(start);
  if start>0 then result:=false
  else
  begin
    while (stop<=length(s)) and (s[stop]<>FormatSettings.DecimalSeparator) do inc(stop);
    if stop >length(s) then result:=false;
  end;
end;

procedure TProduitGestionF.CodeBarProduitGEdtEnter(Sender: TObject);
var
  KeyState: TKeyboardState;
begin
  //turn on CapsLock when enter edit to make sure codebare read well
  GetKeyboardState(KeyState);
  if (KeyState[VK_CAPITAL]=0) then
  begin
    // Simulate a "CAPS LOCK" key release
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
    // Simulate a "CAPS LOCK" key press
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;
  ProduitGestionF.KeyPreview:= False;
end;

procedure TProduitGestionF.CodeBarProduitGEdtExit(Sender: TObject);
VAR CodeP : Integer;
begin
  ProduitGestionF.KeyPreview:= True;
 if CodeBarProduitGEdt.Text <> '' then
 begin
    //This is to check if the code bar already exist or no already in the databse
    //first we check if we are in add mode or edit mode to make sure we excpect the produit we editing
    //if Tag = 0 then
   begin
    //We use sql to check if already existe
    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.Close();
    MainForm.SQLQuery3.SQL.Clear;
    if Tag = 0 then
    begin
    MainForm.SQLQuery3.SQL.Text:= 'SELECT PR.code_p, PR.nom_p, PR.codebar_p,CB.code_cb, CB.code_p AS codepb,CB.nom_cb FROM produit PR '
    +' FULL JOIN codebarres CB '
    +' ON PR.code_p = CB.code_p '
    +' WHERE PR.codebar_p = :Codebare OR CB.nom_cb = :Codebare ';
    end;
    
    if Tag = 1 then
    begin
    MainForm.SQLQuery3.SQL.Text:= 'SELECT PR.code_p, PR.nom_p, PR.codebar_p,CB.code_cb, CB.code_p AS codepb,CB.nom_cb FROM produit PR '
    +' FULL JOIN codebarres CB '
    +' ON PR.code_p = CB.code_p '
    +' WHERE (PR.codebar_p = :Codebare OR CB.nom_cb = :Codebare) AND PR.code_p <> '+ IntToStr(MainForm.ProduitTable.FieldByName('code_p').AsInteger);
    end;
    
    
    MainForm.SQLQuery3.ParamByName('Codebare').AsString:= CodeBarProduitGEdt.Text;
    MainForm.SQLQuery3.Open();

    if NOT MainForm.SQLQuery3.IsEmpty then //If there is codebasre exist
    begin

      if (MainForm.SQLQuery3.FieldByName('codebar_p').AsString <> null) 
      AND (MainForm.SQLQuery3.FieldByName('codebar_p').AsString <> '') then // if it is exist in produit list
      begin

       CodeP:= MainForm.SQLQuery3.FieldByName('code_p').AsInteger;
      
      end;
      
      if (MainForm.SQLQuery3.FieldByName('nom_cb').AsString <> null) 
      AND (MainForm.SQLQuery3.FieldByName('nom_cb').AsString <> '') then   // if it is exist in codebasre list
      begin
        
       CodeP:= MainForm.SQLQuery3.FieldByName('codepb').AsInteger; 
      
      end;

      //Check there is produit
      if CodeP <> 0 OR CodeP <> null then
      begin
        //We use that codep to get the name

        MainForm.FDQuery2.Active:= False;
        MainForm.FDQuery2.SQL.Clear;
        MainForm.FDQuery2.SQL.Text:= 'SELECT nom_p FROM produit where code_p = '+ IntToStr(CodeP);
        MainForm.FDQuery2.Active:= True;
       
        if NOT MainForm.FDQuery2.IsEmpty then
        begin
        ShowMessage('Le Code a barre existe d�ja dans le produit : ' +QuotedStr(MainForm.FDQuery2.FieldValues['nom_p'])  );
        CodeBarProduitGEdt.SetFocus;
        CodeBarProduitGEdt.Text:='';
        end;
        
        MainForm.FDQuery2.Active:= False;
        MainForm.FDQuery2.SQL.Clear;
      
      end;




    end;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.Close();
    MainForm.SQLQuery3.SQL.Clear;


   end;

//  MainForm.CodebarresTable.IndexFieldNames:='';
//
// if  MainForm.CodebarresTable.Locate('nom_cb', CodeBarProduitGEdt.Text, [loCaseInsensitive])  then
//    begin
//   MainForm.CodebarresTable.DisableControls;
//   MainForm.SQLQuery.Active:=false;
//   MainForm.SQLQuery.SQL.Clear;
//   MainForm.SQLQuery.SQL.Text:= 'SELECT nom_cb,code_p FROM codebarres WHERE nom_cb LIKE ' + QuotedStr(CodeBarProduitGEdt.Text);
//   MainForm.SQLQuery.Active:=True ;
//   CodeP:= MainForm.SQLQuery.FieldValues['code_p'];
//
//   MainForm.SQLQuery.Active:=false;
//   MainForm.SQLQuery.SQL.Clear;
//   MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit WHERE code_p = ' + IntToStr( CodeP);
//   MainForm.SQLQuery.Active:=True ;
//
//   ShowMessage('Le Code a barre existe d�ja dans le produit : ' +QuotedStr(MainForm.SQLQuery.FieldValues['nom_p'])  );
//     MainForm.CodebarresTable.Active:=False;
//     MainForm.CodebarresTable.SQL.Clear;
//     MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ' ;
//     MainForm.CodebarresTable.IndexFieldNames:='code_p';
//     MainForm.CodebarresTable.Active:=True;
//     MainForm.CodebarresTable.EnableControls;
//     MainForm.CodebarresTable.Refresh;
//     CodeBarProduitGEdt.SetFocus;
//     CodeBarProduitGEdt.Text:='';
//     Exit;
//
// end else
//
//   if MainForm.ProduitTable.Locate('codebar_p', CodeBarProduitGEdt.Text, [loCaseInsensitive])  then
//
//    begin
//     MainForm.CodebarresTable.DisableControls;
//     MainForm.SQLQuery.Active:=false;
//     MainForm.SQLQuery.SQL.Clear;
//     MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit WHERE codebar_p LIKE ' + QuotedStr(CodeBarProduitGEdt.Text);
//     MainForm.SQLQuery.Active:=True ;
//
//     ShowMessage('Le Code a barre existe d�ja dans le produit  ' +QuotedStr(MainForm.SQLQuery.FieldByName('nom_p').AsString)  );
//       MainForm.ProduitTable.Last;
//       MainForm.CodebarresTable.Active:=False;
//       MainForm.CodebarresTable.SQL.Clear;
//       MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ' ;
//       MainForm.CodebarresTable.IndexFieldNames:='code_p';
//       MainForm.CodebarresTable.Active:=True;
//       MainForm.CodebarresTable.EnableControls;
//       MainForm.CodebarresTable.Refresh;
//
//            CodeBarProduitGEdt.SetFocus;
//            CodeBarProduitGEdt.Text:='';
//            Exit;
//
//    end else
//        begin
//         NameProduitGEdt.SetFocus;
//        end;

 end;       
end;

procedure TProduitGestionF.CodeBarProduitGEdtKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
begin
Key:=#0;
CodeBarProduitGEdtExit(Sender);

 //This to make sure that it wont enter codebarre twice
 CodeBarProduitGEdt.SelectAll;
 CodeBarProduitGEdt.SetFocus;
end;

end;

procedure TProduitGestionF.FormCreate(Sender: TObject);
begin
//  Application.UpdateFormatSettings := false;
//  FormatSettings.DecimalSeparator := ',';
//  FormatSettings.ThousandSeparator := ' ';
//  FormatSettings.CurrencyDecimals := 2;
//  FormatSettings.DateSeparator:= '/';
end;

procedure TProduitGestionF.PrixVTTCDProduitEdtKeyPress(Sender: TObject;
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
  if (Key = ',') AND (Pos(Key, (PrixVTTCDProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TProduitGestionF.PrixAHTProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
  P = ['.'];
  C = [','];
begin
  if NOT(Key in N) then
  begin
     key := #0;
  end;
  //To Check if period is pressed
  if (Key in P) then
  begin
   if FormatSettings.DecimalSeparator = ',' then
   begin
     key :=  #44; // #44 is ','
   end;
    if FormatSettings.DecimalSeparator = '.' then
   begin
     key :=  #46; // #44 is ','
   end;
  end;
  //To Check if comma is pressed
  if (Key in C) then
  begin
   if FormatSettings.DecimalSeparator = ',' then
   begin
     key :=  #44; // #44 is ','
   end;
    if FormatSettings.DecimalSeparator = '.' then
   begin
     key :=  #46; // #46 is '.'
   end;
  end;
  if ((Key = ',') OR (Key = '.')) AND (Pos(Key, (TEdit(Sender).Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TProduitGestionF.MarkProduitGCbxEnter(Sender: TObject);
var
I : Integer;
begin
//     MarkProduitGCbx.Items.Clear;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
     mainform.SQLQuery4.SQL.Text:= 'SELECT * FROM markproduit WHERE nom_mrkp NOT LIKE'+ QuotedStr(MarkProduitGCbx.Text) +' ORDER By code_mrkp' ;
     MainForm.SQLQuery4.Active := True;
     MainForm.SQLQuery4.first;

     for I := 0 to MainForm.SQLQuery4.RecordCount - 1 do
     if MainForm.SQLQuery4.FieldByName('nom_mrkp').IsNull = False then
     begin
       MarkProduitGCbx.Items.Add(MainForm.SQLQuery4.FieldByName('nom_mrkp').AsString);
       MainForm.SQLQuery4.Next;
     end;
     MainForm.SQLQuery4.Active := False;
     MainForm.SQLQuery4.sql.Clear;
end;

procedure TProduitGestionF.MarkProduitGCbxExit(Sender: TObject);
Var KeepValue :String;
begin
  Keepvalue:= MarkProduitGCbx.Text;
  MarkProduitGCbx.Items.Clear;
  MarkProduitGCbx.Items.Add(KeepValue);
  MarkProduitGCbx.ItemIndex:=0;
end;



end.
