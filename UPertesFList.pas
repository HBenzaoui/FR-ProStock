﻿unit UPertesFList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn,
  Vcl.ExtCtrls;

type
  TPertesFListF = class(TForm)
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
    PeriodCaiseeListLbl: TLabel;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchPerteEdt: TSearchBox;
    Panel2: TPanel;
    DateEndPerteD: TDateTimePicker;
    DateStartPerteD: TDateTimePicker;
    ResherchPerteNumBRdioBtn: TRadioButton;
    ResherchPerteRdioBtn: TRadioButton;
    Panel4: TPanel;
    TypePerteListCbx: TComboBox;
    Panel3: TPanel;
    PertesListDBGridEh: TDBGridEh;
    PerteListDataS: TDataSource;
    ChargeListfrxRprt: TfrxReport;
    frxChargeListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DateStartPerteDChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure TypePerteListCbxDropDown(Sender: TObject);
    procedure AddBARecBtnClick(Sender: TObject);
    procedure ResearchPerteEdtChange(Sender: TObject);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure PertesListDBGridEhDblClick(Sender: TObject);
    procedure PertesListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure PertesListDBGridEhKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PertesFListF: TPertesFListF;

implementation

{$R *.dfm}

uses System.DateUtils,UDataModule, UPertesGestion, UMainF, USplashAddUnite;

procedure TPertesFListF.AddBARecBtnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

   PertesGestionF := TPertesGestionF.Create(nil);
  try

      DataModuleF.PertesTable.DisableControls;
      DataModuleF.PertesTable.Last;
      PertesGestionF.NumPerteGEdt.Caption:=
      'PR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((DataModuleF.PertesTable.FieldByName('code_pr').AsInteger) + 1)]);
      DataModuleF.PertesTable.EnableControls;

     //       ClientGestionF.BringToFront;
            PertesGestionF.Left:=  (Screen.Width div 2 ) - (PertesGestionF.Width div 2)    ;
            PertesGestionF.Top:=   (Screen.Height div 2) - (PertesGestionF.Height div 2)    ;
        //    MainForm.Align:= alClient;
         //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
            PertesGestionF.OKPerteGBtn.Tag:= 0 ;
            PertesGestionF.ShowModal;
  finally
       FreeAndNil(PertesGestionF);
  end;
end;

