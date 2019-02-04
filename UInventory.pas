unit UInventory;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, DBGridEhImpExp,System.Variants, System.Classes, Vcl.Graphics,
  EhLibFireDAC, System.DateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.AppEvnts, Vcl.Menus, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Vcl.ComCtrls, sStatusBar, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, acImage,
  Vcl.Buttons, sSpeedButton, AdvToolBtn, Data.DB;

type
  TInventoryF = class(TForm)
    TopP: TPanel;
    EditInvBtn: TAdvToolButton;
    DeleteInvBtn: TAdvToolButton;
    AddInvBtn: TAdvToolButton;
    ResearchInvLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    FisrtInvbtn: TsSpeedButton;
    LastInvbtn: TsSpeedButton;
    NextInvbtn: TsSpeedButton;
    PreviosInvbtn: TsSpeedButton;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchInvEdt: TSearchBox;
    Panel2: TPanel;
    DateEndInvD: TDateTimePicker;
    DateStartInvD: TDateTimePicker;
    ResherchInvNumRdioBtn: TRadioButton;
    ResherchInvDesRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    InvListDBGridEh: TDBGridEh;
    StatuBar: TsStatusBar;
    SumGirdBBVlivBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    S01: TPanel;
    Panel1: TPanel;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxINVLDB: TfrxDBDataset;
    INVLfrxRprt: TfrxReport;
    ApplicationEvents1: TApplicationEvents;
    ProduitListSaveDg: TSaveDialog;
    InvListDataS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateStartInvDChange(Sender: TObject);
    procedure AddInvBtnClick(Sender: TObject);
    procedure FisrtInvbtnClick(Sender: TObject);
    procedure PreviosInvbtnClick(Sender: TObject);
    procedure NextInvbtnClick(Sender: TObject);
    procedure LastInvbtnClick(Sender: TObject);
    procedure ResearchInvEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ResearchInvEdtChange(Sender: TObject);
    procedure EditInvBtnClick(Sender: TObject);
    procedure DeleteInvBtnClick(Sender: TObject);
    procedure InvListDBGridEhDblClick(Sender: TObject);
    procedure InvListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure InvListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InvListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure InvListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure ResherchInvNumRdioBtnClick(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    const INVSQL =   'SELECT '
                    +' code_i, '
                    +' num_i, '
                    +' date_i, '
                    +' time_i, '
                    +' nom_i, '
                    +' valider_i,'
                    +' totalpgap_i, '
                    +' nump_i || '' Sur ''||(SELECT COUNT(*) FROM produit) AS nump_i, '
                    +' obser_i, '
                    +' code_ur '
                    +' FROM inventory '
                    ;
  end;

var
  InventoryF: TInventoryF;

implementation

uses  Winapi.ShellAPI,
  UMainF, UInventoryGestion, UDataModule, USplashAddUnite;

{$R *.dfm}

procedure TInventoryF.AddInvBtnClick(Sender: TObject);
Var CodeINV :Integer;
begin

    //-------- Show the splash screan for the produit familly to add new one---------//

  InventoryGestionF := TInventoryGestionF.Create(nil);
  try

      DataModuleF.InventoryTable.DisableControls;
      DataModuleF.InventoryTable.Active:=True;
      DataModuleF.InventoryTable.SQL.Text:= INVSQL + ' ORDER By code_i ';
      DataModuleF.InventoryTable.Active:=True;

      DataModuleF.InventoryTable.Last;
      if DataModuleF.InventoryTable.IsEmpty then
      begin
          CodeINV:= 01;
      end else
          begin
            CodeINV:= DataModuleF.InventoryTable.FieldByName('code_i').AsInteger + 1;
          end;

      DataModuleF.InventoryTable.Append;
      DataModuleF.InventoryTable.FieldByName('code_i').AsInteger := CodeINV;
      DataModuleF.InventoryTable.FieldByName('date_i').AsDateTime := DateOf(Now);;
      DataModuleF.InventoryTable.FieldByName('time_i').AsDateTime := TimeOf(Now);;
      DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean := False;
      DataModuleF.InventoryTable.Post;

      DataModuleF.InventoryTable.EnableControls;

      InventoryGestionF.NumInvGEdt.Caption:=
      'IN'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(CodeINV)]);


        InventoryGestionF.Left:=  (Screen.Width div 2 ) - (InventoryGestionF.Width div 2)    ;
        InventoryGestionF.Top:=   (Screen.Height div 2) - (InventoryGestionF.Height div 2)    ;
        InventoryGestionF.Tag:= 0 ;
        InventoryGestionF.ShowModal;



  finally
     FreeAndNil(InventoryGestionF);
  end;


