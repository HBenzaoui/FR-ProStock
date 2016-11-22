unit ULoginUser;

interface

uses   MMSystem,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvToolBtn, Vcl.ExtCtrls,
  acPNG, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit;

type
  TLoginUserF = class(TForm)
    UserL: TLabel;
    PasswordL: TLabel;
    Image1: TImage;
    TopP: TPanel;
    LineP: TPanel;
    OKP: TPanel;
    LoginBtn: TAdvToolButton;
    CancelP: TPanel;
    CancelBtn: TAdvToolButton;
    UserCbx: TComboBox;
    PassCheckEroorGLbl: TLabel;
    PassCheckGErrorP: TPanel;
    UserCheckEroorGLbl: TLabel;
    UserCheckGErrorP: TPanel;
    PasswordEdt: TcxTextEdit;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UserCbxEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoginBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure UserCbxExit(Sender: TObject);
    procedure UserCbxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginUserF: TLoginUserF;

implementation

{$R *.dfm}


uses UMainF, UDataModule,System.Contnrs;


  var
    gGrayForms: TComponentList;

procedure GrayFormsLUR;
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
          wForm.AlphaBlendValue := 140;
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

procedure NormalFormsLUR;
begin
  FreeAndNil(gGrayForms);
end;

procedure TLoginUserF.CancelBtnClick(Sender: TObject);
begin

   MainForm.GstockdcConnection.Connected:= False;
   DataModuleF.GstockdcConnection02.Connected:= False;
   DataModuleF.PSDBConfigConnection.Connected:= False;

   
   MainForm.KillTask('postgres.exe');                                    // Eable this is only for releasing
   MainForm.KillTask('cmd.exe');                                         // Eable this is only for releasing
Application.Terminate;
end;

procedure TLoginUserF.FormDestroy(Sender: TObject);
begin
NormalFormsLUR;
end;

