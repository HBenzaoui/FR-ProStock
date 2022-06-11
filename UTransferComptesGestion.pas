unit UTransferComptesGestion;

interface

uses
  Winapi.Windows,MMSystem, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, AdvToolBtn;

type
  TTransferComptesGestionF = class(TForm)
    Label2: TLabel;
    ObserRegFGLbl: TLabel;
    RequiredCompteSourceTransfeGlbl: TLabel;
    AddCompte1TransfeGBtn: TAdvToolButton;
    Label5: TLabel;
    Shape4: TShape;
    TranferTransferErrorP: TPanel;
    DateTransferGD: TDateTimePicker;
    ObserTransferGMem: TMemo;
    CompteSourceTransfeErrorP: TPanel;
    CompteSourceTransfeGCbx: TComboBox;
    Panel2: TPanel;
    RequiredCompteDisTransfeGlbl: TLabel;
    Label3: TLabel;
    CompteDisTransfeErrorP: TPanel;
    AddCompte2TransfeGBtn: TAdvToolButton;
    CompteDisTransfeGCbx: TComboBox;
    OKTransferGBtn: TAdvToolButton;
    CancelTransferGBtn: TAdvToolButton;
    Panel1: TPanel;
    label12: TLabel;
    TranferTransferEdt: TEdit;
    label13: TLabel;
    Label7: TLabel;
    CompteSOLDTransferLbl: TLabel;
    RestTransferEdt: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    ModePaieTransferGCbx: TComboBox;
    AddModePaieRegCGBtn: TAdvToolButton;
    Label10: TLabel;
    MPTransferGErrorP: TPanel;
    RequiredMPGlbl: TLabel;
    Label19: TLabel;
    NChequeTransferGCbx: TEdit;
    RefChargeGLbl: TLabel;
    NumTransferGEdt: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CompteSOLDBeforeTransferLbl: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    CompteSOLDAfterTransferLbl: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKTransferGBtnClick(Sender: TObject);
    procedure CancelTransferGBtnClick(Sender: TObject);
    procedure CompteSourceTransfeGCbxEnter(Sender: TObject);
    procedure CompteDisTransfeGCbxEnter(Sender: TObject);
    procedure CompteSourceTransfeGCbxChange(Sender: TObject);
    procedure TranferTransferEdtKeyPress(Sender: TObject;
      var Key: Char);
    procedure RestTransferEdtKeyPress(Sender: TObject; var Key: Char);
    procedure TranferTransferEdtChange(Sender: TObject);
    procedure RestTransferEdtChange(Sender: TObject);
    procedure TranferTransferEdtClick(Sender: TObject);
    procedure RestTransferEdtClick(Sender: TObject);
    procedure TranferTransferEdtExit(Sender: TObject);
    procedure RestTransferEdtExit(Sender: TObject);
    procedure CompteDisTransfeGCbxChange(Sender: TObject);
    procedure ModePaieTransferGCbxChange(Sender: TObject);
    procedure ModePaieTransferGCbxDropDown(Sender: TObject);
    procedure AddCompte1TransfeGBtnClick(Sender: TObject);
    procedure AddCompte2TransfeGBtnClick(Sender: TObject);
    procedure AddModePaieRegCGBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferComptesGestionF: TTransferComptesGestionF;

implementation

{$R *.dfm}

uses UMainF,System.DateUtils, UDataModule, USplash, USplashAddCompte,
  USplashAddUnite, UCaisseList, UBankList;

procedure TTransferComptesGestionF.AddCompte1TransfeGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(TransferComptesGestionF);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 10 ;//
end;

procedure TTransferComptesGestionF.AddCompte2TransfeGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(TransferComptesGestionF);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 11 ;//
end;

procedure TTransferComptesGestionF.AddModePaieRegCGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(TransferComptesGestionF);
    FSplashAddUnite.Width:=330;
    FSplashAddUnite.Height:=185;
    FSplashAddUnite.NameAddUniteSLbl.Left:= 11;
    FSplashAddUnite.NameAddUniteSEdt.Left:=FSplashAddUnite.CompteAddUniteSCbx.Left;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width+ 2;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
    FSplashAddUnite.CompteAddUniteSLbl.Visible:=True;
    FSplashAddUnite.CompteAddUniteSCbx.Visible:=True;
    FSplashAddUnite.CompteAddUniteSBtn.Visible:=True;
    FSplashAddUnite.Panel1.Color:= $0040332D ;
    FSplashAddUnite.LineP.Color:= $0040332D  ;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Designation:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 39 ;//
