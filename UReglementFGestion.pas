unit UReglementFGestion;

interface

uses
  Winapi.Windows,MMSystem,DateUtils,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  AdvToolBtn;

type
  TReglementFGestionF = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    NumRegFGEdt: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DateRegFGD: TDateTimePicker;
    ObserRegFGLbl: TLabel;
    ObserRegFGMem: TMemo;
    RequiredFourGlbl: TLabel;
    AddFourRegFGBtn: TAdvToolButton;
    NameFourGErrorP: TPanel;
    FournisseurRegFGCbx: TComboBox;
    AddCompteRegFGBtn: TAdvToolButton;
    CompteRegFGCbx: TComboBox;
    Label3: TLabel;
    AddModePaieRegFGBtn: TAdvToolButton;
    ModePaieRegFGCbx: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    NChequeRegFGCbx: TEdit;
    Shape4: TShape;
    OKRegFGBtn: TAdvToolButton;
    CancelRegFGBtn: TAdvToolButton;
    label13: TLabel;
    Panel1: TPanel;
    VerRegFGEdt: TEdit;
    label12: TLabel;
    RegFGFourNEWCredit: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    RegFGFourOLDCredit: TLabel;
    RegFGErrorP: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelRegFGBtnClick(Sender: TObject);
    procedure FournisseurRegFGCbxDropDown(Sender: TObject);
    procedure ModePaieRegFGCbxDropDown(Sender: TObject);
    procedure CompteRegFGCbxDropDown(Sender: TObject);
    procedure FournisseurRegFGCbxChange(Sender: TObject);
    procedure ModePaieRegFGCbxClick(Sender: TObject);
    procedure CompteRegFGCbxChange(Sender: TObject);
    procedure VerRegFGEdtChange(Sender: TObject);
    procedure VerRegFGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure OKRegFGBtnClick(Sender: TObject);
    procedure FournisseurRegFGCbxExit(Sender: TObject);
    procedure AddFourRegFGBtnClick(Sender: TObject);
    procedure AddModePaieRegFGBtnClick(Sender: TObject);
    procedure AddCompteRegFGBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReglementFGestionF: TReglementFGestionF;

implementation

uses
  UClientGestion, UMainF, UBonRecGestion, UFournisseurList, UFournisseurGestion,
  USplashAddUnite, USplashAddCompte;

{$R *.dfm}

procedure TReglementFGestionF.FormShow(Sender: TObject);
begin
GrayForms;
    if tag = 0 then
    begin
    RegFGFourOLDCredit.Caption :=      FloatToStrF(StrToFloat(RegFGFourOLDCredit.Caption),ffNumber,14,2) ;
    RegFGFourNEWCredit.Caption :=      FloatToStrF(StrToFloat(RegFGFourNEWCredit.Caption),ffNumber,14,2) ;
    end;

    if Tag = 1 then
    begin
      FournisseurRegFGCbxChange(Sender);
      ReglementFGestionF.VerRegFGEdt.SetFocus;
    end;

end;

procedure TReglementFGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
NormalForms;
end;

procedure TReglementFGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

  Close;

 end;
end;

procedure TReglementFGestionF.CancelRegFGBtnClick(Sender: TObject);
begin
close;
end;

procedure TReglementFGestionF.FournisseurRegFGCbxDropDown(Sender: TObject);
var
I : Integer;
  begin

          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur '  ;
          MainForm.FournisseurTable.Active:=True;

       MainForm.FournisseurTable.Refresh;
       FournisseurRegFGCbx.Items.Clear;
       MainForm.FournisseurTable.first;


     for I := 0 to MainForm.FournisseurTable.RecordCount - 1 do
     if MainForm.FournisseurTable.FieldByName('nom_f').IsNull = False then
     begin
          FournisseurRegFGCbx.Items.Add(MainForm.FournisseurTable.FieldByName('nom_f').AsString);
       MainForm.FournisseurTable.Next;
      end;
  end;


procedure TReglementFGestionF.ModePaieRegFGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieRegFGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieRegFGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
end;