procedure TLoginUserF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

     //FreeAndNil(Self);
      NormalFormsLUR;
      LoginUserF.Close;

     end;


     if (key = #13) AND (UserCbx.Text <>'') AND (PasswordEdt.Text <> '') then
     begin
      key := #0;

      LoginBtnClick(Sender);
     end;
end;

procedure TLoginUserF.FormShow(Sender: TObject);
begin
GrayFormsLUR;
end;

procedure TLoginUserF.LoginBtnClick(Sender: TObject);
begin


      DataModuleF.UsersTable.DisableControls;
      DataModuleF.UsersTable.Active:=False;
      DataModuleF.UsersTable.SQL.Clear;
      DataModuleF.UsersTable.SQL.Text:= 'SELECT * FROM users WHERE nom_ur LIKE '+QuotedStr(UserCbx.Text);
      DataModuleF.UsersTable.Active := True;

      if DataModuleF.UsersTable.IsEmpty = False then
      begin

        if  PasswordEdt.Text = (DataModuleF.UsersTable.FieldByName('password_ur').AsString)  then
        begin
         NormalFormsLUR;

         MainForm.UserTypeLbl.Caption:= DataModuleF.UsersTable.FieldByName('type_ur').AsString;
         
         MainForm.bl_ur.Checked:= DataModuleF.UsersTable.FieldByName('bl_ur').AsBoolean;
         MainForm.fcv_ur.Checked:= DataModuleF.UsersTable.FieldByName('fcv_ur').AsBoolean;
         MainForm.rgc_ur.Checked:= DataModuleF.UsersTable.FieldByName('rgc_ur').AsBoolean;
         MainForm.br_ur.Checked:= DataModuleF.UsersTable.FieldByName('br_ur').AsBoolean;
         MainForm.fca_ur.Checked:= DataModuleF.UsersTable.FieldByName('fca_ur').AsBoolean;
         MainForm.rgf_ur.Checked:= DataModuleF.UsersTable.FieldByName('rgf_ur').AsBoolean;
         MainForm.caisse_ur.Checked:= DataModuleF.UsersTable.FieldByName('caisse_ur').AsBoolean;
         MainForm.bank_ur.Checked:= DataModuleF.UsersTable.FieldByName('bank_ur').AsBoolean;
         MainForm.client_ur.Checked:= DataModuleF.UsersTable.FieldByName('client_ur').AsBoolean;
         MainForm.four_ur.Checked:= DataModuleF.UsersTable.FieldByName('four_ur').AsBoolean;
         MainForm.ctr_ur.Checked:= DataModuleF.UsersTable.FieldByName('ctr_ur').AsBoolean;
         MainForm.produit_ur.Checked:= DataModuleF.UsersTable.FieldByName('produit_ur').AsBoolean;
         MainForm.famp_ur.Checked:= DataModuleF.UsersTable.FieldByName('famp_ur').AsBoolean;
         MainForm.sfamp_ur.Checked:= DataModuleF.UsersTable.FieldByName('sfamp_ur').AsBoolean;
         MainForm.mdpai_ur.Checked:= DataModuleF.UsersTable.FieldByName('mdpai_ur').AsBoolean;
         MainForm.cmpt_ur.Checked:= DataModuleF.UsersTable.FieldByName('cmpt_ur').AsBoolean;
         MainForm.unit_ur.Checked:= DataModuleF.UsersTable.FieldByName('unit_ur').AsBoolean;
         MainForm.local_ur.Checked:= DataModuleF.UsersTable.FieldByName('local_ur').AsBoolean;

//         LoginUserF.Close;
//         LoginUserF.Close;
//         Hide;
               
         MainForm.Show;
                                                                                                    
//                  LoginUserF.Close;
         LoginUserF.Close;

//        Close;
//         Hide;
//         FreeAndNil(LoginUserF);
                                                                                                           
        end else
            begin
                PasswordEdt.Style.BorderStyle := ebsNone;
//                PasswordEdt.StyleElements := [];
                PassCheckEroorGLbl.Visible:= True;
                PassCheckGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                PasswordEdt.SetFocus;
                PasswordEdt.SelectAll;
            
            end;
      end else
          begin
          
//                UserCbx.BorderStyle := bsNone;
                UserCbx.StyleElements := [];
                UserCheckEroorGLbl.Visible:= True;
                UserCheckGErrorP.Visible:= True;
                sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                UserCbx.SetFocus;
                UserCbx.SelectAll;
            
          end;
         
     DataModuleF.UsersTable.Active:=False;
     DataModuleF.UsersTable.SQL.Clear;
     DataModuleF.UsersTable.SQL.Text:= 'SELECT * FROM users ';
     DataModuleF.UsersTable.Active := True;
     DataModuleF.UsersTable.EnableControls;
end;

procedure TLoginUserF.UserCbxChange(Sender: TObject);
begin
       PassCheckEroorGLbl.Visible:= False;
       PassCheckGErrorP.Visible:= False;
       UserCheckEroorGLbl.Visible:= False;
       UserCheckGErrorP.Visible:= False;

       PasswordEdt.Style.BorderStyle := ebsUltraFlat;
       
end;

procedure TLoginUserF.UserCbxEnter(Sender: TObject);
var
I : Integer;
  begin
//  Cursor := crDefault;
//  PostMessage((Sender as TComboBox).Handle, CB_SHOWDROPDOWN, 1, 0);
//      ProduitBonLivGCbx.Refresh;
      UserCbx.Items.Clear;
      DataModuleF.UsersTable.DisableControls;
      DataModuleF.UsersTable.Active:=False;
      DataModuleF.UsersTable.SQL.Clear;
      DataModuleF.UsersTable.SQL.Text:= 'SELECT * FROM users ';
      DataModuleF.UsersTable.Active := True;

      DataModuleF.UsersTable.Refresh;


      DataModuleF.UsersTable.first;

  
     for I := 0 to DataModuleF.UsersTable.RecordCount - 1 do
     if ( DataModuleF.UsersTable.FieldByName('nom_ur').IsNull = False )  then
     begin
       UserCbx.Items.Add(DataModuleF.UsersTable.FieldByName('nom_ur').AsString);
       DataModuleF.UsersTable.Next;
      end;

     DataModuleF.UsersTable.EnableControls;

//     UserCbx.Text:='Admin';

end;

procedure TLoginUserF.UserCbxExit(Sender: TObject);
begin
 if UserCbx.Text= '' then UserCbx.Text:='Admin'
end;

end.
