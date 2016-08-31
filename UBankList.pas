unit UBankList;

interface

uses
  Winapi.Windows,DateUtils,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, sSpeedButton, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, frxClass, frxExportPDF, frxExportXLS, frxDBSet;

type
  TBankListF = class(TForm)
    TopP: TPanel;
    PeriodBankListLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ArrowsPnl: TPanel;
    LastBBankbtn: TsSpeedButton;
    NextBankbtn: TsSpeedButton;
    PreviosBankbtn: TsSpeedButton;
    FisrtBankbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    Panel2: TPanel;
    DateEndBankListD: TDateTimePicker;
    DateStartBankListD: TDateTimePicker;
    DaysBankListCbx: TComboBox;
    BankListCbx: TComboBox;
    Panel3: TPanel;
    BankListDataS: TDataSource;
    CaisseListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    Shape1: TShape;
    SoldIniBankListLbl: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    SoldPeriodeBankListLbl: TLabel;
    SoldTotalBankListLbl: TLabel;
    Label6: TLabel;
    frxBankListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BAnkListfrxRprt: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure BankListCbxDropDown(Sender: TObject);
    procedure DaysBankListCbxChange(Sender: TObject);
    procedure BankListCbxChange(Sender: TObject);
    procedure DateEndBankListDChange(Sender: TObject);
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
  BankListF: TBankListF;

implementation

uses
  UMainF;

{$R *.dfm}

procedure TBankListF.FormShow(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Currency;
begin



  DateStartBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

         MainForm.Opt_cas_bnk_BankTable.DisableControls;
         MainForm.Opt_cas_bnk_BankTable.Active:=False;
         MainForm.Opt_cas_bnk_BankTable.SQL.Clear;
         MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartBankListD.Date))+ ''' AND ''' +(DateToStr(DateEndBankListD.Date))+'''';
         MainForm.Opt_cas_bnk_BankTable.Active:=True;


        MainForm.Opt_cas_bnk_BankTable.First;

        while not MainForm.Opt_cas_bnk_BankTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_BankTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = true group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


  BankListF.SoldIniBankListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
  BankListF.SoldPeriodeBankListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];
          MainForm.SQLQuery.Next;
        end;

  BankListF.SoldTotalBankListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_BankTable.EnableControls;
           MainForm.CompteTable.EnableControls;
end;

procedure TBankListF.BankListCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte WHERE nature_cmpt = true ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      BankListCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

       for I := 0 to MainForm.CompteTable.RecordCount - 1 do
       if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
       begin
         BankListCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
         MainForm.CompteTable.Next;
        end;
     end;
     BankListCbx.Items.Add('Tous');
end;

procedure TBankListF.DaysBankListCbxChange(Sender: TObject);
begin
     if DaysBankListCbx.Text = 'Aujourd''hui' then
    begin
      DateStartBankListD.Enabled:=True;
      DateEndBankListD.Enabled:=True;

      DateStartBankListD.Date:=Now;  // EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
      DateEndBankListD.Date:=Now; //EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysBankListCbx.Text = 'Hier' then
    begin
      DateStartBankListD.Enabled:=True;
      DateEndBankListD.Enabled:=True;

      DateStartBankListD.Date:=Yesterday; // EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Yesterday));
      DateEndBankListD.Date:=Yesterday; //EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Yesterday));
    end;
      if DaysBankListCbx.Text = 'Mois en cours' then
    begin
      DateStartBankListD.Enabled:=True;
      DateEndBankListD.Enabled:=True;

      DateStartBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
      DateEndBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
    end;
      if DaysBankListCbx.Text = 'Cette Année' then
    begin
      DateStartBankListD.Date:=EncodeDate (YearOf(Now),01,01);
      DateEndBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysBankListCbx.Text = 'Toutes' then
    begin
      DateStartBankListD.Enabled:=False;
      DateEndBankListD.Enabled:=False;

    end;

     BankListCbxChange(Sender);
end;

procedure TBankListF.BankListCbxChange(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Currency;
CodeC : Integer;
begin
if BankListCbx.Text <> 'Tous' then
  begin

               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select code_cmpt,nom_cmpt FROM compte where LOWER(nom_cmpt) LIKE LOWER('''+BankListCbx.Text+''')'+ ' group by code_cmpt';
               MainForm.CompteTable.Active:=True;
               CodeC:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;

         MainForm.Opt_cas_bnk_BankTable.DisableControls;
         MainForm.Opt_cas_bnk_BankTable.Active:=False;
         MainForm.Opt_cas_bnk_BankTable.SQL.Clear;

         if DaysBankListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true and code_cmpt ='+ IntToStr(CodeC)
                                                   + ' and date_ocb BETWEEN'''+(DateToStr(DateStartBankListD.Date))+ ''' AND ''' +(DateToStr(DateEndBankListD.Date))+'''';

         end else
             begin
                 MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true and code_cmpt ='+ IntToStr(CodeC);
               end;

         MainForm.Opt_cas_bnk_BankTable.Active:=True;

        MainForm.Opt_cas_bnk_BankTable.First;

        while not MainForm.Opt_cas_bnk_BankTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_BankTable.Next;
        end;


               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = true and code_cmpt ='+IntToStr(CodeC) +' group by code_cmpt';
               MainForm.CompteTable.Active:=True;

               MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


    BankListF.SoldIniBankListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
  BankListF.SoldPeriodeBankListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;



               MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true and code_cmpt ='+ IntToStr(CodeC);
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

  BankListF.SoldTotalBankListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_BankTable.EnableControls;
           MainForm.CompteTable.EnableControls;

  end else
      begin


        MainForm.Opt_cas_bnk_BankTable.DisableControls;

         MainForm.Opt_cas_bnk_BankTable.Active:=False;
         MainForm.Opt_cas_bnk_BankTable.SQL.Clear;
         if DaysBankListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartBankListD.Date))+ ''' AND ''' +(DateToStr(DateEndBankListD.Date))+'''';

         end else
             begin
             MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true ';
             end;
         MainForm.Opt_cas_bnk_BankTable.Active:=True;

        MainForm.Opt_cas_bnk_BankTable.First;

        while not MainForm.Opt_cas_bnk_BankTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_BankTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = true group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


        BankListF.SoldIniBankListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);

        BankListF.SoldPeriodeBankListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       BankListF.SoldTotalBankListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;

           MainForm.Opt_cas_bnk_BankTable.EnableControls;
           MainForm.CompteTable.EnableControls;


      end;
