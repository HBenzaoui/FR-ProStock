unit UClientGestion;

interface

uses
  Winapi.Windows, MMSystem, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  sPageControl, AdvToolBtn, Vcl.WinXCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, acAlphaImageList, Vcl.AppEvnts, sPanel, acSlider,
  AdvSmoothSlider, DBAdvSmoothSlider, Vcl.Mask, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TClientGestionF = class(TForm)

    OKClientGBtn: TAdvToolButton;
    CancelClientGBtn: TAdvToolButton;
    ClientGPgControl: TsPageControl;
    GeneralClientGTB: TsTabSheet;
    PlusInfoClientGTB: TsTabSheet;
    NameClientGEdt: TEdit;
    NameClientGLbl: TLabel;
    AcitiviteClientGEdt: TEdit;
    AcitiviteClientGLbl: TLabel;
    AdrClientGLbl: TLabel;
    AdrClientGEdt: TEdit;
    WilayaClientGLbl: TLabel;
    VilleClientGLbl: TLabel;
    ActiveClientGLbl: TLabel;
    LineP: TPanel;
    MobileClientGEdt: TEdit;
    MobileClientGLbl: TLabel;
    Mobile2ClientGLbl: TLabel;
    Mobile2ClientGEdt: TEdit;
    FaxClientGEdt: TEdit;
    FaxClientGLbl: TLabel;
    FixClientGEdt: TEdit;
    FixClientGLbl: TLabel;
    SiteClientGEdt: TEdit;
    SiteClientGLbl: TLabel;
    EmailClientGEdt: TEdit;
    EmailClientGLbl: TLabel;
    GeneralTB: TPanel;
    ActiveClientGSlider: TsSlider;
    BottomP: TPanel;
    RequiredStarClientGLbl: TLabel;
    RequiredClientGlbl: TLabel;
    WilayaClientGCbx: TComboBox;
    ActiveClientGOuiOuNon: TLabel;
    PlusInfoTB: TPanel;
    RCClientGLbl: TLabel;
    LineP03: TPanel;
    RCClientGEdt: TEdit;
    NArtClientGEdt: TEdit;
    NArtClientGLbl: TLabel;
    NIFClientGLbl: TLabel;
    NIFClientGEdt: TEdit;
    NISClientGLbl: TLabel;
    NISClientGEdt: TEdit;
    LineP01: TPanel;
    ObserClientGMem: TMemo;
    ObserClientGLbl: TLabel;
    OldCreditClientGEdt: TEdit;
    OldCreditClientGLbl: TLabel;
    MaxCreditClientGLbl: TLabel;
    MaxCreditClientGEdt: TEdit;
    ModeTarifClientGCbx: TComboBox;
    ModeTarifClientGLbl: TLabel;
    CurrencyClientG: TLabel;
    CurrencyClientG1: TLabel;
    LineP02: TPanel;
    NBankClientGEdt: TEdit;
    NBankClientGLbl: TLabel;
    RIBClientGEdt: TEdit;
    RIBClientGLbl: TLabel;
    NameClientGErrorP: TPanel;
    VilleClientGCbx: TComboBox;
    FicheClientTB: TsTabSheet;
    Label1: TLabel;
    ClientFourGSlider: TsSlider;
    CapitalClientGLbl: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    RegleClientGLbl: TLabel;
    Label6: TLabel;
    CreditClientGLbl: TLabel;
    Label8: TLabel;
    PayClientFourGSlider: TsSlider;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure CancelClientGBtnClick(Sender: TObject);
    procedure OKClientGBtnClick(Sender: TObject);
    procedure ActiveClientGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure NameClientGEdtChange(Sender: TObject);
    procedure FixClientGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure OldCreditClientGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure NameClientGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Mobile2ClientGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure FaxClientGEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OldCreditClientGEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure OldCreditClientGEdtExit(Sender: TObject);
    procedure MaxCreditClientGEdtExit(Sender: TObject);
    procedure VilleClientGCbxEnter(Sender: TObject);
    procedure WilayaClientGCbxEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure OldCreditClientGEdtClick(Sender: TObject);
    procedure MaxCreditClientGEdtClick(Sender: TObject);
    procedure MaxCreditClientGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure OldCreditClientGEdtChange(Sender: TObject);
    procedure ClientFourGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure PayClientFourGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure FormShow(Sender: TObject);

  private
    procedure AddSameClientDetailInCFList( NameF: string);
    procedure EditSameFourDetailInFList( NameF: string);
    procedure addNewClient;
    function isClientExist(NameC: String): Boolean;
    function isFourExist(NameF: String): Boolean;
    procedure editClient(OLDCredit: Currency);
    function isClientExistTwiceForEdit(NameC: String): Boolean;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ClientGestionF: TClientGestionF;

implementation

uses Contnrs, UMainF, UClientsList, USplash, UBonLivGestion,
  UBonFacVGestion, UReglementCList,  UReglementCGestion, UBonCtr, UComptoir,
  UBonFacP, UBonFacPGestion;

{$R *.dfm}


  var
    gGrayForms: TComponentList;

procedure GrayFormsClient;
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
               UForm.Position :=  MainForm.Position;
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

procedure NormalFormsClient;
begin
  FreeAndNil(gGrayForms);
end;


// -------------- This procedure will make the edi rest to 0.00 when ceaning ------///
procedure RestToZiro;
var
  RestToZiro: Currency;
begin
  RestToZiro := 000;

  ClientGestionF.OldCreditClientGEdt.Text :=
    CurrToStrF(RestToZiro, ffCurrency, 2);
  ClientGestionF.MaxCreditClientGEdt.Text :=
    CurrToStrF(RestToZiro, ffCurrency, 2);

end;

procedure TClientGestionF.CancelClientGBtnClick(Sender: TObject);
begin

  // AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
  OKClientGBtn.Enabled := false;
  OKClientGBtn.ImageIndex := 1;

  FreeAndNil(ClientGestionF);

end;

