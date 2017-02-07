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
    OKProduitGBtn: TAdvToolButton;
    CancelProduitGBtn: TAdvToolButton;
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
    Label15: TLabel;
    PrixVHTRProduitEdt: TEdit;
    PrixVTTCRProduitEdt: TEdit;
    MargeRProduitEdt: TEdit;
    Label16: TLabel;
    PrixVHTGProduitEdt: TEdit;
    PrixVTTCGProduitEdt: TEdit;
    MargeGProduitEdt: TEdit;
    Label17: TLabel;
    PrixVHTA1ProduitEdt: TEdit;
    PrixVTTCA1ProduitEdt: TEdit;
    MargeA1ProduitEdt: TEdit;
    Label18: TLabel;
    PrixVHTA2ProduitEdt: TEdit;
    PrixVTTCA2ProduitEdt: TEdit;
    MargeA2ProduitEdt: TEdit;
    Label19: TLabel; Label20: TLabel;
    Label21: TLabel; Label22: TLabel;
    Label23: TLabel; Label24: TLabel;
    LineP2: TPanel;  Label25: TLabel;
    StockINProduitEdt: TEdit;
    StockAlertProduitEdt: TEdit;
    Label26: TLabel;
    StockActuelProduitEdt: TEdit;
    Label27: TLabel;
    FournisseurProduitGCbx: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    CodeBarProduitGEdt: TEdit;
    RandomCBProduitGBtn: TAdvToolButton;
    Label9: TLabel;
    AddSousFamilleProduitGBtn: TAdvToolButton;
    AddFamilleProduitGBtn: TAdvToolButton;
    AddUniteProduitGBtn: TAdvToolButton;
    AddFourProduitGBtn: TAdvToolButton;
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
    Panel1: TPanel;
    ImageShowProduitG: TsImage;
    ImageEditProduitGBtn: TAdvToolButton;
    ImageDeleteProduitGBtn: TAdvToolButton;
    OpenPictureDialogProduitG: TOpenPictureDialog;
    sAlphaImageList1: TsAlphaImageList;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    RequiredRefProduitGlbl: TLabel;
    RefProduitGErrorP: TPanel;
    DatePerProduitGD: TDateTimePicker;
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
    procedure UniteProduitGCbxDropDown(Sender: TObject);
    procedure AddFamilleProduitGBtnClick(Sender: TObject);
    procedure AddSousFamilleProduitGBtnClick(Sender: TObject);
    procedure FamilleProduitGCbxEnter(Sender: TObject);
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
    procedure DatePerProduitGDChange(Sender: TObject);
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
    procedure PrixATTCProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVHTDProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MargeDProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVHTRProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVTTCRProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MargeRProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVHTGProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVTTCGProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MargeGProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVHTA1ProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVTTCA1ProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MargeA1ProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVHTA2ProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PrixVTTCA2ProduitEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MargeA2ProduitEdtKeyPress(Sender: TObject; var Key: Char);

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

uses UClientGestion, UMainF, USplashAddUnite, UFournisseurList,
  USplashAddCodeBarre, math, UFournisseurGestion, USplash, UProduitsList

  , UComptoir, UBonFacAGestion, UBonFacVGestion, UBonLivGestion, UBonRecGestion,
  UPertesGestion;


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
  ProduitGestionF.TVAProduitGCbx.ItemIndex := 0;
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
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer une Famille' ;
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
         MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit WHERE code_p = ' +IntToStr(CodeP);
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
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer une Sous Famille' ;
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
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer Localisation' ;
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

