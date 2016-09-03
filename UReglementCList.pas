unit UReglementCList;

interface

uses
  Winapi.Windows,DateUtils,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet;

type
  TReglementCListF = class(TForm)
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
    ArrowsPnl: TPanel;
    LastBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchRegCEdt: TSearchBox;
    Panel2: TPanel;
    DateEndRegCD: TDateTimePicker;
    DateStartRegCD: TDateTimePicker;
    ResherchRegCNumBRdioBtn: TRadioButton;
    ResherchRegCClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    RegCListDataS: TDataSource;
    BVLivListDBGridEh: TDBGridEh;
    RegCListfrxRprt: TfrxReport;
    frxRegCListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    procedure AddBARecBtnClick(Sender: TObject);
    procedure ResearchRegCEdtChange(Sender: TObject);
    procedure DateStartRegCDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReglementCListF: TReglementCListF;

implementation

uses
  UReglementCGestion, UMainF, USplashAddUnite;

{$R *.dfm}

procedure TReglementCListF.AddBARecBtnClick(Sender: TObject);
  begin
    //-------- Show the splash screan for the produit familly to add new one---------//

              ReglementCGestionF:=TReglementCGestionF.Create(ReglementCListF);

        MainForm.RegclientTable.DisableControls;
        MainForm.RegclientTable.Last;
        ReglementCGestionF.NumRegCGEdt.Caption:=
        'RC'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((MainForm.RegclientTable.FieldByName('code_rc').AsInteger) + 1)]);
        MainForm.RegclientTable.EnableControls;


       //       ClientGestionF.BringToFront;
              ReglementCGestionF.Left:=  (Screen.Width div 2 ) - (ReglementCGestionF.Width div 2)    ;
              ReglementCGestionF.Top:=   (Screen.Height div 2) - (ReglementCGestionF.Height div 2)    ;
          //    MainForm.Align:= alClient;
           //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
              ReglementCGestionF.Show;
              ReglementCGestionF.ClientRegCGCbx.SetFocus;
              ReglementCGestionF.OKRegCGBtn.Tag:= 0 ;
  end;

