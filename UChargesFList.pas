unit UChargesFList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  frxExportPDF, frxClass, frxExportXLS, frxDBSet, Data.DB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.WinXCtrls,
  Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls;

type
  TChargesFListF = class(TForm)
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    FisrtBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    LastBARecbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchChargeEdt: TSearchBox;
    Panel2: TPanel;
    DateEndChargeD: TDateTimePicker;
    DateStartChargeD: TDateTimePicker;
    ResherchRegCNumBRdioBtn: TRadioButton;
    ResherchChargeRdioBtn: TRadioButton;
    Panel3: TPanel;
    ChargeListDataS: TDataSource;
    ChargeListfrxRprt: TfrxReport;
    frxChargeListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    PeriodCaiseeListLbl: TLabel;
    Label3: TLabel;
    ChargesListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    TypeChargeListCbx: TComboBox;
    STypeChargeListCbx: TComboBox;
    PopupMenu1: TPopupMenu;
    P1: TMenuItem;
    P2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddBARecBtnClick(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure ResearchChargeEdtChange(Sender: TObject);
    procedure TypeChargeListCbxEnter(Sender: TObject);
    procedure STypeChargeListCbxEnter(Sender: TObject);
    procedure TypeChargeListCbxExit(Sender: TObject);
    procedure STypeChargeListCbxExit(Sender: TObject);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure DateStartChargeDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TypeChargeListCbxChange(Sender: TObject);
    procedure ChargesListDBGridEhDblClick(Sender: TObject);
    procedure ChargesListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChargesListDBGridEhKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var  
  ChargesFListF: TChargesFListF;

implementation

{$R *.dfm}

uses System.DateUtils,
UDataModule, UChargesGestion, UMainF, USplashAddUnite;


procedure TChargesFListF.AddBARecBtnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            ChargesGestionF:=TChargesGestionF.Create(ChargesFListF);

      DataModuleF.ChargesTable.DisableControls;
      DataModuleF.ChargesTable.Last;
      ChargesGestionF.NumChargeGEdt.Caption:=
      'CH'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((DataModuleF.ChargesTable.FieldByName('code_ch').AsInteger) + 1)]);
      DataModuleF.ChargesTable.EnableControls;


     //       ClientGestionF.BringToFront;
            ChargesGestionF.Left:=  (Screen.Width div 2 ) - (ChargesGestionF.Width div 2)    ;
            ChargesGestionF.Top:=   (Screen.Height div 2) - (ChargesGestionF.Height div 2)    ;
        //    MainForm.Align:= alClient;
         //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
            ChargesGestionF.OKChargeGBtn.Tag:= 0 ;
            ChargesGestionF.Show;
            ChargesGestionF.NameChargeGEdt.SetFocus;
            
end;

