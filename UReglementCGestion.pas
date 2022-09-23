unit UReglementCGestion;

interface

uses
  Winapi.Windows,MMSystem,DateUtils,DBGridEh,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, AdvToolBtn,
  Vcl.ComCtrls;

type
  TReglementCGestionF = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    NumRegCGEdt: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DateRegCGD: TDateTimePicker;
    ObserRegCGLbl: TLabel;
    ObserRegCGMem: TMemo;
    RequiredRegCGlbl: TLabel;
    AddFourRegCGBtn: TAdvToolButton;
    NameClientGErrorP: TPanel;
    ClientRegCGCbx: TComboBox;
    AddCompteRegCGBtn: TAdvToolButton;
    CompteRegCGCbx: TComboBox;
    Label3: TLabel;
    AddModePaieRegCGBtn: TAdvToolButton;
    ModePaieRegCGCbx: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    NChequeRegCGCbx: TEdit;
    Shape4: TShape;
    OKRegCGBtn: TAdvToolButton;
    CancelRegCGBtn: TAdvToolButton;
    label13: TLabel;
    Panel1: TPanel;
    VerRegCGEdt: TEdit;
    label12: TLabel;
    RegCGClientNEWCredit: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    RegCGClientOLDCredit: TLabel;
    RegCGErrorP: TPanel;
    ListClientregCGBtn: TAdvToolButton;
    Label21: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelRegCGBtnClick(Sender: TObject);
    procedure ClientRegCGCbxDropDown(Sender: TObject);
    procedure ModePaieRegCGCbxDropDown(Sender: TObject);
    procedure CompteRegCGCbxDropDown(Sender: TObject);
    procedure ClientRegCGCbxChange(Sender: TObject);
    procedure ClientRegCGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure ModePaieRegCGCbxClick(Sender: TObject);
    procedure CompteRegCGCbxChange(Sender: TObject);
    procedure ClientRegCGCbxExit(Sender: TObject);
    procedure VerRegCGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure VerRegCGEdtChange(Sender: TObject);
    procedure OKRegCGBtnClick(Sender: TObject);
    procedure AddFourRegCGBtnClick(Sender: TObject);
    procedure AddModePaieRegCGBtnClick(Sender: TObject);
    procedure AddCompteRegCGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListClientregCGBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReglementCGestionF: TReglementCGestionF;

implementation

uses
   Contnrs,UClientGestion, UMainF, UClientsList, USplashAddUnite, USplashAddCompte,
  UReglementCList, UFastProduitsList;

{$R *.dfm}


var
  gGrayForms: TComponentList;

procedure GrayFormsRegC;
var
   loop : integer;
   uScrnFrm : TForm;
   UForm : TForm;
//   uPoint : TPoint;
   uScreens : TList;

begin
   if not assigned(gGrayForms) then
   begin
      gGrayForms := TComponentList.Create;
      gGrayForms.OwnsObjects := true;

      uScreens := TList.create;
      try
         for loop := 0 to 0 do
            uScreens.Add(Screen.Forms[loop]);

         for loop := 0 to 0 do

         begin
            uScrnFrm := uScreens[loop];

            if uScrnFrm.Visible then
            begin
               UForm := TForm.Create(uScrnFrm);
               UForm.WindowState:= wsMaximized;
               gGrayForms.Add(UForm);
               UForm.Position := MainForm.Position;
               UForm.AlphaBlend := true;
               UForm.AlphaBlendValue := 80;
               UForm.Color := clBlack;
               UForm.BorderStyle := bsNone;
               UForm.StyleElements:= [];
               UForm.Enabled := false;
               UForm.BoundsRect := uScrnFrm.BoundsRect;
               SetWindowLong(UForm.Handle, GWL_HWNDPARENT, uScrnFrm.Handle);
               SetWindowPos(UForm.handle, uScrnFrm.handle, 0,0,0,0, SWP_NOSIZE or SWP_NOMOVE);
               UForm.Visible := true;
            end;
         end;
      finally
         uScreens.free;
      end;
   end;
