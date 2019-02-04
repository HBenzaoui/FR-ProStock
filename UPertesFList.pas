unit UPertesFList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,DBGridEhImpExp,ShellAPI,
   System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn,
  Vcl.ExtCtrls, sStatusBar, Vcl.AppEvnts;

type
  TPertesFListF = class(TForm)
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    FisrtBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    LastBARecbtn: TsSpeedButton;
    PeriodCaiseeListLbl: TLabel;
    LineP: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchPerteEdt: TSearchBox;
    Panel2: TPanel;
    DateEndPerteD: TDateTimePicker;
    DateStartPerteD: TDateTimePicker;
    ResherchPerteNumBRdioBtn: TRadioButton;
    ResherchPerteRdioBtn: TRadioButton;
    TypePerteListCbx: TComboBox;
    Panel3: TPanel;
    PertesListDBGridEh: TDBGridEh;
    PerteListDataS: TDataSource;
    PerteListfrxRprt: TfrxReport;
    frxPerteListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    StatuBar: TsStatusBar;
    SumGirdProduitBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel5: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel6: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ProduitListSaveDg: TSaveDialog;
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
    procedure TypePerteListCbxChange(Sender: TObject);
    procedure TypePerteListCbxExit(Sender: TObject);
    procedure ResherchPerteRdioBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure SumGirdProduitBtnClick(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchPerteEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormPaint(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PertesFListF: TPertesFListF;

implementation

{$R *.dfm}

uses System.DateUtils,UDataModule, UPertesGestion, UMainF, USplashAddUnite, UComptoir;

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

procedure TPertesFListF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'Etat de Pertes';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(PertesListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//
//DataModuleF.PertesTable.DisableControls;
//
//    GettingData;
//
//PerteListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Etat de Pertes';
//PerteListfrxRprt.Export(frxXLSExport1);
//
//DataModuleF.PertesTable.EnableControls;
end;

procedure TPertesFListF.AdvToolButton2Click(Sender: TObject);
begin
DataModuleF.PertesTable.DisableControls;

    GettingData;

PerteListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat de Pertes';
PerteListfrxRprt.Export(frxPDFExport1);

DataModuleF.PertesTable.EnableControls;
end;

procedure TPertesFListF.AdvToolButton3Click(Sender: TObject);
begin
  DataModuleF.PertesTable.DisableControls;
   PerteListfrxRprt.PrepareReport;
   GettingData;

  PerteListfrxRprt.PrepareReport;
  PerteListfrxRprt.ShowReport;

  DataModuleF.PertesTable.EnableControls;
end;

procedure TPertesFListF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if Assigned(BonCtrGestionF) then
 begin
 if (BonCtrGestionF.Showing = False)  then
 begin
 if (PertesFListF.Active = True)  AND  (Assigned(PertesGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBARecBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (PertesFListF.Active = True)  AND (PertesGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBARecBtnClick(Screen);
            Handled := true;
          end;
             if  (GetKeyState(VK_F12) < 0)  then
          begin
            AdvToolButton3Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
 end;
 end else
     begin
        if (PertesFListF.Active = True)  AND  (Assigned(PertesGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBARecBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (PertesFListF.Active = True)  AND (PertesGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBARecBtnClick(Screen);
            Handled := true;
          end;
             if  (GetKeyState(VK_F12) < 0)  then
          begin
            AdvToolButton3Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
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

   MainForm.SaveGridLayout(PertesListDBGridEh,GetCurrentDir +'\bin\gc_prtlst');


FreeAndNil(PertesFListF);
end;

procedure TPertesFListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_prtlst') then
   begin

    MainForm.LoadGridLayout(PertesListDBGridEh,GetCurrentDir +'\bin\gc_prtlst');
   end;
end;

procedure TPertesFListF.FormPaint(Sender: TObject);
begin
  if MainForm.totaux_ur.Checked then
      begin

       SumGirdProduitBtn.Enabled:= True;

      end else
      begin

       SumGirdProduitBtn.Enabled:= False;

      end;
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

procedure TPertesFListF.RefreshGirdBtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Close;
DataModuleF.PertesTable.Open;
end;

procedure TPertesFListF.ResearchPerteEdtChange(Sender: TObject);
Var CodeCB : Integer;
begin
 //----------- Searching in databese-------------------//

 TypePerteListCbx.ItemIndex  := TypePerteListCbx.Items.Count -1;
 TypePerteListCbx.Repaint;

    if ResearchPerteEdt.Text<>'' then
    begin

      if ResherchPerteRdioBtn.Checked then
      begin


          DataModuleF.PertesTable.DisableControls;
          DataModuleF.PertesTable.Active:=False;
          DataModuleF.PertesTable.SQL.Clear;
          DataModuleF.PertesTable.SQL.Text:='SELECT * FROM pertes WHERE code_p IN( SELECT code_p FROM produit WHERE LOWER(nom_p) LIKE LOWER' +'('''+'%'+(ResearchPerteEdt.Text)+'%'+''')' +')';
          DataModuleF.PertesTable.Active:=True;
          DataModuleF.PertesTable.EnableControls;


      end;
      if ResherchPerteNumBRdioBtn.Checked then
      begin
          MainForm.SQLQuery.Active:=False;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='SELECT code_p,codebar_p FROM produit WHERE codebar_p LIKE ' +''+ QuotedStr( ResearchPerteEdt.Text )+' GROUP BY code_p,codebar_p' ;
          MainForm.SQLQuery.Active:=True;
          if NOT MainForm.SQLQuery.IsEmpty then
          begin
           CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
          end else
              begin
                MainForm.SQLQuery.Active:=False;
                MainForm.SQLQuery.SQL.Clear;
                MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE nom_cb LIKE ' +''+ QuotedStr( ResearchPerteEdt.Text )+'' ;
                MainForm.SQLQuery.Active:=True;
                if NOT MainForm.SQLQuery.IsEmpty then
                begin
                 CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
                end
              end;
          
        DataModuleF.PertesTable.DisableControls;
        DataModuleF.PertesTable.Active:=False;
        DataModuleF.PertesTable.SQL.Clear;
        DataModuleF.PertesTable.SQL.Text:='SELECT * FROM pertes WHERE code_p = ' + IntToStr(CodeCB) ;
        DataModuleF.PertesTable.Active:=True;
        DataModuleF.PertesTable.EnableControls;
      end;

    end else
     begin
        DataModuleF.PertesTable.DisableControls;
        DataModuleF.PertesTable.Active:=False;
        DataModuleF.PertesTable.SQL.Clear;
        DataModuleF.PertesTable.SQL.Text:='SELECT * FROM pertes ' ;
        DataModuleF.PertesTable.Active:=True;
        DataModuleF.PertesTable.EnableControls;

     end;

    MainForm.SQLQuery.Active:=False;
   MainForm.SQLQuery.SQL.Clear;
end;

procedure TPertesFListF.ResearchPerteEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     DataModuleF.PertesTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     DataModuleF.PertesTable.Prior;
  end;
end;

procedure TPertesFListF.ResherchPerteRdioBtnClick(Sender: TObject);
begin
ResearchPerteEdt.Clear;
ResearchPerteEdt.SetFocus;
end;

procedure TPertesFListF.GettingData;
var
  PreiodRX,Agent,Caisse: TfrxMemoView;
begin
  PreiodRX:= PerteListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartPerteD.Date) + ' au ' + DateToStr(DateEndPerteD.Date) ;

  Caisse:= PerteListfrxRprt.FindObject('Caisse') as TfrxMemoView;
  Caisse.Text:= 'Type : ' + TypePerteListCbx.Text   ;

      Agent:= PerteListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
  end;

procedure TPertesFListF.SumGirdProduitBtnClick(Sender: TObject);
begin
  if SumGirdProduitBtn.Tag = 0 then
  begin
    PertesListDBGridEh.FooterRowCount:=1;
    SumGirdProduitBtn.Tag := 1;
  end else
      begin
        PertesListDBGridEh.FooterRowCount:=0;
        SumGirdProduitBtn.Tag := 0;
      end;
end;

procedure TPertesFListF.TypePerteListCbxChange(Sender: TObject);

Var
CodeTPR : Integer;
begin
if (TypePerteListCbx.Text <> 'Tous')  then
  begin

               DataModuleF.Perte_typeTable.DisableControls;
               DataModuleF.Perte_typeTable.Active:=False;
               DataModuleF.Perte_typeTable.SQL.Clear;
               DataModuleF.Perte_typeTable.SQL.Text:='select * FROM perte_type where LOWER(nom_prt) LIKE LOWER('''+TypePerteListCbx.Text+''')';
               DataModuleF.Perte_typeTable.Active:=True;
               CodeTPR:=DataModuleF.Perte_typeTable.FieldByName('code_prt').AsInteger;
               DataModuleF.Perte_typeTable.EnableControls;

  
               DataModuleF.PertesTable.DisableControls;
               DataModuleF.PertesTable.Active:=False;
               DataModuleF.PertesTable.SQL.Clear;
               DataModuleF.PertesTable.SQL.Text:='select * FROM pertes where code_prt = '+ IntToStr(CodeTPR);
               DataModuleF.PertesTable.Active:=True;
               DataModuleF.PertesTable.EnableControls;
  end else
      begin
               DataModuleF.PertesTable.DisableControls;
               DataModuleF.PertesTable.Active:=False;
               DataModuleF.PertesTable.SQL.Clear;
               DataModuleF.PertesTable.SQL.Text:='select * FROM pertes ';
               DataModuleF.PertesTable.Active:=True;
               DataModuleF.PertesTable.EnableControls;
      end;
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

procedure TPertesFListF.TypePerteListCbxExit(Sender: TObject);
begin
if TypePerteListCbx.ItemIndex = -1 then
   TypePerteListCbx.ItemIndex := TypePerteListCbx.Items.Count -1;
end;

end.
