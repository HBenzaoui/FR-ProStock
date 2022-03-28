unit ULoginUser;

interface

uses   MMSystem,Vcl.Printers,System.IniFiles,
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
  dxSkinXmas2008Blue, cxTextEdit, sPanel, acSlider;

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
    FolderL: TLabel;
    FolderCbx: TComboBox;
    FolderAddLogUsrSBtn: TAdvToolButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UserCbxEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoginBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure UserCbxExit(Sender: TObject);
    procedure UserCbxChange(Sender: TObject);
    procedure PasswordEdtPropertiesChange(Sender: TObject);
    procedure PasswordEdtMouseEnter(Sender: TObject);
    procedure PasswordEdtDblClick(Sender: TObject);
    procedure PasswordEdtKeyPress(Sender: TObject; var Key: Char);
    procedure FolderCbxEnter(Sender: TObject);
    procedure FolderCbxExit(Sender: TObject);
    procedure FolderAddLogUsrSBtnClick(Sender: TObject);
    procedure DBSilderChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //--Those are for creating new datatbase panel
    DBLineP2: TPanel;
    DBDescMigrationLbl,DBProduitLbl,DBClientLbl,DBFourLbl,DBSourceDBLbl : TLabel;
    DBProduitSdr,DBClientSdr,DBFourSdr: TsSlider;
    DBSourceDBCbx :TComboBox;
  end;

var
  LoginUserF: TLoginUserF;

implementation

{$R *.dfm}


uses UMainF, UDataModule,System.Contnrs, ULogin,Winapi.ShellAPI, UOptions, USplashAddUnite;


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
          wForm.Position := MainForm.Position;
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
 //--- This Tag = 2 is For opeing Tiroir caisse
 if Tag = 2 then
 begin
  NormalFormsLUR;
  Close;

 end else
 begin

   MainForm.GstockdcConnection.Connected:= False;
   DataModuleF.GstockdcConnection02.Connected:= False;
   DataModuleF.PSDBConfigConnection.Connected:= False;

   
//   MainForm.KillTask('postgres.exe');                                    // Eable this is only for releasing
//   MainForm.KillTask('cmd.exe');                                         // Eable this is only for releasing
 Application.Terminate;
 end;
end;


procedure TLoginUserF.DBSilderChange(Sender: TObject);
begin

  if DBProduitSdr.SliderOn OR DBClientSdr.SliderOn OR DBFourSdr.SliderOn then
  begin
    DBSourceDBLbl.Enabled:= True;
    DBSourceDBCbx.Enabled:= True;
  end else
      begin
        DBSourceDBLbl.Enabled:= False;
        DBSourceDBCbx.Enabled:= False;
      end;

end;

procedure TLoginUserF.FolderAddLogUsrSBtnClick(Sender: TObject);
begin
   //-------- Show the splash screan for the databse creation ---------//

    FSplashAddUnite:=TFSplashAddUnite.Create(self);
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 51 ;
    FSplashAddUnite.Width:= 330;
    FSplashAddUnite.Height:=330;
    FSplashAddUnite.Panel1.Color:= $0028CAFF;
    FSplashAddUnite.LineP.Color:= $0028CAFF;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
    FSplashAddUnite.CompteAddUniteSLbl.Visible:=True;
    FSplashAddUnite.CompteAddUniteSLbl.Caption:='Session:';
    FSplashAddUnite.CompteAddUniteSLbl.Left:= 60;
    FSplashAddUnite.CompteAddUniteSCbx.Visible:= True;
    FSplashAddUnite.CompteAddUniteSCbx.Left:=  FSplashAddUnite.NameAddUniteSEdt.Left;
    FSplashAddUnite.CompteAddUniteSCbx.Text:= FormatDateTime('YYYY',Date);
    FSplashAddUnite.CompteAddUniteSCbx.Enabled:=False;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Dossier:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous pla�t entrer un dossier' ;
    FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Création de dossier';
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:= (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2) ;
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
    FSplashAddUnite.Image1.Visible:= True;
    FSplashAddUnite.Image1.top:= FSplashAddUnite.Image1.top + 20;
    FSplashAddUnite.Image1.ImageIndex:=20;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.DBActivityIndicator.Width:=FSplashAddUnite.Width;
    FSplashAddUnite.DBActivityIndicator.Top:=FSplashAddUnite.LineP.Top - 13;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );

    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;



