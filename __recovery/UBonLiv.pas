unit UBonLiv;

interface

uses
  Winapi.Windows,MMSystem,  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh,
  System.DateUtils, frxClass, frxDBSet, frxExportPDF, frxExportXLS
  ;

type
  TBonLivF = class(TForm)
    TopP: TPanel;
    EditBVLivBtn: TAdvToolButton;
    DeleteBVLivBtn: TAdvToolButton;
    AddBVLivBtn: TAdvToolButton;
    ResearchBALivLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ArrowsPnl: TPanel;
    LastBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchBVLivEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVLivD: TDateTimePicker;
    DateStartBVLivD: TDateTimePicker;
    Panel3: TPanel;
    BVLivListDBGridEh: TDBGridEh;
    ResherchBVLNumBRdioBtn: TRadioButton;
    ResherchBVLClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxBonLivDB: TfrxDBDataset;
    BonLivfrxRprt: TfrxReport;
    AdvToolButton1: TAdvToolButton;
    procedure ResearchBVLivEdtChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure AddBVLivBtnClick(Sender: TObject);
    procedure DeleteBVLivBtnClick(Sender: TObject);
    procedure EditBVLivBtnClick(Sender: TObject);
    procedure BVLivListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DateStartBVLivDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure BVLivListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVLivListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVLivListDBGridEhKeyPress(Sender: TObject; var Key: Char);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BonLivF: TBonLivF;

implementation

uses
  UMainF, UBonLivGestion, USplashAddUnite,  UClientGestion, USplash,Threading,
  USplashVersement;

{$R *.dfm}