end;

procedure NormalFormsRegC;
begin
  FreeAndNil(gGrayForms);
end;

procedure TReglementCGestionF.FormShow(Sender: TObject);
var      RegCGClientOLDCreditDOUBLE,VerRegCGEdtDOUBLE,RegCGClientNEWCreditDOUBLE : Double;
begin

    if Tag = 0 then
    begin
    DateRegCGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
    RegCGClientOLDCredit.Caption :=      FloatToStrF(StrToFloat(RegCGClientOLDCredit.Caption),ffNumber,14,2) ;
    RegCGClientNEWCredit.Caption :=      FloatToStrF(StrToFloat(RegCGClientNEWCredit.Caption),ffNumber,14,2) ;
    end;


    if Tag = 1 then
    begin
      ClientRegCGCbxChange(Sender);

       RegCGClientOLDCreditDOUBLE:=StrToFloat (StringReplace(RegCGClientOLDCredit.Caption, #32, '', [rfReplaceAll]));
       VerRegCGEdtDOUBLE         :=StrToFloat (StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));

      VerRegCGEdt.SetFocus;
      RegCGClientOLDCredit.Caption:= FloatToStrF(( RegCGClientOLDCreditDOUBLE + VerRegCGEdtDOUBLE),ffNumber,14,2) ;

      RegCGClientNEWCreditDOUBLE :=StrToFloat (StringReplace(RegCGClientOLDCredit.Caption, #32, '', [rfReplaceAll]));

      RegCGClientNEWCredit.Caption:= FloatToStrF(( RegCGClientNEWCreditDOUBLE - VerRegCGEdtDOUBLE),ffNumber,14,2) ;


      ClientRegCGCbx.Enabled:= False;
      AddFourRegCGBtn.Enabled:= False;
      ListClientregCGBtn.Enabled:= False;
    end;

end;

procedure TReglementCGestionF.ListClientregCGBtnClick(Sender: TObject);
Var I:Integer;
begin
//-------- use this code to start creating th form-----//
  FastProduitsListF := TFastProduitsListF.Create(Application);

  MainForm.FDQuery2.Active:=False;
  MainForm.FDQuery2.SQL.Clear;
  MainForm.FDQuery2.SQL.TExt:= 'SELECT code_c,nom_c,activite_c,fix_c,mob_c,adr_c,credit_c FROM client';
  MainForm.FDQuery2.IndexFieldNames:='code_c';
  MainForm.FDQuery2.Active:=True;

  for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
  begin
    FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
  end;
    
  //Change the dataSet
  FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N�';
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

  FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Client';
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activit�';
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='fix_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='T�l�phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='mob_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='T�l�phone';
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 130;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='adr_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Adresse';
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 150;;

  FastProduitsListF.ProduitsListDBGridEh.Columns[6].FieldName:='credit_c';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Title.Caption:='Cr�dit';
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Visible:= True;
  FastProduitsListF.ProduitsListDBGridEh.Columns[6].Width:= 130;;
  
  
  FastProduitsListF.ProduitsListDBGridEh.Refresh;

//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

  FastProduitsListF.Caption:= 'Liste des Clients';
  FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
  FastProduitsListF.ProduitsListDBGridEh.Options:=
  FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
  FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
  FastProduitsListF.ResearchProduitsEdt.Width:= 431;

  FastProduitsListF.Tag := 4;
  FastProduitsListF.Show;
  FastProduitsListF.ResearchProduitsEdt.SetFocus;

end;

procedure TReglementCGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FreeAndNil(ReglementCGestionF);
end;

procedure TReglementCGestionF.FormCreate(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';

  GrayFormsRegC;
end;

procedure TReglementCGestionF.FormDestroy(Sender: TObject);
begin
  Application.UpdateFormatSettings := false;
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ThousandSeparator := ' ';
  FormatSettings.CurrencyDecimals := 2;
  FormatSettings.DateSeparator:= '/';


  NormalFormsRegC;
end;

procedure TReglementCGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

  CancelRegCGBtnClick(Sender);

 end;

 if key = #13 then

  begin
   key := #0;
   OKRegCGBtnClick(Sender);

  end;
end;

procedure TReglementCGestionF.CancelRegCGBtnClick(Sender: TObject);
begin
FreeAndNil(ReglementCGestionF);
end;

procedure TReglementCGestionF.ClientRegCGCbxDropDown(Sender: TObject);
var
I : Integer;
  begin

          MainForm.FDQuery2.Active:=false;
          MainForm.FDQuery2.SQL.Clear;
          MainForm.FDQuery2.SQL.Text:='Select nom_c FROM client ORDER by code_c'  ;
          MainForm.FDQuery2.Active:=True;

       MainForm.FDQuery2.Refresh;
       ClientRegCGCbx.Items.Clear;
       MainForm.FDQuery2.first;

     for I := 0 to MainForm.FDQuery2.RecordCount - 1 do
     if MainForm.FDQuery2.FieldByName('nom_c').IsNull = False then
     begin
          ClientRegCGCbx.Items.Add(MainForm.FDQuery2.FieldByName('nom_c').AsWideString);
       MainForm.FDQuery2.Next;
      end;
          MainForm.FDQuery2.Active:=false;
          MainForm.FDQuery2.SQL.Clear;
end;

procedure TReglementCGestionF.ModePaieRegCGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.Mode_paiementTable.Active:=False;
      MainForm.Mode_paiementTable.SQL.Clear;
      MainForm.Mode_paiementTable.SQL.Text:= 'SELECT * FROM mode_paiement ';
      MainForm.Mode_paiementTable.Active := True;

      MainForm.Mode_paiementTable.Refresh;
      ModePaieRegCGCbx.Items.Clear;

      MainForm.Mode_paiementTable.first;
     begin

     for I := 0 to MainForm.Mode_paiementTable.RecordCount - 1 do
     if ( MainForm.Mode_paiementTable.FieldByName('nom_mdpai').IsNull = False )  then
     begin
       ModePaieRegCGCbx.Items.Add(MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString);
       MainForm.Mode_paiementTable.Next;
      end;
     end;
end;

procedure TReglementCGestionF.CompteRegCGCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CompteRegCGCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

     for I := 0 to MainForm.CompteTable.RecordCount - 1 do
     if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
     begin
       CompteRegCGCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
       MainForm.CompteTable.Next;
      end;
     end;
end;

procedure TReglementCGestionF.ClientRegCGCbxChange(Sender: TObject);
begin
     if ClientRegCGCbx.Text<>'' then
     begin
      if Tag = 0 then
      begin
        ModePaieRegCGCbxDropDown(Self);
        ModePaieRegCGCbx.ItemIndex:=0;
        ModePaieRegCGCbxClick(Self) ;
      end;

      OKRegCGBtn.Enabled:= True;
      OKRegCGBtn.ImageIndex := 17;

      ClientRegCGCbxExit(Sender);

     end else
         begin

          OKRegCGBtn.Enabled:= False;
          OKRegCGBtn.ImageIndex := 18;
         end;


end;

procedure TReglementCGestionF.ClientRegCGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
    key :=#0;
    SelectNext(ActiveControl as TWinControl, true, true);
    end;
end;

procedure TReglementCGestionF.ModePaieRegCGCbxClick(Sender: TObject);
begin
if ModePaieRegCGCbx.Text <> '' then
  begin

    MainForm.Mode_paiementTable.DisableControls;
    MainForm.Mode_paiementTable.Active:=false;
    MainForm.Mode_paiementTable.SQL.Clear;
    MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+QuotedStr(ModePaieRegCGCbx.Text)+')' +'ORDER BY code_mdpai'  ;
    MainForm.Mode_paiementTable.Active:=True;
    MainForm.Mode_paiementTable.EnableControls;

    MainForm.CompteTable.DisableControls;
    MainForm.CompteTable.Active:=false;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt = '+IntToStr( MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger)+'ORDER BY code_cmpt'  ;
    MainForm.CompteTable.Active:=True;
    if NOT (MainForm.CompteTable.IsEmpty) then
    begin
    CompteRegCGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'] ;
    end;
    MainForm.CompteTable.EnableControls;

  end;
end;

procedure TReglementCGestionF.CompteRegCGCbxChange(Sender: TObject);
begin
CompteRegCGCbx.AutoDropDown:=True;
end;

procedure TReglementCGestionF.ClientRegCGCbxExit(Sender: TObject);
var CodeC: Integer;
OLDCreditC,RegCCreditC,OLDCreditCINI : Double;
begin

  if ClientRegCGCbx.Text <> '' then
    begin
//     ClientRegCGCbxChange(Sender);
//      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c,oldcredit_c ,credit_c,activ_c FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( ClientRegCGCbx.Text )+')'  ;
      MainForm.SQLQuery.Active:=True;
      OLDCreditCINI:=MainForm.SQLQuery.FieldByName('credit_c').AsCurrency;

      if (MainForm.SQLQuery.IsEmpty) then
      begin
       ClientRegCGCbx.Text := '';
       RegCGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
       RegCGClientNEWCredit.Caption:=RegCGClientOLDCredit.Caption;
       exit;
      end;
      CodeC:= MainForm.SQLQuery.FieldByName('code_c').AsInteger ;

//      MainForm.Bonv_livTableCredit.DisableControls;
//      MainForm.Bonv_livTableCredit.Active:=false;
//      MainForm.Bonv_livTableCredit.SQL.Clear;
//      MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv WHERE valider_bvliv = true AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_bvliv '  ;
//      MainForm.Bonv_livTableCredit.Active:=True;
//
//      while NOT (MainForm.Bonv_livTableCredit.Eof) do
//     begin
//     OLDCreditC := OLDCreditC + MainForm.Bonv_livTableCredit.FieldValues['MontantRes'];
//     MainForm.Bonv_livTableCredit.Next;
//     end;
//      MainForm.Bonv_livTableCredit.EnableControls;
//
//
//      MainForm.SQLQuery.DisableControls;
//      MainForm.SQLQuery.Active:=false;
//      MainForm.SQLQuery.SQL.Clear;
//      MainForm.SQLQuery.SQL.Text:='Select * FROM regclient WHERE bon_or_no_rc = 1 AND code_c = '+ IntToStr( CodeC )+' ORDER BY code_rc '  ;
//      MainForm.SQLQuery.Active:=True;
//
//     while NOT (MainForm.SQLQuery.Eof) do
//     begin
//     RegCCreditC := RegCCreditC + MainForm.SQLQuery.FieldValues['montver_rc'];
//     MainForm.SQLQuery.Next;
//     end;



      if NOT (OLDCreditCINI = 0)  then
      begin
//       MainForm.Bonv_livTableCredit.last;
       RegCGClientOLDCredit.Caption:= CurrToStrF((OLDCreditCINI ),ffNumber,2) ;
        end else
        begin
         RegCGClientOLDCredit.Caption:= CurrToStrF(0,ffNumber,2) ;
        end;

//      MainForm.Bonv_livTableCredit.DisableControls;
//      MainForm.Bonv_livTableCredit.Active:=false;
//      MainForm.Bonv_livTableCredit.SQL.Clear;
//      MainForm.Bonv_livTableCredit.SQL.Text:='Select * FROM bonv_liv '  ;
//      MainForm.Bonv_livTableCredit.Active:=True;
//      MainForm.Bonv_livTableCredit.last;
//      MainForm.Bonv_livTableCredit.EnableControls;


      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;

//      MainForm.ClientTable.Active:=false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
//      MainForm.ClientTable.Active:=True;
//      MainForm.ClientTable.EnableControls;


    end else
    begin
//     ClientRegCGCbx.Text:= 'Comptoir';
////     ClientBonLivGCbxEnter(Sender) ;
//     CompteRegCGCbxDropDown(Sender);
//     ModePaieRegCGCbxDropDown(Sender);
//     ModePaieRegCGCbx.ItemIndex:=0;
//     CompteRegCGCbx.ItemIndex:=0;
//
//     RegCGClientOLDCredit.Caption:= FloatToStrF(0,ffNumber,14,2) ;
//     RegCGClientNEWCredit.Caption:=RegCGClientOLDCredit.Caption;
     end;
end;

procedure TReglementCGestionF.VerRegCGEdtKeyPress(Sender: TObject;
  var Key: Char);

const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
   F = [','];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #46;
  end;
  if (Key = '.') AND (Pos(Key, (VerRegCGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TReglementCGestionF.VerRegCGEdtChange(Sender: TObject);
var TOTAL,VER,ResteVersement : Double;
begin
    if VerRegCGEdt.Text<>'' then
     begin
      OKRegCGBtn.Enabled := true;
      OKRegCGBtn.ImageIndex := 17;
      VerRegCGEdt.BorderStyle:= bsSingle;
      VerRegCGEdt.StyleElements:= [seClient,seBorder];
      RegCGErrorP.Visible:= False;
      TOTAL:=StrToFloat(StringReplace(RegCGClientOLDCredit.Caption, #32, '', [rfReplaceAll]));
      VER  :=StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));

      if VerRegCGEdt.Text<>'' then
      begin

       ResteVersement:=  (Total - VER) ;


         RegCGClientNEWCredit.Caption := FloatToStrF(ResteVersement,ffNumber,14,2);
      end else
          begin
           RegCGClientNEWCredit.Caption:=FloatToStrF(TOTAL,ffNumber,14,2);
          end;

     end else
         begin

           RegCGClientNEWCredit.Caption := RegCGClientOLDCredit.Caption;

         end;

end;

procedure TReglementCGestionF.OKRegCGBtnClick(Sender: TObject);
var CodeOCB,CodeF,CodeRF,CodeBR :Integer;
    OLDCreditF : Double;
begin
  if ClientRegCGCbx.Text<>'' then
  begin


    if (VerRegCGEdt.Text <> '' ) AND (VerRegCGEdt.Text <> '0' ) AND ((StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll])))<> 0 ) then

        begin

//          MainForm.SQLQuery.DisableControls;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr(ReglementCGestionF.ClientRegCGCbx.Text )+')'  ;
          MainForm.SQLQuery.Active:=True;
          CodeF:= MainForm.SQLQuery.FieldValues['code_c'] ;


          if  MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1 then
          begin
          MainForm.SQLQuery.Edit;
          MainForm.SQLQuery.FieldByName('credit_c').AsCurrency:=  (MainForm.SQLQuery.FieldByName('credit_c').AsCurrency) -
          ((StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;
          end;

          MainForm.Mode_paiementTable.DisableControls;
          MainForm.Mode_paiementTable.Active:=false;
          MainForm.Mode_paiementTable.SQL.Clear;
          MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE LOWER(nom_mdpai) LIKE LOWER('+ QuotedStr(ReglementCGestionF.ModePaieRegCGCbx.Text )+')'  ;
          MainForm.Mode_paiementTable.Active:=True;

          MainForm.CompteTable.DisableControls;
          MainForm.CompteTable.Active:=false;
          MainForm.CompteTable.SQL.Clear;
          MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE LOWER(nom_cmpt) LIKE LOWER('+ QuotedStr(ReglementCGestionF.CompteRegCGCbx.Text )+')'  ;
          MainForm.CompteTable.Active:=True;


          MainForm.SQLQuery3.DisableControls;
          MainForm.SQLQuery3.Active:=false;
          MainForm.SQLQuery3.SQL.Clear;
          MainForm.SQLQuery3.SQL.Text:='Select * from regclient ORDER BY code_rc'  ;
          MainForm.SQLQuery3.Active:=True;


          if Tag = 0 then
          begin

          if NOT (MainForm.SQLQuery3.IsEmpty) then
          begin
          MainForm.SQLQuery3.Last;
          CodeRF:= MainForm.SQLQuery3.FieldValues['code_rc'] + 1;
          end else
              begin
               CodeRF:= 1;
              end;


            MainForm.SQLQuery3.Append;
            MainForm.SQLQuery3.FieldValues['code_rc']:= CodeRF;
            MainForm.SQLQuery3.FieldValues['nom_rc']:= NumRegCGEdt.Caption;
            MainForm.SQLQuery3.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
            MainForm.SQLQuery3.FieldValues['date_rc']:= DateRegCGD.Date;
            MainForm.SQLQuery3.FieldValues['time_rc']:=TimeOf(Now);
            MainForm.SQLQuery3.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
            MainForm.SQLQuery3.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
            MainForm.SQLQuery3.FieldValues['obser_rc']:= ReglementCGestionF.ObserRegCGMem.Text;
            MainForm.SQLQuery3.FieldValues['num_cheque_rc']:= ReglementCGestionF.NChequeRegCGCbx.Text;
            MainForm.SQLQuery3.FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);

          MainForm.SQLQuery3.FieldValues['bon_or_no_rc']:= 1;


          MainForm.SQLQuery3.FieldByName('montver_rc').AsCurrency:=StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));


          if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='esp�ce') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='espece') then
          begin
           MainForm.SQLQuery3.FieldValues['code_mdpai']:=1 ;
          end;
           if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='ch�que') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='cheque') then
          begin
           MainForm.SQLQuery3.FieldValues['code_mdpai']:=2 ;
          end;
          if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='a terme' )
             OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) then
          begin
           MainForm.SQLQuery3.FieldValues['code_mdpai']:=3 ;
          end;

          MainForm.SQLQuery3.Post;

          end else
              begin
                  MainForm.RegclientTable.Edit;
