unit UChargesGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, AdvToolBtn, Vcl.Buttons, sSpeedButton;

type
  TChargesGestionF = class(TForm)
    ModePaieChargeGCbx: TComboBox;
    Label7: TLabel;
    AddModePaieChargeGBtn: TAdvToolButton;
    Label5: TLabel;
    DateChargeGD: TDateTimePicker;
    ChargeGLbl: TLabel;
    TypeChargeGCbx: TComboBox;
    AddTypeChargeGBtn: TAdvToolButton;
    Label1: TLabel;
    STypeChargeGCbx: TComboBox;
    AddSousTypeChargeGBtn: TAdvToolButton;
    NameChargeGLbl: TLabel;
    NameChargeGEdt: TEdit;
    RequiredChargeGlbl: TLabel;
    NameChargeGErrorP: TPanel;
    Label19: TLabel;
    NChequeChargeGCbx: TEdit;
    AddCompteChargeGBtn: TAdvToolButton;
    CompteChargeGCbx: TComboBox;
    Label16: TLabel;
    ObserChargeGLbl: TLabel;
    ObserChargeMem: TMemo;
    LineP: TPanel;
    BottomP: TPanel;
    OKChargeGBtn: TAdvToolButton;
    CancelChargeGBtn: TAdvToolButton;
    MontantAHTChargeLbl: TLabel;
    MonatntTTCChargeLbl: TLabel;
    MontantTimberChargeGEdt: TEdit;
    MontantHTChargeGEdt: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MontantTTCChargeGEdt: TEdit;
    MontantTVAChargeGEdt: TEdit;
    RefChargeGLbl: TLabel;
    NumChargeGEdt: TLabel;
    RequiredMPGlbl: TLabel;
    Label6: TLabel;
    MPChargeGErrorP: TPanel;
    CompteChargeGErrorP: TPanel;
    RequiredCompteGlbl: TLabel;
    RequiredStarChargeGLbl: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MontantTTCChargeGErrorP: TPanel;
    RequiredMontantTTCChargeGlbl: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelChargeGBtnClick(Sender: TObject);
    procedure OKChargeGBtnClick(Sender: TObject);
    procedure NameChargeGEdtChange(Sender: TObject);
    procedure ModePaieChargeGCbxClick(Sender: TObject);
    procedure ModePaieChargeGCbxDropDown(Sender: TObject);
    procedure CompteChargeGCbxChange(Sender: TObject);
    procedure CompteChargeGCbxDropDown(Sender: TObject);
    procedure MontantHTChargeGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MontantTVAChargeGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MontantTimberChargeGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MontantTTCChargeGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MontantHTChargeGEdtExit(Sender: TObject);
    procedure MontantTVAChargeGEdtExit(Sender: TObject);
    procedure MontantTimberChargeGEdtExit(Sender: TObject);
    procedure MontantTTCChargeGEdtExit(Sender: TObject);
    procedure AddTypeChargeGBtnClick(Sender: TObject);
    procedure AddSousTypeChargeGBtnClick(Sender: TObject);
    procedure TypeChargeGCbxEnter(Sender: TObject);
    procedure STypeChargeGCbxEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ModePaieChargeGCbxChange(Sender: TObject);
    procedure MontantTTCChargeGEdtChange(Sender: TObject);
    procedure MontantHTChargeGEdtChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChargesGestionF: TChargesGestionF;

implementation

{$R *.dfm}

uses System.DateUtils,Winapi.MMSystem,Data.DB,
UMainF, UDataModule, USplashAddUnite;

procedure TChargesGestionF.AddSousTypeChargeGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the Sous Type de charge  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(ChargesGestionF);
  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00BFC86B;
  FSplashAddUnite.LineP.Color:=  $00BFC86B;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='S.Type:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer un S.Type' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Sous Type de Charge';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (ChargesGestionF.Left + ChargesGestionF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=14;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 31 ;
end;

