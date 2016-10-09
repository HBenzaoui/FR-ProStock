unit UCaisseList;

interface

uses
  Winapi.Windows,DateUtils,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, frxExportPDF, frxClass, frxExportXLS, frxDBSet;

type
  TCaisseListF = class(TForm)
    CaisseListDBGridEh: TDBGridEh;
    TopP: TPanel;
    PeriodCaiseeListLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ArrowsPnl: TPanel;
    LastCaiseebtn: TsSpeedButton;
    NextCaiseebtn: TsSpeedButton;
    PreviosCaiseebtn: TsSpeedButton;
    FisrtCaiseebtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    Panel2: TPanel;
    DateEndCaisseListD: TDateTimePicker;
    DateStartCaisseListD: TDateTimePicker;
    Panel3: TPanel;
    CaisseListDataS: TDataSource;
    DaysCaisseListCbx: TComboBox;
    CaisseListCbx: TComboBox;
    Label3: TLabel;
    Panel4: TPanel;
    Shape1: TShape;
    SoldIniCaisseListLbl: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    SoldPeriodeCaisseListLbl: TLabel;
    SoldTotalCaisseListLbl: TLabel;
    Label8: TLabel;
    CaisseListfrxRprt: TfrxReport;
    frxCaisseListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    procedure CaisseListCbxDropDown(Sender: TObject);
    procedure CaisseListCbxChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DaysCaisseListCbxChange(Sender: TObject);
    procedure DateStartCaisseListDChange(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CaisseListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CaisseListF: TCaisseListF;

implementation

uses
  UMainF;

{$R *.dfm}

procedure TCaisseListF.CaisseListCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte WHERE nature_cmpt = false ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CaisseListCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

       for I := 0 to MainForm.CompteTable.RecordCount - 1 do
       if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
       begin
         CaisseListCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
         MainForm.CompteTable.Next;
        end;
     end;
     CaisseListCbx.Items.Add('Tous');

end;

procedure TCaisseListF.CaisseListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  {  if gdFocused in State then
      begin
 // ProduitsListDBGridEh.Canvas.DrawFocusRect(Rect);
    ProduitsListDBGridEh.Canvas.Brush.Color:=clAqua;
       end;  }

//------ use this code to high light the selected row in dbgrid----//
 if gdSelected in State then
begin
   CaisseListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   CaisseListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 //------ use this code to red the produit with 0 or null in stock----//    decaiss_ocb
 if  (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'] <= 0)
 AND (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] <= 0) then
 begin
 CaisseListDBGridEh.Canvas.Font.Color:=$004735F9;
 CaisseListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;

procedure TCaisseListF.CaisseListCbxChange(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Currency;
CodeC : Integer;
begin
if CaisseListCbx.Text <> 'Tous' then
  begin

               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select code_cmpt,nom_cmpt FROM compte where LOWER(nom_cmpt) LIKE LOWER('''+CaisseListCbx.Text+''')'+ ' group by code_cmpt';
               MainForm.CompteTable.Active:=True;
               CodeC:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;

         MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
         MainForm.Opt_cas_bnk_CaisseTable.Active:=False;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;

         if DaysCaisseListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false and code_cmpt ='+ IntToStr(CodeC)
                                                   + ' and date_ocb BETWEEN'''+(DateToStr(DateStartCaisseListD.Date))+ ''' AND ''' +(DateToStr(DateEndCaisseListD.Date))+'''';

         end else
             begin
                 MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false and code_cmpt ='+ IntToStr(CodeC);
               end;

         MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

        MainForm.Opt_cas_bnk_CaisseTable.First;

        while not MainForm.Opt_cas_bnk_CaisseTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_CaisseTable.Next;
        end;


               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = false and code_cmpt ='+IntToStr(CodeC) +' group by code_cmpt';
               MainForm.CompteTable.Active:=True;

               MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


    SoldIniCaisseListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
    SoldPeriodeCaisseListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;



               MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false and code_cmpt ='+ IntToStr(CodeC);
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       SoldTotalCaisseListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
           MainForm.CompteTable.EnableControls;

  end else
      begin


        MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

         MainForm.Opt_cas_bnk_CaisseTable.Active:=False;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
         if DaysCaisseListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartCaisseListD.Date))+ ''' AND ''' +(DateToStr(DateEndCaisseListD.Date))+'''';

         end else
             begin
              MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false ';
             end;
         MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

        MainForm.Opt_cas_bnk_CaisseTable.First;

        while not MainForm.Opt_cas_bnk_CaisseTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_CaisseTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = false group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


        SoldIniCaisseListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);

        SoldPeriodeCaisseListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       SoldTotalCaisseListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;

           MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
           MainForm.CompteTable.EnableControls;


      end;

end;

procedure TCaisseListF.FormShow(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Currency;
begin

 if (DaysCaisseListCbx.ItemIndex = 2) AND (CaisseListCbx.ItemIndex = 0) then
 begin

  DateStartCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

         MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
         MainForm.Opt_cas_bnk_CaisseTable.Active:=False;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartCaisseListD.Date))+ ''' AND ''' +(DateToStr(DateEndCaisseListD.Date))+'''';
         MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


        MainForm.Opt_cas_bnk_CaisseTable.First;

        while not MainForm.Opt_cas_bnk_CaisseTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_CaisseTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = false group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


  SoldIniCaisseListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
  SoldPeriodeCaisseListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];
          MainForm.SQLQuery.Next;
        end;

  SoldTotalCaisseListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
           MainForm.CompteTable.EnableControls;

 end;
end;

procedure TCaisseListF.DaysCaisseListCbxChange(Sender: TObject);
begin

     if DaysCaisseListCbx.Text = 'Aujourd''hui' then
    begin
      DateStartCaisseListD.Enabled:=True;
      DateEndCaisseListD.Enabled:=True;

      DateStartCaisseListD.Date:=Now;// EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
      DateEndCaisseListD.Date:=Now; //  EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysCaisseListCbx.Text = 'Hier' then
    begin
      DateStartCaisseListD.Enabled:=True;
      DateEndCaisseListD.Enabled:=True;

      DateStartCaisseListD.Date:= Yesterday;//  EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now - 1));
      DateEndCaisseListD.Date:= Yesterday//  EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now - 1));
    end;
      if DaysCaisseListCbx.Text = 'Mois en cours' then
    begin
      DateStartCaisseListD.Enabled:=True;
      DateEndCaisseListD.Enabled:=True;

      DateStartCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
      DateEndCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
    end;
      if DaysCaisseListCbx.Text = 'Cette Ann�e' then
    begin
      DateStartCaisseListD.Date:=EncodeDate (YearOf(Now),01,01);
      DateEndCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysCaisseListCbx.Text = 'Toutes' then
    begin
      DateStartCaisseListD.Enabled:=False;
      DateEndCaisseListD.Enabled:=False;

    end;

     CaisseListCbxChange(Sender);


end;

procedure TCaisseListF.DateStartCaisseListDChange(Sender: TObject);

  begin
    CaisseListCbxChange(Sender);
  end;

  procedure TCaisseListF.GettingData;
var
  PreiodRX,Agent,Caisse,SoldeINI,SoldePre,SoldeTotal : TfrxMemoView;
begin
  PreiodRX:= CaisseListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'P�riode du : ' + DateToStr(DateStartCaisseListD.Date) + ' au ' + DateToStr(DateEndCaisseListD.Date) ;

    Agent:= CaisseListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

    Caisse:= CaisseListfrxRprt.FindObject('Caisse') as TfrxMemoView;
  Caisse.Text:= 'Caisse : ' + CaisseListCbx.Text;

    SoldeINI:= CaisseListfrxRprt.FindObject('SoldeINI') as TfrxMemoView;
  SoldeINI.Text:=   SoldIniCaisseListLbl.Caption;

    SoldePre:= CaisseListfrxRprt.FindObject('SoldePre') as TfrxMemoView;
  SoldePre.Text:=   SoldPeriodeCaisseListLbl.Caption;

    SoldeTotal:= CaisseListfrxRprt.FindObject('SoldeTotal') as TfrxMemoView;
  SoldeTotal.Text:= SoldTotalCaisseListLbl.Caption;

end;

procedure TCaisseListF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

   GettingData;

  CaisseListfrxRprt.PrepareReport;
  CaisseListfrxRprt.ShowReport;

  MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.sSpeedButton1Click(Sender: TObject);
begin

MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

    GettingData;

CaisseListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Etat de la Caisse';
CaisseListfrxRprt.Export(frxXLSExport1);

MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

end;

procedure TCaisseListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

    GettingData;

CaisseListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat de la Caisse';
CaisseListfrxRprt.Export(frxPDFExport1);


MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(CaisseListF);
end;

end.