//------ here we create dynamiclly couple of btn and slider to use for copying data from db to db----


  DBLineP2 := TPanel.Create(FSplashAddUnite);
  with DBLineP2 do
  begin
    Parent := FSplashAddUnite;
    Left := 0;
    Top := FSplashAddUnite.CompteAddUniteSCbx.Top + FSplashAddUnite.CompteAddUniteSCbx.Height+ 15;
    Width := FSplashAddUnite.LineP.Width;
    Height := 2;
    Anchors := [akLeft, akRight, akBottom];
    BevelOuter := bvNone;
    Color := FSplashAddUnite.LineP.Color;
    DoubleBuffered := True;
    ParentBackground := False;
    ParentDoubleBuffered := False;
    TabOrder := 1;
    StyleElements := [];
  end;


  DBDescMigrationLbl := TLabel.Create(FSplashAddUnite);
  with DBDescMigrationLbl do
  begin
    Parent := FSplashAddUnite;
    Left := Image1.Left - 5;
    Top := FSplashAddUnite.CompteAddUniteSLbl.top + 45;
    Width := 48;
    Height := 18;
    Caption := 'Migration des Listings';
    Color := $0040332D;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := $0040332D;
    Font.Height := 18;
    Font.Name := 'Helvetica LT Std';
    Font.Style := [fsBold];
    ParentColor := False;
    ParentFont := False;
  end;


//---Produit------------------------
  DBProduitLbl := TLabel.Create(FSplashAddUnite);
  with DBProduitLbl do
  begin
    Parent := FSplashAddUnite;
    Left := Image1.Left - 5;
    Top := FSplashAddUnite.CompteAddUniteSLbl.top + 75;
    Width := 48;
    Height := 14;
    Caption := 'Produits:';
    Color := $0040332D;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := $0040332D;
    Font.Height := 14;
    Font.Name := 'Roboto';
    Font.Style := [];
    ParentColor := False;
    ParentFont := False;
    StyleElements := [];
  end;

//----- Slider
  DBProduitSdr := TsSlider.Create(FSplashAddUnite);
  with  DBProduitSdr do
  begin

    Parent := FSplashAddUnite;
    Left := FSplashAddUnite.OKAddUniteSBtn.Left + (FSplashAddUnite.OKAddUniteSBtn.Width div 2) -5;
    Top := DBProduitLbl.Top + 1;
    Width := 35;
    Height := 12;
    BevelOuter := bvNone;
    BiDiMode := bdLeftToRight;
    Color := 97560;
    Ctl3D := False;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := 4207405;
    Font.Height := 12;
    Font.Name := 'Roboto';
    Font.Style := [];
    StyleElements := [];
    ParentBiDiMode := False;
    ParentBackground := False;
    ParentCtl3D := False;
    ParentFont := False;
    TabOrder := 20;
//    BoundLabel.Caption := 'sSlider1';
//    BoundLabel.Layout := sclBottomCenter;
    FontOn.Charset := DEFAULT_CHARSET;
    FontOn.Color := 4207405;
    FontOn.Height := 12;
    FontOn.Name := 'Roboto';
    FontOn.Style := [];
    SliderCursor := crHandPoint;
    Reversed := True;
    SliderOn := False;
    Cursor:=  crHandPoint;


    OnSliderChange:= DBSilderChange;

  end;



