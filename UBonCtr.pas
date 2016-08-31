unit UBonCtr;

interface

uses
  Winapi.Windows,MMSystem,  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls,
  System.DateUtils, frxExportPDF, frxClass, frxExportXLS, frxDBSet;

type
  TBonCtrF = class(TForm)
    BVCtrListDBGridEh: TDBGridEh;
    Panel3: TPanel;
    TopP: TPanel;
    EditBVCtrBtn: TAdvToolButton;
    DeleteBVCtrBtn: TAdvToolButton;
    AddBVCtrBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
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
    ResearchBVCtrEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVCtrD: TDateTimePicker;
    DateStartBVCtrD: TDateTimePicker;
    ResherchBVCTNumBRdioBtn: TRadioButton;
    ResherchBVCTClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    BonCtrfrxRprt: TfrxReport;
    frxBonCtrDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    procedure AddBVCtrBtnClick(Sender: TObject);
    procedure EditBVCtrBtnClick(Sender: TObject);
    procedure DeleteBVCtrBtnClick(Sender: TObject);
    procedure DateStartBVCtrDChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure ResearchBVCtrEdtChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BVCtrListDBGridEhDblClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BonCtrF: TBonCtrF;

implementation

uses
  UMainF, USplashVersement, UComptoir, USplashAddUnite, USplash,
  UClientGestion;

{$R *.dfm}

procedure TBonCtrF.AddBVCtrBtnClick(Sender: TObject);
var
  codeCT : integer;

  begin
  MainForm.Bonv_ctr_listTable.Active:=False;
 MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
 MainForm.Bonv_CtrTable.DisableControls;
MainForm.Bonv_CtrTable.Active:= False;
MainForm.Bonv_CtrTable.SQL.clear;
mainform.Bonv_CtrTable.sql.Text:='SELECT * FROM bonv_ctr ';
MainForm.Bonv_CtrTable.Active:= True;
//MainForm.Bonv_CtrTable.EnableControls;


MainForm.ProduitTable.DisableControls;

codeCT:= 0;

//      if NOT Assigned(BonCtrF) then
//      begin
//      BonCtrF := TBonCtrF.Create(Self);
//      end;

  //    MainForm.Bonv_ctr_listTable.Active := True;
      BonCtrGestionF := TBonCtrGestionF.Create(Application);
     // try

       if MainForm.Bonv_ctrTable.RecordCount <= 0 then
        begin

          MainForm.Bonv_ctrTable.Insert;
          MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:=1;
          MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:= 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
          MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
          MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:=TimeOf(Now);
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bonv_ctrTable.Post;
          codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
        end else
            begin
              MainForm.Bonv_ctrTable.Last;
              codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
              MainForm.Bonv_ctr_listTable.Active:=False;
              MainForm.Bonv_ctr_listTable.SQL.Clear;
              MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(codeCT));
              MainForm.Bonv_ctr_listTable.Active:=True;

             if MainForm.Bonv_ctr_listTable.RecordCount <= 0 then
             begin
          //   MainForm.Bonv_ctrTable.Last;
             codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
             end else
             begin
          //   MainForm.Bonv_ctrTable.Last;
            // codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvliv'];
               MainForm.Bonv_ctrTable.Insert;
               MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:= codeCT + 1;
               MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:=  'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeCT + 1)]);
               MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
               MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:= TimeOf(Now);
               MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
               MainForm.Bonv_ctrTable.Post;


             end;
//              BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
            end;

   {    MainForm.Bonv_ctr_listTable.Active:=False;
        MainForm.Bonv_ctr_listTable.SQL.Clear;
        MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list';
        MainForm.Bonv_ctr_listTable.Active:=True;
   }

     MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

  //MainForm.Bonv_ctr_listTable.Refresh;
         BonCtrGestionF.Tag:= 0;



BonCtrGestionF.Show;

 //     finally
      //  BonCtrGestionF.Free;
  //    end;
MainForm.ProduitTable.EnableControls;
 MainForm.Bonv_CtrTable.EnableControls;

//MainForm.Bonv_CtrTable.DisableControls;
//MainForm.Bonv_CtrTable.Active:= False;
//MainForm.Bonv_CtrTable.SQL.clear;
//mainform.Bonv_CtrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
//MainForm.Bonv_CtrTable.Active:= True;
//MainForm.Bonv_CtrTable.EnableControls;

{if BonCtrF <> nil then
 begin
BonCtrF.ResearchBVCtrEdt.Clear;
 end; }
end;

