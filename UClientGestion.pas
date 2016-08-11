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
procedure GrayForms;
procedure NormalForms;

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
    procedure FormCreate(Sender: TObject);
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

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ClientGestionF: TClientGestionF;

implementation

uses Contnrs, Types, UMainF, UClientsList, USplash, UBonLivGestion,
  UBonFacVGestion, UReglementCList,  UReglementCGestion;

{$R *.dfm}

var
  gGrayForms: TComponentList;

procedure GrayForms;
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

procedure NormalForms;
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

  Destroy;

end;

procedure TClientGestionF.OldCreditClientGEdtExit(Sender: TObject);
var
  OldCreditClient: Currency;
begin
  if OldCreditClientGEdt.Text <> '' then
  begin
    OldCreditClient := StrToFloat(StringReplace(OldCreditClientGEdt.Text, #32,
      '', [rfReplaceAll]));
    OldCreditClientGEdt.Text := FloatToStrF(OldCreditClient, ffNumber, 14, 2);
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
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.',
    Char(VK_back)];
begin

  if not(Key in N) then
  begin
    Key := #0;
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

  NormalForms;

end;

procedure TClientGestionF.FormCreate(Sender: TObject);
begin
  GrayForms;

end;

procedure TClientGestionF.FormDestroy(Sender: TObject);
begin
  NormalForms;

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
  NameClientGErrorP.Visible := false;

end;