procedure TReglementFGestionF.CompteRegFGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteRegFGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteRegFGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TReglementFGestionF.FournisseurRegFGCbxChange(Sender: TObject);
begin
     if FournisseurRegFGCbx.Text<>'' then
     begin
      ModePaieRegFGCbxDropDown(Self);
      ModePaieRegFGCbx.ItemIndex:=0;
      ModePaieRegFGCbxClick(Self) ;
      OKRegFGBtn.Enabled:= True;
      OKRegFGBtn.ImageIndex := 17;
     end else
         begin
        
          OKRegFGBtn.Enabled:= False;
          OKRegFGBtn.ImageIndex := 18;
         end;
end;

procedure TReglementFGestionF.ModePaieRegFGCbxClick(Sender: TObject);
begin
 if ModePaieRegFGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieRegFGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteRegFGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;
end;

procedure TReglementFGestionF.CompteRegFGCbxChange(Sender: TObject);
begin
CompteRegFGCbx.AutoDropDown:=True;
end;

procedure TReglementFGestionF.VerRegFGEdtChange(Sender: TObject);
var TOTAL,VER,ResteVersement : Currency;
begin
    if VerRegFGEdt.Text<>'' then
     begin
      OKRegFGBtn.Enabled := true;
      OKRegFGBtn.ImageIndex := 17;
      VerRegFGEdt.BorderStyle:= bsSingle;
      VerRegFGEdt.StyleElements:= [seClient,seBorder];
      RegFGErrorP.Visible:= False;
      TOTAL:=StrToFloat(StringReplace(RegFGFourOLDCredit.Caption, #32, '', [rfReplaceAll]));
      VER  :=StrToFloat(StringReplace(VerRegFGEdt.Text, #32, '', [rfReplaceAll]));

      if VerRegFGEdt.Text<>'' then
      begin

       ResteVersement:=  (Total - VER) ;


         RegFGFourNEWCredit.Caption := FloatToStrF(ResteVersement,ffNumber,14,2);
      end else
          begin
           RegFGFourNEWCredit.Caption:=FloatToStrF(TOTAL,ffNumber,14,2);
          end;

     end;
end;

procedure TReglementFGestionF.VerRegFGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back),Char(VK_RETURN)];
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

  if key = #13 then

begin
 key := #0;
 OKRegFGBtnClick(Sender);

end;

end;

procedure TReglementFGestionF.OKRegFGBtnClick(Sender: TObject);
var CodeOCB,CodeF,CodeRF,CodeBR :Integer;
    OLDCreditF : Currency;
begin
  if FournisseurRegFGCbx.Text<>'' then
  begin


    if (VerRegFGEdt.Text <> '' ) AND (VerRegFGEdt.Text <> '0' ) AND ((StrToCurr(StringReplace(VerRegFGEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then

        begin

          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr(ReglementFGestionF.FournisseurRegFGCbx.Text )+')'  ;
          MainForm.FournisseurTable.Active:=True;
          CodeF:= MainForm.FournisseurTable.FieldValues['code_f'] ;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ReglementFGestionF.ModePaieRegFGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(ReglementFGestionF.CompteRegFGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;



               if Tag = 0 then
         begin



          if NOT (MainForm.RegfournisseurTable.IsEmpty) then
          begin
          MainForm.RegfournisseurTable.Last;
          CodeRF:= MainForm.RegfournisseurTable.FieldValues['code_rf'] + 1;
          end else
              begin
               CodeRF:= 1;
              end;



          MainForm.RegfournisseurTable.Append;
          MainForm.RegfournisseurTable.FieldValues['code_rf']:= CodeRF;
          MainForm.RegfournisseurTable.FieldValues['nom_rf']:= NumRegFGEdt.Caption;
          MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
          MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
          MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
          MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
          MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
          MainForm.RegfournisseurTable.FieldValues['obser_rf']:= ReglementFGestionF.ObserRegFGMem.Text;
          MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= ReglementFGestionF.NChequeRegFGCbx.Text;
          MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);

          MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 1;


          MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(VerRegFGEdt.Text, #32, '', [rfReplaceAll]));


          if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='espèce') OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='espece') then
          begin
           MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='chèque') OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='cheque') then
          begin
           MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='à terme' ) OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='a terme' )
             OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='À terme' ) then
          begin
           MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
          end;

          MainForm.RegfournisseurTable.Post;

         end else
             begin
                MainForm.RegfournisseurTable.Edit;
                MainForm.RegfournisseurTable.FieldValues['nom_rf']:= NumRegFGEdt.Caption;
                MainForm.RegfournisseurTable.FieldValues['code_f']:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
                MainForm.RegfournisseurTable.FieldValues['date_rf']:= DateOf(Today);
                MainForm.RegfournisseurTable.FieldValues['time_rf']:=TimeOf(Now);
                MainForm.RegfournisseurTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.RegfournisseurTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                MainForm.RegfournisseurTable.FieldValues['obser_rf']:= ReglementFGestionF.ObserRegFGMem.Text;
                MainForm.RegfournisseurTable.FieldValues['num_cheque_rf']:= ReglementFGestionF.NChequeRegFGCbx.Text;
                MainForm.RegfournisseurTable.FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);

                MainForm.RegfournisseurTable.FieldValues['bon_or_no_rf']:= 1;


                MainForm.RegfournisseurTable.FieldByName('montver_rf').AsCurrency:=StrToCurr(StringReplace(VerRegFGEdt.Text, #32, '', [rfReplaceAll]));


                if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='espèce') OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='espece') then
                begin
                 MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='chèque') OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='cheque') then
                begin
                 MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='à terme' ) OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='a terme' )
                   OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='À terme' ) then
                begin
                 MainForm.RegfournisseurTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.RegfournisseurTable.Post;

             end;
          MainForm.RegfournisseurTable.Refresh;
