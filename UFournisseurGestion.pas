unit UFournisseurGestion;

interface

uses
  Winapi.Windows, MMSystem, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  acAlphaImageList, AdvToolBtn, Vcl.StdCtrls, sPanel, acSlider, Vcl.ExtCtrls,
  Vcl.ComCtrls, sPageControl;

type
	TFournisseurGestionF = class(TForm)
    FournisseurGPgControl: TsPageControl;
    GeneralClientGTB: TsTabSheet;
    GeneralTB: TPanel;
    WilayaFournisseurGLbl: TLabel;
    VilleFournisseurGLbl: TLabel;
    ActiveFournisseurGLbl: TLabel;
    NameFournisseurGLbl: TLabel;
    AdrFournisseurGLbl: TLabel;
    FixFournisseurGLbl: TLabel;
    SiteFournisseurGLbl: TLabel;
    EmailFournisseurGLbl: TLabel;
    MobileFournisseurGLbl: TLabel;
    Mobile2CFournisseurGLbl: TLabel;
    FaxFournisseurGLbl: TLabel;
    RequiredStarFournisseurGLbl: TLabel;
    RequiredFournisseurGlbl: TLabel;
    ActiveFournisseurGOuiOuNon: TLabel;
    NameFournisseurGErrorP: TPanel;
    LineP: TPanel;
    AdrFournisseurGEdt: TEdit;
    FixFournisseurGEdt: TEdit;
    EmailFournisseurGEdt: TEdit;
    SiteFournisseurGEdt: TEdit;
    MobileFournisseurGEdt: TEdit;
    Mobile2FournisseurGEdt: TEdit;
    FaxFournisseurGEdt: TEdit;
    NameFournisseurGEdt: TEdit;
    ActiveFournisseurGSlider: TsSlider;
    WilayaFournisseurGCbx: TComboBox;
    PlusInfoClientGTB: TsTabSheet;
    PlusInfoTB: TPanel;
    RCFournisseurGLbl: TLabel;
    NArtFournisseurGLbl: TLabel;
    NIFFournisseurGLbl: TLabel;
    NISFournisseurGLbl: TLabel;
    ObserFournisseurGLbl: TLabel;
    MaxCreditFournisseurGLbl: TLabel;
    OldCreditFournisseurGLbl: TLabel;
    NBankFournisseurGLbl: TLabel;
    RIBFournisseurGLbl: TLabel;
    LineP03: TPanel;
    RCFournisseurGEdt: TEdit;
    NArtFournisseurGEdt: TEdit;
    NIFFournisseurGEdt: TEdit;
    NISFournisseurGEdt: TEdit;
    LineP01: TPanel;
    ObserFournisseurGMem: TMemo;
    OldCreditFournisseurGEdt: TEdit;
    MaxCreditFournisseurGEdt: TEdit;
    LineP02: TPanel;
    NBankFournisseurGEdt: TEdit;
    RIBFournisseurGEdt: TEdit;
    BottomP: TPanel;
    OKFournisseurGBtn: TAdvToolButton;
    CancelFournisseurGBtn: TAdvToolButton;
    VilleFournisseurGCbx: TComboBox;
    FicheFourTB: TsTabSheet;
    Label1: TLabel;
    CapitalFourGLbl: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    RegleFourGLbl: TLabel;
    Label6: TLabel;
    CreditFourGLbl: TLabel;
    Label8: TLabel;
    FourClientGSlider: TsSlider;
    PayFourClientGSlider: TsSlider;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    CPostalFournisseurGCbx: TComboBox;
    CPostalFournisseurGLbl: TLabel;
    CountryFournisseurGCbx: TComboBox;
    CountryFournisseurGLbl: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NameFournisseurGEdtChange(Sender: TObject);
    procedure FixFournisseurGEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FaxFournisseurGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure CancelFournisseurGBtnClick(Sender: TObject);
    procedure OKFournisseurGBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaxCreditFournisseurGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure MaxCreditFournisseurGEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OldCreditFournisseurGEdtExit(Sender: TObject);
    procedure MaxCreditFournisseurGEdtExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure WilayaFournisseurGCbxEnter(Sender: TObject);
    procedure VilleFournisseurGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure VilleFournisseurGCbxEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaxCreditFournisseurGEdtClick(Sender: TObject);
    procedure OldCreditFournisseurGEdtClick(Sender: TObject);
    procedure OldCreditFournisseurGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure OldCreditFournisseurGEdtChange(Sender: TObject);
    procedure ActiveFournisseurGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure FourClientGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure PayFourClientGSliderChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure CPostalFournisseurGCbxEnter(Sender: TObject);
    procedure CountryFournisseurGCbxEnter(Sender: TObject);
	private
		procedure EditSameClientDetailInCList(NameC: string);
    procedure addNewFour;
    function isClientExist(NameC: String): Boolean;
		function isFourExist(NameF: String): Boolean;
    function isFourExistTwiceForEdit(NameF: String): Boolean;
		procedure AddSameFourDetailInCFList(NameC: string);
    procedure editFour(OLDCredit: Double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FournisseurGestionF: TFournisseurGestionF;

implementation

{$R *.dfm}

uses Contnrs,  IniFiles,
 UFournisseurList, UMainF, USplash, UClientGestion,
  UProduitGestion, USplashAddUnite, UBonRecGestion, UBonFacAGestion,
  UReglementFGestion, UBonComAGestion, UReglementFList, UDataModule;



  var
    gGrayForms: TComponentList;
    Ini: TIniFile;

procedure GrayFormsFour;
var
  loop: integer;
  wScrnFrm: TForm;
  wForm: TForm;
//  wPoint: TPoint;
  wScreens: TList;
begin
  if not assigned(gGrayForms) then
  begin
    gGrayForms := TComponentList.Create;
    gGrayForms.OwnsObjects := true;
    wScreens := TList.Create;
    try
      for loop := 0 to 0 do
        wScreens.Add(Screen.Forms[loop]);
      for loop := 0 to 0 do
      begin
        wScrnFrm := wScreens[loop];
        if wScrnFrm.Visible then
        begin
          wForm := TForm.Create(wScrnFrm);
       ///wForm.Align:= alClient;
          wForm.WindowState := wsMaximized;
          gGrayForms.Add(wForm);
          wForm.Position := MainForm.Position;
          wForm.AlphaBlend := true;
          wForm.AlphaBlendValue := 150;
          wForm.Color := clBlack;
          wForm.BorderStyle := bsNone;
          wForm.StyleElements := [];
          wForm.Enabled := false;
          wForm.BoundsRect := wScrnFrm.BoundsRect;
          SetWindowLong(wForm.Handle, GWL_HWNDPARENT, wScrnFrm.Handle);
          SetWindowPos(wForm.Handle, wScrnFrm.Handle, 0, 0, 0, 0,
            SWP_NOSIZE or SWP_NOMOVE);
          wForm.Visible := true;
        end;
      end;
    finally
      wScreens.free;
    end;
  end;
end;

procedure NormalFormsFour;
begin
  FreeAndNil(gGrayForms);
end;


procedure TFournisseurGestionF.ActiveFournisseurGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
begin
  if ActiveFournisseurGOuiOuNon.Caption = 'Oui' then
    ActiveFournisseurGOuiOuNon.Caption := 'Non'
  else
    ActiveFournisseurGOuiOuNon.Caption := 'Oui'
end;

procedure TFournisseurGestionF.CancelFournisseurGBtnClick(Sender: TObject);
begin

  OKFournisseurGBtn.Enabled := false;
  OKFournisseurGBtn.ImageIndex := 1;

  FreeAndNil(FournisseurGestionF);

end;

procedure TFournisseurGestionF.CountryFournisseurGCbxEnter(Sender: TObject);
begin
 if Ini.ReadBool('', 'Is EU',False) then
 begin
    //Here we add France data
    CountryFournisseurGCbx.Items.Clear;
    CountryFournisseurGCbx.Items.Add('France');
 end else
     begin
        CountryFournisseurGCbx.Items.Clear;
        CountryFournisseurGCbx.Items.Add('Algérie');
     end;
end;

procedure TFournisseurGestionF.CPostalFournisseurGCbxEnter(Sender: TObject);
Var I,CodeW: Integer;
begin
 if Ini.ReadBool('', 'Is EU',False) then
 begin
    //Here we add France data
 end else
     begin
       if WilayaFournisseurGCbx.Text <> '' then
       begin
        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT code_w FROM wilayas WHERE LOWER(nom_w) LIKE LOWER('+QuotedStr(WilayaFournisseurGCbx.Text)+')' ;
        DataModuleF.SQLQuery3.Active := True;

        CodeW:= DataModuleF.SQLQuery3.FieldByName('code_w').AsInteger;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT codepostal_cumm FROM communes WHERE code_w ='+ IntToStr(CodeW) + ' ORDER By code_cumm';
        DataModuleF.SQLQuery3.Active := True;

        DataModuleF.SQLQuery3.Refresh;
        CPostalFournisseurGCbx.Items.Clear;

        DataModuleF.SQLQuery3.first;
        begin
         for I := 0 to DataModuleF.SQLQuery3.RecordCount - 1 do
         if ( DataModuleF.SQLQuery3.FieldByName('codepostal_cumm').IsNull = False )  then
         begin
           CPostalFournisseurGCbx.Items.Add(DataModuleF.SQLQuery3.FieldByName('codepostal_cumm').AsString);
           DataModuleF.SQLQuery3.Next;
          end;
        end;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
       end;
     end;
end;

procedure TFournisseurGestionF.FourClientGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
begin
  if Label2.Caption = 'Oui' then
    Label2.Caption := 'Non'
  else
    Label2.Caption := 'Oui'
end;

procedure TFournisseurGestionF.FaxFournisseurGEdtKeyPress(Sender: TObject;
  var Key: Char);

const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', Char(VK_back),
    Char(VK_SPACE), '-'];