procedure TChargesGestionF.AddTypeChargeGBtnClick(Sender: TObject);
begin
//-------- Show the splash screan for the Type de charge to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(ChargesGestionF);
  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00CBA016;
  FSplashAddUnite.LineP.Color:= $00CBA016;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Type:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer un Type' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Type de Charge';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (ChargesGestionF.Left + ChargesGestionF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=14;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 30 ;
end;

procedure TChargesGestionF.CancelChargeGBtnClick(Sender: TObject);
begin
Close;
end;

procedure TChargesGestionF.CompteChargeGCbxChange(Sender: TObject);
begin
CompteChargeGCbx.AutoDropDown:=True;
 if (NameChargeGEdt.Text <> '') AND (ModePaieChargeGCbx.Text <> '') AND (MontantTTCChargeGEdt.Text <> '')then  
 begin
     OKChargeGBtn.Enabled := true;
     OKChargeGBtn.ImageIndex := 17;
 end;
  
//  CompteChargeGCbx.BorderStyle:= bsSingle;
  CompteChargeGCbx.StyleElements:= [seClient,seBorder];
  RequiredCompteGlbl.Visible:= False;
  CompteChargeGErrorP.Visible:= False;
end;

procedure TChargesGestionF.CompteChargeGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteChargeGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteChargeGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;

end;

procedure TChargesGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms  ;
if Tag = 0 then

FreeAndNil(ChargesGestionF);
end;

procedure TChargesGestionF.FormCreate(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
end;

procedure TChargesGestionF.FormDestroy(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';
end;

procedure TChargesGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
  CancelChargeGBtnClick(Sender);

 end;

  if key = #13 then
  begin
   key := #0;
   OKChargeGBtnClick(Sender);
  end;
end;

procedure TChargesGestionF.FormShow(Sender: TObject);
begin
GrayForms  ;

    if tag = 0 then
    begin
    DateChargeGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
//    RegFGFourOLDCredit.Caption :=      FloatToStrF(StrToFloat(RegFGFourOLDCredit.Caption),ffNumber,14,2) ;
//    RegFGFourNEWCredit.Caption :=      FloatToStrF(StrToFloat(RegFGFourNEWCredit.Caption),ffNumber,14,2) ;
    end;

    if Tag = 1 then
    begin
//      FournisseurRegFGCbxChange(Sender);
//      ReglementFGestionF.VerRegFGEdt.SetFocus;
    end;
end;

procedure TChargesGestionF.ModePaieChargeGCbxChange(Sender: TObject);
begin
 if (NameChargeGEdt.Text <> '') AND (CompteChargeGCbx.Text <> '') AND (MontantTTCChargeGEdt.Text <> '') then  
 begin
     OKChargeGBtn.Enabled := true;
     OKChargeGBtn.ImageIndex := 17;
 end;
  
//  ModePaieChargeGCbx.BorderStyle:= bsSingle;
  ModePaieChargeGCbx.StyleElements:= [seClient,seBorder];
  RequiredMPGlbl.Visible:= False;
  MPChargeGErrorP.Visible:= False;
end;

procedure TChargesGestionF.ModePaieChargeGCbxClick(Sender: TObject);
begin
 if ModePaieChargeGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieChargeGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteChargeGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;

  ModePaieChargeGCbxChange(Sender);
  
end;

procedure TChargesGestionF.ModePaieChargeGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieChargeGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieChargeGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;

end;

procedure TChargesGestionF.MontantHTChargeGEdtChange(Sender: TObject);
var
MontantHTCharge,MontantTVACharge,MontantTimberCharge : Currency; 
begin
  MontantHTCharge:= 0;
  MontantTVACharge:= 0;
  MontantTimberCharge:= 0;
 
   if MontantHTChargeGEdt.Text<>'' then
   begin
   MontantHTCharge:=StrToFloat (StringReplace(MontantHTChargeGEdt.Text, #32, '', [rfReplaceAll]));
   end;

   if MontantTVAChargeGEdt.Text<>'' then
   begin
   MontantTVACharge:=StrToFloat (StringReplace(MontantTVAChargeGEdt.Text, #32, '', [rfReplaceAll]));
   end;

   if MontantTimberChargeGEdt.Text<>'' then
   begin
   MontantTimberCharge:=StrToFloat (StringReplace(MontantTimberChargeGEdt.Text, #32, '', [rfReplaceAll]));
   end;

   MontantTTCChargeGEdt.Text := FloatToStrF((MontantHTCharge + MontantTVACharge + MontantTimberCharge),ffNumber,14,2);
end;

procedure TChargesGestionF.MontantHTChargeGEdtExit(Sender: TObject);
var
MontantHTCharge: Currency;
begin

  if MontantHTChargeGEdt.Text<>'' then
  begin
  MontantHTCharge:=StrToFloat(StringReplace(MontantHTChargeGEdt.Text, #32, '', [rfReplaceAll]));
  MontantHTChargeGEdt.Text := FloatToStrF(MontantHTCharge,ffNumber,14,2);
  end;

end;

procedure TChargesGestionF.MontantHTChargeGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (MontantHTChargeGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TChargesGestionF.MontantTimberChargeGEdtExit(Sender: TObject);
var
MontantTimberCharge: Currency;
begin

  if MontantTimberChargeGEdt.Text<>'' then
  begin
  MontantTimberCharge:=StrToFloat(StringReplace(MontantTimberChargeGEdt.Text, #32, '', [rfReplaceAll]));
  MontantTimberChargeGEdt.Text := FloatToStrF(MontantTimberCharge,ffNumber,14,2);
  end;

end;

procedure TChargesGestionF.MontantTimberChargeGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (MontantTimberChargeGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TChargesGestionF.MontantTTCChargeGEdtChange(Sender: TObject);
begin
 if  (NameChargeGEdt.Text <> '') AND (ModePaieChargeGCbx.Text <> '') AND (CompteChargeGCbx.Text <> '') then  
 begin
     OKChargeGBtn.Enabled := true;
     OKChargeGBtn.ImageIndex := 17;
 end;
  
  MontantTTCChargeGEdt.BorderStyle:= bsSingle;
  MontantTTCChargeGEdt.StyleElements:= [seClient,seBorder];
  RequiredMontantTTCChargeGlbl.Visible:= False;
  MontantTTCChargeGErrorP.Visible:= False;
end;

procedure TChargesGestionF.MontantTTCChargeGEdtExit(Sender: TObject);
var
MontantTTCCharge: Currency;
begin

  if MontantTTCChargeGEdt.Text<>'' then
  begin
  MontantTTCCharge:=StrToFloat(StringReplace(MontantTTCChargeGEdt.Text, #32, '', [rfReplaceAll]));
  MontantTTCChargeGEdt.Text := FloatToStrF(MontantTTCCharge,ffNumber,14,2);
  end;

end;

procedure TChargesGestionF.MontantTTCChargeGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (MontantTTCChargeGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TChargesGestionF.MontantTVAChargeGEdtExit(Sender: TObject);
var
MontantTVACharge: Currency;
begin

  if MontantTVAChargeGEdt.Text<>'' then
  begin
  MontantTVACharge:=StrToFloat(StringReplace(MontantTVAChargeGEdt.Text, #32, '', [rfReplaceAll]));
  MontantTVAChargeGEdt.Text := FloatToStrF(MontantTVACharge,ffNumber,14,2);
  end;

end;

procedure TChargesGestionF.MontantTVAChargeGEdtKeyPress(Sender: TObject;
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
  if (Key = '.') AND (Pos(Key, (MontantTVAChargeGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TChargesGestionF.NameChargeGEdtChange(Sender: TObject);
begin
 if (ModePaieChargeGCbx.Text <> '') AND (CompteChargeGCbx.Text <> '') AND (MontantTTCChargeGEdt.Text <> '')  then  
 begin
     OKChargeGBtn.Enabled := true;
     OKChargeGBtn.ImageIndex := 17;
 end;
  
  NameChargeGEdt.BorderStyle:= bsSingle;
  NameChargeGEdt.StyleElements:= [seClient,seBorder];
  RequiredChargeGlbl.Visible:= False;
  NameChargeGErrorP.Visible:= False;
end;

procedure TChargesGestionF.OKChargeGBtnClick(Sender: TObject);
Var CodeCH,CodeCHEdit,CHTypeC,CHSTypeC,CodeOCB: Integer;
begin

 if NameChargeGEdt.Text <> '' then
 begin

  if ModePaieChargeGCbx.Text <> '' then
  begin

   if CompteChargeGCbx.Text <> '' then
   begin

    if MontantTTCChargeGEdt.Text <> '' then
    begin
   
          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ModePaieChargeGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(CompteChargeGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;

          // --- This TAG is for adding---//
     if Tag = 0 then
     begin
      DataModuleF.ChargesTable.Active := false;
      DataModuleF.ChargesTable.SQL.Clear;
      DataModuleF.ChargesTable.SQL.Text :=
     'SELECT * FROM charges ORDER BY code_ch';
      DataModuleF.ChargesTable.Active := true;

           //----------- use this code to inster new type when just type name it if empty exit-------------
          if TypeChargeGCbx.Text <> '' then
          begin
          if NOT  DataModuleF.Charge_typeTable.Locate('nom_cht', TypeChargeGCbx.Text, [loCaseInsensitive]) then
            begin
                with DataModuleF.Charge_typeTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  CHTypeC:= FieldValues['code_cht'] + 1;
                  end else
                      begin
                       CHTypeC:= 1;
                      end;
                Append;
                fieldbyname('code_cht').AsInteger := CHTypeC;
                fieldbyname('nom_cht').AsString := TypeChargeGCbx.Text;
                post;
             end;
            end;
          end ;


          //----------- use this code to inster new sous type when just type name it if empty exit-------------
          if STypeChargeGCbx.Text <> '' then
          begin
          if NOT  DataModuleF.Charge_s_typeTable.Locate('nom_chst', STypeChargeGCbx.Text, [loCaseInsensitive]) then
            begin
                with DataModuleF.Charge_s_typeTable do  begin
                  if NOT (IsEmpty) then
                  begin
                  Last;
                  CHSTypeC:= FieldValues['code_chst'] + 1;
                  end else
                      begin
                       CHSTypeC:= 1;
                      end;
                Append;
                fieldbyname('code_chst').AsInteger := CHSTypeC;
                fieldbyname('nom_chst').AsString := STypeChargeGCbx.Text;
                post;
             end;
            end;
          end ;

          //----------- Making produit family integer in produit database table and read it as string from Combobox-------------
          DataModuleF.Charge_typeTable.Active:=false;
          DataModuleF.Charge_typeTable.SQL.Clear;
          DataModuleF.Charge_typeTable.SQL.Text:='Select * FROM charge_type WHERE LOWER(nom_cht) LIKE LOWER('+ QuotedStr( TypeChargeGCbx.Text )+')'  ;
          DataModuleF.Charge_typeTable.Active:=True;
          CHTypeC:= DataModuleF.Charge_typeTable.FieldByName('code_cht').AsInteger;

          //----------- Making produit family integer in produit database table and read it as string from Combobox-------------
          DataModuleF.Charge_s_typeTable.Active:=false;
          DataModuleF.Charge_s_typeTable.SQL.Clear;
          DataModuleF.Charge_s_typeTable.SQL.Text:='Select * FROM charge_s_type WHERE LOWER(nom_chst) LIKE LOWER('+ QuotedStr( STypeChargeGCbx.Text )+')'  ;
          DataModuleF.Charge_s_typeTable.Active:=True;
          CHSTypeC:= DataModuleF.Charge_s_typeTable.FieldByName('code_chst').AsInteger;

      with DataModuleF.ChargesTable do
      begin
          if NOT (DataModuleF.ChargesTable.IsEmpty) then
          begin
          DataModuleF.ChargesTable.Last;
          CodeCH:= DataModuleF.ChargesTable.FieldValues['code_ch'] + 1;
          end else
              begin
               CodeCH:= 1;
              end;
          Append;
          FieldValues['code_ch']:= CodeCH;
          FieldValues['nom_ch']:= NameChargeGEdt.Text;
          FieldValues['refer_ch']:= NumChargeGEdt.Caption;
          FieldValues['date_ch']:= DateChargeGD.Date;
          FieldValues['time_ch']:=TimeOf(Now);
          FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          FieldValues['obser_ch']:= ObserChargeMem.Text;
          FieldValues['num_cheque_ch']:= NChequeChargeGCbx.Text;
          FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);                

            if MontantHTChargeGEdt.Text<>'' then
            begin
            FieldByName('montht_ch').AsCurrency:=StrToCurr(StringReplace(MontantHTChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['montht_ch']:=  StrToInt('0')  end;

            if MontantTVAChargeGEdt.Text<>'' then
            begin
             FieldByName('monttva_ch').AsCurrency:=StrToCurr(StringReplace(MontantTVAChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['monttva_ch']:=  StrToInt('0')  end;

            if MontantTimberChargeGEdt.Text<>'' then
            begin
            FieldByName('timber_ch').AsCurrency:=StrToCurr(StringReplace(MontantTimberChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['timber_ch']:=  StrToInt('0')  end;

            if MontantTTCChargeGEdt.Text<>'' then
            begin
            FieldByName('montttc_ch').AsCurrency:=StrToCurr(StringReplace(MontantTTCChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['montttc_ch']:=  StrToInt('0')  end;
            
          
          fieldbyname('code_cht').Value  := CHTypeC;
          fieldbyname('code_chst').Value := CHSTypeC;

          if (LowerCase(ModePaieChargeGCbx.Text)='espèce') OR (LowerCase(ModePaieChargeGCbx.Text)='espece') then
          begin
           FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(ModePaieChargeGCbx.Text)='chèque') OR (LowerCase(ModePaieChargeGCbx.Text)='cheque') then
          begin
           FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(ModePaieChargeGCbx.Text)='à terme' ) OR (LowerCase(ModePaieChargeGCbx.Text)='a terme' )
             OR (LowerCase(ModePaieChargeGCbx.Text)='À terme' ) then
          begin
           FieldValues['code_mdpai']:=3 ;
          end;

          Post;
          
       end;

//        DataModuleF.ChargesTable.Refresh;
        DataModuleF.ChargesTable.Last;
    end;
  // ------------// --- This TAG is for editing---//---------------------------------------------------
    if Tag = 1 then
    begin
        CodeCHEdit:=DataModuleF.ChargesTable.FieldByName('code_ch').AsInteger;
        with DataModuleF.ChargesTable do
        begin
          Edit;
          FieldValues['nom_ch']:= NameChargeGEdt.Text;
          FieldValues['refer_ch']:= NumChargeGEdt.Caption;
//          FieldValues['date_ch']:= DateOf(Today);
//          FieldValues['time_ch']:=TimeOf(Now);
          FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          FieldValues['obser_ch']:= ObserChargeMem.Text;
          FieldValues['num_cheque_ch']:= NChequeChargeGCbx.Text;
          FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);                


            if MontantHTChargeGEdt.Text<>'' then
            begin
            FieldByName('montht_ch').AsCurrency:=StrToCurr(StringReplace(MontantHTChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['montht_ch']:=  StrToInt('0')  end;

            if MontantTVAChargeGEdt.Text<>'' then
            begin
             FieldByName('monttva_ch').AsCurrency:=StrToCurr(StringReplace(MontantTVAChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['monttva_ch']:=  StrToInt('0')  end;

            if MontantTimberChargeGEdt.Text<>'' then
            begin
            FieldByName('timber_ch').AsCurrency:=StrToCurr(StringReplace(MontantTimberChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['timber_ch']:=  StrToInt('0')  end;

            if MontantTTCChargeGEdt.Text<>'' then
            begin
            FieldByName('montttc_ch').AsCurrency:=StrToCurr(StringReplace(MontantTTCChargeGEdt.Text, #32, '', [rfReplaceAll]));
            end else begin FieldValues['montttc_ch']:=  StrToInt('0')  end;
            
          
          fieldbyname('code_cht').Value  := CHTypeC;
          fieldbyname('code_chst').Value := CHSTypeC;

          if (LowerCase(ModePaieChargeGCbx.Text)='espèce') OR (LowerCase(ModePaieChargeGCbx.Text)='espece') then
          begin
           FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(ModePaieChargeGCbx.Text)='chèque') OR (LowerCase(ModePaieChargeGCbx.Text)='cheque') then
          begin
           FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(ModePaieChargeGCbx.Text)='à terme' ) OR (LowerCase(ModePaieChargeGCbx.Text)='a terme' )
             OR (LowerCase(ModePaieChargeGCbx.Text)='À terme' ) then
          begin
           FieldValues['code_mdpai']:=3 ;
          end;

          Post;
          
        end;

//        DataModuleF.ChargesTable.Refresh;
    end;

                 //--- this is for adding the money to the caisse----
         begin

          if Tag = 0 then
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
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Paiement de Charge Pièce N° '+NumChargeGEdt.Caption;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= MainForm.UserNameLbl.Caption;
      //      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(MontantTTCChargeGEdt.Text, #32, '', [rfReplaceAll]));

             if (LowerCase(ModePaieChargeGCbx.Text)='espèce') OR (LowerCase(ModePaieChargeGCbx.Text)='espece') then
            begin
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
            end;
             if (LowerCase(ModePaieChargeGCbx.Text)='chèque') OR (LowerCase(ModePaieChargeGCbx.Text)='cheque') then
            begin
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
            end;
            if (LowerCase(ModePaieChargeGCbx.Text)='à terme' ) OR (LowerCase(ModePaieChargeGCbx.Text)='a terme' )
               OR (LowerCase(ModePaieChargeGCbx.Text)='À terme' ) then
            begin
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
            end;

            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ch']:= DataModuleF.ChargesTable.FieldByName('code_ch').AsInteger;

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

                    MainForm.Opt_cas_bnk_CaisseTable.Edit;
//                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Paiement de Charge Pièce N° '+NumChargeGEdt.Caption;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= MainForm.UserNameLbl.Caption;
              //      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
                   MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(MontantTTCChargeGEdt.Text, #32, '', [rfReplaceAll]));

                     if (LowerCase(ModePaieChargeGCbx.Text)='espèce') OR (LowerCase(ModePaieChargeGCbx.Text)='espece') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                    end;
                     if (LowerCase(ModePaieChargeGCbx.Text)='chèque') OR (LowerCase(ModePaieChargeGCbx.Text)='cheque') then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                    end;
                    if (LowerCase(ModePaieChargeGCbx.Text)='à terme' ) OR (LowerCase(ModePaieChargeGCbx.Text)='a terme' )
                       OR (LowerCase(ModePaieChargeGCbx.Text)='À terme' ) then
                    begin
                     MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                    end;

                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                    MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ch']:=  DataModuleF.ChargesTable.FieldByName('code_ch').AsInteger;

                    MainForm.Opt_cas_bnk_CaisseTable.Post;
                    MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                    MainForm.Opt_cas_bnk_BankTable.Refresh;


                    MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                    MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                    MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                    MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

                  
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

           DataModuleF.Charge_typeTable.Active := False;
           DataModuleF.Charge_typeTable.sql.Clear;
           DataModuleF.Charge_typeTable.SQL.Text:= 'SELECT * FROM charge_type ' ;
           DataModuleF.Charge_typeTable.Active := True;

           DataModuleF.Charge_s_typeTable.Active := False;
           DataModuleF.Charge_s_typeTable.sql.Clear;
           DataModuleF.Charge_s_typeTable.SQL.Text:= 'SELECT * FROM charge_s_type ' ;
           DataModuleF.Charge_s_typeTable.Active := True;
           
           DataModuleF.Charge_typeTable.Refresh;
           DataModuleF.Charge_s_typeTable.Refresh;
           DataModuleF.ChargesTable.Refresh;

          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          Close;

         end;


         end else
             begin
                   try
                    MontantTTCChargeGEdt.BorderStyle := bsNone;
                    MontantTTCChargeGEdt.StyleElements := [];
                    RequiredMontantTTCChargeGlbl.Visible := true;
                    MontantTTCChargeGErrorP.Visible := true;
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
                      SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    OKChargeGBtn.Enabled := false;
                    OKChargeGBtn.ImageIndex := 18;
                  finally
                    MontantTTCChargeGEdt.SetFocus;
                  end; 
             end;

         end else
             begin
                  try
//                    CompteChargeGCbx.BorderStyle := bsNone;
                    CompteChargeGCbx.StyleElements := [];
                    RequiredCompteGlbl.Visible := true;
                    CompteChargeGErrorP.Visible := true;
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
                      SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    OKChargeGBtn.Enabled := false;
                    OKChargeGBtn.ImageIndex := 18;
                  finally
                    CompteChargeGCbx.SetFocus;
                  end; 
             end;

          end else
              begin
                   try
//                    ModePaieChargeGCbx.BorderStyle := bsNone;
                    ModePaieChargeGCbx.StyleElements := [];
                    RequiredMPGlbl.Visible := true;
                    MPChargeGErrorP.Visible := true;
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
                      SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    OKChargeGBtn.Enabled := false;
                    OKChargeGBtn.ImageIndex := 18;
                  finally
                    ModePaieChargeGCbx.SetFocus;
                  end; 
              end;
       end
  else
    try
      NameChargeGEdt.BorderStyle := bsNone;
      NameChargeGEdt.StyleElements := [];
      RequiredChargeGlbl.Visible := true;
      NameChargeGErrorP.Visible := true;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
        SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKChargeGBtn.Enabled := false;
      OKChargeGBtn.ImageIndex := 18;
    finally
      NameChargeGEdt.SetFocus;
    end;
    
end;

procedure TChargesGestionF.STypeChargeGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
     DataModuleF.Charge_s_typeTable.Refresh;
     STypeChargeGCbx.Items.Clear;
     DataModuleF.Charge_s_typeTable.Active := False;
     DataModuleF.Charge_s_typeTable.sql.Clear;
     DataModuleF.Charge_s_typeTable.SQL.Text:= 'SELECT * FROM charge_s_type ' ;
     DataModuleF.Charge_s_typeTable.Active := True;
     DataModuleF.Charge_s_typeTable.first;

     for I := 0 to DataModuleF.Charge_s_typeTable.RecordCount - 1 do
     if DataModuleF.Charge_s_typeTable.FieldByName('nom_chst').IsNull = False then
     begin
       STypeChargeGCbx.Items.Add(DataModuleF.Charge_s_typeTable.FieldByName('nom_chst').AsString);
       DataModuleF.Charge_s_typeTable.Next;
      end;

end;

procedure TChargesGestionF.TypeChargeGCbxEnter(Sender: TObject);
var
I : Integer;
  begin
     DataModuleF.Charge_typeTable.Refresh;
     TypeChargeGCbx.Items.Clear;
     DataModuleF.Charge_typeTable.Active := False;
     DataModuleF.Charge_typeTable.sql.Clear;
     DataModuleF.Charge_typeTable.SQL.Text:= 'SELECT * FROM charge_type ' ;
     DataModuleF.Charge_typeTable.Active := True;
     DataModuleF.Charge_typeTable.first;

     for I := 0 to DataModuleF.Charge_typeTable.RecordCount - 1 do
     if DataModuleF.Charge_typeTable.FieldByName('nom_cht').IsNull = False then
     begin
       TypeChargeGCbx.Items.Add(DataModuleF.Charge_typeTable.FieldByName('nom_cht').AsString);
       DataModuleF.Charge_typeTable.Next;
      end;

end;

end.