//          MainForm.RegfournisseurTable.Open;

          MainForm.FournisseurTable.Edit;
          MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency:=
          ((StrToCurr(StringReplace(RegFGFourNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.FournisseurTable.Post;


          MainForm.FournisseurTable.Active:=false;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

          //--- this is for adding the money to the caisse----
         begin

          MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
          MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
          MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
          MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk' ;
          MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


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
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Fournisseur Pièce N° '+ReglementFGestionF.NumRegFGEdt.Caption;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ReglementFGestionF.FournisseurRegFGCbx.Text;
      //      MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToCurr(StringReplace(VerVersementSEdt.Text, #32, '', [rfReplaceAll]));
           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToCurr(StringReplace(VerRegFGEdt.Text, #32, '', [rfReplaceAll]));

             if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='espèce') OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='espece') then
            begin
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
            end;
             if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='chèque') OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='cheque') then
            begin
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
            end;
            if (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='à terme' ) OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='a terme' )
               OR (LowerCase(ReglementFGestionF.ModePaieRegFGCbx.Text)='À terme' ) then
            begin
             MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
            end;

            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
            MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_rf']:= MainForm.RegfournisseurTable.FieldByName('code_rf').AsInteger;

            MainForm.Opt_cas_bnk_CaisseTable.Post;
            MainForm.Opt_cas_bnk_CaisseTable.Refresh;
            MainForm.Opt_cas_bnk_BankTable.Refresh;


            MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
            MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
            MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
            MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

         end;

          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement' ;
          MainForm.Mode_paiementTable.Active:=True;
          MainForm.Mode_paiementTable.EnableControls;

          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte' ;
          MainForm.CompteTable.Active:=True;
          MainForm.CompteTable.EnableControls;

          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          Close;



                end else
            begin
              RegFGErrorP.Visible:= True;
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              OKRegFGBtn.Enabled := False;
              OKRegFGBtn.ImageIndex := 18;
              VerRegFGEdt.SetFocus;
            end;






  end else
      begin

      FournisseurRegFGCbx.SetFocus;
 //     FournisseurRegFGCbx.StyleElements:= [];
      RequiredFourGlbl.Visible:= True;
      NameFourGErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKRegFGBtn.Enabled := False;
      OKRegFGBtn.ImageIndex := 18;
      end;
end;

procedure TReglementFGestionF.FournisseurRegFGCbxExit(Sender: TObject);
var CodeF: Integer;
OLDCreditC,RegFCreditF,OLDCreditFV,OLDCreditFINI : Currency;
begin

  if FournisseurRegFGCbx.Text <> '' then
    begin
     FournisseurRegFGCbxChange(Sender);
      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER('+ QuotedStr( FournisseurRegFGCbx.Text )+')'  ;
      MainForm.FournisseurTable.Active:=True;
      OLDCreditFINI:=MainForm.FournisseurTable.FieldByName('oldcredit_f').AsCurrency;

      if (MainForm.FournisseurTable.IsEmpty) then
      begin
       FournisseurRegFGCbx.Text := '';
       RegFGFourNEWCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       RegFGFourNEWCredit.Caption:=RegFGFourOLDCredit.Caption;
       exit;
      end;
      CodeF:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;

      MainForm.Bona_recTableCredit.DisableControls;
      MainForm.Bona_recTableCredit.Active:=false;
      MainForm.Bona_recTableCredit.SQL.Clear;
      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec WHERE valider_barec = true AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_barec '  ;
      MainForm.Bona_recTableCredit.Active:=True;


      while NOT (MainForm.Bona_recTableCredit.Eof) do
     begin
     OLDCreditC := OLDCreditC + MainForm.Bona_recTableCredit.FieldValues['MontantRes'];
     MainForm.Bona_recTableCredit.Next;
     end;
      MainForm.Bona_recTableCredit.EnableControls;



      MainForm.RegfournisseurTable.DisableControls;
      MainForm.RegfournisseurTable.Active:=false;
      MainForm.RegfournisseurTable.SQL.Clear;
      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur WHERE bon_or_no_rf = 1 AND code_f = '+ IntToStr( CodeF )+' ORDER BY code_rf '  ;
      MainForm.RegfournisseurTable.Active:=True;

     while NOT (MainForm.RegfournisseurTable.Eof) do
     begin
     RegFCreditF := RegFCreditF + MainForm.RegfournisseurTable.FieldValues['montver_rf'];
     MainForm.RegfournisseurTable.Next;
     end;


      if NOT (MainForm.Bona_recTableCredit.IsEmpty ) OR NOT (MainForm.RegfournisseurTable.IsEmpty ) OR NOT (OLDCreditFINI = 0) then
      begin
       MainForm.Bona_recTableCredit.last;
       RegFGFourOLDCredit.Caption:= CurrToStrF(((OLDCreditC - RegFCreditF) + OLDCreditFINI),ffNumber,2) ;
        end else
        begin
         RegFGFourOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
        end;

      MainForm.Bona_recTableCredit.DisableControls;
      MainForm.Bona_recTableCredit.Active:=false;
      MainForm.Bona_recTableCredit.SQL.Clear;
      MainForm.Bona_recTableCredit.SQL.Text:='Select * FROM bona_rec '  ;
      MainForm.Bona_recTableCredit.Active:=True;
      MainForm.Bona_recTableCredit.last;
      MainForm.Bona_recTableCredit.EnableControls;

      MainForm.FournisseurTable.Active:=false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='Select * FROM fournisseur' ;
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls;


      MainForm.RegfournisseurTable.Active:=false;
      MainForm.RegfournisseurTable.SQL.Clear;
      MainForm.RegfournisseurTable.SQL.Text:='Select * FROM regfournisseur '  ;
      MainForm.RegfournisseurTable.Active:=True;
      MainForm.RegfournisseurTable.EnableControls;

    end else
    begin

     end;

end;

procedure TReglementFGestionF.AddFourRegFGBtnClick(Sender: TObject);
begin
FournisseurListF.AddFournisseursBtnClick(Sender);
FournisseurGestionF.OKFournisseurGBtn.Tag := 5 ;
end;

procedure TReglementFGestionF.AddModePaieRegFGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(self);
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
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 26 ;
end;

procedure TReglementFGestionF.AddCompteRegFGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(ReglementFGestionF);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 5 ;
end;

end.