begin

  if Key = #27 then
  begin
    Key := #0;
    FreeAndNil(FournisseurGestionF);

  end;

  if not(Key in N) then
  begin
    Key := #0;
  end;
end;

procedure TFournisseurGestionF.FixFournisseurGEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then

    SelectNext(ActiveControl as TWinControl, true, true);
end;

procedure TFournisseurGestionF.FormActivate(Sender: TObject);
begin
  OldCreditFournisseurGEdtExit(Sender);
  MaxCreditFournisseurGEdtExit(Sender);

end;

procedure TFournisseurGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  FreeAndNil(FournisseurGestionF);

end;

procedure TFournisseurGestionF.FormCreate(Sender: TObject);

begin
  if assigned(ProduitGestionF) then
  begin
    SetWindowPos(ProduitGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,
      SWP_NOMOVE or SWP_NOSIZE);
  end;
  GrayFormsFour;

  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));

end;

procedure TFournisseurGestionF.FormDestroy(Sender: TObject);
begin
  if assigned(ProduitGestionF) then
  begin
    SetWindowPos(ProduitGestionF.Handle, HWND_TOPMOST, 0, 0, 0, 0,
      SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;
  NormalFormsFour;
  // if ProduitGestionF = nil then
  // begin
  // FournisseurListF.FournisseursListDBGridEh.SetFocus;
  // end;

  Ini.Free;

end;

procedure TFournisseurGestionF.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFournisseurGestionF.MaxCreditFournisseurGEdtExit(Sender: TObject);
var
  MaxCredit: Double;
begin
  if MaxCreditFournisseurGEdt.Text<>'' then
  begin
  MaxCredit:=StrToFloat(StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
  MaxCreditFournisseurGEdt.Text := FloatToStrF(MaxCredit,ffNumber,14,2);
  end;
end;

procedure TFournisseurGestionF.MaxCreditFournisseurGEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then

    SelectNext(ActiveControl as TWinControl, true, true);
end;

procedure TFournisseurGestionF.MaxCreditFournisseurGEdtKeyPress(Sender: TObject;
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
  if (Key = ',') AND (Pos(Key, (MaxCreditFournisseurGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TFournisseurGestionF.NameFournisseurGEdtChange(Sender: TObject);
begin
  OKFournisseurGBtn.Enabled := true;
  OKFournisseurGBtn.ImageIndex := 17;
  NameFournisseurGEdt.BorderStyle := bsSingle;
  NameFournisseurGEdt.StyleElements := [seClient, seBorder];
  RequiredFournisseurGlbl.Visible := false;
//  RequiredFournisseurGlbl.Font.Height:= 16;
//  RequiredFournisseurGlbl.Top:=38;
//  RequiredFournisseurGlbl.Left:= NameFournisseurGEdt.Left;
  NameFournisseurGErrorP.Visible := false;

 end;


procedure TFournisseurGestionF.addNewFour();
var CodeF : Integer;
begin


      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur ORDER BY code_f';
      MainForm.FournisseurTable.Active := true;

        with MainForm.FournisseurTable do
        begin
          if NOT (MainForm.FournisseurTable.IsEmpty) then
          begin
          MainForm.FournisseurTable.Last;
          codeF:= MainForm.FournisseurTable.FieldValues['code_f'] + 1;
          end else
              begin
               codeF:= 1;
              end;
          Append;
          FieldValues['code_f'] := codeF;
          FieldValues['activ_f'] := ActiveFournisseurGSlider.SliderOn;
          fieldbyname('nom_f').AsWideString := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').AsWideString := AdrFournisseurGEdt.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('cpostal_f').Value := CPostalFournisseurGCbx.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('country_f').Value := CountryFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := Mobile2FournisseurGEdt.Text;
          fieldbyname('email_f').Value := EmailFournisseurGEdt.Text;
          fieldbyname('siteweb_f').Value := SiteFournisseurGEdt.Text;

          fieldbyname('rc_f').Value := RCFournisseurGEdt.Text;
          fieldbyname('nart_f').Value := NArtFournisseurGEdt.Text;
          fieldbyname('nif_f').Value := NIFFournisseurGEdt.Text;
          fieldbyname('nis_f').Value := NISFournisseurGEdt.Text;
          fieldbyname('nbank_f').Value := NBankFournisseurGEdt.Text;
          fieldbyname('rib_f').Value := RIBFournisseurGEdt.Text;
          if OldCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('oldcredit_f').Value :=
            StrToFloat(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
            fieldbyname('credit_f').Value :=
            StrToFloat(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0');
            fieldbyname('credit_f').Value := StrToInt('0');
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
            StrToFloat(StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('maxcredit_f').Value := StrToInt('0')
          end;
          fieldbyname('obser_f').Value := ObserFournisseurGMem.Text;
          post;
          end;

        MainForm.FournisseurTable.Refresh;
        MainForm.FournisseurTable.Last;
end;

function TFournisseurGestionF.isFourExist(NameF :String) : Boolean;
var
lookupResultNomF : Variant;
begin
   lookupResultNomF := MainForm.FournisseurTable.Lookup(LowerCase('nom_f'),(LowerCase(NameF)),'nom_f');
     if  VarIsnull( lookupResultNomF) then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;
end;

function TFournisseurGestionF.isClientExist(NameC :String) : Boolean;
var
lookupResultNomC : Variant;
begin
   lookupResultNomC := MainForm.ClientTable.Lookup(LowerCase('nom_c'),(LowerCase( NameC)),'nom_c');
     if  VarIsnull( lookupResultNomC) then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;
end;





function TFournisseurGestionF.isFourExistTwiceForEdit(NameF :String) : Boolean;
var
CodeFEdit: Integer;
lookupResultNomF : Variant;

begin

   CodeFEdit:=MainForm.FournisseurTable.FieldByName('code_f').AsInteger;

   //---- For editing wE need to use difrent sqlQuery to check if the same name  are not used twice
   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM fournisseur WHERE code_f <> '+IntToStr(CodeFEdit);
   MainForm.SQLQuery.Active:= True;

    lookupResultNomF := MainForm.SQLQuery.Lookup(LowerCase('nom_f'),(LowerCase( NameF)),'nom_f');
     if  VarIsnull( lookupResultNomF) then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;

   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
end;



procedure TFournisseurGestionF.editFour(OLDCredit: Double);

begin

  with MainForm.FournisseurTable do
  begin
    Edit;
    FieldValues['activ_f'] := ActiveFournisseurGSlider.SliderOn;
    fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
    fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
    fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
    fieldbyname('cpostal_f').Value := CPostalFournisseurGCbx.Text;
    fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
    fieldbyname('country_f').Value := CountryFournisseurGCbx.Text;
    fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
    fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
    fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
    fieldbyname('mob2_f').Value := Mobile2FournisseurGEdt.Text;
    fieldbyname('email_f').Value := EmailFournisseurGEdt.Text;
    fieldbyname('siteweb_f').Value := SiteFournisseurGEdt.Text;

    fieldbyname('rc_f').Value := RCFournisseurGEdt.Text;
    fieldbyname('nart_f').Value := NArtFournisseurGEdt.Text;
    fieldbyname('nif_f').Value := NIFFournisseurGEdt.Text;
    fieldbyname('nis_f').Value := NISFournisseurGEdt.Text;
    fieldbyname('nbank_f').Value := NBankFournisseurGEdt.Text;
    fieldbyname('rib_f').Value := RIBFournisseurGEdt.Text;
    if OldCreditFournisseurGEdt.Text <> '' then
    begin
      fieldbyname('oldcredit_f').Value :=  StrToFloat(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
      fieldbyname('credit_f').Value := (fieldbyname('credit_f').Value - OLDCredit)+ StrToFloat(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
    end
    else
    begin
      fieldbyname('oldcredit_f').Value := StrToInt('0');
      fieldbyname('credit_f').Value := (fieldbyname('credit_f').Value - OLDCredit)+ StrToFloat('0');
    end;
    if MaxCreditFournisseurGEdt.Text <> '' then
    begin
      fieldbyname('maxcredit_f').Value :=
      StrToFloat(StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
    end
    else
    begin
      fieldbyname('maxcredit_f').Value := StrToInt('0')
    end;
    fieldbyname('obser_f').Value := ObserFournisseurGMem.Text;
    post;
  end;

    MainForm.FournisseurTable.Refresh;


end;

procedure TFournisseurGestionF.OKFournisseurGBtnClick(Sender: TObject);
var codeF : Integer;
    lookupResultNomF : Variant;
begin

  if NameFournisseurGEdt.Text <> '' then
  begin
		if OKFournisseurGBtn.Tag = 0 then
		begin

		 if  isFourExist(NameFournisseurGEdt.Text) = False	 then
		 begin

             // This is to add new fournisseur as this client
				if FourClientGSlider.SliderOn then
        begin

         if isClientExist(NameFournisseurGEdt.Text) = False then
         begin

				 AddSameFourDetailInCFList(NameFournisseurGEdt.Text);
         addNewFour();
         end
         else
             begin
                try
                NameFournisseurGEdt.BorderStyle:= bsNone;
                NameFournisseurGEdt.StyleElements:= [];
                RequiredFournisseurGlbl.Caption:='C''est nom existe deja dans la list des clients, décocher "Ajouter comme Client:" ou bien change le nom';
                RequiredFournisseurGlbl.Font.Height:= 12;
                RequiredFournisseurGlbl.Top:= RequiredFournisseurGlbl.Top - 5;
                RequiredFournisseurGlbl.Height:=23;
                RequiredFournisseurGlbl.Visible:= True;
                NameFournisseurGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKFournisseurGBtn.Enabled := False;
                OKFournisseurGBtn.ImageIndex := 18;

                exit;
               finally
                FournisseurGPgControl.TabIndex:= 0;
                NameFournisseurGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewFour();
            end;

       end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
				end;


    // ----------------editing fourn---------------------------------------------------

    if OKFournisseurGBtn.Tag = 1 then
    begin

     if  isFourExistTwiceForEdit(NameFournisseurGEdt.Text) = False then
     begin

       if FourClientGSlider.SliderOn then
       begin

					 EditSameClientDetailInCList(MainForm.FournisseurTable.FieldByName('nom_f').AsString);
           editFour(MainForm.FournisseurTable.FieldByName('oldcredit_f').AsCurrency);
       end else
           begin
             editFour(MainForm.FournisseurTable.FieldByName('oldcredit_f').AsCurrency);
           end;



        end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
    end;

    // --------------- adding from the produit panel----

    if OKFournisseurGBtn.Tag = 2 then
    begin

    if  isFourExist(NameFournisseurGEdt.Text) = False	 then
		 begin

             // This is to add new fournisseur as this client
				if FourClientGSlider.SliderOn then
        begin

         if isClientExist(NameFournisseurGEdt.Text) = False then
         begin

				 AddSameFourDetailInCFList(NameFournisseurGEdt.Text);
         addNewFour();
         end
         else
             begin
                try
                NameFournisseurGEdt.BorderStyle:= bsNone;
                NameFournisseurGEdt.StyleElements:= [];
                RequiredFournisseurGlbl.Caption:='C''est nom existe deja dans la list des clients, décocher "Ajouter comme Client:" ou bien change le nom';
                RequiredFournisseurGlbl.Font.Height:= 12;
                RequiredFournisseurGlbl.Top:= RequiredFournisseurGlbl.Top - 5;
                RequiredFournisseurGlbl.Height:=23;
                RequiredFournisseurGlbl.Visible:= True;
                NameFournisseurGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKFournisseurGBtn.Enabled := False;
                OKFournisseurGBtn.ImageIndex := 18;

                exit;
               finally
                FournisseurGPgControl.TabIndex:= 0;
                NameFournisseurGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewFour();
            end;

            ProduitGestionF.FournisseurProduitGCbx.Text := NameFournisseurGEdt.Text;

       end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
    end;

  // --------------- adding from the bon_rec  panel----
         if OKFournisseurGBtn.Tag = 3 then
    begin
      if  isFourExist(NameFournisseurGEdt.Text) = False	 then
		 begin

             // This is to add new fournisseur as this client
				if FourClientGSlider.SliderOn then
        begin

         if isClientExist(NameFournisseurGEdt.Text) = False then
         begin

				 AddSameFourDetailInCFList(NameFournisseurGEdt.Text);
         addNewFour();
         end
         else
             begin
                try
                NameFournisseurGEdt.BorderStyle:= bsNone;
                NameFournisseurGEdt.StyleElements:= [];
                RequiredFournisseurGlbl.Caption:='C''est nom existe deja dans la list des clients, décocher "Ajouter comme Client:" ou bien change le nom';
                RequiredFournisseurGlbl.Font.Height:= 12;
                RequiredFournisseurGlbl.Top:= RequiredFournisseurGlbl.Top - 5;
                RequiredFournisseurGlbl.Height:=23;
                RequiredFournisseurGlbl.Visible:= True;
                NameFournisseurGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKFournisseurGBtn.Enabled := False;
                OKFournisseurGBtn.ImageIndex := 18;

                exit;
               finally
                FournisseurGPgControl.TabIndex:= 0;
                NameFournisseurGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewFour();
            end;

            BonRecGestionF.FournisseurBonRecGCbx.Text := NameFournisseurGEdt.Text;
            BonRecGestionF.FournisseurBonRecGCbxExit(Sender);
            BonRecGestionF.FournisseurBonRecGCbxSelect(Sender);
            BonRecGestionF.ProduitBonRecGCbx.SetFocus;
//            BonRecGestionF.FournisseurBonRecGCbx.SetFocus;

       end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
    end;


      // --------------- adding from the facture d''achat panel----
         if OKFournisseurGBtn.Tag = 4 then
    begin

     if  isFourExist(NameFournisseurGEdt.Text) = False	 then
		 begin

             // This is to add new fournisseur as this client
				if FourClientGSlider.SliderOn then
        begin

         if isClientExist(NameFournisseurGEdt.Text) = False then
         begin

				 AddSameFourDetailInCFList(NameFournisseurGEdt.Text);
         addNewFour();
         end
         else
             begin
                try
                NameFournisseurGEdt.BorderStyle:= bsNone;
                NameFournisseurGEdt.StyleElements:= [];
                RequiredFournisseurGlbl.Caption:='C''est nom existe deja dans la list des clients, décocher "Ajouter comme Client:" ou bien change le nom';
                RequiredFournisseurGlbl.Font.Height:= 12;
                RequiredFournisseurGlbl.Top:= RequiredFournisseurGlbl.Top - 5;
                RequiredFournisseurGlbl.Height:=23;
                RequiredFournisseurGlbl.Visible:= True;
                NameFournisseurGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKFournisseurGBtn.Enabled := False;
                OKFournisseurGBtn.ImageIndex := 18;

                exit;
               finally
                FournisseurGPgControl.TabIndex:= 0;
                NameFournisseurGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewFour();
            end;

            BonFacAGestionF.FourBonFacAGCbx.Text := NameFournisseurGEdt.Text;
            BonFacAGestionF.FourBonFacAGCbxExit(Sender);
            BonFacAGestionF.FourBonFacAGCbxSelect(Sender);
            BonFacAGestionF.ProduitBonFacAGCbx.SetFocus;
//            BonFacAGestionF.FourBonFacAGCbx.SetFocus;

       end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
    end;

    // --------------- adding from the regelement four----
     if OKFournisseurGBtn.Tag = 5 then
    begin

     if  isFourExist(NameFournisseurGEdt.Text) = False	 then
		 begin

             // This is to add new fournisseur as this client
				if FourClientGSlider.SliderOn then
        begin

         if isClientExist(NameFournisseurGEdt.Text) = False then
         begin

				 AddSameFourDetailInCFList(NameFournisseurGEdt.Text);
         addNewFour();
         end
         else
             begin
                try
                NameFournisseurGEdt.BorderStyle:= bsNone;
                NameFournisseurGEdt.StyleElements:= [];
                RequiredFournisseurGlbl.Caption:='C''est nom existe deja dans la list des clients, décocher "Ajouter comme Client:" ou bien change le nom';
                RequiredFournisseurGlbl.Font.Height:= 12;
                RequiredFournisseurGlbl.Top:= RequiredFournisseurGlbl.Top - 5;
                RequiredFournisseurGlbl.Height:=23;
                RequiredFournisseurGlbl.Visible:= True;
                NameFournisseurGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKFournisseurGBtn.Enabled := False;
                OKFournisseurGBtn.ImageIndex := 18;

                exit;
               finally
                FournisseurGPgControl.TabIndex:= 0;
                NameFournisseurGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewFour();
            end;

            MainForm.FournisseurTable.Close;
            MainForm.FournisseurTable.Open;

            ReglementFGestionF.FournisseurRegFGCbx.Text := NameFournisseurGEdt.Text;
            ReglementFGestionF.FournisseurRegFGCbxChange(Sender);

            ReglementFGestionF.VerRegFGEdt.SetFocus;
//            ReglementFGestionF.FournisseurRegFGCbx.SetFocus;

       end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
    end;


        // --------------- adding from the bon de commande four----
     if OKFournisseurGBtn.Tag = 6 then
    begin
if  isFourExist(NameFournisseurGEdt.Text) = False	 then
		 begin

             // This is to add new fournisseur as this client
				if FourClientGSlider.SliderOn then
        begin

         if isClientExist(NameFournisseurGEdt.Text) = False then
         begin

				 AddSameFourDetailInCFList(NameFournisseurGEdt.Text);
         addNewFour();
         end
         else
             begin
                try
                NameFournisseurGEdt.BorderStyle:= bsNone;
                NameFournisseurGEdt.StyleElements:= [];
                RequiredFournisseurGlbl.Caption:='C''est nom existe deja dans la list des clients, décocher "Ajouter comme Client:" ou bien change le nom';
                RequiredFournisseurGlbl.Font.Height:= 12;
                RequiredFournisseurGlbl.Top:= RequiredFournisseurGlbl.Top - 5;
                RequiredFournisseurGlbl.Height:=23;
                RequiredFournisseurGlbl.Visible:= True;
                NameFournisseurGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                OKFournisseurGBtn.Enabled := False;
                OKFournisseurGBtn.ImageIndex := 18;

                exit;
               finally
                FournisseurGPgControl.TabIndex:= 0;
                NameFournisseurGEdt.SetFocus;
               end;
             end;

        end else
            begin
              addNewFour();
            end;

              BonComAGestionF.FournisseurBonComGCbx.Text := NameFournisseurGEdt.Text;
              BonComAGestionF.FournisseurBonComGCbxExit(Sender);
              BonComAGestionF.FournisseurBonComGCbxSelect(Sender);
              BonComAGestionF.ProduitBonComGCbx.SetFocus;
//              BonComAGestionF.FournisseurBonComGCbx.SetFocus;

       end else
          begin
            try
            NameFournisseurGEdt.BorderStyle:= bsNone;
            NameFournisseurGEdt.StyleElements:= [];
            RequiredFournisseurGlbl.Caption:='C''est Fournisseur Existe Déja !!';
            RequiredFournisseurGlbl.Visible:= True;
            NameFournisseurGErrorP.Visible:= True;
            sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
            OKFournisseurGBtn.Enabled := False;
            OKFournisseurGBtn.ImageIndex := 18;

            exit;
           finally
            FournisseurGPgControl.TabIndex:= 0;
            NameFournisseurGEdt.SetFocus;
           end;
          end;
    end;

    begin
      FSplash := TFSplash.Create(FournisseurGestionF);
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

    FournisseurGestionF.FournisseurGPgControl.TabIndex := 0;
    NameFournisseurGEdt.BorderStyle := bsSingle;
    NameFournisseurGEdt.StyleElements := [seClient, seBorder];
    RequiredFournisseurGlbl.Visible := false;
    NameFournisseurGErrorP.Visible := false;
    sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or
      SND_RING);


      //This is for active and not active cleint caption show when enable

//     if (OKFournisseurGBtn.Tag = 0) OR (OKFournisseurGBtn.Tag = 1) then
//     begin
//
//      MainForm.FournisseurTable.DisableControls;
//
//      MainForm.FournisseurTable.Active := false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text :=
//      'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
//      MainForm.FournisseurTable.Active := true;
//
//     FournisseurListF.ActifFournisseursLbl.Caption :=
//     IntToStr(MainForm.FournisseurTable.RecordCount);
//
//      MainForm.FournisseurTable.Active := false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text :=
//      'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f ';
//      MainForm.FournisseurTable.Active := true;
//
//      FournisseurListF.PassifFournisseursLbl.Caption :=
//      IntToStr(MainForm.FournisseurTable.RecordCount);
//
//
//      MainForm.FournisseurTable.Active := false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text :=
//      'SELECT * FROM fournisseur ORDER BY code_f ';
//      MainForm.FournisseurTable.Active := true;
//
//      FournisseurListF.ToutFournisseursLbl.Caption :=
//      IntToStr(MainForm.FournisseurTable.RecordCount);
//
//      if FournisseurListF.ActifFournisseursRdioBtn.Checked then
//       begin
//        MainForm.FournisseurTable.Active := false;
//        MainForm.FournisseurTable.SQL.Clear;
//        MainForm.FournisseurTable.SQL.Text :=
//        'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
//        MainForm.FournisseurTable.Active := true;
//       end;
//
//       if FournisseurListF.PassifFournisseursRdioBtn.Checked then
//       begin
//        MainForm.FournisseurTable.Active := false;
//        MainForm.FournisseurTable.SQL.Clear;
//        MainForm.FournisseurTable.SQL.Text :=
//        'SELECT * FROM fournisseur  WHERE activ_f = false ORDER BY code_f';
//        MainForm.FournisseurTable.Active := true;
//       end;
//
//       if FournisseurListF.toutFournisseursRdioBtn.Checked then
//       begin
//        MainForm.FournisseurTable.Active := false;
//        MainForm.FournisseurTable.SQL.Clear;
//        MainForm.FournisseurTable.SQL.Text :=
//        'SELECT * FROM fournisseur ORDER BY code_f';
//        MainForm.FournisseurTable.Active := true;
//       end;
//
//       if OKFournisseurGBtn.Tag = 0 then
//       begin
//       MainForm.FournisseurTable.Last;
//       end;
//
//       MainForm.FournisseurTable.EnableControls;
//
//       MainForm.FournisseurTable.Locate('code_f',MainForm.FournisseurTable.FieldByName('code_f').AsInteger,[]) ;
//
//     end;
//
//    MainForm.SQLQuery.Active:= False;
//    MainForm.SQLQuery.SQL.Clear;


    FreeAndNil(FournisseurGestionF);

  end  else
    try
      NameFournisseurGEdt.BorderStyle := bsNone;
      NameFournisseurGEdt.StyleElements := [];
      RequiredFournisseurGlbl.Caption:= 'Champ obligatoire';
      RequiredFournisseurGlbl.Visible := true;
      NameFournisseurGErrorP.Visible := true;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav',
        SND_NODEFAULT Or SND_ASYNC Or SND_RING);

      OKFournisseurGBtn.Enabled := false;
      OKFournisseurGBtn.ImageIndex := 18;
    finally
      FournisseurGPgControl.TabIndex := 0;
      NameFournisseurGEdt.SetFocus;
    end;

end;

procedure TFournisseurGestionF.OldCreditFournisseurGEdtExit(Sender: TObject);
var
  OldCreditFournisseur: Double;
begin
  if OldCreditFournisseurGEdt.Text<>'' then
  begin
  OldCreditFournisseur:=StrToFloat(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
  OldCreditFournisseurGEdt.Text := FloatToStrF(OldCreditFournisseur,ffNumber,14,2);
  end;
end;

procedure TFournisseurGestionF.OldCreditFournisseurGEdtKeyPress(Sender: TObject;
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
  if (Key = ',') AND (Pos(Key, (OldCreditFournisseurGEdt.Text)) > 0) Then
  begin
      Key := #0;
  end;

end;

procedure TFournisseurGestionF.PayFourClientGSliderChanging(Sender: TObject;
  var CanChange: Boolean);
  
Var
ClientCredit,FourCredit,CreditAfter : Double;
 
begin
  if Label5.Visible = False then
  begin
    
    MainForm.SQLQuery.Active:= False;      
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT credit_c FROM client WHERE LOWER(nom_c) LIKE '+
    QuotedStr( LowerCase(MainForm.FournisseurTable.FieldByName('nom_f').asString));
    MainForm.SQLQuery.Active:= True;

    if NOT MainForm.SQLQuery.isEmpty then
    begin

      FourCredit:=     MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency;
      ClientCredit:=   MainForm.SQLQuery.FieldByName('credit_c').AsCurrency;
      
      CreditAfter:=  FourCredit - ClientCredit;
      CreditFourGLbl.Caption:= CurrToStrF((CreditAfter), ffNumber,2 ) + ' DA';

      if (CreditAfter <> 0) AND (CreditAfter <> null) AND (ClientCredit <> 0) AND (ClientCredit <> Null)  then
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

       FourCredit:=   MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency;
       CreditFourGLbl.Caption:= CurrToStrF((FourCredit), ffNumber,2 ) + ' DA';
       Label6.Caption:= 'Crédit:';
       Label6.Font.Color:=$0040332D;
       Label5.Caption:= 'OK';
       Label5.Font.Color:=$0077D90E;
       Label5.Visible:= False;


      end;
end;

procedure TFournisseurGestionF.WilayaFournisseurGCbxEnter(Sender: TObject);
Var I: Integer;
begin
 if Ini.ReadBool('', 'Is EU',True) then
 begin
    //Here we add France data
 end else
     begin
        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT nom_w FROM wilayas ORDER By code_w';
        DataModuleF.SQLQuery3.Active := True;

        WilayaFournisseurGCbx.Items.Clear;
        DataModuleF.SQLQuery3.first;
        begin
          for I := 0 to DataModuleF.SQLQuery3.RecordCount - 1 do
          if ( DataModuleF.SQLQuery3.FieldByName('nom_w').IsNull = False )  then
          begin
            WilayaFournisseurGCbx.Items.Add(DataModuleF.SQLQuery3.FieldByName('nom_w').AsWideString);
            DataModuleF.SQLQuery3.Next;
          end;
        end;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
     end;
end;

procedure TFournisseurGestionF.VilleFournisseurGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  // ---- close the form when i press Esc -----//

  if Key = #27 then
  begin
    Key := #0;
    FreeAndNil(FournisseurGestionF);
  end;

  // ---- jump to the next edit when i press enter-----//

  if Key = #13 then

  begin
    Key := #0;
    SelectNext(ActiveControl as TWinControl, true, true);

  end;
end;

procedure TFournisseurGestionF.VilleFournisseurGCbxEnter(Sender: TObject);
Var I,CodeW: Integer;
begin
 if Ini.ReadBool('', 'Is EU',False) then
 begin
    //Here we add France data
 end else
     begin
       if WilayaFournisseurGCbx.Text <> '' then
       begin
        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT code_w FROM wilayas WHERE LOWER(nom_w) LIKE LOWER('+QuotedStr(WilayaFournisseurGCbx.Text)+')' ;
        DataModuleF.SQLQuery3.Active := True;

        CodeW:= DataModuleF.SQLQuery3.FieldByName('code_w').AsInteger;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
        DataModuleF.SQLQuery3.SQL.Text:= 'SELECT nom_cumm FROM communes WHERE code_w ='+ IntToStr(CodeW) + ' ORDER By code_cumm';
        DataModuleF.SQLQuery3.Active := True;

        DataModuleF.SQLQuery3.Refresh;
        VilleFournisseurGCbx.Items.Clear;

        DataModuleF.SQLQuery3.first;
        begin
         for I := 0 to DataModuleF.SQLQuery3.RecordCount - 1 do
         if ( DataModuleF.SQLQuery3.FieldByName('nom_cumm').IsNull = False )  then
         begin
           VilleFournisseurGCbx.Items.Add(DataModuleF.SQLQuery3.FieldByName('nom_cumm').AsString);
           DataModuleF.SQLQuery3.Next;
          end;
        end;

        DataModuleF.SQLQuery3.Active:=False;
        DataModuleF.SQLQuery3.SQL.Clear;
       end;
     end;
end;

procedure TFournisseurGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;
  CancelFournisseurGBtnClick(Sender);

 end;

   if key = #13 then
  begin
   key := #0;
   OKFournisseurGBtnClick(Sender);

  end;
end;

procedure TFournisseurGestionF.FormShow(Sender: TObject);
begin
	if OKFournisseurGBtn.Tag = 0 then
	begin
		Label1.Visible:= True;
		Label2.Visible:= True;
		FourClientGSlider.Visible:= True;
	end;

  if Ini.ReadBool('', 'Is EU',False) then
  begin
   WilayaFournisseurGLbl.Caption:='Département:';
   RCFournisseurGLbl.Caption:='N° Siret:';
   NIFFournisseurGLbl.Caption:='Code NAF/APE:';
   NArtFournisseurGLbl.Caption:='N° TVA intracom:';
   NISFournisseurGLbl.Caption:='RCS:';
  end else
      begin
        WilayaFournisseurGLbl.Caption:='Wilaya:';
        RCFournisseurGLbl.Caption:='RC:';
        NIFFournisseurGLbl.Caption:='NIF:';
        NArtFournisseurGLbl.Caption:='N°Art:';
        NISFournisseurGLbl.Caption:='NIS:';
      end;

end;

procedure TFournisseurGestionF.MaxCreditFournisseurGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
MaxCreditFournisseurGEdt.Text := StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]);
MaxCreditFournisseurGEdt.SelectAll;
end;

procedure TFournisseurGestionF.OldCreditFournisseurGEdtChange(Sender: TObject);
begin
  if OKFournisseurGBtn.Tag = 0 then
  begin
   CreditFourGLbl.Caption := OldCreditFournisseurGEdt.Text;
  end;
end;

procedure TFournisseurGestionF.OldCreditFournisseurGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
OldCreditFournisseurGEdt.Text := StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]);
OldCreditFournisseurGEdt.SelectAll;
end;



procedure TFournisseurGestionF.AddSameFourDetailInCFList(NameC: string);
Var
codeC: Integer;
lookupResultNomC : Variant;
begin

 if  isClientExist(NameC) = False then
 begin

      MainForm.SQLQuery.Active := false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text :=
        'SELECT * FROM client ORDER BY code_c';
      MainForm.SQLQuery.Active := true;

        with MainForm.SQLQuery do
        begin
          if NOT (MainForm.SQLQuery.IsEmpty) then
          begin
          MainForm.SQLQuery.Last;
          codeC:= MainForm.SQLQuery.FieldValues['code_c'] + 1;
          end else
              begin
               codeC:= 1;
              end;
          Append;
          FieldValues['code_c'] := codeC;
          FieldValues['activ_c'] := ActiveFournisseurGSlider.SliderOn;
          fieldbyname('nom_c').AsWideString := NameC;
          fieldbyname('adr_c').AsWideString := AdrFournisseurGEdt.Text;
          fieldbyname('ville_c').Value := VilleFournisseurGCbx.Text;
          fieldbyname('willaya_c').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('cpostal_c').Value := CPostalFournisseurGCbx.Text;
          fieldbyname('country_c').Value := CountryFournisseurGCbx.Text;
          fieldbyname('fix_c').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_c').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_c').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_c').Value := Mobile2FournisseurGEdt.Text;
          fieldbyname('email_c').Value := EmailFournisseurGEdt.Text;
          fieldbyname('siteweb_c').Value := SiteFournisseurGEdt.Text;

          fieldbyname('rc_c').Value := RCFournisseurGEdt.Text;
          fieldbyname('nart_c').Value := NArtFournisseurGEdt.Text;
          fieldbyname('nif_c').Value := NIFFournisseurGEdt.Text;
          fieldbyname('nis_c').Value := NISFournisseurGEdt.Text;
          fieldbyname('nbank_c').Value := NBankFournisseurGEdt.Text;
          fieldbyname('rib_c').Value := RIBFournisseurGEdt.Text;

          fieldbyname('obser_c').Value := ObserFournisseurGMem.Text;
          post;
          end;

        MainForm.SQLQuery.Refresh;

      MainForm.SQLQuery.Active := false;
      MainForm.SQLQuery.SQL.Clear;

 end;
end;


procedure TFournisseurGestionF.EditSameClientDetailInCList(NameC: string);

begin

	MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.Clear;
	MainForm.SQLQuery.SQL.Text := 'SELECT * FROM client WHERE LOWER(nom_c) LIKE '+LowerCase(QuotedStr(NameC));
	MainForm.SQLQuery.Active:= True;
	
	if NOT MainForm.SQLQuery.IsEmpty then
	begin

	 with MainForm.SQLQuery do
	 begin
		Edit;
		FieldValues['activ_c'] := ActiveFournisseurGSlider.SliderOn;
		fieldbyname('nom_c').AsWideString := NameFournisseurGEdt.Text;
		fieldbyname('adr_c').AsWideString := AdrFournisseurGEdt.Text;
		fieldbyname('ville_c').Value := VilleFournisseurGCbx.Text;
    fieldbyname('willaya_c').Value := WilayaFournisseurGCbx.Text;
    fieldbyname('cpostal_c').Value := CPostalFournisseurGCbx.Text;
    fieldbyname('country_c').Value := CountryFournisseurGCbx.Text;
		fieldbyname('fix_c').AsString := FixFournisseurGEdt.Text;
		fieldbyname('fax_c').AsString := FaxFournisseurGEdt.Text;
		fieldbyname('mob_c').AsString := MobileFournisseurGEdt.Text;
		fieldbyname('mob2_c').AsString := Mobile2FournisseurGEdt.Text;
		fieldbyname('email_c').AsString := EmailFournisseurGEdt.Text;
		fieldbyname('siteweb_c').AsString := SiteFournisseurGEdt.Text;

		fieldbyname('rc_c').AsString := RCFournisseurGEdt.Text;
		fieldbyname('nart_c').AsString := NArtFournisseurGEdt.Text;
		fieldbyname('nif_c').AsString := NIFFournisseurGEdt.Text;
		fieldbyname('nis_c').AsString := NISFournisseurGEdt.Text;
		fieldbyname('nbank_c').AsString := NBankFournisseurGEdt.Text;
		fieldbyname('rib_c').AsString := RIBFournisseurGEdt.Text;

		fieldbyname('obser_c').Value := ObserFournisseurGMem.Text;
		post;
   end;

    MainForm.ClientTable.Refresh;
  end;

  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.Clear;

end;



end.