end;

procedure TBankListF.DateEndBankListDChange(Sender: TObject);
begin
BankListCbxChange(Sender);
end;

  procedure TBankListF.GettingData;
var
  PreiodRX,Agent,Caisse,SoldeINI,SoldePre,SoldeTotal : TfrxMemoView;
begin
  PreiodRX:= BankListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBankListD.Date) + ' au ' + DateToStr(DateEndBankListD.Date) ;

    Agent:= BankListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

    Caisse:= BankListfrxRprt.FindObject('Caisse') as TfrxMemoView;
  Caisse.Text:= 'Compte : ' + BankListCbx.Text;

    SoldeINI:= BankListfrxRprt.FindObject('SoldeINI') as TfrxMemoView;
  SoldeINI.Text:=   SoldIniBankListLbl.Caption;

    SoldePre:= BankListfrxRprt.FindObject('SoldePre') as TfrxMemoView;
  SoldePre.Text:=   SoldPeriodeBankListLbl.Caption;

    SoldeTotal:= BankListfrxRprt.FindObject('SoldeTotal') as TfrxMemoView;
  SoldeTotal.Text:= SoldTotalBankListLbl.Caption;

end;

procedure TBankListF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Opt_cas_bnk_BankTable.DisableControls;

   GettingData;

  BankListfrxRprt.PrepareReport;
  BankListfrxRprt.ShowReport;

  MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;

    GettingData;

BankListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Relevé des Comptes';
BankListfrxRprt.Export(frxXLSExport1);

MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;

    GettingData;

BankListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Relevé des Comptes';
BankListfrxRprt.Export(frxPDFExport1);


MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

end.
