unit UPertesGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, DBGridEh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, AdvToolBtn, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TPertesGestionF = class(TForm)
    TypePerteGCbx: TComboBox;
    Label5: TLabel;
    PerteGLbl: TLabel;
    AddTypePerteGBtn: TAdvToolButton;
    Label1: TLabel;
    NamePerteGLbl: TLabel;
    ObserPerteGLbl: TLabel;
    MontantAHTPerteLbl: TLabel;
    Label2: TLabel;
    RefPerteGLbl: TLabel;
    NumPerteGEdt: TLabel;
    DatePerteGD: TDateTimePicker;
    ObserPerteGMem: TMemo;
    LineP: TPanel;
    BottomP: TPanel;
    OKPerteGBtn: TAdvToolButton;
    CancelPerteGBtn: TAdvToolButton;
    PerteGOLDStockEdt: TEdit;
    PerteGNEWStockEdt: TEdit;
    ListAddProduitPerteGBtn: TAdvToolButton;
    NamePerteGCbx: TcxComboBox;
    AdvToolButton1: TAdvToolButton;
    NamePerteGErrorP: TPanel;
    RequiredPerteGlbl: TLabel;
    RequiredStarPerteGLbl: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PrixHTTotalPerteGEdt: TEdit;
    PrixTTCTotalPerteGEdt: TEdit;
    AddProduitPerteGBtn: TAdvToolButton;
    QuantityPerteGEdt: TEdit;
    QuantityPerteGErrorP: TPanel;
    RequiredQuantityPerteGlbl: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    PrixHTPerteGEdt: TEdit;
    Label8: TLabel;
    PrixTTCPerteGEdt: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelPerteGBtnClick(Sender: TObject);
    procedure OKPerteGBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NamePerteGCbxEnter(Sender: TObject);
    procedure NamePerteGCbxPropertiesChange(Sender: TObject);
    procedure QuantityPerteGEdtExit(Sender: TObject);
    procedure QuantityPerteGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure QuantityPerteGEdtChange(Sender: TObject);
    procedure TypePerteGCbxDropDown(Sender: TObject);
    procedure NamePerteGCbxExit(Sender: TObject);
    procedure AddTypePerteGBtnClick(Sender: TObject);
    procedure AddProduitPerteGBtnClick(Sender: TObject);
    procedure ListAddProduitPerteGBtnClick(Sender: TObject);
    procedure QuantityPerteGEdtEnter(Sender: TObject);
  private
    { Private declarations }
     CodeP,TVAP : Integer;
     FirstPrixHTPerte, FirstPrixTTCPerte,FirstQuantityOLDPerte : Double;
     
  public
    { Public declarations }
  end;

var
  PertesGestionF: TPertesGestionF;

implementation

{$R *.dfm}

uses System.DateUtils,Winapi.MMSystem,Data.DB, System.Contnrs,
UMainF, UDataModule, USplashAddUnite, UProduitsList, USplash, UFastProduitsList;


  

