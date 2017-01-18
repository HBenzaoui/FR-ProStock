unit UTransferListGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, Data.DB, Vcl.ComCtrls, sStatusBar, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn,
  Vcl.ExtCtrls;

type
  TTransferListGestionF = class(TForm)
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
    ResearchTransferEdt: TSearchBox;
    Panel2: TPanel;
    DateEndTransferD: TDateTimePicker;
    DateStartTransferD: TDateTimePicker;
    ResherchTransferRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    TransferListDBGridEh: TDBGridEh;
    StatuBar: TsStatusBar;
    SumGirdProduitBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    TransferListDataS: TDataSource;
    frxTransferListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    TransferListfrxRprt: TfrxReport;
    PopupMenu1: TPopupMenu;
    L1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DateStartTransferDChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure AddBARecBtnClick(Sender: TObject);
    procedure ResearchTransferEdtChange(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure SumGirdProduitBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure TransferListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure TransferListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure TransferListDBGridEhDblClick(Sender: TObject);
    procedure L1Click(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferListGestionF: TTransferListGestionF;

implementation

{$R *.dfm}

uses System.DateUtils,Vcl.Imaging.jpeg,StringTool, UDataModule,
  UTransferComptesGestion, USplashAddUnite, UMainF;

procedure TTransferListGestionF.AddBARecBtnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            TransferComptesGestionF:=TTransferComptesGestionF.Create(TransferListGestionF);

      DataModuleF.Transfer_comptesTable.DisableControls;
      DataModuleF.Transfer_comptesTable.Last;
      TransferComptesGestionF.NumTransferGEdt.Caption:=
      'TR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger) + 1)]);
      DataModuleF.Transfer_comptesTable.EnableControls;


     //       ClientGestionF.BringToFront;
            TransferComptesGestionF.Left:=  (Screen.Width div 2 ) - (TransferComptesGestionF.Width div 2)    ;
            TransferComptesGestionF.Top:=   (Screen.Height div 2) - (TransferComptesGestionF.Height div 2)    ;
        //    MainForm.Align:= alClient;
         //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
            TransferComptesGestionF.OKTransferGBtn.Tag:= 0 ;
            TransferComptesGestionF.Show;
//            TransferComptesGestionF.NameChargeGEdt.SetFocus;
end;

procedure TTransferListGestionF.TransferListDBGridEhDblClick(Sender: TObject);
begin
////------ use this code to make the clock just on the grid not the title -----/
//if TransferListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
//begin
//  EditBARecBtnClick(Sender) ;
//end;
end;

procedure TTransferListGestionF.TransferListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not TransferListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBARecBtnClick(Sender) ;
  end else exit
end;



procedure TTransferListGestionF.TransferListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['n','N'] then
    AddBARecBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchTransferEdt.SetFocus;
  if not TransferListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBARecBtnClick(Sender) ;
//    if Key in ['m','M'] then
//      EditBARecBtnClick(Sender);
  end else Exit;
end;

procedure TTransferListGestionF.DateStartTransferDChange(Sender: TObject);
begin
DataModuleF.Transfer_comptesTable.DisableControls;
DataModuleF.Transfer_comptesTable.Active:= False;
DataModuleF.Transfer_comptesTable.SQL.clear;
DataModuleF.Transfer_comptesTable.sql.Text:='SELECT * FROM transfer_comptes WHERE date_transfer BETWEEN '''+(DateToStr(DateStartTransferD.Date))+ ''' AND ''' +(DateToStr(DateEndTransferD.Date))+'''';
DataModuleF.Transfer_comptesTable.Active:= True;
DataModuleF.Transfer_comptesTable.EnableControls;
end;

procedure TTransferListGestionF.DeleteBARecBtnClick(Sender: TObject);
begin
if NOT (DataModuleF.Transfer_comptesTable.IsEmpty) then
 begin

      FSplashAddUnite:=TFSplashAddUnite.Create(TransferListGestionF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'le Transfert ?';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Transfert';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 40 ;



 end;
end;

procedure TTransferListGestionF.EditBARecBtnClick(Sender: TObject);
var
 CodeF: Integer;
 begin

  TransferComptesGestionF := TTransferComptesGestionF.Create(nil);
  try

    if Assigned(TransferComptesGestionF) then
    begin
    ResearchTransferEdt.Text:='';
    end;

   if NOT (DataModuleF.Transfer_comptesTable.IsEmpty) Then
   begin
       TransferComptesGestionF.NumTransferGEdt.Caption := DataModuleF.Transfer_comptesTable.FieldValues['refer_transfer'];
       TransferComptesGestionF.DateTransferGD.Date:= DataModuleF.Transfer_comptesTable.FieldValues['date_transfer'];


       if (DataModuleF.Transfer_comptesTable.FieldValues['code_mdpai'] <> null ) AND (DataModuleF.Transfer_comptesTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeF:=DataModuleF.Transfer_comptesTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         TransferComptesGestionF.ModePaieTransferGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;

       if (DataModuleF.Transfer_comptesTable.FieldValues['code_cmpts'] <> null) AND (DataModuleF.Transfer_comptesTable.FieldValues['code_cmpts']<> 0) then
       begin
       CodeF:=DataModuleF.Transfer_comptesTable.FieldValues['code_cmpts'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         TransferComptesGestionF.CompteSourceTransfeGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;

       if (DataModuleF.Transfer_comptesTable.FieldValues['code_cmptd'] <> null) AND (DataModuleF.Transfer_comptesTable.FieldValues['code_cmptd']<> 0) then
       begin
       CodeF:=DataModuleF.Transfer_comptesTable.FieldValues['code_cmptd'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         TransferComptesGestionF.CompteDisTransfeGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;

       if DataModuleF.Transfer_comptesTable.FieldValues['num_cheque_transfer'] <> null then
       begin
        TransferComptesGestionF.NChequeTransferGCbx.Text:= DataModuleF.Transfer_comptesTable.FieldValues['num_cheque_transfer'];
       end;

       if DataModuleF.Transfer_comptesTable.FieldValues['obser_transfer']<> null then
       begin
        TransferComptesGestionF.ObserTransferGMem.Text:= DataModuleF.Transfer_comptesTable.FieldValues['obser_transfer'];
       end;

      TransferComptesGestionF.TranferTransferEdt.Text :=      CurrToStrF(DataModuleF.Transfer_comptesTable.FieldValues['mont_transfer'], ffNumber, 2);

      TransferComptesGestionF.Left:=  (Screen.Width div 2 ) - (TransferComptesGestionF.Width div 2)    ;
      TransferComptesGestionF.Top:=   (Screen.Height div 2) - (TransferComptesGestionF.Height div 2)    ;

      TransferComptesGestionF.Tag:= 1;
      TransferComptesGestionF.ShowModal;




     end;
      finally
      TransferComptesGestionF.Free
      end;
end;

procedure TTransferListGestionF.FisrtBARecbtnClick(Sender: TObject);
begin
DataModuleF.Transfer_comptesTable.First;
end;

procedure TTransferListGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FreeAndNil(TransferListGestionF);
end;

procedure TTransferListGestionF.FormShow(Sender: TObject);
begin
  DataModuleF.Transfer_comptesTable.Active:= True;
  DateStartTransferD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndTransferD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartTransferDChange(Sender);
end;


procedure TTransferListGestionF.GettingData;
var
  PreiodRX,Agent,Caisse: TfrxMemoView;
begin
  PreiodRX:= TransferListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartTransferD.Date) + ' au ' + DateToStr(DateEndTransferD.Date) ;


      Agent:= TransferListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
  end;

procedure TTransferListGestionF.L1Click(Sender: TObject);
begin
  DataModuleF.Transfer_comptesTable.DisableControls;
   TransferListfrxRprt.PrepareReport;
   GettingData;

  TransferListfrxRprt.PrepareReport;
  TransferListfrxRprt.ShowReport;

  DataModuleF.Transfer_comptesTable.EnableControls;
end;

procedure TTransferListGestionF.LastBARecbtnClick(Sender: TObject);
begin
DataModuleF.Transfer_comptesTable.Last;
end;

procedure TTransferListGestionF.NextBARecbtnClick(Sender: TObject);
begin
DataModuleF.Transfer_comptesTable.Next;
end;

procedure TTransferListGestionF.PreviosBARecbtnClick(Sender: TObject);
begin
DataModuleF.Transfer_comptesTable.Prior;
end;

procedure TTransferListGestionF.RefreshGirdBtnClick(Sender: TObject);
begin
DataModuleF.Transfer_comptesTable.Close;
DataModuleF.Transfer_comptesTable.Open;
end;

procedure TTransferListGestionF.ResearchTransferEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchTransferEdt.Text<>'' then
    begin

      if ResherchTransferRdioBtn.Checked then
      begin
        DataModuleF.Transfer_comptesTable.DisableControls;
        DataModuleF.Transfer_comptesTable.Active:=False;
        DataModuleF.Transfer_comptesTable.SQL.Clear;
        DataModuleF.Transfer_comptesTable.SQL.Text:='SELECT * FROM transfer_comptes WHERE obser_transfer LIKE LOWER' +'('''+'%'+(ResearchTransferEdt.Text)+'%'+''')' ;
        DataModuleF.Transfer_comptesTable.Active:=True;
        DataModuleF.Transfer_comptesTable.EnableControls;
      end;

//      if ResherchChargeRdioBtn.Checked then
//      begin
//        DataModuleF.Transfer_comptesTable.DisableControls;
//        DataModuleF.Transfer_comptesTable.Active:=False;
//        DataModuleF.Transfer_comptesTable.SQL.Clear;
//        DataModuleF.Transfer_comptesTable.SQL.Text:='SELECT * FROM charges WHERE obser_ch LIKE LOWER' +'('''+'%'+(ResearchChargeEdt.Text)+'%'+''')' ;
//        DataModuleF.Transfer_comptesTable.Active:=True;
//        DataModuleF.Transfer_comptesTable.EnableControls;
//      end;

    end else
     begin
        DataModuleF.Transfer_comptesTable.DisableControls;
        DataModuleF.Transfer_comptesTable.Active:=False;
        DataModuleF.Transfer_comptesTable.SQL.Clear;
        DataModuleF.Transfer_comptesTable.SQL.Text:='SELECT * FROM transfer_comptes ' ;
        DataModuleF.Transfer_comptesTable.Active:=True;
        DataModuleF.Transfer_comptesTable.EnableControls;

     end;
end;

procedure TTransferListGestionF.SumGirdProduitBtnClick(Sender: TObject);
begin
  if SumGirdProduitBtn.Tag = 0 then
  begin
    TransferListDBGridEh.FooterRowCount:=1;
    SumGirdProduitBtn.Tag := 1;
  end else
      begin
        TransferListDBGridEh.FooterRowCount:=0;
        SumGirdProduitBtn.Tag := 0;
      end;
end;

end.