//                MainForm.RegclientTable.FieldValues['code_rc']:= CodeRF;
                  MainForm.RegclientTable.FieldValues['nom_rc']:= NumRegCGEdt.Caption;
                  MainForm.RegclientTable.FieldValues['code_c']:= MainForm.SQLQuery.FieldByName('code_c').AsInteger;
                  MainForm.RegclientTable.FieldValues['date_rc']:= DateRegCGD.Date;
                  MainForm.RegclientTable.FieldValues['time_rc']:= TimeOf(Now);
                  MainForm.RegclientTable.FieldValues['code_mdpai']:= MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                  MainForm.RegclientTable.FieldValues['code_cmpt']:= MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                  MainForm.RegclientTable.FieldValues['obser_rc']:= ReglementCGestionF.ObserRegCGMem.Text;
                  MainForm.RegclientTable.FieldValues['num_cheque_rc']:= ReglementCGestionF.NChequeRegCGCbx.Text;
                  MainForm.RegclientTable.FieldValues['code_ur']:= StrToInt( MainForm.UserIDLbl.Caption);

                  MainForm.RegclientTable.FieldValues['bon_or_no_rc']:= 1;


                  MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency:=StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));


                  if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='esp�ce') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='espece') then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=1 ;
                  end;
                   if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='ch�que') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='cheque') then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=2 ;
                  end;
                  if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='a terme' )
                     OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) then
                  begin
                   MainForm.RegclientTable.FieldValues['code_mdpai']:=3 ;
                  end;

                  MainForm.RegclientTable.Post;
              end;



          MainForm.RegclientTable.Refresh;