procedure TClientGestionF.NameClientGEdtKeyPress(Sender: TObject;
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

procedure TClientGestionF.OKClientGBtnClick(Sender: TObject);
Var CodeC: Integer;
begin

  if NameClientGEdt.Text <> '' then

  begin

    // --- This TAG is for adding---//
    if OKClientGBtn.Tag = 0 then

    begin

      if ClientListF.ActifClientsRdioBtn.Checked then

      begin
        with ClientListF.ClientTableActif do
        begin
          if ClientListF.ClientTableActif.RecordCount <= 0  then
          begin
          Insert;
          fieldbyname('code_c').AsInteger:= 1;
          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').Value := NameClientGEdt.Text;
          fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
            fieldbyname('oldcredit_c').Value := StrToCurr(StringReplace(OldCreditClientGEdt.Text, #32, '', [rfReplaceAll]))
          end else
          begin
            fieldbyname('oldcredit_c').Value := StrToCurr('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := StrToCurr(StringReplace(MaxCreditClientGEdt.Text, #32, '', [rfReplaceAll]))
          end else
          begin
            fieldbyname('maxcredit_c').Value := StrToCurr('0')
          end;
          fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
          end else
              begin
                last;
                CodeC:=fieldbyname('code_c').AsInteger;
                Insert;
                fieldbyname('code_c').AsInteger:= CodeC + 1;
                FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
                fieldbyname('nom_c').Value := NameClientGEdt.Text;
                fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
                  fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
                end  else
                begin
                  fieldbyname('oldcredit_c').Value := StrToInt('0')
                end;
                if MaxCreditClientGEdt.Text <> '' then
                begin
                  fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
                end  else
                begin
                  fieldbyname('maxcredit_c').Value := StrToInt('0')
                end;
                fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
                fieldbyname('obser_c').Value := ObserClientGMem.Text;
                post;
              end;
        end;

        ClientListF.ClientTableActif.Refresh;
        ClientListF.ClientTableActif.Last;
        ClientListF.ActifClientsLbl.Caption :=
        IntToStr(ClientListF.ClientTableActif.RecordCount);

      end;

      if ClientListF.PassifClientsRdioBtn.Checked then

      begin

        with ClientListF.ClientTablePassif do
        begin
         if ClientListF.ClientTablePassif.RecordCount <= 0  then
          begin
          Insert;
          fieldbyname('code_c').AsInteger:= 1;
          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').Value := NameClientGEdt.Text;
          fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
            fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_c').Value := StrToInt('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('maxcredit_c').Value := StrToInt('0')
          end;
          fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
          end else
              begin
                last;
                CodeC:=fieldbyname('code_c').AsInteger;
                Insert;
                fieldbyname('code_c').AsInteger:= CodeC + 1;
                FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
                fieldbyname('nom_c').Value := NameClientGEdt.Text;
                fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
                  fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
                end
                else
                begin
                  fieldbyname('oldcredit_c').Value := StrToInt('0')
                end;
                if MaxCreditClientGEdt.Text <> '' then
                begin
                  fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
                end
                else
                begin
                  fieldbyname('maxcredit_c').Value := StrToInt('0')
                end;
                fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
                fieldbyname('obser_c').Value := ObserClientGMem.Text;
                post;
              end;
        end;

        ClientListF.ClientTablePassif.Refresh;
        ClientListF.ClientTablePassif.Last;
        ClientListF.PassifClientsLbl.Caption :=
          IntToStr(ClientListF.ClientTablePassif.RecordCount);

      end;

      if ClientListF.toutClientsRdioBtn.Checked then

      begin

        with MainForm.ClientTable do
        begin
         if MainForm.ClientTable.RecordCount <= 0  then
          begin
          Insert;
          fieldbyname('code_c').AsInteger:= 1;
          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').Value := NameClientGEdt.Text;
          fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
            fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_c').Value := StrToInt('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('maxcredit_c').Value := StrToInt('0')
          end;
          fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
          end else
              begin
                last;
                CodeC:=fieldbyname('code_c').AsInteger;
                Insert;
                fieldbyname('code_c').AsInteger:= CodeC + 1;
                FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
                fieldbyname('nom_c').Value := NameClientGEdt.Text;
                fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
                  fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
                end
                else
                begin
                  fieldbyname('oldcredit_c').Value := StrToInt('0')
                end;
                if MaxCreditClientGEdt.Text <> '' then
                begin
                  fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
                end
                else
                begin
                  fieldbyname('maxcredit_c').Value := StrToInt('0')
                end;
                fieldbyname('tarification_c').Value := ModeTarifClientGCbx.ItemIndex;
                fieldbyname('obser_c').Value := ObserClientGMem.Text;
                post;
              end;
        end;
        MainForm.ClientTable.Refresh;
        MainForm.ClientTable.Last;
        ClientListF.ToutClientsLbl.Caption :=
          IntToStr(MainForm.ClientTable.RecordCount);

      end;

    end;


    // ----------------------------------------------------------------------------------------------------

    // --- This TAG is for editing---//
    if OKClientGBtn.Tag = 1 then

    begin

      if ClientListF.ActifClientsRdioBtn.Checked then

      begin

        with ClientListF.ClientTableActif do
        begin
          Edit;

          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').Value := NameClientGEdt.Text;
          fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
            fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_c').Value := StrToInt('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('maxcredit_c').Value := StrToInt('0')
          end;
          fieldbyname('tarification_c').Value :=ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
        end;
      end;

      if ClientListF.PassifClientsRdioBtn.Checked then

      begin

        with ClientListF.ClientTablePassif do
        begin
          Edit;
          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').Value := NameClientGEdt.Text;
          fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
            fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_c').Value := StrToInt('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('maxcredit_c').Value := StrToInt('0')
          end;
          fieldbyname('tarification_c').Value :=ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
        end;
      end;
      if ClientListF.toutClientsRdioBtn.Checked then

      begin

        with MainForm.ClientTable do
        begin
          Edit;
          FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
          fieldbyname('nom_c').Value := NameClientGEdt.Text;
          fieldbyname('activite_c').Value := AcitiviteClientGEdt.Text;
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
            fieldbyname('oldcredit_c').Value := Trim(OldCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('oldcredit_c').Value := StrToInt('0')
          end;
          if MaxCreditClientGEdt.Text <> '' then
          begin
            fieldbyname('maxcredit_c').Value := Trim(MaxCreditClientGEdt.Text);
          end
          else
          begin
            fieldbyname('maxcredit_c').Value := StrToInt('0')
          end;
          fieldbyname('tarification_c').Value :=ModeTarifClientGCbx.ItemIndex;
          fieldbyname('obser_c').Value := ObserClientGMem.Text;
          post;
        end;
      end;
      ClientListF.ClientTableActif.Refresh;
      ClientListF.ActifClientsLbl.Caption :=
        IntToStr(ClientListF.ClientTableActif.RecordCount);
      ClientListF.ClientTablePassif.Refresh;
      ClientListF.PassifClientsLbl.Caption :=
        IntToStr(ClientListF.ClientTablePassif.RecordCount);
      MainForm.ClientTable.Refresh;
      ClientListF.ToutClientsLbl.Caption :=
        IntToStr(MainForm.ClientTable.RecordCount);
    end;



    // --------------- adding from the bon_liv  panel----
         if OKClientGBtn.Tag = 3 then
    begin
      with MainForm.ClientTable do
      begin
        Last;
        Insert;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
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
      BonLivGestionF.ClientBonLivGCbx.Text := NameClientGEdt.Text;
      BonLivGestionF.ClientBonLivGCbx.SetFocus;


    end;

    // --------------- adding from the facutre de vente  panel----
         if OKClientGBtn.Tag = 4 then
    begin
      with MainForm.ClientTable do
      begin
        Last;
        Insert;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
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


    end;


        // --------------- adding from the regelement client----
         if OKClientGBtn.Tag = 5 then
    begin
      with MainForm.ClientTable do
      begin
        Last;
        Insert;
        FieldValues['activ_c'] := ActiveClientGSlider.SliderOn;
        fieldbyname('nom_c').Value := NameClientGEdt.Text;
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
    Close;
    NameClientGEdt.BorderStyle := bsSingle;
    NameClientGEdt.StyleElements := [seClient, seBorder];
    RequiredClientGlbl.Visible := false;
    NameClientGErrorP.Visible := false;
    sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or
      SND_RING);
  end
  else
    try
      NameClientGEdt.BorderStyle := bsNone;
      NameClientGEdt.StyleElements := [];
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
  if MaxCreditClientGEdt.Text <> '' then
  begin
    MaxCredit := StrToFloat(StringReplace(MaxCreditClientGEdt.Text, #32, '',
      [rfReplaceAll]));
    MaxCreditClientGEdt.Text := FloatToStrF(MaxCredit, ffNumber, 14, 2);
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
    Close;

  end;

  if not(Key in N) then
  begin
    Key := #0;
  end;

end;

procedure TClientGestionF.VilleClientGCbxEnter(Sender: TObject);
Var I,CodeW: Integer;

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

end.