//---Client------------------------
  DBClientLbl := TLabel.Create(FSplashAddUnite);
  with DBClientLbl do
  begin
    Parent := FSplashAddUnite;
    Left := Image1.Left - 5;
    Top := DBProduitLbl.top + 20;
    Width := 48;
    Height := 14;
    Caption := 'Clients:';
    Color := $0040332D;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := $0040332D;
    Font.Height := 14;
    Font.Name := 'Roboto';
    Font.Style := [];
    ParentColor := False;
    ParentFont := False;
    StyleElements := [];
  end;

//-----  Slider
  DBClientSdr := TsSlider.Create(FSplashAddUnite);
  with  DBClientSdr do
  begin

    Parent := FSplashAddUnite;
    Left := FSplashAddUnite.OKAddUniteSBtn.Left + (FSplashAddUnite.OKAddUniteSBtn.Width div 2) - 5;
    Top := DBClientLbl.Top + 1;
    Width := 35;
    Height := 12;
    BevelOuter := bvNone;
    BiDiMode := bdLeftToRight;
    Color := 97560;
    Ctl3D := False;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := 4207405;
    Font.Height := 12;
    Font.Name := 'Roboto';
    Font.Style := [];
    StyleElements := [];
    ParentBiDiMode := False;
    ParentBackground := False;
    ParentCtl3D := False;
    ParentFont := False;
    TabOrder := 20;
//    BoundLabel.Caption := 'sSlider1';
//    BoundLabel.Layout := sclBottomCenter;
    FontOn.Charset := DEFAULT_CHARSET;
    FontOn.Color := 4207405;
    FontOn.Height := 12;
    FontOn.Name := 'Roboto';
    FontOn.Style := [];
    SliderCursor := crHandPoint;
    Reversed := True;
    SliderOn := False;
    Cursor:=  crHandPoint;

    OnSliderChange:= DBSilderChange;

  end;


//---Four------------------------
  DBFourLbl := TLabel.Create(FSplashAddUnite);
  with DBFourLbl do
  begin
    Parent := FSplashAddUnite;
    Left := Image1.Left - 5;
    Top := DBClientLbl.top + 20;
    Width := 48;
    Height := 14;
    Caption := 'Fournisseurs:';
    Color := $0040332D;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := $0040332D;
    Font.Height := 14;
    Font.Name := 'Roboto';
    Font.Style := [];
    ParentColor := False;
    ParentFont := False;
    StyleElements := [];
  end;

//----- Slider
  DBFourSdr := TsSlider.Create(FSplashAddUnite);
  with  DBFourSdr do
  begin

    Parent := FSplashAddUnite;
    Left := FSplashAddUnite.OKAddUniteSBtn.Left + (FSplashAddUnite.OKAddUniteSBtn.Width div 2) - 5;
    Top := DBFourLbl.Top + 1;
    Width := 35;
    Height := 12;
    BevelOuter := bvNone;
    BiDiMode := bdLeftToRight;
    Color := 97560;
    Ctl3D := False;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := 4207405;
    Font.Height := 12;
    Font.Name := 'Roboto';
    Font.Style := [];
    StyleElements := [];
    ParentBiDiMode := False;
    ParentBackground := False;
    ParentCtl3D := False;
    ParentFont := False;
    TabOrder := 20;