//          MainForm.RegclientTable.Open;

          MainForm.SQLQuery.Edit;
          MainForm.SQLQuery.FieldByName('credit_c').AsCurrency:=
          ((StrToFloat(StringReplace(RegCGClientNEWCredit.Caption, #32, '', [rfReplaceAll]))));
          MainForm.SQLQuery.Post;

          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;
//          MainForm.SQLQuery.SQL.Text:='Select * FROM client' ;
//          MainForm.SQLQuery.Active:=True;
//          MainForm.SQLQuery.EnableControls;

          //--- this is for adding the money to the caisse----
         begin
           if Tag = 0 then
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
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_rc']:= MainForm.SQLQuery3.FieldValues['code_rc'];
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateRegCGD.Date;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Client Pi�ce N� '+ReglementCGestionF.NumRegCGEdt.Caption;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ReglementCGestionF.ClientRegCGCbx.Text;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));
    //           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));

                 if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='esp�ce') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='espece') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='ch�que') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='cheque') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='a terme' )
                   OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=StrToInt (MainForm.UserIDLbl.Caption);

                MainForm.Opt_cas_bnk_CaisseTable.Post;
                MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                MainForm.Opt_cas_bnk_BankTable.Refresh;


                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

           end else
               begin
                  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                  MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk WHERE code_rc = '+IntToStr(MainForm.RegclientTable.FieldValues['code_rc']) ;
                  MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


                MainForm.Opt_cas_bnk_CaisseTable.Edit;