procedure TReglementCListF.ResearchRegCEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchRegCEdt.Text<>'' then
    begin

          if ResherchRegCClientRdioBtn.Checked then
          begin
          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=False;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchRegCEdt.Text)+'%'+''')' +')';
          MainForm.RegclientTable.Active:=True;
          MainForm.RegclientTable.EnableControls;

          end;

          if ResherchRegCNumBRdioBtn.Checked then
          begin
          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=False;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE LOWER(nom_rc) LIKE LOWER' +'('''+'%'+(ResearchRegCEdt.Text)+'%'+''')' ;
          MainForm.RegclientTable.Active:=True;
          MainForm.RegclientTable.EnableControls;
          end;


    end else
     begin
          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=False;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ' ;
          MainForm.RegclientTable.Active:=True;
          MainForm.RegclientTable.EnableControls;


          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;



     end;
end;

procedure TReglementCListF.DateStartRegCDChange(Sender: TObject);
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.FormShow(Sender: TObject);
begin
  MainForm.RegclientTable.Active:= True;
  DateStartRegCD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndRegCD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartRegCDChange(Sender);
end;

procedure TReglementCListF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.RegclientTable.First;
end;

procedure TReglementCListF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.RegclientTable.Prior;
end;

procedure TReglementCListF.NextBARecbtnClick(Sender: TObject);
begin
 MainForm.RegclientTable.Next;
end;

procedure TReglementCListF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.RegclientTable.Last;
end;

procedure TReglementCListF.EditBARecBtnClick(Sender: TObject);
var
 CodeF: Integer;
 begin
 if MainForm.RegclientTable.FieldValues['bon_or_no_rc'] = 1 then

 begin
  ReglementCGestionF := TReglementCGestionF.Create(nil);
  try

      if Assigned(ReglementCListF) then
    begin
    ResearchRegCEdt.Text:='';
    end;


   if NOT (MainForm.RegclientTable.IsEmpty) Then
   begin

     MainForm.RegclientTable.Refresh;

//      ReglementCGestionF := TBonRecGestionF.Create(BonRecF);
       MainForm.RegclientTable.Refresh;
       ReglementCGestionF.NumRegCGEdt.Caption := MainForm.RegclientTable.FieldValues['nom_rc'];
       ReglementCGestionF.DateRegCGD.Date:= MainForm.RegclientTable.FieldValues['date_rc'];
       if (MainForm.RegclientTable.FieldValues['code_c']<> null) and (MainForm.RegclientTable.FieldValues['code_c']<> 0) then
       begin
       CodeF:=MainForm.RegclientTable.FieldValues['code_c'];
       ReglementCGestionF.ClientRegCGCbx.Text:= MainForm.RegclientTable.FieldValues['ClientrRC'];
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE code_c ='+(IntToStr( CodeF ) ) ;
         MainForm.ClientTable.Active:=True;
         ReglementCGestionF.RegCGClientOLDCredit.Caption:= CurrToStrF(MainForm.ClientTable.FieldValues['oldcredit_c'],ffNumber,2);
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client ' ;
         MainForm.ClientTable.Active:=True;
        end;

       if (MainForm.RegclientTable.FieldValues['code_mdpai']<> null ) AND (MainForm.RegclientTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeF:=MainForm.RegclientTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         ReglementCGestionF.ModePaieRegCGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.RegclientTable.FieldValues['code_cmpt']<> null) AND (MainForm.RegclientTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeF:=MainForm.RegclientTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         ReglementCGestionF.CompteRegCGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.RegclientTable.FieldValues['num_cheque_rc']<> null then
       begin
        ReglementCGestionF.NChequeRegCGCbx.Text:= MainForm.RegclientTable.FieldValues['num_cheque_rc'];
       end;


    ReglementCGestionF.VerRegCGEdt.Text :=      CurrToStrF(MainForm.RegclientTable.FieldValues['montver_rc'], ffNumber, 2);


            ReglementCGestionF.Left:=  (Screen.Width div 2 ) - (ReglementCGestionF.Width div 2)    ;
            ReglementCGestionF.Top:=   (Screen.Height div 2) - (ReglementCGestionF.Height div 2)    ;

      ReglementCGestionF.Tag:= 1;
      ReglementCGestionF.ShowModal;




     end;



      finally

      ReglementCGestionF.Free
     end;


 end;

  {

if MainForm.RegclientTable.FieldValues['bon_or_no_rf'] = 2 then
 begin
//        MainForm.Bona_recPlistTable.Active:= False;
//     MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
//
//    CodeREG:=  MainForm.RegclientTable.FieldValues['code_barec'];
//
//    MainForm.Bona_recTable.DisableControls;
//    MainForm.Bona_recTable.Active:= False;
//    MainForm.Bona_recTable.SQL.clear;
//    mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE code_barec = '+ IntToStr(CodeREG) ;
//    MainForm.Bona_recTable.Active:= True;
//    CodeBREC:= MainForm.Bona_recTable.FieldValues['code_barec'];
//
//            MainForm.Bona_recPlistTable.Active:= False;
//  MainForm.Bona_recPlistTable.SQL.clear;
//  mainform.Bona_recPlistTable.sql.Text:='SELECT * FROM bona_rec_list WHERE code_barec = '+ IntToStr(CodeBREC) ;
//  MainForm.Bona_recPlistTable.Active:= True;
//
//     BonRecF.EditBARecBtnClick(Sender);
 end;
 if MainForm.RegclientTable.FieldValues['bon_or_no_rf'] = 3 then
 begin

//         MainForm.Bona_fac_listTable.Active:= False;
//     MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
//
//    CodeREG:=  MainForm.RegclientTable.FieldValues['code_bafac'];
//
//    MainForm.Bona_facTable.DisableControls;
//    MainForm.Bona_facTable.Active:= False;
//    MainForm.Bona_facTable.SQL.clear;
//    mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac WHERE code_bafac = '+ IntToStr(CodeREG) ;
//    MainForm.Bona_facTable.Active:= True;
//    CodeBREC:= MainForm.Bona_facTable.FieldValues['code_bafac'];
//
//            MainForm.Bona_fac_listTable.Active:= False;
//  MainForm.Bona_fac_listTable.SQL.clear;
//  mainform.Bona_fac_listTable.sql.Text:='SELECT * FROM bona_fac_list WHERE code_bafac = '+ IntToStr(CodeBREC) ;
//  MainForm.Bona_fac_listTable.Active:= True;
//
//
//       BonFacAF.EditBAFacBtnClick(Sender);
//
//
//  MainForm.Bona_facTable.Active:= False;
//  MainForm.Bona_facTable.SQL.clear;
//  mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac ' ;
//  MainForm.Bona_facTable.Active:= True;
//  MainForm.Bona_facTable.EnableControls;


 end;
   }



end;

procedure TReglementCListF.DeleteBARecBtnClick(Sender: TObject);
begin
 if NOT (MainForm.RegclientTable.IsEmpty) then
 begin
     if MainForm.RegclientTable.FieldValues['bon_or_no_rc'] = 1 then
     begin
      FSplashAddUnite:=TFSplashAddUnite.Create(ReglementCListF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'le Versement ';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 25 ;

     end;

 end;
end;


  procedure TReglementCListF.GettingData;
var
  PreiodRX,Agent: TfrxMemoView;
begin
  PreiodRX:= RegCListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartRegCD.Date) + ' au ' + DateToStr(DateEndRegCD.Date) ;
      Agent:= RegCListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
  end;


procedure TReglementCListF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.RegclientTable.DisableControls;

   GettingData;

  RegCListfrxRprt.PrepareReport;
  RegCListfrxRprt.ShowReport;

  MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.RegclientTable.DisableControls;

    GettingData;

RegCListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Liste Règlement Client';
RegCListfrxRprt.Export(frxXLSExport1);

MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.RegclientTable.DisableControls;

    GettingData;

RegCListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Liste Règlement Client';
RegCListfrxRprt.Export(frxPDFExport1);


MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:= caFree;
ReglementCListF:= nil;
end;

end.