procedure TBonCtrF.EditBVCtrBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (MainForm.Bonv_ctrTable.IsEmpty) Then
 begin
  MainForm.Bonv_ctr_listTable.Active:=True;
   if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) Then
  begin
  MainForm.Bonv_ctr_listTable.Active:=False;
  BonCtrGestionF := TBonCtrGestionF.Create(Application);
 // MainForm.Bonv_ctrTable.Refresh;

     MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

       MainForm.Bonv_ctrTable.Refresh;
       BonCtrGestionF.NumBonCtrGEdt.Caption := MainForm.Bonv_ctrTable.FieldValues['num_bvctr'];
       BonCtrGestionF.DateBonCtrGD.Date:= MainForm.Bonv_ctrTable.FieldValues['date_bvctr'];
       if (MainForm.Bonv_ctrTable.FieldValues['code_c']<> null) and (MainForm.Bonv_ctrTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=MainForm.Bonv_ctrTable.FieldValues['code_c'];
       BonCtrGestionF.ClientBonCtrGCbx.Text:= MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
        end;

     if MainForm.Bonv_ctrTable.FieldValues['RemisePerc']<> null then
     begin
     BonCtrGestionF.RemisePerctageBonCtrGEdt.Text :=     CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['RemisePerc'], ffNumber, 2);
     end;
    BonCtrGestionF.RemiseBonCtrGEdt.Text :=     CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['remise_bvctr'], ffNumber, 2);
//    BonCtrGestionF.BonCtrTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonCtrGestionF.BonCtrTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['montttc_bvctr'], ffNumber, 2);
    BonCtrGestionF.BonCtrRegleLbl.Caption :=      CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['montver_bvctr'], ffNumber, 2);
    BonCtrGestionF.BonCtrRenduLbl.Caption :=      CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['MontantRen'], ffNumber, 2);



       if MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = True then
       begin
        FSplashVersement.DisableBonCtr;
       end else
           begin
            BonCtrGestionF.EnableBonCtr;
           end;

 //     BonCtrGestionF.Parent:= nil;
//      BonCtrGestionF.BorderStyle := bsNone;
//      BonCtrGestionF.WindowState := wsMaximized;

    BonCtrGestionF.Tag:=1;

      BonCtrGestionF.Show;

  end else
      begin
        AddBVCtrBtnClick(Sender);
      end;

 end;

end;

procedure TBonCtrF.DeleteBVCtrBtnClick(Sender: TObject);
begin
if NOT (MainForm.Bonv_ctrTable.IsEmpty) then
 begin
    MainForm.Bonv_ctr_listTable.Active:= True;

  if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) then
   begin

         FSplashAddUnite:=TFSplashAddUnite.Create(BonCtrF);
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 21 ;
     end
      else
      begin
              MainForm.Bonv_ctrTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(BonCtrF);
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
end;
end;

procedure TBonCtrF.DateStartBVCtrDChange(Sender: TObject);
begin
MainForm.Bonv_CtrTable.DisableControls;
MainForm.Bonv_CtrTable.Active:= False;
MainForm.Bonv_CtrTable.SQL.clear;
mainform.Bonv_CtrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_CtrTable.Active:= True;
MainForm.Bonv_CtrTable.EnableControls;
end;

procedure TBonCtrF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.First;
end;

procedure TBonCtrF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Prior;
end;

procedure TBonCtrF.NextBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Next;
end;

procedure TBonCtrF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Last;
end;

procedure TBonCtrF.ResearchBVCtrEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVCtrEdt.Text<>'' then
    begin

          if ResherchBVCTClientRdioBtn.Checked then
          begin
          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVCtrEdt.Text)+'%'+''')' +')';
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;

          end;

          if ResherchBVCTNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr WHERE LOWER(num_bvctr) LIKE LOWER' +'('''+'%'+(ResearchBVCtrEdt.Text)+'%'+''')' ;
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;
          end;

    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr ' ;
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;

     end;
end;

procedure TBonCtrF.FormShow(Sender: TObject);
begin
  DateStartBVCtrD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVCtrD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVCtrDChange(Sender);
end;

procedure TBonCtrF.BVCtrListDBGridEhDblClick(Sender: TObject);
begin
if BvCtrListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonCtrF.EditBVCtrBtnClick(Sender) ;
end;
end;

procedure TBonCtrF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonCtrfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVCtrD.Date) + ' au ' + DateToStr(DateEndBVCtrD.Date) ;

  Agent:= BonCtrfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonCtrF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Bonv_ctrTable.DisableControls;

   GettingData;

  BonCtrfrxRprt.PrepareReport;
  BonCtrfrxRprt.ShowReport;

  MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Bonv_ctrTable.DisableControls;

    GettingData;

BonCtrfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Listing Comptoir de vente';
BonCtrfrxRprt.Export(frxXLSExport1);

MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.Bonv_ctrTable.DisableControls;

    GettingData;

BonCtrfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Listing Comptoir de vente';
BonCtrfrxRprt.Export(frxPDFExport1);


MainForm.Bonv_ctrTable.EnableControls;
end;

end.