//                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ocb']:= CodeOCB;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_rc']:= MainForm.RegclientTable.FieldValues['code_rc'];
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['date_ocb']:= DateRegCGD.Date;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['time_ocb']:= TimeOf(Now);
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nom_ocb']:= 'Versement au Client Pi�ce N� '+ReglementCGestionF.NumRegCGEdt.Caption;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['third_ocb']:= ReglementCGestionF.ClientRegCGCbx.Text;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb']:= StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));
    //           MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb']:= StrToFloat(StringReplace(VerRegCGEdt.Text, #32, '', [rfReplaceAll]));

                 if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='esp�ce') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='espece') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=1 ;
                end;
                 if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='ch�que') OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='cheque') then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=2 ;
                end;
                if (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='a terme' )
                   OR (LowerCase(ReglementCGestionF.ModePaieRegCGCbx.Text)='� terme' ) then
                begin
                 MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_mdpai']:=3 ;
                end;

                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_cmpt']:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['nature_ocb']:= MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean;
                MainForm.Opt_cas_bnk_CaisseTable.FieldValues['code_ur']:=StrToInt (MainForm.UserIDLbl.Caption);

                MainForm.Opt_cas_bnk_CaisseTable.Post;
                MainForm.Opt_cas_bnk_CaisseTable.Refresh;
                MainForm.Opt_cas_bnk_BankTable.Refresh;


                MainForm.Opt_cas_bnk_CaisseTable.Active:=false;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
                MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false' ;
                MainForm.Opt_cas_bnk_CaisseTable.Active:=True;
                MainForm.Opt_cas_bnk_CaisseTable.EnableControls;




               end;

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

           MainForm.ClientTable.Refresh;
           MainForm.RegclientTable.Refresh;

           ReglementCListF.BVLivListDBGridEh.Refresh;


          MainForm.SQLQuery3.Active:=false;
          MainForm.SQLQuery3.SQL.Clear;