procedure TPertesGestionF.AddProduitPerteGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TPertesGestionF.AddTypePerteGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the Type de perte to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(PertesGestionF);
  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00813AE0;
  FSplashAddUnite.LineP.Color:= $00813AE0;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Type:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer un Type' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Type de Perte';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (PertesGestionF.Left + PertesGestionF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=14;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 33 ;
end;

procedure TPertesGestionF.CancelPerteGBtnClick(Sender: TObject);
begin
Close;
end;

procedure TPertesGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms  ;
//if Tag = 0 then
//begin
//
//
//FreeAndNil(PertesGestionF);
//end;
end;

procedure TPertesGestionF.FormCreate(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
end;

procedure TPertesGestionF.FormDestroy(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
end;

procedure TPertesGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
//  NamePerteGCbx.OnExit := nil;
// QuantityPerteGEdt.SetFocus;
  CancelPerteGBtnClick(Sender);

 end;

  if key = #13 then
  begin
   key := #0;
   OKPerteGBtnClick(Sender);
  end;
end;

procedure TPertesGestionF.FormShow(Sender: TObject);
begin
GrayForms  ;

    if tag = 0 then
    begin
    DatePerteGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
    end;
    
    if tag = 1 then
    begin
    QuantityPerteGEdt.SetFocus;
    end;

end;

procedure TPertesGestionF.ListAddProduitPerteGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(self);
  try

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Tag := 5;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
  FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
  FastProduitsListF.ShowModal;
  //use this tag = 1 for adding from bon livration
  finally
     FreeAndNil(FastProduitsListF);
  end;

 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
 // produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TPertesGestionF.NamePerteGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
  if Tag = 0 then
  begin
  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonLivGCbx.Refresh;
      NamePerteGCbx.Properties.Items.Clear;
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;


      MainForm.SQLQuery.first;


     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
     begin
       NamePerteGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
       MainForm.SQLQuery.Next;
      end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
  end;

end;



procedure TPertesGestionF.NamePerteGCbxExit(Sender: TObject);
begin
 if NamePerteGCbx.Text<>'' then

 begin
   if PrixHTPerteGEdt.Text <>'' then
   begin
   FirstPrixHTPerte:=StrToFloat (StringReplace(PrixHTPerteGEdt.Text, #32, '', [rfReplaceAll]));
   end;
      if PrixTTCPerteGEdt.Text <>'' then
   begin
   FirstPrixTTCPerte:=StrToFloat (StringReplace(PrixTTCPerteGEdt.Text, #32, '', [rfReplaceAll]));
   end;
      if PerteGOLDStockEdt.Text <>'' then
   begin
   FirstQuantityOLDPerte:=StrToFloat (StringReplace(PerteGOLDStockEdt.Text, #32, '', [rfReplaceAll]));
   end;         
 end;
   
end;

procedure TPertesGestionF.NamePerteGCbxPropertiesChange(Sender: TObject);

begin
 if Tag = 0 then
 begin
  CodeP:=0;
  TVAP:=0;
  MainForm.SQLQuery.Active:=False;
  MainForm.SQLQuery.SQL.Clear;
  MainForm.SQLQuery.SQL.Text:=
  'SELECT code_p,nom_p,prixht_p,tva_p,qut_p,qutini_p FROM produit WHERE LOWER(nom_p) LIKE LOWER('+QuotedStr(NamePerteGCbx.Text)+') GROUP BY code_p,nom_p,prixht_p,tva_p,qut_p,qutini_p';
  MainForm.SQLQuery.Active:=True;
  if NOT MainForm.SQLQuery.IsEmpty then
  begin
  CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;
  TVAP:= MainForm.SQLQuery.FieldByName('tva_p').AsInteger ;
  FirstPrixHTPerte:=MainForm.SQLQuery.FieldByName('prixht_p').AsFloat;

  PrixHTPerteGEdt.Text:=  CurrToStrF(MainForm.SQLQuery.FieldValues['prixht_p'], ffNumber, 2);
  PrixTTCPerteGEdt.Text:= 
  CurrToStrF(( (((MainForm.SQLQuery.FieldValues['prixht_p'] * TVAP)/100) + (MainForm.SQLQuery.FieldValues['prixht_p']))), ffNumber, 2);
  
   PrixHTTotalPerteGEdt.Text := FloatToStrF(0, ffNumber,14, 2);
   PrixTTCTotalPerteGEdt.Text:= FloatToStrF(0, ffNumber,14, 2);

  if Tag = 0 then
  begin
  PerteGOLDStockEdt.Text:= FloatToStrF((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']), ffNumber,14, 2) ;
  PerteGNEWStockEdt.Text:= FloatToStrF((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p']), ffNumber,14, 2) ;
  end else
      begin
        PerteGOLDStockEdt.Text:= FloatToStrF((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'] + DataModuleF.PertesTable.FieldValues['qut_p']), ffNumber,14, 2) ;
        PerteGNEWStockEdt.Text:= FloatToStrF((MainForm.SQLQuery.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qutini_p'] + DataModuleF.PertesTable.FieldValues['qut_p']), ffNumber,14, 2) ;  
      end;
  end;

  MainForm.SQLQuery.Active:=False;
  MainForm.SQLQuery.SQL.Clear;

  QuantityPerteGEdt.Text:= '';
  
// if (QuantityPerteGEdt.Text <> '')  then  
// begin
//     OKPerteGBtn.Enabled := true;
//     OKPerteGBtn.ImageIndex := 17;
// end;
  
  NamePerteGCbx.Style.BorderStyle:= ebsUltraFlat;
  NamePerteGCbx.StyleElements:= [seClient,seBorder];
  RequiredPerteGlbl.Visible:= False;
  NamePerteGErrorP.Visible:= False;
 end;
      
end;

procedure TPertesGestionF.OKPerteGBtnClick(Sender: TObject);
var CodePR,PRTypeP : Integer;
QutP : Double;
begin
if NamePerteGCbx.Text <>'' then
 begin

   if (QuantityPerteGEdt.Text <>'') AND (StrToFloat(QuantityPerteGEdt.Text) <> 0)  then
   begin
               //----------- use this code to inster new type when just type name it if empty exit-------------
          if TypePerteGCbx.Text <> '' then
          begin
          if NOT  DataModuleF.Perte_typeTable.Locate('nom_prt', TypePerteGCbx.Text, [loCaseInsensitive]) then
            begin
                with DataModuleF.Perte_typeTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  PRTypeP:= FieldValues['code_prt'] + 1;
                  end else
                      begin
                       PRTypeP:= 1;
                      end;
                Append;
                fieldbyname('code_prt').AsInteger := PRTypeP;
                fieldbyname('nom_prt').AsString := TypePerteGCbx.Text;
                post;
             end;
            end;
          end ;
          //----------- Making produit family integer in produit database table and read it as string from Combobox-------------
          DataModuleF.Perte_typeTable.Active:=false;
          DataModuleF.Perte_typeTable.SQL.Clear;
          DataModuleF.Perte_typeTable.SQL.Text:='Select * FROM perte_type WHERE LOWER(nom_prt) LIKE LOWER('+ QuotedStr( TypePerteGCbx.Text )+')'  ;
          DataModuleF.Perte_typeTable.Active:=True;
          PRTypeP:= DataModuleF.Perte_typeTable.FieldByName('code_prt').AsInteger;

       
     if Tag = 0 then
     begin

        DataModuleF.PertesTable.DisableControls;
        DataModuleF.PertesTable.Active:=False;
        DataModuleF.PertesTable.SQL.Clear;
        DataModuleF.PertesTable.SQL.Text:= 'SELECT * FROM pertes ORDER by code_pr' ;
        DataModuleF.PertesTable.Active:=True;
            

            DataModuleF.PertesTable.Last;
             if  DataModuleF.PertesTable.IsEmpty then
             begin
               DataModuleF.PertesTable.Last;
               CodePR:= 1;
             end else
                 begin
                  DataModuleF.PertesTable.Last;
                  CodePR:= DataModuleF.PertesTable.FieldValues['code_pr'] + 1 ;
                 end;


             QutP:= StrToFloat(StringReplace(QuantityPerteGEdt.Text, #32, '', [rfReplaceAll]));

             DataModuleF.PertesTable.Last;
             DataModuleF.PertesTable.Append;
             DataModuleF.PertesTable.FieldValues['code_pr']:= CodePR ;
             DataModuleF.PertesTable.FieldValues['refer_pr']:= NumPerteGEdt.Caption;
             DataModuleF.PertesTable.FieldValues['date_pr']:= DatePerteGD.Date;
             DataModuleF.PertesTable.FieldValues['time_pr']:=TimeOf(Now);
             DataModuleF.PertesTable.FieldValues['code_p']:=  CodeP ;
             DataModuleF.PertesTable.FieldByName('qut_p').AsFloat :=  2;
             DataModuleF.PertesTable.FieldValues['prixht_p'] := FirstPrixHTPerte ;
             DataModuleF.PertesTable.FieldValues['tva_p']:=   TVAP;
             DataModuleF.PertesTable.FieldValues['obser_pr']:=   ObserPerteGMem.Text;
             DataModuleF.PertesTable.fieldbyname('code_prt').Value  := PRTypeP;
             DataModuleF.PertesTable.FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);     
    
             DataModuleF.PertesTable.Post ;

             DataModuleF.PertesTable.EnableControls;
             DataModuleF.PertesTable.Last;

             //--- this is for take from the stock
             MainForm.SQLQuery.Active:= False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.SQLQuery.SQL.Text:='SELECT code_p, qut_p FROM produit WHERE code_p = ' +IntToStr(CodeP) + ' GROUP BY code_p, qut_p'  ;
             MainForm.SQLQuery.Active:= True;

             MainForm.SQLQuery.Edit;
             MainForm.SQLQuery.FieldValues['qut_p']:= ( MainForm.SQLQuery.FieldValues['qut_p'] - StrToFloat(QuantityPerteGEdt.Text));
             MainForm.SQLQuery.Post;

             MainForm.SQLQuery.Active:=False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.ProduitTable.Refresh;

       end else
           begin
                        //--- this is for take from the stock
             MainForm.SQLQuery.Active:= False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.SQLQuery.SQL.Text:='SELECT code_p, qut_p  FROM produit WHERE code_p = ' +IntToStr(CodeP) + ' GROUP BY code_p, qut_p'  ;
             MainForm.SQLQuery.Active:= True;
             
             MainForm.SQLQuery.Edit;
             MainForm.SQLQuery.FieldValues['qut_p']:=
             (( DataModuleF.PertesTable.FieldValues['qut_p'] + MainForm.SQLQuery.FieldValues['qut_p']) - StrToFloat(QuantityPerteGEdt.Text));
             MainForm.SQLQuery.Post;
             
             DataModuleF.PertesTable.Edit;
             DataModuleF.PertesTable.FieldValues['refer_pr']:= NumPerteGEdt.Caption;
             DataModuleF.PertesTable.FieldValues['date_pr']:= DatePerteGD.Date;
             DataModuleF.PertesTable.FieldValues['time_pr']:=TimeOf(Now);
             DataModuleF.PertesTable.FieldValues['code_p']:=  CodeP ;
             DataModuleF.PertesTable.FieldValues['qut_p'] :=  StrToFloat(QuantityPerteGEdt.Text);
             DataModuleF.PertesTable.FieldValues['prixht_p'] := FirstPrixHTPerte ;
             DataModuleF.PertesTable.FieldValues['tva_p']:=   TVAP;
             DataModuleF.PertesTable.FieldValues['obser_pr']:=   ObserPerteGMem.Text;
             DataModuleF.PertesTable.fieldbyname('code_prt').Value  := PRTypeP;
             DataModuleF.PertesTable.FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);     
    
             DataModuleF.PertesTable.Post ;



             MainForm.SQLQuery.Active:=False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.ProduitTable.Refresh;
             
           end;
   
          begin
            FSplash := TFSplash.Create(PertesGestionF);
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
          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          Close;

   end else
       begin
            try
            QuantityPerteGEdt.Text:='';
            QuantityPerteGEdt.BorderStyle := bsNone;
            QuantityPerteGEdt.StyleElements := [];
            RequiredQuantityPerteGlbl.Visible := true;
            QuantityPerteGErrorP.Visible := true;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
              SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKPerteGBtn.Enabled := false;
            OKPerteGBtn.ImageIndex := 18;
          finally
            QuantityPerteGEdt.SetFocus;
          end;
       end;
  
 end
  else
    try
//      NamePerteGCbx.BorderStyle := bsNone;
      NamePerteGCbx.StyleElements := [];
      RequiredPerteGlbl.Visible := true;
      NamePerteGErrorP.Visible := true;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
        SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKPerteGBtn.Enabled := false;
      OKPerteGBtn.ImageIndex := 18;
    finally
      NamePerteGCbx.SetFocus;
    end;
 
end;

procedure TPertesGestionF.QuantityPerteGEdtChange(Sender: TObject);
var
QuantityPerte,NEWPAHT,NEWPATTC,NEWQUNT : Double;
begin
                                 
   if QuantityPerteGEdt.Text<>'' then
   begin
     QuantityPerte:=StrToFloat (StringReplace(QuantityPerteGEdt.Text, #32, '', [rfReplaceAll]));
   
     NEWPAHT:=  FirstPrixHTPerte * QuantityPerte;
     NEWPATTC:= FirstPrixTTCPerte * QuantityPerte;  
     NEWQUNT:=  FirstQuantityOLDPerte - QuantityPerte;
     if Tag = 0 then
     begin
     PrixHTTotalPerteGEdt.Text   := FloatToStrF((NEWPAHT),ffNumber,14,2);   
     PrixTTCTotalPerteGEdt.Text  := FloatToStrF((NEWPATTC),ffNumber,14,2);  
     if PerteGOLDStockEdt.Text<>'' then
     PerteGNEWStockEdt.Text := FloatToStrF((StrToFloat(StringReplace(PerteGOLDStockEdt.Text, #32, '', [rfReplaceAll]))-StrToFloat(StringReplace(QuantityPerteGEdt.Text, #32, '', [rfReplaceAll])) ),ffNumber,14,2);
     end else                                         
         begin
           PrixHTTotalPerteGEdt.Text   := FloatToStrF((NEWPAHT),ffNumber,14,2);   
           PrixTTCTotalPerteGEdt.Text  := FloatToStrF((NEWPATTC),ffNumber,14,2);  
           if PerteGOLDStockEdt.Text<>'' then
           PerteGNEWStockEdt.Text := FloatToStrF((StrToFloat(StringReplace(PerteGOLDStockEdt.Text, #32, '', [rfReplaceAll]))-StrToFloat(StringReplace(QuantityPerteGEdt.Text, #32, '', [rfReplaceAll])) ),ffNumber,14,2); 
         end;
                                                                 
   end else
       begin
        PrixHTTotalPerteGEdt.Text   := FloatToStrF(0,ffNumber,14,2);   
        PrixTTCTotalPerteGEdt.Text  := FloatToStrF(0,ffNumber,14,2);  
        if PerteGOLDStockEdt.Text<>'' then
        PerteGNEWStockEdt.Text := FloatToStrF((StrToFloat(StringReplace(PerteGOLDStockEdt.Text, #32, '', [rfReplaceAll]))),ffNumber,14,2)  
       end;
                                                          
 if (NamePerteGCbx.Text <> '')  then  
 begin
     OKPerteGBtn.Enabled := true;
     OKPerteGBtn.ImageIndex := 17;
 end;
  
  QuantityPerteGEdt.BorderStyle:= bsSingle;
  QuantityPerteGEdt.StyleElements:= [seClient,seBorder];
  RequiredQuantityPerteGlbl.Visible:= False;
  QuantityPerteGErrorP.Visible:= False;
       
end;

procedure TPertesGestionF.QuantityPerteGEdtEnter(Sender: TObject);
begin
NamePerteGCbxExit(Sender);
end;

procedure TPertesGestionF.QuantityPerteGEdtExit(Sender: TObject);
var
QuantityPerte: Double;
begin

  if QuantityPerteGEdt.Text<>'' then                     
  begin
  QuantityPerte:=StrToFloat(StringReplace(QuantityPerteGEdt.Text, #32, '', [rfReplaceAll]));
  QuantityPerteGEdt.Text := FloatToStrF(QuantityPerte,ffNumber,14,2);
  end;

end;

procedure TPertesGestionF.QuantityPerteGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (QuantityPerteGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TPertesGestionF.TypePerteGCbxDropDown(Sender: TObject);
var
I : Integer;
  begin
     DataModuleF.Perte_typeTable.Refresh;
     TypePerteGCbx.Items.Clear;
     DataModuleF.Perte_typeTable.Active := False;
     DataModuleF.Perte_typeTable.sql.Clear;
     DataModuleF.Perte_typeTable.SQL.Text:= 'SELECT * FROM perte_type ' ;
     DataModuleF.Perte_typeTable.Active := True;
     DataModuleF.Perte_typeTable.first;

     for I := 0 to DataModuleF.Perte_typeTable.RecordCount - 1 do
     if DataModuleF.Perte_typeTable.FieldByName('nom_prt').IsNull = False then
     begin
       TypePerteGCbx.Items.Add(DataModuleF.Perte_typeTable.FieldByName('nom_prt').AsString);
       DataModuleF.Perte_typeTable.Next;
      end;

end;

end.