end;

procedure TInventoryF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'liste des Inventaires';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(InvListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;
end;


procedure TInventoryF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= INVLfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartInvD.Date) + ' au ' + DateToStr(DateEndInvD.Date) ;

      Agent:= INVLfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TInventoryF.AdvToolButton2Click(Sender: TObject);
begin
DataModuleF.InventoryTable.DisableControls;

    GettingData;

INVLfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des Inventaires';
INVLfrxRprt.Export(frxPDFExport1);


DataModuleF.InventoryTable.EnableControls;
end;

procedure TInventoryF.AdvToolButton3Click(Sender: TObject);
begin
  DataModuleF.InventoryTable.DisableControls;

   GettingData;

  INVLfrxRprt.PrepareReport;
  INVLfrxRprt.ShowReport;

  DataModuleF.InventoryTable.EnableControls;
end;

procedure TInventoryF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
    if (InventoryF.Active = True)  AND  (Assigned(InventoryGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddInvBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditInvBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteInvBtnClick(Screen);
    Handled := true;
  end;

 end else
     begin
      if  (InventoryF.Active = True)  AND (InventoryGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddInvBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditInvBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteInvBtnClick(Screen);
            Handled := true;
          end;
         
      end;
     end;
end;

procedure TInventoryF.DateStartInvDChange(Sender: TObject);
begin

DataModuleF.InventoryTable.DisableControls;
DataModuleF.InventoryTable.Active:= False;
DataModuleF.InventoryTable.SQL.clear;
DataModuleF.InventoryTable.sql.Text:= INVSQL + ' WHERE date_i BETWEEN '''+(DateToStr(DateStartInvD.Date))+ ''' AND ''' +(DateToStr(DateEndInvD.Date))+'''';
DataModuleF.InventoryTable.Active:= True;
DataModuleF.InventoryTable.EnableControls;

end;

procedure TInventoryF.DeleteInvBtnClick(Sender: TObject);
begin
 if NOT (DataModuleF.InventoryTable.IsEmpty) then
 begin

      FSplashAddUnite:=TFSplashAddUnite.Create(InventoryF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'l''inventaire ?';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Inventaire';
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
      FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
      FSplashAddUnite.Top:=   MainForm.Top + 5;

      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 42 ;
      FSplashAddUnite.Show;




 end;
end;

procedure TInventoryF.EditInvBtnClick(Sender: TObject);
var
 CodeF: Integer;
 QuTP,QuTIniP: Double;
 begin

 if NOT DataModuleF.InventoryTable.IsEmpty then
 begin
  InventoryGestionF := TInventoryGestionF.Create(nil);
  try

    if Assigned(InventoryF) then
    begin
     ResearchInvEdt.Text:='';
    end;

   if NOT (DataModuleF.InventoryTable.IsEmpty) Then
   begin

       InventoryGestionF.NumInvGEdt.Caption := DataModuleF.InventoryTable.FieldByName('num_i').AsString;
       InventoryGestionF.DateInvGD.Date:= DataModuleF.InventoryTable.FieldByName('date_i').AsDateTime;
       InventoryGestionF.DesInvGEdt.Text:= DataModuleF.InventoryTable.FieldByName('nom_i').AsString;
       InventoryGestionF.ObserInvGMem.Text:= DataModuleF.InventoryTable.FieldByName('obser_i').AsString;


      InventoryGestionF.Left:=  (Screen.Width div 2 ) - (InventoryGestionF.Width div 2)    ;
      InventoryGestionF.Top:=   (Screen.Height div 2) - (InventoryGestionF.Height div 2)    ;

      InventoryGestionF.Tag:= 1;
      InventoryGestionF.ShowModal;


   end;

  finally
   FreeAndNil(InventoryGestionF);
  end;




 end;
end;

procedure TInventoryF.FisrtInvbtnClick(Sender: TObject);
begin
 DataModuleF.InventoryTable.First;
end;

procedure TInventoryF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.SaveGridLayout(InvListDBGridEh,GetCurrentDir +'\bin\gc_invlst');

  FreeAndNil(InventoryF);
end;

procedure TInventoryF.FormCreate(Sender: TObject);
begin
   if FileExists(GetCurrentDir +'\bin\gc_invlst') then
   begin

    MainForm.LoadGridLayout(InvListDBGridEh,GetCurrentDir +'\bin\gc_invlst');
   end;

end;

procedure TInventoryF.FormShow(Sender: TObject);
begin
  DateStartInvD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndInvD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartInvDChange(Sender);
end;

procedure TInventoryF.InvListDBGridEhDblClick(Sender: TObject);
begin
  if InvListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
  begin
    EditInvBtnClick(Sender) ;
  end;
end;

procedure TInventoryF.InvListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not InvListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteInvBtnClick(Sender) ;
  end else exit
end;

procedure TInventoryF.InvListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
 if Key in ['n','N'] then
    AddInvBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchInvEdt.SetFocus;
  if not InvListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteInvBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditInvBtnClick(Sender);
  end else Exit;
end;

procedure TInventoryF.InvListDBGridEhSortMarkingChanged(Sender: TObject);
begin
InvListDBGridEh.DefaultApplySorting;
end;

procedure TInventoryF.InvListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
DataModuleF.InventoryTable.IndexesActive := false;
end;

procedure TInventoryF.LastInvbtnClick(Sender: TObject);
begin
 DataModuleF.InventoryTable.Last;
end;

procedure TInventoryF.NextInvbtnClick(Sender: TObject);
begin
 DataModuleF.InventoryTable.Next;
end;

procedure TInventoryF.PreviosInvbtnClick(Sender: TObject);
begin
 DataModuleF.InventoryTable.Prior;
end;

procedure TInventoryF.RefreshGirdBtnClick(Sender: TObject);
begin
DataModuleF.InventoryTable.Close;
DataModuleF.InventoryTable.Open;
end;

procedure TInventoryF.ResearchInvEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//


    if ResearchInvEdt.Text<>'' then
    begin

      if ResherchInvNumRdioBtn.Checked then
      begin
        DataModuleF.InventoryTable.DisableControls;
        DataModuleF.InventoryTable.Active:=False;
        DataModuleF.InventoryTable.SQL.Clear;
        DataModuleF.InventoryTable.SQL.Text:= INVSQL + ' WHERE num_i LIKE LOWER' +'('''+'%'+(ResearchInvEdt.Text)+'%'+''')' ;
        DataModuleF.InventoryTable.Active:=True;
        DataModuleF.InventoryTable.EnableControls;
      end;


      if ResherchInvDesRdioBtn.Checked then
      begin
        DataModuleF.InventoryTable.DisableControls;
        DataModuleF.InventoryTable.Active:=False;
        DataModuleF.InventoryTable.SQL.Clear;
        DataModuleF.InventoryTable.SQL.Text:= INVSQL + ' WHERE nom_i LIKE LOWER' +'('''+'%'+(ResearchInvEdt.Text)+'%'+''')' ;
        DataModuleF.InventoryTable.Active:=True;
        DataModuleF.InventoryTable.EnableControls;
      end;

    end else
     begin
        DataModuleF.InventoryTable.DisableControls;
        DataModuleF.InventoryTable.Active:=False;
        DataModuleF.InventoryTable.SQL.Clear;
        DataModuleF.InventoryTable.SQL.Text:= INVSQL  ;
        DataModuleF.InventoryTable.Active:=True;
        DataModuleF.InventoryTable.EnableControls;

     end;
end;

procedure TInventoryF.ResearchInvEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     DataModuleF.InventoryTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     DataModuleF.InventoryTable.Prior;
  end;
end;

procedure TInventoryF.ResherchInvNumRdioBtnClick(Sender: TObject);
begin
ResearchInvEdt.SetFocus;
end;

end.