procedure TClientGestionF.ClientFourGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
begin
  if Label2.Caption = 'Oui' then
    Label2.Caption := 'Non'
  else
    Label2.Caption := 'Oui'
end;

procedure TClientGestionF.OldCreditClientGEdtExit(Sender: TObject);
var
  OldCreditClient: Currency;
begin
  if OldCreditClientGEdt.Text<>'' then
  begin
  OldCreditClient:=StrToFloat(StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
  OldCreditClientGEdt.Text := FloatToStrF(OldCreditClient,ffNumber,14,2);
  end;
end;

procedure TClientGestionF.OldCreditClientGEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then

    SelectNext(ActiveControl as TWinControl, true, true);
end;

procedure TClientGestionF.OldCreditClientGEdtKeyPress(Sender: TObject;
  var Key: Char);
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
  if (Key = ',') AND (Pos(Key, (OldCreditClientGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TClientGestionF.PayClientFourGSliderChanging(Sender: TObject;
  var CanChange: Boolean);

Var
ClientCredit,FourCredit,CreditAfter : Currency;
  
begin

  if Label5.Visible = False then
  begin
    
    MainForm.SQLQuery.Active:= False;      
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT credit_f FROM fournisseur WHERE LOWER(nom_f) LIKE '+
    QuotedStr(LowerCase(MainForm.ClientTable.FieldByName('nom_c').asString));
    MainForm.SQLQuery.Active:= True;

    if NOT MainForm.SQLQuery.isEmpty then
    begin

      ClientCredit:= MainForm.ClientTable.FieldByName('credit_c').AsCurrency;
      FourCredit:=   MainForm.SQLQuery.FieldByName('credit_f').AsCurrency;
      
      CreditAfter:= ClientCredit - FourCredit;
      CreditClientGLbl.Caption:= CurrToStrF((CreditAfter), ffNumber,2 ) + ' DA';

      if (CreditAfter <> 0) AND (CreditAfter <> null) AND (FourCredit <> 0) AND (FourCredit <> null) then
      begin
            Label6.Caption:= 'Crédit après l''Acquit:';
            Label6.Font.Color:=$007374FF;
            Label5.Visible:= True;
            
      end else
          begin
          
           Label5.Caption:= 'Aucune dettes';
           Label5.Font.Color:=$007374FF;
           Label5.Visible:= True;  
          end;
      
    end;
          
    MainForm.SQLQuery.Active:= False;      
    MainForm.SQLQuery.SQL.Clear;
    
  end else
      begin

       ClientCredit:= MainForm.ClientTable.FieldByName('credit_c').AsCurrency;
       CreditClientGLbl.Caption:= CurrToStrF((ClientCredit), ffNumber,2 ) + ' DA';
       Label6.Caption:= 'Crédit:';
       Label6.Font.Color:=$0040332D;
       Label5.Caption:= 'OK';
       Label5.Font.Color:=$0077D90E;
       Label5.Visible:= False;

        
      end;

     
 
end;

procedure TClientGestionF.ActiveClientGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
begin
  if ActiveClientGOuiOuNon.Caption = 'Oui' then
    ActiveClientGOuiOuNon.Caption := 'Non'
  else
    ActiveClientGOuiOuNon.Caption := 'Oui'
end;

procedure TClientGestionF.FaxClientGEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then

    SelectNext(ActiveControl as TWinControl, true, true);
end;

procedure TClientGestionF.FixClientGEdtKeyPress(Sender: TObject; var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', Char(VK_back),
    Char(VK_SPACE), '-'];
begin

  if not(Key in N) then
    Key := Char(vk_capital)

end;

procedure TClientGestionF.FormActivate(Sender: TObject);

begin

  OldCreditClientGEdtExit(Sender);
  MaxCreditClientGEdtExit(Sender);

end;

procedure TClientGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 FreeAndNil(ClientGestionF);

end;

procedure TClientGestionF.FormDestroy(Sender: TObject);
begin
  NormalFormsClient;

end;

procedure TClientGestionF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Up key
  if Key = VK_UP then
    // previous control
    SelectNext(Self.ActiveControl, false, true);
  // Down key
  if Key = VK_DOWN then
    // next control
    SelectNext(Self.ActiveControl, true, true);
end;

procedure TClientGestionF.NameClientGEdtChange(Sender: TObject);
begin
  OKClientGBtn.Enabled := true;
  OKClientGBtn.ImageIndex := 17;
  NameClientGEdt.BorderStyle := bsSingle;
  NameClientGEdt.StyleElements := [seClient, seBorder];
  RequiredClientGlbl.Visible := false;
  RequiredStarClientGLbl.Font.Height:= 16;
  RequiredClientGlbl.Top:=38;
  RequiredStarClientGLbl.Left:= NameClientGEdt.Left;
  NameClientGErrorP.Visible := false;

end;

procedure TClientGestionF.NameClientGEdtKeyPress(Sender: TObject;
  var Key: Char);
begin
  // ---- close the form when i press Esc -----//
  if Key = #27 then
  begin
    Key := #0;
    FreeAndNil(ClientGestionF);
  end;
  // ---- jump to the next edit when i press enter-----//
//  if Key = #13 then
//  begin
//    Key := #0;
//    SelectNext(ActiveControl as TWinControl, true, true);
//  end;

end;

procedure TClientGestionF.addNewClient();
var CodeC : Integer;
begin
      MainForm.ClientTable.Active := false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text :=
      'SELECT * FROM client ORDER BY code_c';
      MainForm.ClientTable.Active := true;

      with MainForm.ClientTable do
      begin
          if NOT (MainForm.ClientTable.IsEmpty) then
          begin
          MainForm.ClientTable.Last;
          CodeC:= MainForm.ClientTable.FieldValues['code_c'] + 1;
          end else
              begin
               CodeC:= 1;
              end;
          Append;
          fieldbyname('code_c').AsInteger:= CodeC;
          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').AsString := NameClientGEdt.Text;
          fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
          fieldbyname('adr_c').AsString := AdrClientGEdt.Text;
          fieldbyname('willaya_c').AsString := WilayaClientGCbx.Text;
          fieldbyname('ville_c').AsString := VilleClientGCbx.Text;
          fieldbyname('fix_c').AsString := FixClientGEdt.Text;
          fieldbyname('fax_c').AsString := FaxClientGEdt.Text;
          fieldbyname('mob_c').AsString := MobileClientGEdt.Text;
          fieldbyname('mob2_c').AsString := MobileClientGEdt.Text;
          fieldbyname('email_c').AsString := EmailClientGEdt.Text;
          fieldbyname('siteweb_c').AsString := SiteClientGEdt.Text;
          fieldbyname('rc_c').AsString := RCClientGEdt.Text;
          fieldbyname('nart_c').AsString := NArtClientGEdt.Text;
          fieldbyname('nif_c').AsString := NIFClientGEdt.Text;
          fieldbyname('nis_c').AsString := NISClientGEdt.Text;
          fieldbyname('nbank_c').AsString := NBankClientGEdt.Text;
          fieldbyname('rib_c').AsString := RIBClientGEdt.Text;
          if OldCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('oldcredit_c').Value := StrToCurr(StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
            fieldbyname('credit_c').Value := StrToCurr(StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('oldcredit_c').Value := StrToInt('0') ;
            fieldbyname('credit_c').Value := StrToInt('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := StrToCurr(StringReplace(MaxCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('maxcredit_c').Value := StrToInt('0')
          end;
          fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
       end;

        MainForm.ClientTable.Refresh;
        MainForm.ClientTable.Last;
end;




function TClientGestionF.isClientExist(NameC :String) : Boolean;
var
lookupResultNomC : Variant;
begin
   lookupResultNomC := MainForm.ClientTable.Lookup('LOWER(nom_c)',(LowerCase( NameC)),'nom_c');
     if  VarIsnull( lookupResultNomC) then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;
end;



function TClientGestionF.isFourExist(NameF :String) : Boolean;
var
lookupResultNomF : Variant;
begin
   lookupResultNomF := MainForm.FournisseurTable.Lookup('LOWER(nom_f)',(LowerCase( NameF)),'nom_f');
     if  VarIsnull( lookupResultNomF) then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;
end;

function TClientGestionF.isClientExistTwiceForEdit(NameC :String) : Boolean;
var
CodeCEdit: Integer;
lookupResultNomC : Variant;

begin

   CodeCEdit:=MainForm.ClientTable.FieldByName('code_c').AsInteger;

   //---- For editing wE need to use difrent sqlQuery to check if the same name  are not used twice
   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM client WHERE code_c <> '+IntToStr(CodeCEdit);
   MainForm.SQLQuery.Active:= True;

    lookupResultNomC := MainForm.SQLQuery.Lookup('LOWER(nom_c)',(LowerCase( NameC)),'nom_c');
     if  VarIsnull( lookupResultNomC) then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;

   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
end;


procedure TClientGestionF.editClient(OLDCredit: Currency);

begin

    with MainForm.ClientTable do
    begin
      Edit;
      FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
      fieldbyname('nom_c').AsString := NameClientGEdt.Text;
      fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
      fieldbyname('adr_c').AsString := AdrClientGEdt.Text;
      fieldbyname('willaya_c').AsString := WilayaClientGCbx.Text;
      fieldbyname('ville_c').AsString := VilleClientGCbx.Text;
      fieldbyname('fix_c').AsString := FixClientGEdt.Text;
      fieldbyname('fax_c').AsString := FaxClientGEdt.Text;
      fieldbyname('mob_c').AsString := MobileClientGEdt.Text;
      fieldbyname('mob2_c').AsString := MobileClientGEdt.Text;
      fieldbyname('email_c').AsString := EmailClientGEdt.Text;
      fieldbyname('siteweb_c').AsString := SiteClientGEdt.Text;

      fieldbyname('rc_c').AsString := RCClientGEdt.Text;
      fieldbyname('nart_c').AsString := NArtClientGEdt.Text;
      fieldbyname('nif_c').AsString := NIFClientGEdt.Text;
      fieldbyname('nis_c').AsString := NISClientGEdt.Text;
      fieldbyname('nbank_c').AsString := NBankClientGEdt.Text;
      fieldbyname('rib_c').AsString := RIBClientGEdt.Text;
      if OldCreditClientGEdt.Text <> '' then
      begin
        fieldbyname('oldcredit_c').Value := StrToCurr(StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
        fieldbyname('credit_c').Value := (fieldbyname('credit_c').Value - OLDCredit)+ StrToCurr(StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
      end
      else
      begin
        fieldbyname('oldcredit_c').Value := StrToInt('0');
        fieldbyname('credit_c').Value := (fieldbyname('credit_c').Value - OLDCredit)+ StrToCurr('0');
      end;
      if MaxCreditClientGEdt.Text <> '' then
      begin
        fieldbyname('maxcredit_c').Value := StrToCurr(StringReplace(MaxCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
      end
      else
      begin
        fieldbyname('maxcredit_c').Value := StrToInt('0')
      end;
      fieldbyname('tarification_c').Value :=ModeTarifClientGCbx.ItemIndex;
      fieldbyname('obser_c').Value := ObserClientGMem.Text;
      post;
    end;

    MainForm.ClientTable.Refresh;


end;


procedure TClientGestionF.OKClientGBtnClick(Sender: TObject);
Var CodeC : Integer;
    lookupResultNomC : Variant;
begin

  if NameClientGEdt.Text <> '' then
  begin
      // --- This TAG is for adding---//
    if OKClientGBtn.Tag = 0 then
    begin

     if  isClientExist(NameClientGEdt.Text) = False then
     begin


        // This is to add new fournisseur as this client

        if ClientFourGSlider.SliderOn then
        begin

         if isFourExist(NameClientGEdt.Text) = False then
         begin

         AddSameClientDetailInCFList(NameClientGEdt.Text);
         addNewClient();
         end
         else
             begin
                try
                NameClientGEdt.BorderStyle:= bsNone;
                NameClientGEdt.StyleElements:= [];
                RequiredClientGlbl.Caption:='C''est nom existe deja dans la list des fournisseurs, décocher "Ajouter comme Fournisseur:" ou bien change le nom';
                RequiredClientGlbl.Font.Height:= 12;
                RequiredClientGlbl.Top:= RequiredClientGlbl.Top - 5;
                RequiredClientGlbl.Height:=23;
                RequiredClientGlbl.Visible:= True;
                NameClientGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKClientGBtn.Enabled := False;
                OKClientGBtn.ImageIndex := 18;

                exit;
               finally
                ClientGPgControl.TabIndex:= 0;
                NameClientGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewClient();
            end;


      end //End Lookup
      else
          begin
           try
            NameClientGEdt.BorderStyle:= bsNone;
            NameClientGEdt.StyleElements:= [];
            RequiredClientGlbl.Caption:='C''est Client Existe Déja !!';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKClientGBtn.Enabled := False;
            OKClientGBtn.ImageIndex := 18;

            exit;
           finally
            ClientGPgControl.TabIndex:= 0;
            NameClientGEdt.SetFocus;
           end;
          end;


    end;
  // ------------// --- This TAG is for editing---//---------------------------------------------------
    if OKClientGBtn.Tag = 1 then
    begin


       if isClientExistTwiceForEdit(NameClientGEdt.Text) = False then
       begin

          if ClientFourGSlider.SliderOn then
          begin

               EditSameFourDetailInFList(MainForm.ClientTable.FieldByName('nom_c').AsString);
               editClient(MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency);
          end else
              begin

                editClient(MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency);

              end;



       end  // End Lookup
         else
         begin
               try
              NameClientGEdt.BorderStyle:= bsNone;
              NameClientGEdt.StyleElements:= [];
              RequiredClientGlbl.Caption:='Nom Client Existe Déja !!';
              RequiredClientGlbl.Visible:= True;
              NameClientGErrorP.Visible:= True;
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              OKClientGBtn.Enabled := False;
              OKClientGBtn.ImageIndex := 18;

              exit;
             finally
              ClientGPgControl.TabIndex:= 0;
              NameClientGEdt.SetFocus;
             end;
         end;
    end;

  // --------------- adding from the bon_liv  panel----
    if OKClientGBtn.Tag = 3 then
    begin

      lookupResultNomC := MainForm.ClientTable.Lookup('LOWER(nom_c)',(LowerCase( NameClientGEdt.Text)),'nom_c');
      if  VarIsnull( lookupResultNomC) then
      begin

        with MainForm.ClientTable do
       begin

         if NOT (MainForm.ClientTable.IsEmpty) then
          begin
          MainForm.ClientTable.Last;
          CodeC:= MainForm.ClientTable.FieldValues['code_c'] + 1;
          end else
              begin
               CodeC:= 1;
              end;
        Append;
        FieldValues['code_c'] := CodeC;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').AsString := NameClientGEdt.Text;
        fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
        fieldbyname('adr_c').AsString := AdrClientGEdt.Text;
        fieldbyname('willaya_c').AsString := WilayaClientGCbx.Text;
        fieldbyname('ville_c').AsString := VilleClientGCbx.Text;
        fieldbyname('fix_c').AsString := FixClientGEdt.Text;
        fieldbyname('fax_c').AsString := FaxClientGEdt.Text;
        fieldbyname('mob_c').AsString := MobileClientGEdt.Text;
        fieldbyname('mob2_c').AsString := MobileClientGEdt.Text;
        fieldbyname('email_c').AsString := EmailClientGEdt.Text;
        fieldbyname('siteweb_c').AsString := SiteClientGEdt.Text;
        fieldbyname('rc_c').AsString := RCClientGEdt.Text;
        fieldbyname('nart_c').AsString := NArtClientGEdt.Text;
        fieldbyname('nif_c').AsString := NIFClientGEdt.Text;
        fieldbyname('nis_c').AsString := NISClientGEdt.Text;
        fieldbyname('nbank_c').AsString := NBankClientGEdt.Text;
        fieldbyname('rib_c').AsString := RIBClientGEdt.Text;
        if OldCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('oldcredit_c').Value :=
            Trim(OldCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('oldcredit_c').Value := StrToInt('0')
        end;
        if MaxCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('maxcredit_c').Value :=
            Trim(MaxCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('maxcredit_c').Value := StrToInt('0')
        end;
        fieldbyname('obser_c').Value := ObserClientGMem.Text;
        post;
       end;
        MainForm.ClientTable.Refresh;
        MainForm.ClientTable.Last;
        BonLivGestionF.ClientBonLivGCbx.Text := NameClientGEdt.Text;
        BonLivGestionF.ClientBonLivGCbx.SetFocus;

      end else
          begin
                           try
            NameClientGEdt.BorderStyle:= bsNone;
            NameClientGEdt.StyleElements:= [];
            RequiredClientGlbl.Caption:='Nom Client Existe Déja !!';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKClientGBtn.Enabled := False;
            OKClientGBtn.ImageIndex := 18;

            exit;
           finally
            ClientGPgControl.TabIndex:= 0;
            NameClientGEdt.SetFocus;
           end;
          end;

                                                              
    end;

  // --------------- adding from the facutre de vente  panel----
    if OKClientGBtn.Tag = 4 then
    begin

    lookupResultNomC := MainForm.ClientTable.Lookup('LOWER(nom_c)',(LowerCase( NameClientGEdt.Text)),'nom_c');
      if  VarIsnull( lookupResultNomC) then
      begin

      with MainForm.ClientTable do
      begin
               if NOT (MainForm.ClientTable.IsEmpty) then
          begin
          MainForm.ClientTable.Last;
          CodeC:= MainForm.ClientTable.FieldValues['code_c'] + 1;
          end else
              begin
               CodeC:= 1;
              end;
        Append;
        FieldValues['code_c'] := CodeC;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
        fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
        fieldbyname('adr_c').Value := AdrClientGEdt.Text;
        fieldbyname('willaya_c').Value := WilayaClientGCbx.Text;
        fieldbyname('ville_c').Value := VilleClientGCbx.Text;
        fieldbyname('fix_c').Value := FixClientGEdt.Text;
        fieldbyname('fax_c').Value := FaxClientGEdt.Text;
        fieldbyname('mob_c').Value := MobileClientGEdt.Text;
        fieldbyname('mob2_c').Value := MobileClientGEdt.Text;
        fieldbyname('email_c').Value := EmailClientGEdt.Text;
        fieldbyname('siteweb_c').Value := SiteClientGEdt.Text;
        fieldbyname('rc_c').Value := RCClientGEdt.Text;
        fieldbyname('nart_c').Value := NArtClientGEdt.Text;
        fieldbyname('nif_c').Value := NIFClientGEdt.Text;
        fieldbyname('nis_c').Value := NISClientGEdt.Text;
        fieldbyname('nbank_c').Value := NBankClientGEdt.Text;
        fieldbyname('rib_c').Value := RIBClientGEdt.Text;
        if OldCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('oldcredit_c').Value :=
            Trim(OldCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('oldcredit_c').Value := StrToInt('0')
        end;
        if MaxCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('maxcredit_c').Value :=
            Trim(MaxCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('maxcredit_c').Value := StrToInt('0')
        end;
        fieldbyname('obser_c').Value := ObserClientGMem.Text;
        post;
      end;
      MainForm.ClientTable.Refresh;
      MainForm.ClientTable.Last;
      BonFacVGestionF.ClientBonFacVGCbx.Text := NameClientGEdt.Text;
      BonFacVGestionF.ClientBonFacVGCbx.SetFocus;

     end else
          begin
                           try
            NameClientGEdt.BorderStyle:= bsNone;
            NameClientGEdt.StyleElements:= [];
            RequiredClientGlbl.Caption:='Nom Client Existe Déja !!';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKClientGBtn.Enabled := False;
            OKClientGBtn.ImageIndex := 18;

            exit;
           finally
            ClientGPgControl.TabIndex:= 0;
            NameClientGEdt.SetFocus;
           end;
          end;
    end;


  // --------------- adding from the regelement client----
    if OKClientGBtn.Tag = 5 then
    begin

     lookupResultNomC := MainForm.ClientTable.Lookup('LOWER(nom_c)',(LowerCase( NameClientGEdt.Text)),'nom_c');
     if  VarIsnull( lookupResultNomC) then
     begin

      with MainForm.ClientTable do
      begin
          if NOT (MainForm.ClientTable.IsEmpty) then
          begin
          MainForm.ClientTable.Last;
          CodeC:= MainForm.ClientTable.FieldValues['code_c'] + 1;
          end else
              begin
               CodeC:= 1;
              end;
        Append;
        FieldValues['code_c'] := CodeC;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
        fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
        fieldbyname('adr_c').Value := AdrClientGEdt.Text;
        fieldbyname('willaya_c').Value := WilayaClientGCbx.Text;
        fieldbyname('ville_c').Value := VilleClientGCbx.Text;
        fieldbyname('fix_c').Value := FixClientGEdt.Text;
        fieldbyname('fax_c').Value := FaxClientGEdt.Text;
        fieldbyname('mob_c').Value := MobileClientGEdt.Text;
        fieldbyname('mob2_c').Value := MobileClientGEdt.Text;
        fieldbyname('email_c').Value := EmailClientGEdt.Text;
        fieldbyname('siteweb_c').Value := SiteClientGEdt.Text;
        fieldbyname('rc_c').Value := RCClientGEdt.Text;
        fieldbyname('nart_c').Value := NArtClientGEdt.Text;
        fieldbyname('nif_c').Value := NIFClientGEdt.Text;
        fieldbyname('nis_c').Value := NISClientGEdt.Text;
        fieldbyname('nbank_c').Value := NBankClientGEdt.Text;
        fieldbyname('rib_c').Value := RIBClientGEdt.Text;
        if OldCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('oldcredit_c').Value :=
            Trim(OldCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('oldcredit_c').Value := StrToInt('0')
        end;
        if MaxCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('maxcredit_c').Value :=
            Trim(MaxCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('maxcredit_c').Value := StrToInt('0')
        end;
        fieldbyname('obser_c').Value := ObserClientGMem.Text;
        post;
      end;
      MainForm.ClientTable.Refresh;
      MainForm.ClientTable.Last;
      ReglementCGestionF.ClientRegCGCbx.Text := NameClientGEdt.Text;
      ReglementCGestionF.ClientRegCGCbx.SetFocus;

      end else
          begin
                           try
            NameClientGEdt.BorderStyle:= bsNone;
            NameClientGEdt.StyleElements:= [];
            RequiredClientGlbl.Caption:='Nom Client Existe Déja !!';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKClientGBtn.Enabled := False;
            OKClientGBtn.ImageIndex := 18;

            exit;
           finally
            ClientGPgControl.TabIndex:= 0;
            NameClientGEdt.SetFocus;
           end;
          end;

    end;


      // --------------- adding from the Comptoir panel----
    if OKClientGBtn.Tag = 6 then
    begin

     lookupResultNomC := MainForm.ClientTable.Lookup('LOWER(nom_c)',(LowerCase( NameClientGEdt.Text)),'nom_c');
     if  VarIsnull( lookupResultNomC) then
     begin

      with MainForm.ClientTable do
      begin
               if NOT (MainForm.ClientTable.IsEmpty) then
          begin
          MainForm.ClientTable.Last;
          CodeC:= MainForm.ClientTable.FieldValues['code_c'] + 1;
          end else
              begin
               CodeC:= 1;
              end;
        Append;
        FieldValues['code_c'] := CodeC;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
        fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
        fieldbyname('adr_c').Value := AdrClientGEdt.Text;
        fieldbyname('willaya_c').Value := WilayaClientGCbx.Text;
        fieldbyname('ville_c').Value := VilleClientGCbx.Text;
        fieldbyname('fix_c').Value := FixClientGEdt.Text;
        fieldbyname('fax_c').Value := FaxClientGEdt.Text;
        fieldbyname('mob_c').Value := MobileClientGEdt.Text;
        fieldbyname('mob2_c').Value := MobileClientGEdt.Text;
        fieldbyname('email_c').Value := EmailClientGEdt.Text;
        fieldbyname('siteweb_c').Value := SiteClientGEdt.Text;
        fieldbyname('rc_c').Value := RCClientGEdt.Text;
        fieldbyname('nart_c').Value := NArtClientGEdt.Text;
        fieldbyname('nif_c').Value := NIFClientGEdt.Text;
        fieldbyname('nis_c').Value := NISClientGEdt.Text;
        fieldbyname('nbank_c').Value := NBankClientGEdt.Text;
        fieldbyname('rib_c').Value := RIBClientGEdt.Text;
        if OldCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('oldcredit_c').Value :=
            Trim(OldCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('oldcredit_c').Value := StrToInt('0')
        end;
        if MaxCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('maxcredit_c').Value :=
            Trim(MaxCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('maxcredit_c').Value := StrToInt('0')
        end;
        fieldbyname('obser_c').Value := ObserClientGMem.Text;
        post;
      end;
      MainForm.ClientTable.Refresh;
      MainForm.ClientTable.Last;
      BonCtrGestionF.ClientBonCtrGCbx.Text := NameClientGEdt.Text;
      BonCtrGestionF.ProduitBonCtrGCbx.SetFocus;

      end else
          begin
                           try
            NameClientGEdt.BorderStyle:= bsNone;
            NameClientGEdt.StyleElements:= [];
            RequiredClientGlbl.Caption:='Nom Client Existe Déja !!';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKClientGBtn.Enabled := False;
            OKClientGBtn.ImageIndex := 18;

            exit;
           finally
            ClientGPgControl.TabIndex:= 0;
            NameClientGEdt.SetFocus;
           end;
          end;
    end;


    // --------------- adding from the facutre Proforma  panel----
    if OKClientGBtn.Tag = 7 then
    begin

     lookupResultNomC := MainForm.ClientTable.Lookup('LOWER(nom_c)',(LowerCase( NameClientGEdt.Text)),'nom_c');
      if  VarIsnull( lookupResultNomC) then
      begin

       with MainForm.ClientTable do
       begin
               if NOT (MainForm.ClientTable.IsEmpty) then
          begin
          MainForm.ClientTable.Last;
          CodeC:= MainForm.ClientTable.FieldValues['code_c'] + 1;
          end else
              begin
               CodeC:= 1;
              end;
        Append;
        FieldValues['code_c'] := CodeC;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
        fieldbyname('activite_c').AsString := AcitiviteClientGEdt.Text;
        fieldbyname('adr_c').Value := AdrClientGEdt.Text;
        fieldbyname('willaya_c').Value := WilayaClientGCbx.Text;
        fieldbyname('ville_c').Value := VilleClientGCbx.Text;
        fieldbyname('fix_c').Value := FixClientGEdt.Text;
        fieldbyname('fax_c').Value := FaxClientGEdt.Text;
        fieldbyname('mob_c').Value := MobileClientGEdt.Text;
        fieldbyname('mob2_c').Value := MobileClientGEdt.Text;
        fieldbyname('email_c').Value := EmailClientGEdt.Text;
        fieldbyname('siteweb_c').Value := SiteClientGEdt.Text;
        fieldbyname('rc_c').Value := RCClientGEdt.Text;
        fieldbyname('nart_c').Value := NArtClientGEdt.Text;
        fieldbyname('nif_c').Value := NIFClientGEdt.Text;
        fieldbyname('nis_c').Value := NISClientGEdt.Text;
        fieldbyname('nbank_c').Value := NBankClientGEdt.Text;
        fieldbyname('rib_c').Value := RIBClientGEdt.Text;
        if OldCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('oldcredit_c').Value :=
            Trim(OldCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('oldcredit_c').Value := StrToInt('0')
        end;
        if MaxCreditClientGEdt.Text <> '' then
        begin
          fieldbyname('maxcredit_c').Value :=
            Trim(MaxCreditClientGEdt.Text);
        end
        else
        begin
          fieldbyname('maxcredit_c').Value := StrToInt('0')
        end;
        fieldbyname('obser_c').Value := ObserClientGMem.Text;
        post;
       end;
        MainForm.ClientTable.Refresh;
        MainForm.ClientTable.Last;
        BonFacPGestionF.ClientBonFacVGCbx.Text := NameClientGEdt.Text;
        BonFacPGestionF.ClientBonFacVGCbx.SetFocus;

     end else
          begin
                           try
            NameClientGEdt.BorderStyle:= bsNone;
            NameClientGEdt.StyleElements:= [];
            RequiredClientGlbl.Caption:='Nom Client Existe Déja !!';
            RequiredClientGlbl.Visible:= True;
            NameClientGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKClientGBtn.Enabled := False;
            OKClientGBtn.ImageIndex := 18;

            exit;
           finally
            ClientGPgControl.TabIndex:= 0;
            NameClientGEdt.SetFocus;
           end;
          end;

    end;
    

    begin
      FSplash := TFSplash.Create(Application);
      try
        FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
        FSplash.Top := 0;
        AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR
          AW_ACTIVATE);
        sleep(250);
        AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR
          AW_SLIDE OR AW_HIDE);
      finally
        FSplash.free;

      end;

    end;


    ClientGestionF.ClientGPgControl.TabIndex := 0;
    NameClientGEdt.BorderStyle := bsSingle;
    NameClientGEdt.StyleElements := [seClient, seBorder];
    RequiredClientGlbl.Visible := false;
    NameClientGErrorP.Visible := false;
    sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or
      SND_RING);

     //This is for active and not active cleint caption show when enable
//     if (OKClientGBtn.Tag = 0) OR (OKClientGBtn.Tag = 1) then
//     begin
//
//
//      MainForm.ClientTable.Active := false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text :=
//      'SELECT * FROM client  WHERE activ_c = true ORDER BY code_c';
//      MainForm.ClientTable.Active := true;
//
//     ClientListF.ActifClientsLbl.Caption :=
//     IntToStr(MainForm.ClientTable.RecordCount - 1); // -1 is to not calculate the Comptoir
//
//      MainForm.ClientTable.Active := false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text :=
//      'SELECT * FROM client WHERE activ_c = false ORDER BY code_c';
//      MainForm.ClientTable.Active := true;
//
//      ClientListF.PassifClientsLbl.Caption :=
//      IntToStr(MainForm.ClientTable.RecordCount);
//
//
//      MainForm.ClientTable.Active := false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text :=
//      'SELECT * FROM client ORDER BY code_c ';
//      MainForm.ClientTable.Active := true;
//
//      ClientListF.ToutClientsLbl.Caption :=
//      IntToStr(MainForm.ClientTable.RecordCount - 1);  // -1 is to not calculate the Comptoir
//
//
//
//      if ClientListF.ActifClientsRdioBtn.Checked then
//       begin
//        MainForm.ClientTable.Active := false;
//        MainForm.ClientTable.SQL.Clear;
//        MainForm.ClientTable.SQL.Text :=
//        'SELECT * FROM client  WHERE activ_c = true ORDER BY code_c';
//        MainForm.ClientTable.Active := true;
//       end;
//
//       if ClientListF.PassifClientsRdioBtn.Checked then
//       begin
//        MainForm.ClientTable.Active := false;
//        MainForm.ClientTable.SQL.Clear;
//        MainForm.ClientTable.SQL.Text :=
//        'SELECT * FROM client  WHERE activ_c = false ORDER BY code_c';
//        MainForm.ClientTable.Active := true;
//       end;
//
//       if ClientListF.toutClientsRdioBtn.Checked then
//       begin
//        MainForm.ClientTable.Active := false;
//        MainForm.ClientTable.SQL.Clear;
//        MainForm.ClientTable.SQL.Text :=
//        'SELECT * FROM client ORDER BY code_c';
//        MainForm.ClientTable.Active := true;
//       end;
//
//
//      MainForm.ClientTable.Locate('code_c',MainForm.ClientTable.FieldByName('code_c').AsInteger,[]) ;

//     end;

//    MainForm.SQLQuery.Active:= False;
//    MainForm.SQLQuery.SQL.Clear;

    FreeAndNil(ClientGestionF);

  end
  else
    try
      NameClientGEdt.BorderStyle := bsNone;
      NameClientGEdt.StyleElements := [];
      RequiredClientGlbl.Caption:= 'S''il vous plaît entrer un nom';
      RequiredClientGlbl.Visible := true;
      NameClientGErrorP.Visible := true;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
        SND_NODEFAULT Or SND_ASYNC Or SND_RING);
      OKClientGBtn.Enabled := false;
      OKClientGBtn.ImageIndex := 18;
    finally
      ClientGPgControl.TabIndex := 0;
      NameClientGEdt.SetFocus;
    end;

end;

procedure TClientGestionF.MaxCreditClientGEdtExit(Sender: TObject);
var
  MaxCredit: Currency;
begin
  if MaxCreditClientGEdt.Text<>'' then
  begin
  MaxCredit:=StrToFloat(StringReplace(MaxCreditClientGEdt.Text, #32, '', [rfReplaceAll]));
  MaxCreditClientGEdt.Text := FloatToStrF(MaxCredit,ffNumber,14,2);
  end;
end;

procedure TClientGestionF.MaxCreditClientGEdtKeyPress(Sender: TObject;
  var Key: Char);

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
  if (Key = ',') AND (Pos(Key, (MaxCreditClientGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TClientGestionF.Mobile2ClientGEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', Char(VK_back),
    Char(VK_SPACE), '-'];
begin

  if Key = #27 then
  begin
    Key := #0;
    FreeAndNil(ClientGestionF);

  end;

  if not(Key in N) then
  begin
    Key := #0;
  end;

end;

procedure TClientGestionF.VilleClientGCbxEnter(Sender: TObject);
Var I,CodeW: Integer;

begin
 if WilayaClientGCbx.Text <> '' then
 begin
      MainForm.WilayasTable.Active:=False;
      MainForm.WilayasTable.SQL.Clear;
      MainForm.WilayasTable.SQL.Text:= 'SELECT * FROM wilayas WHERE LOWER(nom_w) LIKE LOWER('+QuotedStr(WilayaClientGCbx.Text)+')' ;
      MainForm.WilayasTable.Active := True;

 CodeW:=MainForm.WilayasTable.FieldValues['code_w'];

      MainForm.CommunesTable.Active:=False;
      MainForm.CommunesTable.SQL.Clear;
      MainForm.CommunesTable.SQL.Text:= 'SELECT * FROM communes WHERE code_w ='+ IntToStr(CodeW);
      MainForm.CommunesTable.Active := True;

      MainForm.CommunesTable.Refresh;
      VilleClientGCbx.Items.Clear;

      MainForm.CommunesTable.first;
     begin

       for I := 0 to MainForm.CommunesTable.RecordCount - 1 do
       if ( MainForm.CommunesTable.FieldByName('nom_cumm').IsNull = False )  then
       begin
         VilleClientGCbx.Items.Add(MainForm.CommunesTable.FieldByName('nom_cumm').AsString);
         MainForm.CommunesTable.Next;
        end;

     end;

      MainForm.WilayasTable.Active:=False;
      MainForm.WilayasTable.SQL.Clear;
      MainForm.WilayasTable.SQL.Text:= 'SELECT * FROM wilayas ' ;
      MainForm.WilayasTable.Active := True;

 end;

end;

procedure TClientGestionF.WilayaClientGCbxEnter(Sender: TObject);
Var I: Integer;

begin
// CodeW:=MainForm.WilayasTable.FieldValues['code_w'];
       MainForm.WilayasTable.Active:=False;
      MainForm.WilayasTable.SQL.Clear;
      MainForm.WilayasTable.SQL.Text:= 'SELECT * FROM wilayas ';
      MainForm.WilayasTable.Active := True;

      MainForm.WilayasTable.Refresh;
      WilayaClientGCbx.Items.Clear;

      MainForm.WilayasTable.first;
     begin

     for I := 0 to MainForm.WilayasTable.RecordCount - 1 do
     if ( MainForm.WilayasTable.FieldByName('nom_w').IsNull = False )  then
     begin
       WilayaClientGCbx.Items.Add(MainForm.WilayasTable.FieldByName('nom_w').AsString);
       MainForm.WilayasTable.Next;
      end;
     end;
end;

procedure TClientGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
  CancelClientGBtnClick(Sender);

 end;

  if key = #13 then
   begin
   key := #0;
   OKClientGBtnClick(Sender);

  end;
end;

procedure TClientGestionF.FormShow(Sender: TObject);
begin
  if OKClientGBtn.Tag = 0 then
  begin
    Label1.Visible:= True;
    Label2.Visible:= True;
    ClientFourGSlider.Visible:= True;
	end;
end;

procedure TClientGestionF.FormCreate(Sender: TObject);
begin
  GrayFormsClient;
end;

procedure TClientGestionF.OldCreditClientGEdtChange(Sender: TObject);
begin
  if OKClientGBtn.Tag = 0 then
  begin
     CreditClientGLbl.Caption:= OldCreditClientGEdt.Text;
  end;
end;

procedure TClientGestionF.OldCreditClientGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
OldCreditClientGEdt.Text := StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]);
OldCreditClientGEdt.SelectAll;
end;

procedure TClientGestionF.MaxCreditClientGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
MaxCreditClientGEdt.Text := StringReplace(MaxCreditClientGEdt.Text, #32, '', [rfReplaceAll]);
MaxCreditClientGEdt.SelectAll;
end;


procedure TClientGestionF.AddSameClientDetailInCFList(NameF: string);
Var
codeF: Integer;
lookupResultNomF : Variant;
begin

  lookupResultNomF := MainForm.FournisseurTable.Lookup('LOWER(nom_f)',(LowerCase( NameF)),'nom_f');
 if  VarIsnull( lookupResultNomF) then
 begin

      MainForm.SQLQuery.Active := false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text :=
        'SELECT * FROM fournisseur ORDER BY code_f';
      MainForm.SQLQuery.Active := true;

        with MainForm.SQLQuery do
        begin
          if NOT (MainForm.SQLQuery.IsEmpty) then
          begin
          MainForm.SQLQuery.Last;
          codeF:= MainForm.SQLQuery.FieldValues['code_f'] + 1;
          end else
              begin
               codeF:= 1;
              end;
          Append;
          FieldValues['code_f'] := codeF;
          FieldValues['activ_f'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_f').Value := NameF;
          fieldbyname('adr_f').Value := AdrClientGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaClientGCbx.Text;
          fieldbyname('ville_f').Value := VilleClientGCbx.Text;
          fieldbyname('fix_f').Value := FixClientGEdt.Text;
          fieldbyname('fax_f').Value := FaxClientGEdt.Text;
          fieldbyname('mob_f').Value := MobileClientGEdt.Text;
          fieldbyname('mob2_f').Value := MobileClientGEdt.Text;
          fieldbyname('email_f').Value := EmailClientGEdt.Text;
          fieldbyname('siteweb_f').Value := SiteClientGEdt.Text;

          fieldbyname('rc_f').Value := RCClientGEdt.Text;
          fieldbyname('nart_f').Value := NArtClientGEdt.Text;
          fieldbyname('nif_f').Value := NIFClientGEdt.Text;
          fieldbyname('nis_f').Value := NISClientGEdt.Text;
          fieldbyname('nbank_f').Value := NBankClientGEdt.Text;
          fieldbyname('rib_f').Value := RIBClientGEdt.Text;

          fieldbyname('obser_f').Value := ObserClientGMem.Text;
          post;
          end;

        MainForm.SQLQuery.Refresh;

      MainForm.SQLQuery.Active := false;
      MainForm.SQLQuery.SQL.Clear;

 end;
end;


procedure TClientGestionF.EditSameFourDetailInFList(NameF: string);
begin

  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.Clear;
  MainForm.SQLQuery.SQL.Text := 'SELECT * FROM fournisseur WHERE LOWER(nom_f) LIKE '+LowerCase(QuotedStr(NameF));
  MainForm.SQLQuery.Active:= True;

  if NOT MainForm.SQLQuery.IsEmpty then
  begin

   with MainForm.SQLQuery do
   begin
    Edit;
    FieldValues['activ_f'] := ActiveClientGSlider.SliderOn;
    fieldbyname('nom_f').Value := NameClientGEdt.Text;
    fieldbyname('adr_f').Value := AdrClientGEdt.Text;
    fieldbyname('willaya_f').Value := WilayaClientGCbx.Text;
    fieldbyname('ville_f').Value := VilleClientGCbx.Text;
    fieldbyname('fix_f').Value := FixClientGEdt.Text;
    fieldbyname('fax_f').Value := FaxClientGEdt.Text;
    fieldbyname('mob_f').Value := MobileClientGEdt.Text;
    fieldbyname('mob2_f').Value := MobileClientGEdt.Text;
    fieldbyname('email_f').Value := EmailClientGEdt.Text;
    fieldbyname('siteweb_f').Value := SiteClientGEdt.Text;

    fieldbyname('rc_f').Value := RCClientGEdt.Text;
    fieldbyname('nart_f').Value := NArtClientGEdt.Text;
    fieldbyname('nif_f').Value := NIFClientGEdt.Text;
    fieldbyname('nis_f').Value := NISClientGEdt.Text;
    fieldbyname('nbank_f').Value := NBankClientGEdt.Text;
    fieldbyname('rib_f').Value := RIBClientGEdt.Text;

    fieldbyname('obser_f').Value := ObserClientGMem.Text;
    post;
   end;

    MainForm.FournisseurTable.Refresh;
  end;

  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.Clear;

end;


end.

