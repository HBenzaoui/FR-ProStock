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
    CurrencyFournisseurG: TLabel;
    CurrencyFournisseurG1: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FournisseurGestionF: TFournisseurGestionF;

implementation

{$R *.dfm}

uses Contnrs,
 UFournisseurList, UMainF, USplash, UClientGestion,
  UProduitGestion, USplashAddUnite, UBonRecGestion, UBonFacAGestion,
  UReglementFGestion;



  var
    gGrayForms: TComponentList;

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
          wForm.Position := poOwnerFormCenter;
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


procedure TFournisseurGestionF.CancelFournisseurGBtnClick(Sender: TObject);
begin

  OKFournisseurGBtn.Enabled := false;
  OKFournisseurGBtn.ImageIndex := 1;

  Destroy;

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
    Close;

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

  NormalFormsFour;

end;

procedure TFournisseurGestionF.FormCreate(Sender: TObject);
begin
  if assigned(ProduitGestionF) then
  begin
    SetWindowPos(ProduitGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,
      SWP_NOMOVE or SWP_NOSIZE);
  end;
  GrayFormsFour;
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
  MaxCredit: Currency;
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
  NameFournisseurGErrorP.Visible := false;
 end;

procedure TFournisseurGestionF.OKFournisseurGBtnClick(Sender: TObject);
var codeF,CodeFEdit : Integer;
begin



  if NameFournisseurGEdt.Text <> '' then
  begin
    if OKFournisseurGBtn.Tag = 0 then
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
          fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := MobileFournisseurGEdt.Text;
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
            StrToCurr(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
            fieldbyname('credit_f').Value :=
            StrToCurr(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0');
            fieldbyname('credit_f').Value := StrToInt('0');
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
            StrToCurr(StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
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


    // ----------------editing fourn---------------------------------------------------

    if OKFournisseurGBtn.Tag = 1 then
    begin
       CodeFEdit:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger;
        with MainForm.FournisseurTable do
        begin
          Edit;
          FieldValues['activ_f'] := ActiveFournisseurGSlider.SliderOn;
          fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := MobileFournisseurGEdt.Text;
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
            StrToCurr(StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0')
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
            StrToCurr(StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]));
          end
          else
          begin
            fieldbyname('maxcredit_f').Value := StrToInt('0')
          end;
          fieldbyname('obser_f').Value := ObserFournisseurGMem.Text;
          post;
        end;

    end;

    // --------------- adding from the produit panel----

    if OKFournisseurGBtn.Tag = 2 then
    begin
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
          fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := MobileFournisseurGEdt.Text;
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
              Trim(OldCreditFournisseurGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0')
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
              Trim(MaxCreditFournisseurGEdt.Text);
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
      ProduitGestionF.FournisseurProduitGCbx.Text := NameFournisseurGEdt.Text;
    end;

  // --------------- adding from the bon_rec  panel----
         if OKFournisseurGBtn.Tag = 3 then
    begin
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
          fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := MobileFournisseurGEdt.Text;
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
              Trim(OldCreditFournisseurGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0')
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
              Trim(MaxCreditFournisseurGEdt.Text);
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
      BonRecGestionF.FournisseurBonRecGCbx.Text := NameFournisseurGEdt.Text;
      BonRecGestionF.FournisseurBonRecGCbx.SetFocus;


    end;


      // --------------- adding from the facture d''achat panel----
         if OKFournisseurGBtn.Tag = 4 then
    begin
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
          fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := MobileFournisseurGEdt.Text;
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
              Trim(OldCreditFournisseurGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0')
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
              Trim(MaxCreditFournisseurGEdt.Text);
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
      BonFacAGestionF.FourBonFacAGCbx.Text := NameFournisseurGEdt.Text;
      BonFacAGestionF.FourBonFacAGCbx.SetFocus;


    end;

    // --------------- adding from the regelement four----
     if OKFournisseurGBtn.Tag = 5 then
    begin
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
          fieldbyname('nom_f').Value := NameFournisseurGEdt.Text;
          fieldbyname('adr_f').Value := AdrFournisseurGEdt.Text;
          fieldbyname('willaya_f').Value := WilayaFournisseurGCbx.Text;
          fieldbyname('ville_f').Value := VilleFournisseurGCbx.Text;
          fieldbyname('fix_f').Value := FixFournisseurGEdt.Text;
          fieldbyname('fax_f').Value := FaxFournisseurGEdt.Text;
          fieldbyname('mob_f').Value := MobileFournisseurGEdt.Text;
          fieldbyname('mob2_f').Value := MobileFournisseurGEdt.Text;
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
              Trim(OldCreditFournisseurGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_f').Value := StrToInt('0')
          end;
          if MaxCreditFournisseurGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_f').Value :=
              Trim(MaxCreditFournisseurGEdt.Text);
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
      ReglementFGestionF.FournisseurRegFGCbx.Text := NameFournisseurGEdt.Text;
      ReglementFGestionF.FournisseurRegFGCbx.SetFocus;

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
    Close;
    NameFournisseurGEdt.BorderStyle := bsSingle;
    NameFournisseurGEdt.StyleElements := [seClient, seBorder];
    RequiredFournisseurGlbl.Visible := false;
    NameFournisseurGErrorP.Visible := false;
    sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or
      SND_RING);

     if OKFournisseurGBtn.Tag = 0 OR 1 then
     begin

      MainForm.FournisseurTable.DisableControls;

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
      MainForm.FournisseurTable.Active := true;

     FournisseurListF.ActifFournisseursLbl.Caption :=
     IntToStr(MainForm.FournisseurTable.RecordCount);

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f ';
      MainForm.FournisseurTable.Active := true;

      FournisseurListF.PassifFournisseursLbl.Caption :=
      IntToStr(MainForm.FournisseurTable.RecordCount);


      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur ORDER BY code_f ';
      MainForm.FournisseurTable.Active := true;

      FournisseurListF.ToutFournisseursLbl.Caption :=
      IntToStr(MainForm.FournisseurTable.RecordCount);

      if FournisseurListF.ActifFournisseursRdioBtn.Checked then
       begin
        MainForm.FournisseurTable.Active := false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text :=
        'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
        MainForm.FournisseurTable.Active := true;
       end;

       if FournisseurListF.PassifFournisseursRdioBtn.Checked then
       begin
        MainForm.FournisseurTable.Active := false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text :=
        'SELECT * FROM fournisseur  WHERE activ_f = false ORDER BY code_f';
        MainForm.FournisseurTable.Active := true;
       end;

       if FournisseurListF.toutFournisseursRdioBtn.Checked then
       begin
        MainForm.FournisseurTable.Active := false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text :=
        'SELECT * FROM fournisseur ORDER BY code_f';
        MainForm.FournisseurTable.Active := true;
       end;

       if OKFournisseurGBtn.Tag = 0 then
       begin
       MainForm.FournisseurTable.Last;
       end;

       MainForm.FournisseurTable.EnableControls;

       MainForm.FournisseurTable.Locate('code_f',CodeFEdit,[]) ;

     end;
  end  else
    try
      NameFournisseurGEdt.BorderStyle := bsNone;
      NameFournisseurGEdt.StyleElements := [];
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
  OldCreditFournisseur: Currency;
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

procedure TFournisseurGestionF.WilayaFournisseurGCbxEnter(Sender: TObject);
Var I: Integer;

begin
// CodeW:=MainForm.WilayasTable.FieldValues['code_w'];
       MainForm.WilayasTable.Active:=False;
      MainForm.WilayasTable.SQL.Clear;
      MainForm.WilayasTable.SQL.Text:= 'SELECT * FROM wilayas ';
      MainForm.WilayasTable.Active := True;

      MainForm.WilayasTable.Refresh;
      WilayaFournisseurGCbx.Items.Clear;

      MainForm.WilayasTable.first;
     begin
     for I := 0 to MainForm.WilayasTable.RecordCount - 1 do
     if ( MainForm.WilayasTable.FieldByName('nom_w').IsNull = False )  then
     begin
       WilayaFournisseurGCbx.Items.Add(MainForm.WilayasTable.FieldByName('nom_w').AsString);
       MainForm.WilayasTable.Next;
      end;
     end;
end;

procedure TFournisseurGestionF.VilleFournisseurGCbxKeyPress(Sender: TObject;
  var Key: Char);
begin
  // ---- close the form when i press Esc -----//

  if Key = #27 then
  begin
    Key := #0;
    Close;

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
 if WilayaFournisseurGCbx.Text <> '' then
 begin
      MainForm.WilayasTable.Active:=False;
      MainForm.WilayasTable.SQL.Clear;
      MainForm.WilayasTable.SQL.Text:= 'SELECT * FROM wilayas WHERE LOWER(nom_w) LIKE LOWER('+QuotedStr(WilayaFournisseurGCbx.Text)+')' ;
      MainForm.WilayasTable.Active := True;

 CodeW:=MainForm.WilayasTable.FieldValues['code_w'];

      MainForm.CommunesTable.Active:=False;
      MainForm.CommunesTable.SQL.Clear;
      MainForm.CommunesTable.SQL.Text:= 'SELECT * FROM communes WHERE code_w ='+ IntToStr(CodeW);
      MainForm.CommunesTable.Active := True;

      MainForm.CommunesTable.Refresh;
      VilleFournisseurGCbx.Items.Clear;

      MainForm.CommunesTable.first;
     begin

       for I := 0 to MainForm.CommunesTable.RecordCount - 1 do
       if ( MainForm.CommunesTable.FieldByName('nom_cumm').IsNull = False )  then
       begin
         VilleFournisseurGCbx.Items.Add(MainForm.CommunesTable.FieldByName('nom_cumm').AsString);
         MainForm.CommunesTable.Next;
        end;

     end;

      MainForm.WilayasTable.Active:=False;
      MainForm.WilayasTable.SQL.Clear;
      MainForm.WilayasTable.SQL.Text:= 'SELECT * FROM wilayas ' ;
      MainForm.WilayasTable.Active := True;

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

procedure TFournisseurGestionF.MaxCreditFournisseurGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
MaxCreditFournisseurGEdt.Text := StringReplace(MaxCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]);
MaxCreditFournisseurGEdt.SelectAll;
end;

procedure TFournisseurGestionF.OldCreditFournisseurGEdtClick(Sender: TObject);
begin
//----- use this code to delte the blanks from the Tedit when enter that will avoide the not foit point error --///
OldCreditFournisseurGEdt.Text := StringReplace(OldCreditFournisseurGEdt.Text, #32, '', [rfReplaceAll]);
OldCreditFournisseurGEdt.SelectAll;
end;

end.

