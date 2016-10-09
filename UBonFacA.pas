unit UBonFacA;

interface

uses
  Winapi.Windows,
  DateUtils,
  MMSystem,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet;

type
  TBonFacAF = class(TForm)
    BAFacListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBAFacBtn: TAdvToolButton;
    DeleteBAFacBtn: TAdvToolButton;
    AddBAFacBtn: TAdvToolButton;
    ResearchBARecLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ArrowsPnl: TPanel;
    LastBAFacbtn: TsSpeedButton;
    NextBAFacbtn: TsSpeedButton;
    PreviosBAFacbtn: TsSpeedButton;
    FisrtBAFacbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchBAFacEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBAFacD: TDateTimePicker;
    DateStartBAFacD: TDateTimePicker;
    ResherchBFAFourRdioBtn: TRadioButton;
    ResherchBFANumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    BonFacAfrxRprt: TfrxReport;
    frxBonFacADB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    procedure FisrtBAFacbtnClick(Sender: TObject);
    procedure PreviosBAFacbtnClick(Sender: TObject);
    procedure NextBAFacbtnClick(Sender: TObject);
    procedure LastBAFacbtnClick(Sender: TObject);
    procedure ResearchBAFacEdtChange(Sender: TObject);
    procedure DateStartBAFacDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddBAFacBtnClick(Sender: TObject);
    procedure EditBAFacBtnClick(Sender: TObject);
    procedure DeleteBAFacBtnClick(Sender: TObject);
    procedure BAFacListDBGridEhDblClick(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BAFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BAFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BonFacAF: TBonFacAF;

implementation

uses
  UMainF, UBonFacAGestion, USplashVersement, USplashAddUnite, UClientGestion,Threading,
  USplash;

{$R *.dfm}

procedure TBonFacAF.FisrtBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.First;
end;

procedure TBonFacAF.PreviosBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.Prior;
end;

procedure TBonFacAF.NextBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.Next;
end;

procedure TBonFacAF.LastBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.Last;
end;

procedure TBonFacAF.ResearchBAFacEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBAFacEdt.Text<>'' then
    begin

          if ResherchBFAFourRdioBtn.Checked then
          begin
            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:='SELECT * FROM bona_fac WHERE code_f IN( SELECT code_f FROM client WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchBAFacEdt.Text)+'%'+''')' +')';
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;

          end;

          if ResherchBFANumBRdioBtn.Checked then
          begin
            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:='SELECT * FROM bona_fac WHERE LOWER(num_bafac) LIKE LOWER' +'('''+'%'+(ResearchBAFacEdt.Text)+'%'+''')' ;
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;
          end;


    end else
     begin
            MainForm.FournisseurTable.DisableControls;
            MainForm.FournisseurTable.Active:=False;
            MainForm.FournisseurTable.SQL.Clear;
            MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
            MainForm.FournisseurTable.Active:=True;
            MainForm.FournisseurTable.EnableControls;

            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:='SELECT * FROM bona_fac ' ;
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;

     end;
end;

procedure TBonFacAF.DateStartBAFacDChange(Sender: TObject);
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac WHERE date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.FormShow(Sender: TObject);
begin
   MainForm.Bona_facTable.Active:= True;
  DateStartBAFacD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBAFacD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBAFacDChange(Sender);
end;

procedure TBonFacAF.AddBAFacBtnClick(Sender: TObject);
var
  codeFA : integer;

begin
MainForm.Bona_fac_listTable.Active:= False;
MainForm.Bona_fac_listTable.IndexFieldNames:='';
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac ';
MainForm.Bona_facTable.Active:= True;
//MainForm.Bona_facTable.EnableControls;

 BonFacAGestionF := TBonFacAGestionF.Create(nil);
 try


  if Assigned(BonFacAF) then
  begin
  ResearchBAFacEdt.Text:='';

  end;

  MainForm.Bona_fac_listTable.IndexFieldNames:='';
  codeFA:= 0;

     if MainForm.Bona_facTable.RecordCount <= 0 then
      begin

        MainForm.Bona_facTable.Insert;
        MainForm.Bona_facTable.FieldValues['code_bafac']:=1;
        MainForm.Bona_facTable.FieldValues['num_bafac']:= 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
        MainForm.Bona_facTable.FieldValues['time_bafac']:=TimeOf(Now);
        MainForm.Bona_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bona_facTable.Post;
        codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
      end else
          begin
            MainForm.Bona_facTable.Last;
            codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
            MainForm.Bona_fac_listTable.Active:=False;
            MainForm.Bona_fac_listTable.SQL.Clear;
            MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(codeFA));
            MainForm.Bona_fac_listTable.Active:=True;

           if MainForm.Bona_fac_listTable.RecordCount <= 0 then
           begin

            codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
           end else
           begin
             MainForm.Bona_facTable.Insert;
             MainForm.Bona_facTable.FieldValues['code_bafac']:= codeFA + 1;
             MainForm.Bona_facTable.FieldValues['num_bafac']:=  'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFA + 1)]);
             MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
             MainForm.Bona_facTable.FieldValues['time_bafac']:= TimeOf(Now);
             MainForm.Bona_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             MainForm.Bona_facTable.Post;
           end;
            BonFacAGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

      MainForm.Bona_fac_listTable.Active:=False;
      MainForm.Bona_fac_listTable.SQL.Clear;
      MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list';
      MainForm.Bona_fac_listTable.Active:=True;

   MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
       BonFacAGestionF.Tag:= 0;
       BonFacAGestionF.ShowModal;

  finally

   BonFacAGestionF.Free;

  end;

//       MainForm.Bona_facTable.DisableControls;
  MainForm.Bona_facTable.Active:= False;
  MainForm.Bona_facTable.SQL.clear;
  mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac WHERE date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
  MainForm.Bona_facTable.Active:= True;
  MainForm.Bona_facTable.EnableControls;

end;

procedure TBonFacAF.EditBAFacBtnClick(Sender: TObject);
var
 CodeF : Integer;
begin


 if NOT (MainForm.Bona_facTable.IsEmpty) Then
 begin
    MainForm.Bona_fac_listTable.Active:=True;

   if  NOT (MainForm.Bona_fac_listTable.IsEmpty) then
    begin

      MainForm.Bona_fac_listTable.Active:=False;
      MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
     //  MainForm.Bona_facTable.Refresh;

    BonFacAGestionF := TBonFacAGestionF.Create(nil);
    try
//       MainForm.Bona_facTable.Refresh;
       BonFacAGestionF.NumBonFacAGEdt.Caption := MainForm.Bona_facTable.FieldValues['num_bafac'];
       BonFacAGestionF.DateBonFacAGD.Date:= MainForm.Bona_facTable.FieldValues['date_bafac'];
       if (MainForm.Bona_facTable.FieldValues['code_f']<> null) and (MainForm.Bona_facTable.FieldValues['code_f']<> 0) then
       begin
       CodeF:=MainForm.Bona_facTable.FieldValues['code_f'];
       BonFacAGestionF.FourBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldValues['fourbafac'];
         MainForm.FournisseurTable.Active:=false;
         MainForm.FournisseurTable.SQL.Clear;
         MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE code_f ='+(IntToStr( CodeF ) ) ;
         MainForm.FournisseurTable.Active:=True;
         BonFacAGestionF.BonFacAGfOUROLDCredit.Caption:= CurrToStrF(MainForm.FournisseurTable.FieldValues['oldcredit_f'],ffNumber,2);
         MainForm.FournisseurTable.Active:=false;
         MainForm.FournisseurTable.SQL.Clear;
         MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur ' ;
         MainForm.FournisseurTable.Active:=True;
        end;

       if (MainForm.Bona_facTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bona_facTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeF:=MainForm.Bona_facTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonFacAGestionF.ModePaieBonFacAGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'] ;
         if  MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger = 1 then
         begin
         BonFacAGestionF.TimberBonFacAGlbl.Visible:= True;
         BonFacAGestionF.TimberPerctageBonFacAGLbl.Visible:= True;
         BonFacAGestionF.TimberPerctageBonFacAGEdt.Visible:= True;
         BonFacAGestionF.TimberBonFacAGEdt.Visible:= True;
         BonFacAGestionF.TimberBonFacAGEdt.Text :=     CurrToStrF(MainForm.Bona_facTable.FieldValues['timber_bafac'], ffNumber, 2);
         end;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.Bona_facTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bona_facTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeF:=MainForm.Bona_facTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         BonFacAGestionF.CompteBonFacAGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.Bona_facTable.FieldValues['num_cheque_bafac']<> null then
       begin
        BonFacAGestionF.NChequeBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldValues['num_cheque_bafac'];
       end;


     if (MainForm.Bona_facTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bona_facTable.FieldValues['remise_bafac']<> 0)  then
     begin
     BonFacAGestionF.RemisePerctageBonFacAGEdt.Text :=     CurrToStrF(MainForm.Bona_facTable.FieldValues['RemisePerc'], ffNumber, 2);
     BonFacAGestionF.RemiseBonFacAGEdt.Text :=       CurrToStrF(MainForm.Bona_facTable.FieldValues['remise_bafac'], ffNumber, 2);

     end;

    BonFacAGestionF.BonFacATotalHTLbl.Caption :=    CurrToStrF(MainForm.Bona_facTable.FieldValues['montht_bafac'], ffNumber, 2);

    BonFacAGestionF.BonFacATotalTVALbl.Caption :=   CurrToStrF(MainForm.Bona_facTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonFacAGestionF.BonFacATotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bona_facTable.FieldValues['montttc_bafac'], ffNumber, 2);
    BonFacAGestionF.BonFacARegleLbl.Caption :=      CurrToStrF(MainForm.Bona_facTable.FieldValues['montver_bafac'], ffNumber, 2);
    BonFacAGestionF.BonFacAResteLbl.Caption :=      CurrToStrF(MainForm.Bona_facTable.FieldValues['MontantRes'], ffNumber, 2);

       if MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = True then
       begin
        FSplashVersement.DisableBonFacA;
       end else
           begin
            BonFacAGestionF.EnableBonFacA;
           end;
      BonFacAGestionF.Tag:= 1;
       MainForm.Bona_fac_listTable.Refresh;
      BonFacAGestionF.ShowModal;

    finally

      BonFacAGestionF.Free;

    end;

  end else
     begin
       AddBAFacBtnClick(Sender);
     end;

 end;

end;

procedure TBonFacAF.DeleteBAFacBtnClick(Sender: TObject);
begin
 if NOT (MainForm.Bona_facTable.IsEmpty) then
 begin
    if  (MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean <> True ) then
    begin
    MainForm.Bona_fac_listTable.Active:=True;

  if NOT (MainForm.Bona_fac_listTable.IsEmpty) then
   begin

      FSplashAddUnite:=TFSplashAddUnite.Create(BonFacAF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'les piéces de vente sèlèctionnèes? ';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Facture d''Achat';
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Height:=22;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
      FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
      FSplashAddUnite.Top:=   MainForm.Top + 5;

      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      FSplashAddUnite.Show;
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 16 ;
     end
      else
      begin
              MainForm.Bona_facTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(BonFacAF);
        try
          FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
          FSplash.Top := 0;

          FSplash.Label1.Caption:='  Suppression avec succés';
          FSplash.Color:= $004735F9;
          AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE);
          sleep(250);
          AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR
            AW_SLIDE OR AW_HIDE);
        finally
          FSplash.free;

        end;

        sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        NormalForms;
      end;
       end else
           begin
             sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
             TTask.Run ( procedure
             begin
              FSplash := TFSplash.Create(nil);
               try
                 FSplash.Left := MainForm.Width - FSplash.Width - 15 ;                   
                 FSplash.Top := (MainForm.Height - FSplash.Height ) - 15 ;
                  FSplash.Label1.Font.Height:=21;
                 FSplash.Label1.Caption:='Suppressions ne sont pas autorisés!';
                 FSplash.Color:= $004735F9;
                 AnimateWindow(FSplash.Handle, 100, AW_HOR_NEGATIVE OR AW_SLIDE OR AW_ACTIVATE);
                 sleep(700);
                 AnimateWindow(FSplash.Handle, 100, AW_HOR_POSITIVE OR
                   AW_SLIDE OR AW_HIDE);
               finally
                 FSplash.free;
               end;
             end);
           end;

 end;
end;

procedure TBonFacAF.BAFacListDBGridEhDblClick(Sender: TObject);
begin
if BAFacListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonFacAF.EditBAFacBtnClick(Sender) ;
end;
end;

procedure TBonFacAF.BAFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BAFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBAFacBtnClick(Sender) ;
  end else exit
end;

procedure TBonFacAF.BAFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n'] then
    AddBAFacBtnClick(Sender);
  if Key in ['r'] then
    ResearchBAFacEdt.SetFocus;
  if not BAFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s' ] then
  DeleteBAFacBtnClick(Sender) ;
    if Key in ['m'] then
      EditBAFacBtnClick(Sender);
  end else Exit;
end;

procedure TBonFacAF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonFacAfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBAFacD.Date) + ' au ' + DateToStr(DateEndBAFacD.Date) ;

    Agent:= BonFacAfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonFacAF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Bona_facTable.DisableControls;

    GettingData;

BonFacAfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'liste des FA';
BonFacAfrxRprt.Export(frxXLSExport1);

MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.Bona_facTable.DisableControls;

    GettingData;

BonFacAfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des FA';
BonFacAfrxRprt.Export(frxPDFExport1);


MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Bona_facTable.DisableControls;

   GettingData;

  BonFacAfrxRprt.PrepareReport;
  BonFacAfrxRprt.ShowReport;

  MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(BonFacAF);
end;

end.