//    BoundLabel.Caption := 'sSlider1';
//    BoundLabel.Layout := sclBottomCenter;
    FontOn.Charset := DEFAULT_CHARSET;
    FontOn.Color := 4207405;
    FontOn.Height := 12;
    FontOn.Name := 'Roboto';
    FontOn.Style := [];
    SliderCursor := crHandPoint;
    Reversed := True;
    SliderOn := False;
    Cursor:=  crHandPoint;

    OnSliderChange:= DBSilderChange;

  end;


 //---DBSource lable------------------------
  DBSourceDBLbl := TLabel.Create(FSplashAddUnite);
  with DBSourceDBLbl do
  begin
    Parent := FSplashAddUnite;
    Left := Image1.Left - 5;
    Top := DBFourLbl.top + 30;
    Width := 48;
    Height := 14;
    Caption := 'Source:';
    Color := $0040332D;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := $0040332D;
    Font.Height := 14;
    Font.Name := 'Roboto';
    Font.Style := [];
    ParentColor := False;
    ParentFont := False;
    StyleElements := [];
    Enabled:= False;
  end;


 //---DBSource Combobox------------------------
  DBSourceDBCbx := TComboBox.Create(FSplashAddUnite);
  with  DBSourceDBCbx do
  begin
    Parent := FSplashAddUnite;
    Left := 65;
    Top := DBSourceDBLbl.Top - 5;
    Width := 188;
    Height := 26;
    Style := csDropDownList;
    Ctl3D := True;
    DoubleBuffered := True;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := 4207405;
    Font.Height := 18;
    Font.Name := 'Helvetica LT Std';
    Font.Style := [];
    ParentCtl3D := False;
    ParentDoubleBuffered := False;
    ParentFont := False;
    TabOrder := 8;
    StyleElements := [seClient, seBorder];

    Items:= FolderCbx.Items;
    ItemIndex:= FolderCbx.ItemIndex;
    Enabled:= False;
  end;

//




end;

procedure TLoginUserF.FolderCbxEnter(Sender: TObject);
var
I : Integer;

begin

   FolderCbx.Items.Clear;
   DataModuleF.SQLQuery1.Active:= False;
   DataModuleF.SQLQuery1.SQL.Clear;
   DataModuleF.SQLQuery1.SQL.Text:= 'SELECT code_db,dbname_db,dbdesc_db,createdate_db FROM dblist';
   DataModuleF.SQLQuery1.Active:= true;

   //Here we add the existed databases in dblist table
   if DataModuleF.SQLQuery1.IsEmpty then
   begin

     DataModuleF.SQLQuery2.Active:= False;
     DataModuleF.SQLQuery2.SQL.Clear;
     DataModuleF.SQLQuery2.SQL.Text:= 'SELECT (pg_stat_file(''base/''||oid ||''/PG_VERSION'')).modification, datname FROM pg_database '
     +'WHERE datname = ''GSTOCKDC'';';
     DataModuleF.SQLQuery2.Active:= true;


    DataModuleF.SQLQuery1.insert;
    DataModuleF.SQLQuery1.FieldByName('dbname_db').AsString:='GSTOCKDC';
    DataModuleF.SQLQuery1.FieldByName('dbdesc_db').AsString:='Dossier initial '
    + formatdatetime('yyyy',DataModuleF.SQLQuery2.FieldByName('modification').AsDateTime) ;

    DataModuleF.SQLQuery1.FieldByName('createdate_db').AsDateTime:=DataModuleF.SQLQuery2.FieldByName('modification').AsDateTime;
    DataModuleF.SQLQuery1.Post;

     DataModuleF.SQLQuery2.Active:= False;
     DataModuleF.SQLQuery2.SQL.Clear;

   end;


     for I := 0 to DataModuleF.SQLQuery1.RecordCount - 1 do
     if ( DataModuleF.SQLQuery1.FieldByName('dbdesc_db').IsNull = False )  then
     begin
       FolderCbx.Items.Add(DataModuleF.SQLQuery1.FieldByName('dbdesc_db').AsString );
       DataModuleF.SQLQuery1.Next;
      end;

    DataModuleF.SQLQuery1.Active:= False;
    DataModuleF.SQLQuery1.SQL.Clear;

end;