procedure TProduitGestionF.ShowCalculaturProduitGBtnClick(Sender: TObject);
begin
 WinExec('C:\Windows\system32\Calc.exe' ,SW_SHOW) ;WinExec('c:\windows\calc.exe', sw_Normal);
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
          AND NOT (Assigned(BonRecGestionF)) AND NOT (Assigned(BonFacAGestionF)) AND NOT (Assigned(PertesGestionF))  then
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
           MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit ';
           MainForm.ProduitTable.Active:= True;
           MainForm.ProduitTable.EnableControls;

           MainForm.ProduitTable.Locate('code_p',CodeP,[]) ;
          end;
          
   if NOT (Assigned(BonCtrGestionF)) AND NOT (Assigned(BonLivGestionF)) AND NOT (Assigned(BonFacVGestionF))  /// To make sure access voltation wont show
      AND NOT (Assigned(BonRecGestionF)) AND NOT (Assigned(BonFacAGestionF)) AND NOT (Assigned(PertesGestionF))  then                           /// where we are in bons not produit list
    begin
    ProduitsListF.CodePToUseOut:= 0;
    end;
    PAdded := False;
    FreeAndNil(ProduitGestionF);
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

procedure TProduitGestionF.DatePerProduitGDChange(Sender: TObject);
begin

   if lastkey<>'-' then
    keybd_event(vkkeyscan('-'), 0, 0, 0);
 //    DateTimePicker1.Format:='';
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
     MainForm.FamproduitTable.Refresh;
     FamilleProduitGCbx.Items.Clear;
      MainForm.FamproduitTable.Active := False;
     MainForm.FamproduitTable.sql.Clear;
     mainform.FamproduitTable.SQL.Text:= 'SELECT * FROM famproduit ' ;
     MainForm.FamproduitTable.Active := True;
     MainForm.FamproduitTable.first;

     for I := 0 to MainForm.FamproduitTable.RecordCount - 1 do
     if MainForm.FamproduitTable.FieldByName('nom_famp').IsNull = False then
     begin
       FamilleProduitGCbx.Items.Add(MainForm.FamproduitTable.FieldByName('nom_famp').AsString);
       MainForm.FamproduitTable.Next;
      end;
end;