//          MainForm.RegclientTable.SQL.Text:='Select * from regclient '  ;
//          MainForm.RegclientTable.Active:=True;
//          MainForm.RegclientTable.EnableControls;

//          ReglementCListF.DateStartRegCDChange(Sender);

          sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
          FreeAndNil(ReglementCGestionF);



                end else
            begin
              RegCGErrorP.Visible:= True;
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              OKRegCGBtn.Enabled := False;
              OKRegCGBtn.ImageIndex := 18;
              VerRegCGEdt.SetFocus;
            end;



  end else
      begin

      ClientRegCGCbx.SetFocus;
 //     ClientRegCGCbx.StyleElements:= [];
      RequiredRegCGlbl.Visible:= True;
      NameClientGErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKRegCGBtn.Enabled := False;
      OKRegCGBtn.ImageIndex := 18;
      end;
end;

procedure TReglementCGestionF.AddFourRegCGBtnClick(Sender: TObject);
begin
ClientListF.AddClientsBtnClick(Sender);
ClientGestionF.OKClientGBtn.Tag := 5 ;
end;

procedure TReglementCGestionF.AddModePaieRegCGBtnClick(Sender: TObject);
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
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 27 ;
end;

procedure TReglementCGestionF.AddCompteRegCGBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the adding comptes ---------//
    FSplashAddCompte:=TFSplashAddCompte.Create(ReglementCGestionF);
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 6 ;
end;

end.