procedure TLoginUserF.FolderCbxExit(Sender: TObject);
begin
if FolderCbx.Text = '' then
 FolderCbx.ItemIndex:=0
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
//      LoginUserF.Close;
      CancelBtnClick(Sender);

     end;


     if (key = #13) AND (UserCbx.Text <>'') AND (PasswordEdt.Text <> '') then
     begin
      key := #0;

      LoginBtnClick(Sender);
     end;
end;

procedure TLoginUserF.FormShow(Sender: TObject);
var
  Ini: TIniFile;
begin
 

  GrayFormsLUR;
//  UserCbx.ItemIndex:=0;
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
  FolderCbxEnter(Sender);
  FolderCbx.ItemIndex:= Ini.ReadInteger('','default db', FolderCbx.ItemIndex);
  UserCbxEnter(Sender);
  UserCbx.ItemIndex:= Ini.ReadInteger('','default usr', UserCbx.ItemIndex);
  Ini.Free;

  end;

procedure TLoginUserF.LoginBtnClick(Sender: TObject);
var myPrinter   : TPrinter;
   Ini: TIniFile;
   TiroirA,TiroirCas,PasswordA : Boolean;
   PORT : string;
begin
      //---- This is just to check if Tiroir caisse is Active so whe can shoe the open button in MainMenu
      Ini       := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
      TiroirA   := Ini.ReadBool('', 'Tiroir caisse Active',TiroirA);
      Ini.WriteInteger('','default db', FolderCbx.ItemIndex);
      Ini.WriteInteger('','default usr', UserCbx.ItemIndex);
      Ini.Free;
      if TiroirA then
      begin
        MainForm.OuvertureduTiroirCaisse1.Visible:= True
      end else
          begin
           MainForm.OuvertureduTiroirCaisse1.Visible:= False
          end;


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

         MainForm.UserIDLbl.Caption:= IntToStr( DataModuleF.UsersTable.FieldByName('code_ur').AsInteger);
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
         MainForm.totaux_ur.Checked:= DataModuleF.UsersTable.FieldByName('totaux_ur').AsBoolean;
         MainForm.viewprixa_ur.Checked:= DataModuleF.UsersTable.FieldByName('viewprixa_ur').AsBoolean;
         MainForm.stock_ur.Checked:= DataModuleF.UsersTable.FieldByName('stock_ur').AsBoolean;

//         LoginUserF.Close;
//         LoginUserF.Close;
//         Hide;
               
         if LoginF.Label1.Caption = 'R' then
         begin
         // This tag = 0 is for the first Loging
            if Tag = 0 then
            begin
                PasswordEdt.Clear;
                Close;
                MainForm.Show;
            end;
         //--------------------------------

          // This tag = 1 is for changing user
          if Tag = 1 then
          begin
            PasswordEdt.Clear;
            Close;
            MainForm.FormShow(Sender);
          end;
         //--------------------------------

           // This tag = 2 is opening the Tiroir Caisse
          if Tag = 2 then
          begin
               Ini       := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
               TiroirA   := Ini.ReadBool('', 'Tiroir caisse Active',TiroirA);
               TiroirCas := Ini.ReadBool('', 'Tiroir caisse Cas',   TiroirCas);
               PORT      :=Ini.ReadString(Caption,'Tiroir caisse COM', PORT);

               PasswordEdt.Clear;
               Close;

           if TiroirCas = False then   // means = 0   Case COM
           begin
            try
              FOptions.ComPort1.Port :=PORT;// 'COM7';
              FOptions.ComPort1.Events := [];
              FOptions.ComPort1.Open; // open port
      //        FOptions.ComPort1.WriteUnicodeString('                                        '#13#10);
      //        FOptions.ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
              FOptions.ComPort1.Close;
            except
              ShowMessage('Svp, brancher le Tiroir Caisse');
            end;
           end;

           if TiroirCas = True then  // means = 1   Case PRINTER
           begin
             myPrinter := printer;
            with myPrinter do
            begin

              Printer.PrinterIndex:= Ini.ReadInteger(Caption,'Tiroir caisse PRINT', Printer.PrinterIndex) ;
              // Start printing
              BeginDoc;
                    // Set up a large blue font
              Canvas.Font.Size   := 08;
              Canvas.Font.Color  := clBlack;

              // Write out the page size
              Canvas.TextOut(20, 40, 'Le ' + DateToStr(Now)+' â '+TimeToStr(Now)  );
              Canvas.TextOut(20, 80, 'L''utilisateur "'+UserCbx.Text+'" a ouvert le Tiroir Caisse');
              // Finish printing
              EndDoc;
            end;
            end;
            Ini.Free;
          end;
         //--------------------------------


         end else
             begin
              PasswordEdt.Clear;
              Close;
              LoginF.Top:=  (Screen.Width-Width)  div 2;
              LoginF.Left:= (Screen.Height-Height) div 2;
              LoginF.Show;
               
             end;
     


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
Function Wow64DisableWow64FsRedirection(Var Wow64FsEnableRedirection: LongBool): LongBool; StdCall;
  External 'Kernel32.dll' Name 'Wow64DisableWow64FsRedirection';
Function Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection: LongBool): LongBool; StdCall;
  External 'Kernel32.dll' Name 'Wow64EnableWow64FsRedirection';
  