procedure TProduitGestionF.FormActivate(Sender: TObject);
begin
  ComboboxAligment;
    SetWindowPos(ProduitGestionF.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TProduitGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
var codeP: integer;
begin
    CleaningproduitGEdt;
   if ProduitGestionF.Tag = 0 then
   begin
 //   MainForm.ProduitTable.Last ;
    codeP:= MainForm.ProduitTable.FieldValues['code_p'];
    MainForm.GstockdcConnection.ExecSQL('DELETE FROM codebarres where codebarres.code_p = ' + IntToStr(codeP));
    MainForm.ProduitTable.Delete ;
    end;

//    MainForm.ProduitTable.DisableControls;
    MainForm.ProduitTable.Active:= False;
    MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit ';
    MainForm.ProduitTable.Active:= True;
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

  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';

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

 if key = #13 then
  begin
   key := #0;
   OKProduitGBtnClick(Sender);

  end;

end;

procedure TProduitGestionF.FormShow(Sender: TObject);
begin
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
PrixAHTProduit,PrixVHTA1Produit,MargeA1 : Currency;
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
//  if (TryStrToCurr(MargeA1ProduitEdt.Text, MargeA1))then
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
 // if(TryStrToCurr(PrixVHTA1ProduitEdt.Text, PrixVHTA1Produit))then
     if PrixVHTA1ProduitEdt.Text <> '' then
    begin
    PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTA1Produit = 0 then
  MargeA1ProduitEdt.Text:='';
end;

procedure TProduitGestionF.MargeA2ProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTA2Produit,MargeA2 : Currency;
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
//  if (TryStrToCurr(MargeA2ProduitEdt.Text, MargeA2))then
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
 // if(TryStrToCurr(PrixVHTA2ProduitEdt.Text, PrixVHTA2Produit))then
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
PrixAHTProduit,PrixVHTDProduit,MargeD : Currency;
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
//  if (TryStrToCurr(MargeDProduitEdt.Text, MargeD))then
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
 // if(TryStrToCurr(PrixVHTDProduitEdt.Text, PrixVHTDProduit))then
     if PrixVHTDProduitEdt.Text <> '' then
    begin
    PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTDProduit = 0 then
  MargeDProduitEdt.Text:='';
end;

procedure TProduitGestionF.MargeDProduitEdtExit(Sender: TObject);
var
PrixVHTDProduit,PrixAHTProduit: Currency;
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
PrixAHTProduit,PrixVHTGProduit,MargeG : Currency;
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
//  if (TryStrToCurr(MargeGProduitEdt.Text, MargeG))then
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
//  if(TryStrToCurr(PrixVHTGProduitEdt.Text, PrixVHTGProduit))then
    if PrixVHTGProduitEdt.Text <> '' then
    begin
    PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTGProduit = 0 then
  MargeGProduitEdt.Text:='';

end;

procedure TProduitGestionF.MargeRProduitEdtChange(Sender: TObject);
var
PrixAHTProduit,PrixVHTRProduit,MargeR : Currency;

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
//  if (TryStrToCurr(MargeRProduitEdt.Text, MargeR))then
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
//  if(TryStrToCurr(PrixVHTRProduitEdt.Text, PrixVHTRProduit))then
    if PrixVHTRProduitEdt.Text <> '' then
    begin
   PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
    end;
  if PrixVHTRProduit = 0 then
  MargeRProduitEdt.Text:='';
end;

procedure TProduitGestionF.MargeRProduitEdtExit(Sender: TObject);
var
PrixVHTRProduit,PrixAHTProduit: Currency;
begin
        if TryStrToCurr(PrixVHTRProduitEdt.Text, PrixVHTRProduit) then
        if TryStrToCurr(PrixAHTProduitEdt.Text, PrixAHTProduit) then
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

procedure TProduitGestionF.OKProduitGBtnClick(Sender: TObject);
var
AlertJours,MinStock,MaxStock,StockIN,StockAlert ,FamP,FamSP,UnitP,FourP,LoucP,CodeP: Integer;
//DatePer : TDateTime;
  S : TStream;
  lookupResultNomP,lookupResultRefP : Variant;

begin

 if NameProduitGEdt.Text <> '' then
  begin
   if RefProduitGEdt.Text <> '' then
    begin
//---- use this tag for adding new produit --------//
    if ProduitGestionF.Tag = 0 then
     begin

     lookupResultNomP := MainForm.ProduitTable.Lookup('LOWER(nom_p)',(LowerCase( NameProduitGEdt.Text)),'nom_p');
     if  VarIsnull( lookupResultNomP) then
      begin
        lookupResultRefP := MainForm.ProduitTable.Lookup('LOWER(refer_p)',(LowerCase(RefProduitGEdt.Text)),'refer_p');
       if  VarIsnull(lookupResultRefP) then
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
                  FamP:= FieldValues['code_famp'] + 1;
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
                  FamSP:= FieldValues['code_sfamp'] + 1;
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
          //----------- use this code to inster new unite when just type name it if empty exit-------------
           if UniteProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.UniteTable.Locate('nom_u', UniteProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with MainForm.UniteTable do begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  UnitP:= FieldValues['code_u'] + 1;
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
                  LoucP:= FieldValues['code_l'] + 1;
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
            fieldbyname('refer_p').Value := RefProduitGEdt.Text;
            fieldbyname('codebar_p').Value := CodeBarProduitGEdt.Text;
            fieldbyname('nom_p').Value := NameProduitGEdt.Text;
            fieldbyname('code_famp').Value := FamP;
            fieldbyname('code_sfamp').Value := FamSP;
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
            FieldValues['prixht_p'] :=       StrToCurr(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['prixht_p']:=  StrToFloat('0')  end;
            if PrixVHTDProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvd_p').Value := StrToCurr(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvd_p').Value:=  StrToFloat('0')  end;
            if PrixVHTRProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvr_p').Value := StrToCurr(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvr_p').Value := StrToFloat('0')  end;
            if PrixVHTGProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvg_p').Value := StrToCurr(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvg_p').Value := StrToFloat('0')  end;
            if PrixVHTA1ProduitEdt.Text<>'' then
            begin
            fieldbyname('prixva_p').Value := StrToCurr(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva_p').Value := StrToFloat('0')  end;
            if PrixVHTA2ProduitEdt.Text<>''  then
            begin
            fieldbyname('prixva2_p').Value:= StrToCurr(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva2_p').Value:= StrToFloat('0') end;

            {
            if StockINProduitEdt.Text<>''  then
            begin
            fieldbyname('qut_p').Value:= StrToCurr(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            fieldbyname('qutini_p').Value:= StrToCurr(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qut_p').Value:= StrToFloat('0'); fieldbyname('qutini_p').Value:= StrToFloat('0');end;
            }

           if StockINProduitEdt.Text<>''  then
            begin
             fieldbyname('qutini_p').Value:= StrToCurr(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else
                begin
                 fieldbyname('qutini_p').Value:= StrToFloat('0');
                end;


            if StockAlertProduitEdt.Text<>''  then
            begin
            fieldbyname('alertqut_p').Value:= StrToCurr(StringReplace(StockAlertProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('alertqut_p').Value:= StrToInt('0') end;
            fieldbyname('code_f').Value := FourP;
            if MinStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmin_p').Value:= StrToCurr(StringReplace(MinStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmin_p').Value:= StrToFloat('0') end;
            if MaxStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmax_p').Value:= StrToCurr(StringReplace(MaxStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmax_p').Value:= StrToFloat('0') end;
            fieldbyname('code_l').Value := LoucP;
            fieldbyname('obser_p').Value := ObserProduitGMem.Text;
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

          FreeAndNil(ProduitGestionF);
        //  NormalForms;
          end else // End of lookup  ref_p
        try
          RefProduitGEdt.BorderStyle:= bsNone;
          RefProduitGEdt.StyleElements:= [];
          RequiredRefProduitGlbl.Caption:='Réference Produit Existe Déja !!';

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
          RequiredProduitGlbl.Caption:='Désignation Produit Existe Déja !!';
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
           MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM produit WHERE code_p <> '+IntToStr(CodeP);
           MainForm.SQLQuery.Active:= True;

               lookupResultNomP := MainForm.SQLQuery.Lookup('LOWER(nom_p)',(LowerCase(NameProduitGEdt.Text)),'nom_p');
     if  VarIsnull( lookupResultNomP) then
      begin
        lookupResultRefP := MainForm.SQLQuery.Lookup('LOWER(refer_p)',(LowerCase(RefProduitGEdt.Text)),'refer_p');
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
                  FamP:= FieldValues['code_famp'] + 1;
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
                  FamSP:= FieldValues['code_sfamp'] + 1;
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
          //----------- use this code to inster new unite when just type name it if empty exit-------------
           if UniteProduitGCbx.Text <> '' then
          begin
          if NOT  MainForm.UniteTable.Locate('nom_u', UniteProduitGCbx.Text, [loCaseInsensitive]) then
            begin
                 with MainForm.UniteTable do begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  UnitP:= FieldValues['code_u'] + 1;
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
                  LoucP:= FieldValues['code_l'] + 1;
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
            fieldbyname('nom_p').Value := NameProduitGEdt.Text;
            fieldbyname('code_famp').Value := FamP;
            fieldbyname('code_sfamp').Value := FamSP;
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
            FieldValues['prixht_p'] :=       StrToCurr(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['prixht_p']:=  StrToInt('0')  end;
            if PrixVHTDProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvd_p').Value := StrToCurr(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvd_p').Value:=  StrToInt('0')  end;
            if PrixVHTRProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvr_p').Value := StrToCurr(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvr_p').Value := StrToInt('0')  end;
            if PrixVHTGProduitEdt.Text<>'' then
            begin
            fieldbyname('prixvg_p').Value := StrToCurr(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixvg_p').Value := StrToInt('0')  end;
            if PrixVHTA1ProduitEdt.Text<>'' then
            begin
            fieldbyname('prixva_p').Value := StrToCurr(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva_p').Value := StrToInt('0')  end;
            if PrixVHTA2ProduitEdt.Text<>''  then
            begin
            fieldbyname('prixva2_p').Value:= StrToCurr(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('prixva2_p').Value:= StrToInt('0') end;

            if StockINProduitEdt.Text<>''then
            begin
            fieldbyname('qutini_p').Value:= StrToCurr(StringReplace(StockINProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutini_p').Value:= StrToFloat('0'); end;
            if StockAlertProduitEdt.Text<>''  then
            begin
            fieldbyname('alertqut_p').Value:= StrToCurr(StringReplace(StockAlertProduitEdt.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('alertqut_p').Value:= StrToInt('0') end;
            fieldbyname('code_f').Value := FourP;
            if MinStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmin_p').Value:= StrToCurr(StringReplace(MinStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmin_p').Value:= StrToFloat('0') end;
            if MaxStockProduitGCbx.Text<>''  then
            begin
            fieldbyname('qutmax_p').Value:= StrToCurr(StringReplace(MaxStockProduitGCbx.Text, #32, '', [rfReplaceAll]));
            end else begin fieldbyname('qutmax_p').Value:= StrToFloat('0') end;
            fieldbyname('code_l').Value := LoucP;
            fieldbyname('obser_p').Value := ObserProduitGMem.Text;
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
           MainForm.ProduitTable.SQL.Text:= 'SELECT * FROM produit ';
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

          FreeAndNil(ProduitGestionF);
            //////////////////
            //////////////////
            //////////////////
            //////////////////

           end else // End of lookup  ref_p
        try
          RefProduitGEdt.BorderStyle:= bsNone;
          RefProduitGEdt.StyleElements:= [];
          RequiredRefProduitGlbl.Caption:='Réference Produit Existe Déja !!';

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
          RequiredProduitGlbl.Caption:='Désignation Produit Existe Déja !!';
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
        RequiredRefProduitGlbl.Caption:='S''il vous plaît entrer un Réference';
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
      RequiredProduitGlbl.Caption:='S''il vous plaît entrer un désignation';
      RequiredProduitGlbl.Visible:= True;
      NameProduitGErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKProduitGBtn.Enabled := False;
      OKProduitGBtn.ImageIndex := 18;
      finally
      ProduitGPgControl.TabIndex:= 0;
      NameProduitGEdt.SetFocus;
  end;
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
PrixAHTProduit,TVAProduit,PrixATTCProduit,PrixVHTDProduit,PrixVHTRProduit,PrixVHTGProduit,PrixVHTa1Produit,PrixVHTa2Produit : Currency;
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
         Exit
     end;
  end;
end;

procedure TProduitGestionF.PrixAHTProduitEdtExit(Sender: TObject);
var
PrixHTCProduit: Currency;
begin

  if PrixAHTProduitEdt.Text<>'' then
  begin
  PrixHTCProduit:=StrToFloat(StringReplace(PrixAHTProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixAHTProduitEdt.Text := FloatToStrF(PrixHTCProduit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixATTCProduitEdtExit(Sender: TObject);
var
PrixATTCProduit,PrixVHTDProduit,PrixAHTProduit,PrixVHTRProduit,PrixVHTGProduit,PrixVHTa1Produit,PrixVHTa2Produit: Currency;
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
PrixVHTA1Produit,PrixAHTProduit,PrixVTTCA1Produit,TVAProduit : Currency;
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
PrixVHTA1Produit: Currency;
begin
  if PrixVHTA1ProduitEdt.Text<>'' then
  begin
  PrixVHTA1Produit:=StrToFloat(StringReplace(PrixVHTA1ProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVHTA1ProduitEdt.Text := FloatToStrF(PrixVHTA1Produit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixVHTA2ProduitEdtChange(Sender: TObject);
var
PrixVHTA2Produit,PrixAHTProduit,PrixVTTCA2Produit,TVAProduit : Currency;
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
PrixVHTA2Produit: Currency;
begin
  if PrixVHTA2ProduitEdt.Text<>'' then
  begin
  PrixVHTA2Produit:=StrToFloat(StringReplace(PrixVHTA2ProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVHTA2ProduitEdt.Text := FloatToStrF(PrixVHTA2Produit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixVHTDProduitEdtChange(Sender: TObject);
var
PrixVHTDProduit,PrixAHTProduit,PrixVTTCDProduit,TVAProduit : Currency;
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
PrixVHTDProduit: Currency;
begin
    if PrixVHTDProduitEdt.Text<>'' then
    begin
    PrixVHTDProduit:=StrToFloat(StringReplace(PrixVHTDProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTDProduitEdt.Text := FloatToStrF(PrixVHTDProduit,ffNumber,14,2);
    end;
end;

procedure TProduitGestionF.PrixVHTGProduitEdtChange(Sender: TObject);
var
PrixVHTGProduit,PrixAHTProduit,PrixVTTCGProduit,TVAProduit : Currency;
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
PrixVHTGProduit: Currency;
begin
  if PrixVHTGProduitEdt.Text<>'' then
  begin
  PrixVHTGProduit:=StrToFloat(StringReplace(PrixVHTGProduitEdt.Text, #32, '', [rfReplaceAll]));
  PrixVHTGProduitEdt.Text := FloatToStrF(PrixVHTGProduit,ffNumber,14,2);
  end;
end;

procedure TProduitGestionF.PrixVHTRProduitEdtChange(Sender: TObject);
var
PrixVHTRProduit,PrixAHTProduit,PrixVTTCRProduit,TVAProduit : Currency;
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
PrixVHTRProduit: Currency;
begin
    if PrixVHTRProduitEdt.Text<>'' then
    begin
    PrixVHTRProduit:=StrToFloat(StringReplace(PrixVHTRProduitEdt.Text, #32, '', [rfReplaceAll]));
    PrixVHTRProduitEdt.Text := FloatToStrF(PrixVHTRProduit,ffNumber,14,2);
    end;
end;

procedure TProduitGestionF.PrixVTTCA1ProduitEdtExit(Sender: TObject);
var
PrixVTTCA1Produit,PrixVHTA1Produit,PrixAHTProduit: Currency;
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
PrixVTTCA2Produit,PrixVHTA2Produit,PrixAHTProduit: Currency;
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
PrixVTTCDProduit,PrixVHTDProduit,PrixAHTProduit: Currency;
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
PrixVTTCGProduit,PrixVHTGProduit,PrixAHTProduit: Currency;
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
PrixVTTCRProduit,PrixVHTRProduit,PrixAHTProduit: Currency;
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

procedure TProduitGestionF.SFamilleProduitGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
     MainForm.SFamproduitTable.Refresh;
     SFamilleProduitGCbx.Items.Clear;
     MainForm.SFamproduitTable.Active := True;
     MainForm.SFamproduitTable.first;
     for I := 0 to MainForm.SFamproduitTable.RecordCount - 1 do
     if MainForm.SFamproduitTable.FieldByName('nom_sfamp').IsNull = False then
     begin
       SFamilleProduitGCbx.Items.Add(MainForm.SFamproduitTable.FieldByName('nom_sfamp').AsString);
       MainForm.SFamproduitTable.Next;
      end;
end;

procedure TProduitGestionF.TVAProduitGCbxChange(Sender: TObject);
var
PrixAHTProduit,TVAProduit,PrixVHTDProduit,PrixVHTRProduit,PrixVHTGProduit,PrixVHTA1Produit,PrixVHTA2Produit : Currency;
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

procedure TProduitGestionF.UniteProduitGCbxDropDown(Sender: TObject);
begin
UniteProduitGCbxEnter(Sender);
end;

procedure TProduitGestionF.UniteProduitGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
       MainForm.UniteTable.Refresh;
       UniteProduitGCbx.Items.Clear;
       MainForm.UniteTable.Active := True;
       MainForm.UniteTable.first;
     for I := 0 to MainForm.UniteTable.RecordCount - 1 do
     if MainForm.UniteTable.FieldByName('nom_u').IsNull = False then
     begin
       UniteProduitGCbx.Items.Add(MainForm.UniteTable.FieldByName('nom_u').AsString);
       MainForm.UniteTable.Next;
       UniteProduitGCbx.Refresh;
      end;
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

procedure TProduitGestionF.CodeBarProduitGEdtExit(Sender: TObject);
VAR CodeP : Integer;
begin

if CodeBarProduitGEdt.Text <> '' then
begin
  

  MainForm.CodebarresTable.IndexFieldNames:='';

 if  MainForm.CodebarresTable.Locate('nom_cb', CodeBarProduitGEdt.Text, [loCaseInsensitive])  then
    begin
   MainForm.CodebarresTable.DisableControls;
   MainForm.SQLQuery.Active:=false;
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:= 'SELECT nom_cb,code_p FROM codebarres WHERE nom_cb LIKE ' + QuotedStr(CodeBarProduitGEdt.Text);
   MainForm.SQLQuery.Active:=True ;
   CodeP:= MainForm.SQLQuery.FieldValues['code_p'];

   MainForm.SQLQuery.Active:=false;
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit WHERE code_p = ' + IntToStr( CodeP);
   MainForm.SQLQuery.Active:=True ;

   ShowMessage('Le Code a barre existe déja dans le produit : ' +QuotedStr(MainForm.SQLQuery.FieldValues['nom_p'])  );
     MainForm.CodebarresTable.Active:=False;
     MainForm.CodebarresTable.SQL.Clear;
     MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ' ;
     MainForm.CodebarresTable.IndexFieldNames:='code_p';
     MainForm.CodebarresTable.Active:=True;
     MainForm.CodebarresTable.EnableControls;
     MainForm.CodebarresTable.Refresh;
     CodeBarProduitGEdt.SetFocus;
     CodeBarProduitGEdt.Text:='';
     Exit;

 end else

   if MainForm.ProduitTable.Locate('codebar_p', CodeBarProduitGEdt.Text, [loCaseInsensitive])  then

    begin
     MainForm.CodebarresTable.DisableControls;
     MainForm.SQLQuery.Active:=false;
     MainForm.SQLQuery.SQL.Clear;
     MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit WHERE codebar_p LIKE ' + QuotedStr(CodeBarProduitGEdt.Text);
     MainForm.SQLQuery.Active:=True ;

     ShowMessage('Le Code a barre existe déja dans le produit  ' +QuotedStr(MainForm.SQLQuery.FieldByName('nom_p').AsString)  );
       MainForm.ProduitTable.Last;
       MainForm.CodebarresTable.Active:=False;
       MainForm.CodebarresTable.SQL.Clear;
       MainForm.CodebarresTable.SQL.Text:= 'SELECT * FROM codebarres ' ;
       MainForm.CodebarresTable.IndexFieldNames:='code_p';
       MainForm.CodebarresTable.Active:=True;
       MainForm.CodebarresTable.EnableControls;
       MainForm.CodebarresTable.Refresh;

            CodeBarProduitGEdt.SetFocus;
            CodeBarProduitGEdt.Text:='';
            Exit;

    end else
        begin
         NameProduitGEdt.SetFocus;
        end;

 end;       
end;

procedure TProduitGestionF.CodeBarProduitGEdtKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
begin
Key:=#0;

CodeBarProduitGEdtExit(Sender);
end;

end;

procedure TProduitGestionF.FormCreate(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
end;

procedure TProduitGestionF.PrixVTTCDProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVTTCDProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TProduitGestionF.PrixAHTProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixAHTProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixATTCProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixATTCProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVHTDProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVHTDProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.MargeDProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (MargeDProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVHTRProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVHTRProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVTTCRProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVTTCRProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.MargeRProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (MargeRProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TProduitGestionF.PrixVHTGProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVHTGProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TProduitGestionF.PrixVTTCGProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVTTCGProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.MargeGProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (MargeGProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVHTA1ProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVHTA1ProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVTTCA1ProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVTTCA1ProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.MargeA1ProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (MargeA1ProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVHTA2ProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVHTA2ProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TProduitGestionF.PrixVTTCA2ProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (PrixVTTCA2ProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TProduitGestionF.MargeA2ProduitEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (MargeA2ProduitEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

end.