procedure TChargesFListF.TypeChargeListCbxChange(Sender: TObject);
Var
CodeTCH,CodeSTCH : Integer;
begin
if (TypeChargeListCbx.Text <> 'Tous') AND (STypeChargeListCbx.Text <> 'Tous') then
  begin

               DataModuleF.Charge_typeTable.DisableControls;
               DataModuleF.Charge_typeTable.Active:=False;
               DataModuleF.Charge_typeTable.SQL.Clear;
               DataModuleF.Charge_typeTable.SQL.Text:='select * FROM charge_type where LOWER(nom_cht) LIKE LOWER('''+TypeChargeListCbx.Text+''')';
               DataModuleF.Charge_typeTable.Active:=True;
               CodeTCH:=DataModuleF.Charge_typeTable.FieldByName('code_cht').AsInteger;
               DataModuleF.Charge_typeTable.EnableControls;

               DataModuleF.Charge_s_typeTable.DisableControls;
               DataModuleF.Charge_s_typeTable.Active:=False;
               DataModuleF.Charge_s_typeTable.SQL.Clear;
               DataModuleF.Charge_s_typeTable.SQL.Text:='select * FROM charge_s_type where LOWER(nom_chst) LIKE LOWER('''+STypeChargeListCbx.Text+''')';
               DataModuleF.Charge_s_typeTable.Active:=True;
               CodeSTCH:=DataModuleF.Charge_s_typeTable.FieldByName('code_chst').AsInteger;
               DataModuleF.Charge_s_typeTable.EnableControls;

               DataModuleF.ChargesTable.DisableControls;
               DataModuleF.ChargesTable.Active:=False;
               DataModuleF.ChargesTable.SQL.Clear;
               DataModuleF.ChargesTable.SQL.Text:='select * FROM charges where code_cht = '+ IntToStr(CodeTCH) +' AND code_chst = '+IntToStr(CodeSTCH);
               DataModuleF.ChargesTable.Active:=True;
               DataModuleF.ChargesTable.EnableControls;
  end;
  
  if (TypeChargeListCbx.Text <> 'Tous') AND (STypeChargeListCbx.Text = 'Tous') then
  begin

               DataModuleF.Charge_typeTable.DisableControls;
               DataModuleF.Charge_typeTable.Active:=False;
               DataModuleF.Charge_typeTable.SQL.Clear;
               DataModuleF.Charge_typeTable.SQL.Text:='select * FROM charge_type where LOWER(nom_cht) LIKE LOWER('''+TypeChargeListCbx.Text+''')';
               DataModuleF.Charge_typeTable.Active:=True;
               CodeTCH:=DataModuleF.Charge_typeTable.FieldByName('code_cht').AsInteger;
               DataModuleF.Charge_typeTable.EnableControls;

               DataModuleF.ChargesTable.DisableControls;
               DataModuleF.ChargesTable.Active:=False;
               DataModuleF.ChargesTable.SQL.Clear;
               DataModuleF.ChargesTable.SQL.Text:='select * FROM charges where code_cht = '+ IntToStr(CodeTCH) ;
               DataModuleF.ChargesTable.Active:=True;
               DataModuleF.ChargesTable.EnableControls;

  end;

  if (TypeChargeListCbx.Text = 'Tous') AND (STypeChargeListCbx.Text <> 'Tous') then
  begin


               DataModuleF.Charge_s_typeTable.DisableControls;
               DataModuleF.Charge_s_typeTable.Active:=False;
               DataModuleF.Charge_s_typeTable.SQL.Clear;
               DataModuleF.Charge_s_typeTable.SQL.Text:='select * FROM charge_s_type where LOWER(nom_chst) LIKE LOWER('''+STypeChargeListCbx.Text+''')';
               DataModuleF.Charge_s_typeTable.Active:=True;
               CodeSTCH:=DataModuleF.Charge_s_typeTable.FieldByName('code_chst').AsInteger;
               DataModuleF.Charge_s_typeTable.EnableControls;
  
               DataModuleF.ChargesTable.DisableControls;
               DataModuleF.ChargesTable.Active:=False;
               DataModuleF.ChargesTable.SQL.Clear;
               DataModuleF.ChargesTable.SQL.Text:='select * FROM charges where code_chst = '+IntToStr(CodeSTCH);
               DataModuleF.ChargesTable.Active:=True;
               DataModuleF.ChargesTable.EnableControls;

  end;


  if (TypeChargeListCbx.Text = 'Tous') AND (STypeChargeListCbx.Text = 'Tous') then
  begin
               DataModuleF.ChargesTable.DisableControls;
               DataModuleF.ChargesTable.Active:=False;
               DataModuleF.ChargesTable.SQL.Clear;
               DataModuleF.ChargesTable.SQL.Text:='select * FROM charges ';
               DataModuleF.ChargesTable.Active:=True;
               DataModuleF.ChargesTable.EnableControls;
  end;

end;

procedure TChargesFListF.TypeChargeListCbxEnter(Sender: TObject);
var
I : Integer;
  begin
     DataModuleF.Charge_typeTable.Refresh;
     TypeChargeListCbx.Items.Clear;
     DataModuleF.Charge_typeTable.Active := False;
     DataModuleF.Charge_typeTable.sql.Clear;
     DataModuleF.Charge_typeTable.SQL.Text:= 'SELECT * FROM charge_type ' ;
     DataModuleF.Charge_typeTable.Active := True;
     DataModuleF.Charge_typeTable.first;

     for I := 0 to DataModuleF.Charge_typeTable.RecordCount - 1 do
     if DataModuleF.Charge_typeTable.FieldByName('nom_cht').IsNull = False then
     begin
       TypeChargeListCbx.Items.Add(DataModuleF.Charge_typeTable.FieldByName('nom_cht').AsString);
       DataModuleF.Charge_typeTable.Next;
      end;

      TypeChargeListCbx.Items.Add('Tous');

end;

procedure TChargesFListF.TypeChargeListCbxExit(Sender: TObject);
begin
if TypeChargeListCbx.ItemIndex = -1 then
   TypeChargeListCbx.ItemIndex := TypeChargeListCbx.Items.Count -1;

end;

procedure TChargesFListF.STypeChargeListCbxEnter(Sender: TObject);
var
I : Integer;
  begin
     DataModuleF.Charge_s_typeTable.Refresh;
     STypeChargeListCbx.Items.Clear;
     DataModuleF.Charge_s_typeTable.Active := False;
     DataModuleF.Charge_s_typeTable.sql.Clear;
     DataModuleF.Charge_s_typeTable.SQL.Text:= 'SELECT * FROM charge_s_type ' ;
     DataModuleF.Charge_s_typeTable.Active := True;
     DataModuleF.Charge_s_typeTable.first;

     for I := 0 to DataModuleF.Charge_s_typeTable.RecordCount - 1 do
     if DataModuleF.Charge_s_typeTable.FieldByName('nom_chst').IsNull = False then
     begin
       STypeChargeListCbx.Items.Add(DataModuleF.Charge_s_typeTable.FieldByName('nom_chst').AsString);
       DataModuleF.Charge_s_typeTable.Next;
      end;

      STypeChargeListCbx.Items.Add('Tous');


end;

procedure TChargesFListF.STypeChargeListCbxExit(Sender: TObject);
begin
if STypeChargeListCbx.ItemIndex = -1 then
   STypeChargeListCbx.ItemIndex := STypeChargeListCbx.Items.Count -1;
end;

procedure TChargesFListF.ChargesListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if ChargesListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  EditBARecBtnClick(Sender) ;
end;
end;

procedure TChargesFListF.ChargesListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not ChargesListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBARecBtnClick(Sender) ;
  end else exit
end;

procedure TChargesFListF.ChargesListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['n','N'] then
    AddBARecBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchChargeEdt.SetFocus;
  if not ChargesListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBARecBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBARecBtnClick(Sender);
  end else Exit;
end;

procedure TChargesFListF.DateStartChargeDChange(Sender: TObject);
begin
DataModuleF.ChargesTable.DisableControls;
DataModuleF.ChargesTable.Active:= False;
DataModuleF.ChargesTable.SQL.clear;
DataModuleF.ChargesTable.sql.Text:='SELECT * FROM charges WHERE date_ch BETWEEN '''+(DateToStr(DateStartChargeD.Date))+ ''' AND ''' +(DateToStr(DateEndChargeD.Date))+'''';
DataModuleF.ChargesTable.Active:= True;
DataModuleF.ChargesTable.EnableControls;
end;

procedure TChargesFListF.DeleteBARecBtnClick(Sender: TObject);
begin
if NOT (DataModuleF.ChargesTable.IsEmpty) then
 begin

      FSplashAddUnite:=TFSplashAddUnite.Create(ChargesFListF);
      FSplashAddUnite.Width:=300;
      FSplashAddUnite.Height:=160;
      FSplashAddUnite.Panel1.Color:=  $004735F9;
      FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
      FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
      FSplashAddUnite.Image1.Left:= 1;
      FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
      FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
      FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'le Charge ?';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Charge';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 32 ;



 end;
end;

procedure TChargesFListF.EditBARecBtnClick(Sender: TObject);
var
 CodeF: Integer;
 begin

  ChargesGestionF := TChargesGestionF.Create(nil);
  try
  
    if Assigned(ChargesFListF) then
    begin
    ResearchChargeEdt.Text:='';
    end;
    
   if NOT (DataModuleF.ChargesTable.IsEmpty) Then
   begin
       ChargesGestionF.NumChargeGEdt.Caption := DataModuleF.ChargesTable.FieldValues['refer_ch'];
       ChargesGestionF.NameChargeGEdt.Text := DataModuleF.ChargesTable.FieldValues['nom_ch'];
       ChargesGestionF.DateChargeGD.Date:= DataModuleF.ChargesTable.FieldValues['date_ch'];
       
       if (DataModuleF.ChargesTable.FieldValues['code_cht'] <> null) and (DataModuleF.ChargesTable.FieldValues['code_cht']<> 0) then
       begin
       CodeF:=DataModuleF.ChargesTable.FieldValues['code_cht'];
         DataModuleF.Charge_typeTable.Active:=false;
         DataModuleF.Charge_typeTable.SQL.Clear;
         DataModuleF.Charge_typeTable.SQL.Text:='Select * FROM charge_type WHERE code_cht ='+(IntToStr( CodeF ) ) ;
         DataModuleF.Charge_typeTable.Active:=True;
         ChargesGestionF.TypeChargeGCbx.Text:= DataModuleF.Charge_typeTable.FieldValues['nom_cht'];
         DataModuleF.Charge_typeTable.Active:=false;
         DataModuleF.Charge_typeTable.SQL.Clear;
         DataModuleF.Charge_typeTable.SQL.Text:='Select * FROM charge_type ' ;
         DataModuleF.Charge_typeTable.Active:=True;
        end;

       if (DataModuleF.ChargesTable.FieldValues['code_chst'] <> null) and (DataModuleF.ChargesTable.FieldValues['code_chst']<> 0) then
       begin
       CodeF:=DataModuleF.ChargesTable.FieldValues['code_chst'];
         DataModuleF.Charge_s_typeTable.Active:=false;
         DataModuleF.Charge_s_typeTable.SQL.Clear;
         DataModuleF.Charge_s_typeTable.SQL.Text:='Select * FROM charge_s_type WHERE code_chst ='+(IntToStr( CodeF ) ) ;
         DataModuleF.Charge_s_typeTable.Active:=True;
         ChargesGestionF.STypeChargeGCbx.Text:= DataModuleF.Charge_s_typeTable.FieldValues['nom_chst'];
         DataModuleF.Charge_s_typeTable.Active:=false;
         DataModuleF.Charge_s_typeTable.SQL.Clear;
         DataModuleF.Charge_s_typeTable.SQL.Text:='Select * FROM charge_s_type ' ;
         DataModuleF.Charge_s_typeTable.Active:=True;
        end;

       if (DataModuleF.ChargesTable.FieldValues['code_mdpai'] <> null ) AND (DataModuleF.ChargesTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeF:=DataModuleF.ChargesTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         ChargesGestionF.ModePaieChargeGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (DataModuleF.ChargesTable.FieldValues['code_cmpt'] <> null) AND (DataModuleF.ChargesTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeF:=DataModuleF.ChargesTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         ChargesGestionF.CompteChargeGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if DataModuleF.ChargesTable.FieldValues['num_cheque_ch'] <> null then
       begin
        ChargesGestionF.NChequeChargeGCbx.Text:= DataModuleF.ChargesTable.FieldValues['num_cheque_ch'];
       end;

       if DataModuleF.ChargesTable.FieldValues['obser_ch']<> null then
       begin
        ChargesGestionF.ObserChargeMem.Text:= DataModuleF.ChargesTable.FieldValues['obser_ch'];
       end;

      ChargesGestionF.MontantHTChargeGEdt.Text :=      CurrToStrF(DataModuleF.ChargesTable.FieldValues['montht_ch'], ffNumber, 2);
      ChargesGestionF.MontantTVAChargeGEdt.Text :=     CurrToStrF(DataModuleF.ChargesTable.FieldValues['monttva_ch'], ffNumber, 2);
      ChargesGestionF.MontantTimberChargeGEdt.Text :=  CurrToStrF(DataModuleF.ChargesTable.FieldValues['timber_ch'], ffNumber, 2);
      ChargesGestionF.MontantTVAChargeGEdt.Text :=     CurrToStrF(DataModuleF.ChargesTable.FieldValues['montttc_ch'], ffNumber, 2);

      ChargesGestionF.Left:=  (Screen.Width div 2 ) - (ChargesGestionF.Width div 2)    ;
      ChargesGestionF.Top:=   (Screen.Height div 2) - (ChargesGestionF.Height div 2)    ;

      ChargesGestionF.Tag:= 1;
      ChargesGestionF.ShowModal;

     end;
      finally
      ChargesGestionF.Free
      end;

end;

procedure TChargesFListF.FisrtBARecbtnClick(Sender: TObject);
begin
DataModuleF.ChargesTable.First;
end;

procedure TChargesFListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(ChargesFListF);
end;

procedure TChargesFListF.FormShow(Sender: TObject);
begin
  DataModuleF.ChargesTable.Active:= True;
  DateStartChargeD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndChargeD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartChargeDChange(Sender);
end;

procedure TChargesFListF.LastBARecbtnClick(Sender: TObject);
begin
DataModuleF.ChargesTable.Last;
end;

procedure TChargesFListF.NextBARecbtnClick(Sender: TObject);
begin
DataModuleF.ChargesTable.Next;
end;

procedure TChargesFListF.PreviosBARecbtnClick(Sender: TObject);
begin
DataModuleF.ChargesTable.Prior;
end;

procedure TChargesFListF.ResearchChargeEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

 TypeChargeListCbx.ItemIndex  := TypeChargeListCbx.Items.Count -1;
 STypeChargeListCbx.ItemIndex := STypeChargeListCbx.Items.Count -1;
 TypeChargeListCbx.Repaint;
 STypeChargeListCbx.Repaint;

    if ResearchChargeEdt.Text<>'' then
    begin

      if ResherchChargeRdioBtn.Checked then
      begin
        DataModuleF.ChargesTable.DisableControls;
        DataModuleF.ChargesTable.Active:=False;
        DataModuleF.ChargesTable.SQL.Clear;
        DataModuleF.ChargesTable.SQL.Text:='SELECT * FROM charges WHERE nom_ch LIKE LOWER' +'('''+'%'+(ResearchChargeEdt.Text)+'%'+''')' ;
        DataModuleF.ChargesTable.Active:=True;
        DataModuleF.ChargesTable.EnableControls;
      end;

    end else
     begin
        DataModuleF.ChargesTable.DisableControls;
        DataModuleF.ChargesTable.Active:=False;
        DataModuleF.ChargesTable.SQL.Clear;
        DataModuleF.ChargesTable.SQL.Text:='SELECT * FROM charges ' ;
        DataModuleF.ChargesTable.Active:=True;
        DataModuleF.ChargesTable.EnableControls;

     end;
end;

end. 