procedure TPertesFListF.DateStartPerteDChange(Sender: TObject);
begin
DataModuleF.PertesTable.DisableControls;
DataModuleF.PertesTable.Active:= False;
DataModuleF.PertesTable.SQL.clear;
DataModuleF.PertesTable.sql.Text:='SELECT * FROM pertes WHERE date_pr BETWEEN '''+(DateToStr(DateStartPerteD.Date))+ ''' AND ''' +(DateToStr(DateEndPerteD.Date))+'''';
DataModuleF.PertesTable.Active:= True;
DataModuleF.PertesTable.EnableControls;
end;

procedure TPertesFListF.DeleteBARecBtnClick(Sender: TObject);
begin
if NOT (DataModuleF.PertesTable.IsEmpty) then
 begin

      FSplashAddUnite:=TFSplashAddUnite.Create(PertesFListF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'le Perte ?';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Perte';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 34 ;



 end;
end;

procedure TPertesFListF.EditBARecBtnClick(Sender: TObject);
var
 CodeF: Integer;
 QuTP,QuTIniP: Double;
 begin

  PertesGestionF := TPertesGestionF.Create(nil);
  try
  
    if Assigned(PertesFListF) then
    begin
    ResearchPerteEdt.Text:='';
    end;
    
   if NOT (DataModuleF.PertesTable.IsEmpty) Then
   begin
       PertesGestionF.NumPerteGEdt.Caption := DataModuleF.PertesTable.FieldValues['refer_pr'];
       PertesGestionF.DatePerteGD.Date:= DataModuleF.PertesTable.FieldValues['date_pr'];
       
       if (DataModuleF.PertesTable.FieldValues['code_prt'] <> null) and (DataModuleF.PertesTable.FieldValues['code_prt']<> 0) then
       begin
       CodeF:=DataModuleF.PertesTable.FieldValues['code_prt'];
         DataModuleF.Perte_typeTable.Active:=false;
         DataModuleF.Perte_typeTable.SQL.Clear;
         DataModuleF.Perte_typeTable.SQL.Text:='Select * FROM perte_type WHERE code_prt ='+(IntToStr( CodeF ) ) ;
         DataModuleF.Perte_typeTable.Active:=True;
         PertesGestionF.TypePerteGCbx.Text:= DataModuleF.Perte_typeTable.FieldValues['nom_prt'];
         DataModuleF.Perte_typeTable.Active:=false;
         DataModuleF.Perte_typeTable.SQL.Clear;
         DataModuleF.Perte_typeTable.SQL.Text:='Select * FROM perte_type ' ;
         DataModuleF.Perte_typeTable.Active:=True;
        end;

       if DataModuleF.PertesTable.FieldValues['obser_pr']<> null then
       begin
        PertesGestionF.ObserPerteGMem.Text:= DataModuleF.PertesTable.FieldValues['obser_pr'];
       end;

      MainForm.SQLQuery.Active:=False; 
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.TexT:=
      'SELECT code_p, nom_p,qut_p,qutini_p  FROM produit WHERE code_p = '+ intTostr( DataModuleF.PertesTable.FieldByName('code_p').AsInteger) +' GROUP BY code_p, nom_p,qut_p,qutini_p ';
      MainForm.SQLQuery.Active:=True;
      QuTP:= MainForm.SQLQuery.FieldByName('qut_p').AsFloat;
      QuTIniP:= MainForm.SQLQuery.FieldByName('qutini_p').AsFloat;
      PertesGestionF.NamePerteGCbx.Text:= MainForm.SQLQuery.FieldByName('nom_p').AsString;
      
      PertesGestionF.NamePerteGCbx.Style.Color:= $00EFE9E8;
      PertesGestionF.NamePerteGCbx.Properties.ReadOnly:= True;
      PertesGestionF.NamePerteGCbx.DroppedDown:= False;
      
      PertesGestionF.QuantityPerteGEdt.Text:=  CurrToStrF(DataModuleF.PertesTable.FieldValues['qut_p'], ffNumber, 2);
      PertesGestionF.PerteGOLDStockEdt.Text:=    CurrToStrF(( QuTP + QuTIniP + DataModuleF.PertesTable.FieldValues['qut_p'] ), ffNumber, 2);
      PertesGestionF.PerteGNEWStockEdt.Text:=    CurrToStrF(( StrToFloat(PertesGestionF.PerteGOLDStockEdt.Text) - DataModuleF.PertesTable.FieldValues['qut_p']), ffNumber, 2);

      PertesGestionF.PrixHTPerteGEdt.Text:=    CurrToStrF(DataModuleF.PertesTable.FieldValues['prixht_p'], ffNumber, 2);
      PertesGestionF.PrixTTCPerteGEdt.Text:=   CurrToStrF(DataModuleF.PertesTable.FieldValues['PrixATTC'], ffNumber, 2);
      PertesGestionF.PrixHTTotalPerteGEdt.Text:=    CurrToStrF(DataModuleF.PertesTable.FieldValues['MontantHT'], ffNumber, 2);
      PertesGestionF.PrixTTCTotalPerteGEdt.Text:=   CurrToStrF(DataModuleF.PertesTable.FieldValues['MontantTTC'], ffNumber, 2);

      PertesGestionF.Left:=  (Screen.Width div 2 ) - (PertesGestionF.Width div 2)    ;
      PertesGestionF.Top:=   (Screen.Height div 2) - (PertesGestionF.Height div 2)    ;

      PertesGestionF.Tag:= 1;
      PertesGestionF.ShowModal;

     end;
      finally
      PertesGestionF.Free
      end;

end;

procedure TPertesFListF.FisrtBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.First;
end;

procedure TPertesFListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(PertesFListF);
end;

procedure TPertesFListF.FormShow(Sender: TObject);
begin
  DataModuleF.PertesTable.Active:= True;
  DateStartPerteD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndPerteD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartPerteDChange(Sender);
end;

procedure TPertesFListF.LastBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Last;
end;

procedure TPertesFListF.NextBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Next;
end;

procedure TPertesFListF.PertesListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if PertesListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  EditBARecBtnClick(Sender) ;
end;
end;

procedure TPertesFListF.PertesListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not PertesListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBARecBtnClick(Sender) ;
  end else exit
end;

procedure TPertesFListF.PertesListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['n','N'] then
    AddBARecBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchPerteEdt.SetFocus;
  if not PertesListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBARecBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBARecBtnClick(Sender);
  end else Exit;
end;

procedure TPertesFListF.PreviosBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Prior;
end;

procedure TPertesFListF.ResearchPerteEdtChange(Sender: TObject);
begin
//
end;

procedure TPertesFListF.TypePerteListCbxDropDown(Sender: TObject);

var
I : Integer;
  begin
     DataModuleF.Perte_typeTable.Refresh;
     TypePerteListCbx.Items.Clear;
     DataModuleF.Perte_typeTable.Active := False;
     DataModuleF.Perte_typeTable.sql.Clear;
     DataModuleF.Perte_typeTable.SQL.Text:= 'SELECT * FROM perte_type ' ;
     DataModuleF.Perte_typeTable.Active := True;
     DataModuleF.Perte_typeTable.first;

     for I := 0 to DataModuleF.Perte_typeTable.RecordCount - 1 do
     if DataModuleF.Perte_typeTable.FieldByName('nom_prt').IsNull = False then
     begin
       TypePerteListCbx.Items.Add(DataModuleF.Perte_typeTable.FieldByName('nom_prt').AsString);
       DataModuleF.Perte_typeTable.Next;
      end;

      TypePerteListCbx.Items.Add('Tous');
end;

end.