procedure TBonLivF.ResearchBVLivEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVLIVEdt.Text<>'' then
    begin

          if ResherchBVlClientRdioBtn.Checked then
          begin
          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:='SELECT * FROM bonv_liv WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVLIVEdt.Text)+'%'+''')' +')';
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;

          end;

          if ResherchBVLNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:='SELECT * FROM bonv_liv WHERE LOWER(num_bvliv) LIKE LOWER' +'('''+'%'+(ResearchBVLIVEdt.Text)+'%'+''')' ;
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:='SELECT * FROM bonv_liv ' ;
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;

     end;
end;

procedure TBonLivF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.First;
end;

procedure TBonLivF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Prior;
end;

procedure TBonLivF.NextBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Next;
end;

procedure TBonLivF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Last;
end;

procedure TBonLivF.AddBVLivBtnClick(Sender: TObject);
var
  codeBL : integer;

begin
MainForm.Bonv_liv_listTable.Active:= False;
MainForm.Bonv_liv_listTable.IndexFieldNames:='';
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:='SELECT * FROM bonv_liv ';
MainForm.Bonv_livTable.Active:= True;
//MainForm.Bonv_livTable.EnableControls;


ResearchBVLivEdt.Text:='';

codeBL:= 0;
// if not Assigned (BonLivGestionF) then
    BonLivGestionF := TBonLivGestionF.Create(nil);
    try
     if MainForm.Bonv_livTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_livTable.Insert;
        MainForm.Bonv_livTable.FieldValues['code_bvliv']:=1;
        MainForm.Bonv_livTable.FieldValues['num_bvliv']:= 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
        MainForm.Bonv_livTable.FieldValues['time_bvliv']:=TimeOf(Now);
        MainForm.Bonv_livTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bonv_livTable.Post;
        codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
      end else
          begin
            MainForm.Bonv_livTable.Last;
            codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
            MainForm.Bonv_liv_listTable.Active:=False;
            MainForm.Bonv_liv_listTable.SQL.Clear;
            MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(codeBL));
            MainForm.Bonv_liv_listTable.Active:=True;

           if MainForm.Bonv_liv_listTable.RecordCount <= 0 then
           begin
        //   MainForm.Bonv_livTable.Last;
           codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
           end else
           begin
        //   MainForm.Bonv_livTable.Last;
          // codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
           MainForm.Bonv_livTable.Insert;
           MainForm.Bonv_livTable.FieldValues['code_bvliv']:= codeBL + 1;
           MainForm.Bonv_livTable.FieldValues['num_bvliv']:=  'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBL + 1)]);
           MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
           MainForm.Bonv_livTable.FieldValues['time_bvliv']:= TimeOf(Now);
           MainForm.Bonv_livTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
           MainForm.Bonv_livTable.Post;


           end;
            BonLivGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

      MainForm.Bonv_liv_listTable.Active:=False;
      MainForm.Bonv_liv_listTable.SQL.Clear;
      MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list';
      MainForm.Bonv_liv_listTable.Active:=True;

MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';
//MainForm.Bonv_liv_listTable.Refresh;
       BonLivGestionF.Tag:= 0;
       BonLivGestionF.ShowModal;

    finally
      BonLivGestionF.Free;

    end;


//       MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:='SELECT * FROM bonv_liv WHERE date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.DeleteBVLivBtnClick(Sender: TObject);
begin
if NOT (MainForm.Bonv_livTable.IsEmpty) then
 begin
  if  (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean <> True ) then
    begin
   MainForm.Bonv_liv_listTable.Active:=True;

    if NOT (MainForm.Bonv_liv_listTable.IsEmpty) then
     begin

           FSplashAddUnite:=TFSplashAddUnite.Create(BonLivF);
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
        FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Bon';
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
        FSplashAddUnite.OKAddUniteSBtn.Tag:= 9 ;
       end
        else
        begin
                MainForm.Bonv_livTable.Delete ;
          GrayForms;
          FSplash := TFSplash.Create(BonLivF);
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

  end  else
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

procedure TBonLivF.EditBVLivBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (MainForm.Bonv_livTable.IsEmpty) Then
 begin
   MainForm.Bonv_liv_listTable.Active := True;
     if NOT (MainForm.Bonv_liv_listTable.IsEmpty) then
    begin

   MainForm.Bonv_liv_listTable.Active := False;
//  MainForm.Bonv_livTable.Refresh;

     MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';


        BonLivGestionF := TBonLivGestionF.Create(nil);
    try
      MainForm.Bonv_liv_listTable.Active := True;
       MainForm.Bonv_livTable.Refresh;
       BonLivGestionF.NumBonLivGEdt.Caption := MainForm.Bonv_livTable.FieldValues['num_bvliv'];
       BonLivGestionF.DateBonLivGD.Date:= MainForm.Bonv_livTable.FieldValues['date_bvliv'];
       if (MainForm.Bonv_livTable.FieldValues['code_c']<> null) and (MainForm.Bonv_livTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=MainForm.Bonv_livTable.FieldValues['code_c'];
       BonLivGestionF.ClientBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldValues['clientbvliv'];
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE code_c ='+(IntToStr( CodeC ) ) ;
         MainForm.ClientTable.Active:=True;
         BonLivGestionF.BonLivGClientOLDCredit.Caption:= CurrToStrF(MainForm.ClientTable.FieldValues['oldcredit_c'],ffNumber,2);
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client ' ;
         MainForm.ClientTable.Active:=True;
        end;

       if (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeC:=MainForm.Bonv_livTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeC ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonLivGestionF.ModePaieBonLivGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeC:=MainForm.Bonv_livTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeC ) ) ;
         MainForm.CompteTable.Active:=True;
         BonLivGestionF.CompteBonLivGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if (MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv']<> null)  then
       begin
        BonLivGestionF.NChequeBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv'];

       end;


     if (MainForm.Bonv_livTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bonv_livTable.FieldValues['remise_bvliv']<> 0) then
     begin
     BonLivGestionF.RemisePerctageBonLivGEdt.Text :=     CurrToStrF(MainForm.Bonv_livTable.FieldValues['RemisePerc'], ffNumber, 2);
      BonLivGestionF.RemiseBonLivGEdt.Text :=     CurrToStrF(MainForm.Bonv_livTable.FieldValues['remise_bvliv'], ffNumber, 2);
     end;
    BonLivGestionF.BonLivTotalHTLbl.Caption :=    CurrToStrF(MainForm.Bonv_livTable.FieldValues['montht_bvliv'], ffNumber, 2);

    BonLivGestionF.BonLivTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bonv_livTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonLivGestionF.BonLivTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonv_livTable.FieldValues['montttc_bvliv'], ffNumber, 2);
    BonLivGestionF.BonLivRegleLbl.Caption :=      CurrToStrF(MainForm.Bonv_livTable.FieldValues['montver_bvliv'], ffNumber, 2);
    BonLivGestionF.BonLivResteLbl.Caption :=      CurrToStrF(MainForm.Bonv_livTable.FieldValues['MontantRes'], ffNumber, 2);



       if MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = True then
       begin
        FSplashVersement.DisableBonLiv;
       end else
           begin
            BonLivGestionF.EnableBonLiv;
           end;
      BonLivGestionF.Tag:= 1;
      MainForm.Bonv_liv_listTable.Refresh;
      BonLivGestionF.ShowModal;




        finally
          BonLivGestionF.Free;
        end;

  end else
     begin
       AddBVLivBtnClick(Sender);
     end;

 end;
end;

procedure TBonLivF.BVLivListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if gdSelected in State then
begin
   BVLivListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.Bonv_livTable.FieldValues['MontantRes'] > 0)    then
 begin
 BVLivListDBGridEh.Canvas.Font.Color:=$004735F9;
 BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (MainForm.Bonv_livTable.FieldValues['MontantRes'] < 0)    then
 begin
 BVLivListDBGridEh.Canvas.Font.Color:=$00519509;
 BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;

procedure TBonLivF.BVLivListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVLivListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVLivBtnClick(Sender) ;
  end else exit
end;

procedure TBonLivF.BVLivListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n'] then
    AddBVLivBtnClick(Sender);
  if Key in ['r'] then
    ResearchBVLivEdt.SetFocus;
  if not BVLivListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s' ] then
  DeleteBVLivBtnClick(Sender) ;
    if Key in ['m'] then
      EditBVLivBtnClick(Sender);
  end else Exit;
end;

procedure TBonLivF.DateStartBVLivDChange(Sender: TObject);
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:='SELECT * FROM bonv_liv WHERE date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.FormShow(Sender: TObject);
begin
  DateStartBVLivD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVlivD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVlivDChange(Sender);
end;

procedure TBonLivF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonLivfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVLivD.Date) + ' au ' + DateToStr(DateEndBVLivD.Date) ;

      Agent:= BonLivfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonLivF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Bonv_livTable.DisableControls;

   GettingData;

  BonLivfrxRprt.PrepareReport;
  BonLivfrxRprt.ShowReport;

  MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.sSpeedButton3Click(Sender: TObject);
begin

MainForm.Bonv_livTable.DisableControls;

    GettingData;

BonLivfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BL';
BonLivfrxRprt.Export(frxPDFExport1);


MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Bonv_livTable.DisableControls;

    GettingData;

BonLivfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'liste des BL';
BonLivfrxRprt.Export(frxXLSExport1);

MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.BVLivListDBGridEhDblClick(Sender: TObject);
begin
if BVLivListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonLivF.EditBVLivBtnClick(Sender) ;
end;
end;

procedure TBonLivF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(BonLivF);
end;

end.