function GetWindowsVersion: string;
begin
  result := 'Unknown (Windows ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + ')';
  case Win32MajorVersion of
    4:
      case Win32MinorVersion of
        0: result := 'Windows 95';
        10: result := 'Windows 98';
        90: result := 'Windows ME';
      end;
    5:
      case Win32MinorVersion of
        0: result := 'Windows 2000';
        1: result := 'Windows XP';
      end;
    6:
      case Win32MinorVersion of
        0: result := 'Windows Vista';
        1: result := 'Windows 7';
        2: result := 'Windows 8';
        3: result := 'Windows 8.1';
      end;
    10:
      case Win32MinorVersion of
        0: result := 'Windows 10';
      end;
  end;
end;

procedure TLoginUserF.PasswordEdtDblClick(Sender: TObject);
var    SEInfo: TShellExecuteInfo;
    ExitCode: DWORD;
    ExecuteFile, ParamString, StartInString: string;
    Wow64FsEnableRedirection: LongBool;
 begin

  if NOT  (GetWindowsVersion = 'Windows XP' )then
   begin

    if Wow64DisableWow64FsRedirection(Wow64FsEnableRedirection) then
    begin
  ExecuteFile:='C:\Windows\System32\osk.exe';
  FillChar(SEInfo, SizeOf(SEInfo), 0) ;
  SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
  with SEInfo do
   begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;      lpFile := PChar(ExecuteFile) ;
    { ParamString can contain the application parameters. }
  //   lpParameters := PChar('/C pg_dump -U postgres -W -F t GSTOCKDC > d:\dd') ;
    { StartInString specifies the name of the working directory. If ommited, the current directory is used. }
    // lpDirectory := PChar(StartInString) ;
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@SEInfo) then
  begin
  repeat
  Application.ProcessMessages;
  GetExitCodeProcess(SEInfo.hProcess, ExitCode) ;
  until (ExitCode <> STILL_ACTIVE)
  or Application.Terminated;

//  ShowMessage('Calculator terminated') ;
  end
  else
  ShowMessage('Error starting Keyboard!') ;

          if not Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection) then
       RaiseLastOSError;
    end
    else
    RaiseLastOSError;

  end;

 PasswordEdt.SetFocus;
   
end;

procedure TLoginUserF.PasswordEdtKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;

    LoginBtnClick(Sender);
  end;
end;

procedure TLoginUserF.PasswordEdtMouseEnter(Sender: TObject);
begin
   Application.HintPause := 500;      // 250 mSec before hint is shown
   Application.HintHidePause := 5000;
   PasswordEdt.ShowHint:= True;
   PasswordEdt.Hint:='Double-cliquez ici pour afficher le clavier';
end;

procedure TLoginUserF.PasswordEdtPropertiesChange(Sender: TObject);
begin

       PassCheckEroorGLbl.Visible:= False;
       PassCheckGErrorP.Visible:= False;
       UserCheckEroorGLbl.Visible:= False;
       UserCheckGErrorP.Visible:= False;

       PasswordEdt.Style.BorderStyle := ebsUltraFlat;
end;

procedure TLoginUserF.UserCbxChange(Sender: TObject);
begin
       PasswordEdt.Text:='';
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