end;

procedure TTransferComptesGestionF.CancelTransferGBtnClick(Sender: TObject);
begin
Close;
end;

procedure TTransferComptesGestionF.CompteDisTransfeGCbxChange(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,OLDSold,TotalSoldComptEnc,TotalSoldComptDic,SOLDTransfer : Double;
CodeC : Integer;
begin

 if CompteDisTransfeGCbx.Text <> '' then
 begin

     MainForm.FDQuery2.Active:=False;
     MainForm.FDQuery2.SQL.Clear;
     MainForm.FDQuery2.SQL.Text:='select code_cmpt,nom_cmpt,oldcredit_cmpt FROM compte where LOWER(nom_cmpt) LIKE LOWER('''+CompteDisTransfeGCbx.Text+''')'+ ' group by code_cmpt';
     MainForm.FDQuery2.Active:=True;

      if NOT MainForm.FDQuery2.IsEmpty   then
   begin
               CodeC:=MainForm.FDQuery2.FieldByName('code_cmpt').AsInteger;
               OLDSold:= MainForm.FDQuery2.FieldByName('oldcredit_cmpt').AsCurrency;

               MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT code_cmpt,encaiss_ocb,decaiss_ocb FROM opt_cas_bnk where code_cmpt ='+ IntToStr(CodeC);
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

        SOLDTransfer:=StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));

       CompteSOLDBeforeTransferLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold)),ffNumber,14,2) ;

       CompteSOLDAfterTransferLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) + (OLDSold) +(SOLDTransfer)),ffNumber,14,2) ;


       if (Tag = 1) AND (CodeC = DataModuleF.Transfer_comptesTable.FieldByName('code_cmptd').AsInteger) then
       begin

        CompteSOLDBeforeTransferLbl.Caption :=
        FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold) - DataModuleF.Transfer_comptesTable.FieldValues['mont_transfer']  ),ffNumber,14,2) ;

        CompteSOLDAfterTransferLbl.Caption :=
        FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold) +(SOLDTransfer) - DataModuleF.Transfer_comptesTable.FieldValues['mont_transfer'] ),ffNumber,14,2) ;

       end;


       RestTransferEdt.Text :=
       FloatToStrF((0),ffNumber,14,2) ;

//        TranferTransferEdtChange(Sender);

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


        MainForm.FDQuery2.Active:=False;
        MainForm.FDQuery2.SQL.Clear;


       if  (CompteSourceTransfeGCbx.Text <> '') AND (TranferTransferEdt.Text <> '')  AND (ModePaieTransferGCbx.Text <> '')  then
       begin
           OKTransferGBtn.Enabled := true;
           OKTransferGBtn.ImageIndex := 17;
       end;

       //  CompteDisTransfeGCbx.BorderStyle:= bsSingle;
        CompteDisTransfeGCbx.StyleElements:= [seClient,seBorder];
        RequiredCompteDisTransfeGlbl.Visible:= False;
        CompteDisTransfeErrorP.Visible:= False;

   end else
       begin
        CompteSOLDBeforeTransferLbl.Caption :=  FloatToStrF((0),ffNumber,14,2) ;
        CompteSOLDAfterTransferLbl.Caption :=   FloatToStrF((0),ffNumber,14,2) ;
       end;


  end else
    begin
       CompteSOLDBeforeTransferLbl.Caption :=  FloatToStrF((0),ffNumber,14,2) ;
       CompteSOLDAfterTransferLbl.Caption :=   FloatToStrF((0),ffNumber,14,2) ;
    end;
end;

procedure TTransferComptesGestionF.CompteDisTransfeGCbxEnter(Sender: TObject);
Var I: Integer;
begin
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT code_cmpt,nom_cmpt FROM compte GROUP BY code_cmpt,nom_cmpt ORDER BY code_cmpt ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.Refresh;
      CompteDisTransfeGCbx.Items.Clear;

      MainForm.SQLQuery.first;
     begin

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if ( MainForm.SQLQuery.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteDisTransfeGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_cmpt').AsString);
       MainForm.SQLQuery.Next;
      end;
     end;
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
end;



procedure TTransferComptesGestionF.CompteSourceTransfeGCbxChange(
  Sender: TObject);
Var TotalEncaiss,TotalDecaiss,OLDSold,TotalSoldComptEnc,TotalSoldComptDic : Double;
CodeC : Integer;
begin

if CompteSourceTransfeGCbx.Text <> '' then
begin

     MainForm.FDQuery2.Active:=False;
     MainForm.FDQuery2.SQL.Clear;
     MainForm.FDQuery2.SQL.Text:='select code_cmpt,nom_cmpt,oldcredit_cmpt FROM compte where LOWER(nom_cmpt) LIKE LOWER('''+CompteSourceTransfeGCbx.Text+''')'+ ' group by code_cmpt';
     MainForm.FDQuery2.Active:=True;

   if NOT MainForm.FDQuery2.IsEmpty   then
   begin

               CodeC:=MainForm.FDQuery2.FieldByName('code_cmpt').AsInteger;
               OLDSold:= MainForm.FDQuery2.FieldByName('oldcredit_cmpt').AsCurrency;

               MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT code_cmpt,encaiss_ocb,decaiss_ocb FROM opt_cas_bnk where code_cmpt ='+ IntToStr(CodeC);
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       CompteSOLDTransferLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold)),ffNumber,14,2) ;

       if Tag <> 1 then
       begin
        TranferTransferEdt.Text :=
        FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold)),ffNumber,14,2) ;
       end;

       if (Tag = 1) AND (CodeC = DataModuleF.Transfer_comptesTable.FieldByName('code_cmpts').AsInteger) then
       begin

        CompteSOLDTransferLbl.Caption :=
        FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold) + DataModuleF.Transfer_comptesTable.FieldByName('mont_transfer').AsCurrency  ),ffNumber,14,2) ;

//        TranferTransferEdt.Text :=
//        FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(OLDSold) + DataModuleF.Transfer_comptesTable.FieldByName('mont_transfer').AsCurrency ),ffNumber,14,2) ;

       end;

       RestTransferEdt.Text :=
       FloatToStrF((0),ffNumber,14,2) ;


        TranferTransferEdtChange(Sender);

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


        MainForm.FDQuery2.Active:=False;
        MainForm.FDQuery2.SQL.Clear;

        TranferTransferEdt.Enabled:= True;
        RestTransferEdt.Enabled:= True;


     if  (TranferTransferEdt.Text <> '') AND (CompteDisTransfeGCbx.Text <> '') AND (ModePaieTransferGCbx.Text <> '') then
     begin
         OKTransferGBtn.Enabled := true;
         OKTransferGBtn.ImageIndex := 17;
     end;


    //  CompteSourceTransfeGCbx.BorderStyle:= bsSingle;
      CompteSourceTransfeGCbx.StyleElements:= [seClient,seBorder];
      RequiredCompteSourceTransfeGlbl.Visible:= False;
      CompteSourceTransfeErrorP.Visible:= False;





   end else
       begin
         CompteSOLDTransferLbl.Caption :=  FloatToStrF((0),ffNumber,14,2) ;
         TranferTransferEdt.Text :=  FloatToStrF((0),ffNumber,14,2) ;
       end;

end else
    begin
       CompteSOLDTransferLbl.Caption :=  FloatToStrF((0),ffNumber,14,2) ;
       TranferTransferEdt.Text :=  FloatToStrF((0),ffNumber,14,2) ;
    end;

end;

procedure TTransferComptesGestionF.CompteSourceTransfeGCbxEnter(
  Sender: TObject);
Var I: Integer;
begin
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT code_cmpt,nom_cmpt FROM compte GROUP BY code_cmpt,nom_cmpt ORDER BY code_cmpt ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.Refresh;
      CompteSourceTransfeGCbx.Items.Clear;

      MainForm.SQLQuery.first;
     begin

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if ( MainForm.SQLQuery.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteSourceTransfeGCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_cmpt').AsString);
       MainForm.SQLQuery.Next;
      end;
     end;
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
end;

procedure TTransferComptesGestionF.TranferTransferEdtChange(Sender: TObject);
var TOTAL,VER,ResteVersement : Double;
begin
   if TranferTransferEdt.Focused then
   begin
    if TranferTransferEdt.Text<>'' then
     begin
      TranferTransferEdt.BorderStyle:= bsSingle;
      TranferTransferEdt.StyleElements:= [seClient,seBorder];
      TranferTransferErrorP.Visible:= False;
      label13.Font.Color:= $0040332D;
      TOTAL:=StrToFloat(StringReplace(CompteSOLDTransferLbl.Caption, #32, '', [rfReplaceAll]));
      VER  :=StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));

      if TranferTransferEdt.Text<>'' then
      begin

       ResteVersement:=  (Total - VER) ;


         RestTransferEdt.Text := FloatToStrF(ResteVersement,ffNumber,14,2);


         if CompteDisTransfeGCbx.Text <> '' Then
         begin
          CompteSOLDAfterTransferLbl.Caption:= FloatToStrF
          ( StrToFloat(StringReplace(CompteSOLDBeforeTransferLbl.Caption, #32, '', [rfReplaceAll]))
          + StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll])),ffNumber,14,2 );
         end;

      end else
          begin
           RestTransferEdt.Text:=FloatToStrF(TOTAL,ffNumber,14,2);
          end;

     end else
         begin
            RestTransferEdt.Text:= CompteSOLDTransferLbl.Caption;
         end;
   end;


 if  (CompteSourceTransfeGCbx.Text <> '')  AND (CompteDisTransfeGCbx.Text <> '') AND (ModePaieTransferGCbx.Text <> '')  then
 begin
     OKTransferGBtn.Enabled := true;
     OKTransferGBtn.ImageIndex := 17;
 end;

end;

procedure TTransferComptesGestionF.TranferTransferEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
TranferTransferEdt.Text := StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]);
TranferTransferEdt.SelectAll;
end;

procedure TTransferComptesGestionF.TranferTransferEdtExit(Sender: TObject);
var
SoldeCompte: Double;
begin
  if TranferTransferEdt.Text<>'' then
  begin
  SoldeCompte:=StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));
  TranferTransferEdt.Text := FloatToStrF(SoldeCompte,ffNumber,14,2);
  end else
      begin
       TranferTransferEdt.Text := FloatToStrF(0,ffNumber,14,2)
      end;

end;

procedure TTransferComptesGestionF.TranferTransferEdtKeyPress(
  Sender: TObject; var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = ['.'];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #44;
  end;
  if (Key = ',') AND (Pos(Key, (TranferTransferEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TTransferComptesGestionF.RestTransferEdtChange(Sender: TObject);
var TOTAL,VER,ResteVersement : Double;
begin
   if RestTransferEdt.Focused then
   begin
    if RestTransferEdt.Text<>'' then
     begin
//      RestTransferEdt.BorderStyle:= bsSingle;
//      RestTransferEdt.StyleElements:= [seClient,seBorder];
//      RestTransferErrorP.Visible:= False;
//      label12.Font.Color:= $0040332D;
      TOTAL:=StrToFloat(StringReplace(CompteSOLDTransferLbl.Caption, #32, '', [rfReplaceAll]));
      VER  :=StrToFloat(StringReplace(RestTransferEdt.Text, #32, '', [rfReplaceAll]));

      if RestTransferEdt.Text<>'' then
      begin

       ResteVersement:=  (Total - VER) ;


         TranferTransferEdt.Text := FloatToStrF(ResteVersement,ffNumber,14,2);
      end else
          begin
           TranferTransferEdt.Text:=FloatToStrF(TOTAL,ffNumber,14,2);
          end;

     end else
         begin
            TranferTransferEdt.Text:= CompteSOLDTransferLbl.Caption;
         end;
   end;

// if  (CompteSourceTransfeGCbx.Text <> '') AND (TranferTransferEdt.Text <> '') AND (CompteDisTransfeGCbx.Text <> '') AND (ModePaieTransferGCbx.Text <> '')  then
// begin
//     OKTransferGBtn.Enabled := true;
//     OKTransferGBtn.ImageIndex := 17;
// end;


end;

procedure TTransferComptesGestionF.RestTransferEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
RestTransferEdt.Text := StringReplace(RestTransferEdt.Text, #32, '', [rfReplaceAll]);
RestTransferEdt.SelectAll;
end;

procedure TTransferComptesGestionF.RestTransferEdtExit(Sender: TObject);
var
SoldeCompte: Double;
begin
  if RestTransferEdt.Text<>'' then
  begin
  SoldeCompte:=StrToFloat(StringReplace(RestTransferEdt.Text, #32, '', [rfReplaceAll]));
  RestTransferEdt.Text := FloatToStrF(SoldeCompte,ffNumber,14,2);
  end else
      begin
         RestTransferEdt.Text := FloatToStrF(0,ffNumber,14,2);
      end;

end;

procedure TTransferComptesGestionF.RestTransferEdtKeyPress(
  Sender: TObject; var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = ['.'];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #44;
  end;
  if (Key = ',') AND (Pos(Key, (RestTransferEdt.Text)) > 0) Then
  begin
       Key := #0;
  end;

end;

procedure TTransferComptesGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
NormalForms;
//FreeAndNil(TransferComptesGestionF);
end;

procedure TTransferComptesGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      CancelTransferGBtnClick(Sender);;

     end;

  if key = #13 then
  begin
   key := #0;
   OKTransferGBtnClick(Sender);
  end;
end;

procedure TTransferComptesGestionF.FormShow(Sender: TObject);
begin
GrayForms;
    if Tag = 0 then
    begin
      DateTransferGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
      CompteSOLDTransferLbl.Caption :=       FloatToStrF(0,ffNumber,14,2) ;
      CompteSOLDBeforeTransferLbl.Caption := FloatToStrF(0,ffNumber,14,2) ;
      CompteSOLDAfterTransferLbl.Caption :=  FloatToStrF(0,ffNumber,14,2) ;

      TranferTransferEdt.Text := FloatToStrF(0,ffNumber,14,2) ;
      RestTransferEdt.Text :=  FloatToStrF(0,ffNumber,14,2) ;
    end;


    if Tag = 1 then
    begin
        CompteSourceTransfeGCbxChange(Sender);
        CompteDisTransfeGCbxChange(Sender);
    end;
end;

procedure TTransferComptesGestionF.ModePaieTransferGCbxChange(Sender: TObject);
begin
 if  (CompteSourceTransfeGCbx.Text <> '') AND (TranferTransferEdt.Text <> '')  AND (CompteDisTransfeGCbx.Text <> '') then
 begin
     OKTransferGBtn.Enabled := true;
     OKTransferGBtn.ImageIndex := 17;
 end;

 //  ModePaieTransferGCbx.BorderStyle:= bsSingle;
  ModePaieTransferGCbx.StyleElements:= [seClient,seBorder];
  RequiredMPGlbl.Visible:= False;
  MPTransferGErrorP.Visible:= False;
end;

procedure TTransferComptesGestionF.ModePaieTransferGCbxDropDown(
  Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieTransferGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieTransferGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;

end;

procedure TTransferComptesGestionF.OKTransferGBtnClick(Sender: TObject);
var CodeOCB,CodeTrans,CodeCmptS,CodeCmptD : Integer;
begin

  if CompteSourceTransfeGCbx.Text<>'' then
  begin

      if (TranferTransferEdt.Text<>'') AND ((StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll])))<> 0 )  then
    begin

//     if (RestTransferEdt.Text<>'') AND ((StrToFloat(StringReplace(RestTransferEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then
//     begin

      if CompteDisTransfeGCbx.Text<>'' then
      begin

       if ModePaieTransferGCbx.Text<>'' then
       begin
         if CompteSourceTransfeGCbx.Text <> CompteDisTransfeGCbx.Text then
         begin
          //--------------------------------------------------------------------
             MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

              MainForm.SQLQuery.Active:=false;
              MainForm.SQLQuery.SQL.Clear;
              MainForm.SQLQuery.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(CompteSourceTransfeGCbx.Text )+')'  ;
              MainForm.SQLQuery.Active:=True;
              CodeCmptS:= MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger;

              MainForm.FDQuery2.Active:=false;
              MainForm.FDQuery2.SQL.Clear;
              MainForm.FDQuery2.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(CompteDisTransfeGCbx.Text )+')'  ;
              MainForm.FDQuery2.Active:=True;
              CodeCmptD:= MainForm.FDQuery2.FieldByName('code_cmpt').AsInteger;

              MainForm.Mode_paiementTable.DisableControls;
              MainForm.Mode_paiementTable.Active:=false;
              MainForm.Mode_paiementTable.SQL.Clear;
              MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ModePaieTransferGCbx.Text )+')'  ;
              MainForm.Mode_paiementTable.Active:=True;


              MainForm.SQLQuery3.Active:=false;
              MainForm.SQLQuery3.SQL.Clear;
              MainForm.SQLQuery3.SQL.Text:='SELECT * FROM transfer_comptes'  ;
              MainForm.SQLQuery3.Active:=True;


            //--- this tag is for adding ---------------
             if Tag = 0 then
             begin


              MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
              MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
              MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
              MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

                with MainForm.SQLQuery3 do
                begin
                    if NOT (MainForm.SQLQuery3.IsEmpty) then
                    begin
                    MainForm.SQLQuery3.Last;
                    CodeTrans:= MainForm.SQLQuery3.FieldValues['code_transfer'] + 1;
                    end else
                        begin
                         CodeTrans:= 1;
                        end;
                    Append;
                    FieldValues['code_transfer']:= CodeTrans;
                    FieldValues['refer_transfer']:= NumTransferGEdt.Caption;
                    FieldValues['date_transfer']:= DateTransferGD.Date;
                    FieldValues['time_transfer']:=TimeOf(Now);
                    FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                    FieldValues['obser_transfer']:= ObserTransferGMem.Text;
                    FieldValues['num_cheque_transfer']:= NChequeTransferGCbx.Text;
                    FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);

                      if TranferTransferEdt.Text<>'' then
                      begin
                      FieldByName('mont_transfer').AsCurrency:=StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));
                      end else begin FieldValues['montht_transfer']:=  StrToInt('0')  end;


                    fieldbyname('code_cmpts').Value  := CodeCmptS;
                    fieldbyname('code_cmptd').Value := CodeCmptD;

                    if (LowerCase(ModePaieTransferGCbx.Text)='espèce') OR (LowerCase(ModePaieTransferGCbx.Text)='espece') then
                    begin
                     FieldValues['code_mdpai']:=1 ;
                    end;
                     if (LowerCase(ModePaieTransferGCbx.Text)='chèque') OR (LowerCase(ModePaieTransferGCbx.Text)='cheque') then
                    begin
                     FieldValues['code_mdpai']:=2 ;
                    end;
                    if (LowerCase(ModePaieTransferGCbx.Text)='à terme' ) OR (LowerCase(ModePaieTransferGCbx.Text)='a terme' )
                       OR (LowerCase(ModePaieTransferGCbx.Text)='À terme' ) then
                    begin
                     FieldValues['code_mdpai']:=3 ;
                    end;

                    Post;

                 end;


          //------------- this is for dicassment--------------------------------
              begin

              if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
              begin
              MainForm.Opt_cas_bnk_CaisseTable.Last;
              CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
              end else
                  begin
                   CodeOCB:= 1;
                  end;

                MainForm.Opt_cas_bnk_CaisseTable.Append;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Transférer depuis le compte '+CompteSourceTransfeGCbx.Text;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= MainForm.UserNameLbl.Caption;;
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));

                 if (LowerCase(ModePaieTransferGCbx.Text)='espèce') OR (LowerCase(ModePaieTransferGCbx.Text)='espece') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ModePaieTransferGCbx.Text)='chèque') OR (LowerCase(ModePaieTransferGCbx.Text)='cheque') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ModePaieTransferGCbx.Text)='à terme' ) OR (LowerCase(ModePaieTransferGCbx.Text)='a terme' )
                   OR (LowerCase(ModePaieTransferGCbx.Text)='À terme' ) then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.SQLQuery.FieldByName('nature_cmpt').AsBoolean;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_transfer']:= CodeTrans;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=StrToInt (MainForm.UserIDLbl.Caption);

                MainForm.Opt_cas_bnk_CaisseTable.Post;

              end;

          //------------- this is for encassment--------------------------------
              begin

              if NOT (MainForm.Opt_cas_bnk_CaisseTable.IsEmpty) then
              begin
              MainForm.Opt_cas_bnk_CaisseTable.Last;
              CodeOCB:= MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb'] + 1;
              end else
                  begin
                   CodeOCB:= 1;
                  end;

                MainForm.Opt_cas_bnk_CaisseTable.Append;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Transférer vers le compte '+CompteDisTransfeGCbx.Text;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= MainForm.UserNameLbl.Caption;;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));

                 if (LowerCase(ModePaieTransferGCbx.Text)='espèce') OR (LowerCase(ModePaieTransferGCbx.Text)='espece') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ModePaieTransferGCbx.Text)='chèque') OR (LowerCase(ModePaieTransferGCbx.Text)='cheque') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ModePaieTransferGCbx.Text)='à terme' ) OR (LowerCase(ModePaieTransferGCbx.Text)='a terme' )
                   OR (LowerCase(ModePaieTransferGCbx.Text)='À terme' ) then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.FDQuery2.FieldByName('code_cmpt').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.FDQuery2.FieldByName('nature_cmpt').AsBoolean;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_transfer']:= CodeTrans;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=StrToInt (MainForm.UserIDLbl.Caption);

                MainForm.Opt_cas_bnk_CaisseTable.Post;

              end;


                MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                MainForm.Opt_cas_bnk_BankTable.Refresh;


                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
//                MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

                MainForm.Mode_paiementTable.Active:=false;
                MainForm.Mode_paiementTable.SQL.Clear;
                MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
                MainForm.Mode_paiementTable.Active:=True;
                MainForm.Mode_paiementTable.EnableControls;


                MainForm.SQLQuery.Active:=false;
                MainForm.SQLQuery.SQL.Clear;

                MainForm.FDQuery2.Active:=false;
                MainForm.FDQuery2.SQL.Clear;

                MainForm.SQLQuery3.Active:=false;
                MainForm.SQLQuery3.SQL.Clear;

                DataModuleF.Transfer_comptesTable.Refresh;

             end  else
              begin
                    //-------------EDIT-----------------------------------------

                 with DataModuleF.Transfer_comptesTable do
                begin

                    Edit;
                    FieldValues['refer_transfer']:= NumTransferGEdt.Caption;
                    FieldValues['date_transfer']:= DateTransferGD.Date;
                    FieldValues['time_transfer']:=TimeOf(Now);
                    FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                    FieldValues['obser_transfer']:= ObserTransferGMem.Text;
                    FieldValues['num_cheque_transfer']:= NChequeTransferGCbx.Text;
                    FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);

                      if TranferTransferEdt.Text<>'' then
                      begin
                      FieldByName('mont_transfer').AsCurrency:=StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));
                      end else begin FieldValues['montht_transfer']:=  StrToInt('0')  end;


                    fieldbyname('code_cmpts').Value  := CodeCmptS;
                    fieldbyname('code_cmptd').Value := CodeCmptD;

                    if (LowerCase(ModePaieTransferGCbx.Text)='espèce') OR (LowerCase(ModePaieTransferGCbx.Text)='espece') then
                    begin
                     FieldValues['code_mdpai']:=1 ;
                    end;
                     if (LowerCase(ModePaieTransferGCbx.Text)='chèque') OR (LowerCase(ModePaieTransferGCbx.Text)='cheque') then
                    begin
                     FieldValues['code_mdpai']:=2 ;
                    end;
                    if (LowerCase(ModePaieTransferGCbx.Text)='à terme' ) OR (LowerCase(ModePaieTransferGCbx.Text)='a terme' )
                       OR (LowerCase(ModePaieTransferGCbx.Text)='À terme' ) then
                    begin
                     FieldValues['code_mdpai']:=3 ;
                    end;

                    Post;

                 end;


          //------------- this is for dicassment--------------------------------
              begin

//                MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where code_transfer = '
                + IntToStr(DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger) + ' AND decaiss_ocb <> ''0'' ' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                MainForm.Opt_cas_bnk_CaisseTable.Edit;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_transfer']:=DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Transférer depuis le compte '+CompteSourceTransfeGCbx.Text;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= MainForm.UserNameLbl.Caption;;
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));

                 if (LowerCase(ModePaieTransferGCbx.Text)='espèce') OR (LowerCase(ModePaieTransferGCbx.Text)='espece') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ModePaieTransferGCbx.Text)='chèque') OR (LowerCase(ModePaieTransferGCbx.Text)='cheque') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ModePaieTransferGCbx.Text)='à terme' ) OR (LowerCase(ModePaieTransferGCbx.Text)='a terme' )
                   OR (LowerCase(ModePaieTransferGCbx.Text)='À terme' ) then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.SQLQuery.FieldByName('nature_cmpt').AsBoolean;
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_transfer']:= CodeTrans;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=StrToInt (MainForm.UserIDLbl.Caption);

                MainForm.Opt_cas_bnk_CaisseTable.Post;


              end;

          //------------- this is for encassment--------------------------------
              begin

                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where code_transfer = '
                +IntToStr(DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger)+ ' AND encaiss_ocb <> ''0'' ' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                MainForm.Opt_cas_bnk_CaisseTable.Edit;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_transfer']:=DataModuleF.Transfer_comptesTable.FieldByName('code_transfer').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateOf(Today);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Transférer vers le compte '+CompteDisTransfeGCbx.Text;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= MainForm.UserNameLbl.Caption;;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToFloat(StringReplace(TranferTransferEdt.Text, #32, '', [rfReplaceAll]));

                 if (LowerCase(ModePaieTransferGCbx.Text)='espèce') OR (LowerCase(ModePaieTransferGCbx.Text)='espece') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ModePaieTransferGCbx.Text)='chèque') OR (LowerCase(ModePaieTransferGCbx.Text)='cheque') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ModePaieTransferGCbx.Text)='à terme' ) OR (LowerCase(ModePaieTransferGCbx.Text)='a terme' )
                   OR (LowerCase(ModePaieTransferGCbx.Text)='À terme' ) then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.FDQuery2.FieldByName('code_cmpt').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.FDQuery2.FieldByName('nature_cmpt').AsBoolean;
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_transfer']:= CodeTrans;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=StrToInt (MainForm.UserIDLbl.Caption);

                MainForm.Opt_cas_bnk_CaisseTable.Post;

              end;


                MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                MainForm.Opt_cas_bnk_BankTable.Refresh;


                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                MainForm.Mode_paiementTable.Active:=false;
                MainForm.Mode_paiementTable.SQL.Clear;
                MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
                MainForm.Mode_paiementTable.Active:=True;
                MainForm.Mode_paiementTable.EnableControls;


                MainForm.SQLQuery.Active:=false;
                MainForm.SQLQuery.SQL.Clear;

                MainForm.FDQuery2.Active:=false;
                MainForm.FDQuery2.SQL.Clear;

                    //----------------------------------------------------------
                  end;


                 DataModuleF.Transfer_comptesTable.Close;
                 DataModuleF.Transfer_comptesTable.Open;
                 DataModuleF.Transfer_comptesTable.Last;
                 MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                 MainForm.Opt_cas_bnk_BankTable.Refresh;
                 MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

                 if Assigned(CaisseListF) then
                 begin
                  CaisseListF.Repaint;
                 end;

                 if Assigned(BankListF) then
                 begin
                  BankListF.Repaint;
                 end;

                     begin
                    FSplash := TFSplash.Create(TransferComptesGestionF);
                    try
                      FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
                      FSplash.Top := 0;
                      AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR  AW_ACTIVATE);
                      sleep(250);
                      AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
                    finally
                      FSplash.free;
                    end;
                  end;

                  sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                  Close;

          //--------------------------------------------------------------------
         end else
             begin
                CompteSourceTransfeGCbx.SetFocus;
                CompteSourceTransfeGCbx.StyleElements:= [];
//                RequiredCompteSourceTransfeGlbl.Visible:= True;
                CompteSourceTransfeErrorP.Visible:= True;

                CompteDisTransfeGCbx.SetFocus;
                CompteDisTransfeGCbx.StyleElements:= [];
//                RequiredCompteDisTransfeGlbl.Visible:= True;
                CompteDisTransfeErrorP.Visible:= True;
             end;

       end else
          begin
            ModePaieTransferGCbx.SetFocus;
            ModePaieTransferGCbx.StyleElements:= [];
            RequiredMPGlbl.Visible:= True;
            MPTransferGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKTransferGBtn.Enabled := False;
            OKTransferGBtn.ImageIndex := 18;
          end;

      end else
          begin
            CompteDisTransfeGCbx.SetFocus;
            CompteDisTransfeGCbx.StyleElements:= [];
            RequiredCompteDisTransfeGlbl.Visible:= True;
            CompteDisTransfeErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKTransferGBtn.Enabled := False;
            OKTransferGBtn.ImageIndex := 18;

          end;

//     end else
//         begin
////          RestTransferEdt.SetFocus;
////          RestTransferEdt.StyleElements:= [];
////          RestTransferEdt.BorderStyle:= bsNone;
////          label12.Font.Color:= $008080FF;
////          RestTransferErrorP.Visible:= True;
////          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
////          OKTransferGBtn.Enabled := False;
////          OKTransferGBtn.ImageIndex := 18;
//       end;

    end else
        begin
          TranferTransferEdt.SetFocus;
          TranferTransferEdt.StyleElements:= [];
          TranferTransferEdt.BorderStyle:= bsNone;
          label13.Font.Color:= $008080FF;
          TranferTransferErrorP.Visible:= True;
          sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          OKTransferGBtn.Enabled := False;
          OKTransferGBtn.ImageIndex := 18;
        end;

  end else
      begin
        CompteSourceTransfeGCbx.SetFocus;
        CompteSourceTransfeGCbx.StyleElements:= [];
        RequiredCompteSourceTransfeGlbl.Visible:= True;
        CompteSourceTransfeErrorP.Visible:= True;
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        OKTransferGBtn.Enabled := False;
        OKTransferGBtn.ImageIndex := 18;
      end;
end;

end.
