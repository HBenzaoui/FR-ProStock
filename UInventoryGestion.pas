unit UInventoryGestion;

interface

uses System.Contnrs,System.DateUtils,Winapi.MMSystem,
  EhLibFireDAC, DBGridEhImpExp,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, AdvToolBtn, acImage, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Data.DB, Vcl.Buttons, sSpeedButton, sStatusBar, frxExportPDF,
  frxClass, frxExportXLS, frxDBSet, Vcl.AppEvnts, frxExportBaseDialog;

type
  TInventoryGestionF = class(TForm)
    RequiredNametInvGlbl: TLabel;
    Label5: TLabel;
    DesInvGLbl: TLabel;
    NameInvGLbl: TLabel;
    ObserInvGLbl: TLabel;
    RefInvGGLbl: TLabel;
    NumInvGEdt: TLabel;
    ListAddProduitInvGBtn: TAdvToolButton;
    RequiredStarInvGLbl: TLabel;
    AddProduitInvGBtn: TAdvToolButton;
    NameInvGErrorP: TPanel;
    DateInvGD: TDateTimePicker;
    ObserInvGMem: TMemo;
    LineP: TPanel;
    BottomP: TPanel;
    NameInvGCbx: TcxComboBox;
    DesInvGEdt: TEdit;
    ValiderInvGLbl: TLabel;
    ValiderInvGImg: TsImage;
    ProduitsListDBGridEh: TDBGridEh;
    InvDataS: TDataSource;
    ResherchPARDesInvRdioBtn: TRadioButton;
    ResherchPARRefInvRdioBtn: TRadioButton;
    ResherchPARCBInvRdioBtn: TRadioButton;
    EnterAddProduitBonLivGBtn: TAdvToolButton;
    DeleteProduitInvGBtn: TAdvToolButton;
    ClearProduitInvGBtn: TAdvToolButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    Panel1: TPanel;
    CancelInvGBtn: TAdvToolButton;
    SaveInvGBtn: TAdvToolButton;
    SaveValideInvGBtn: TAdvToolButton;
    StatuBar: TsStatusBar;
    SumGirdBBVlivBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    S01: TPanel;
    Panel2: TPanel;
    frxINVDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    ProduitListSaveDg: TSaveDialog;
    INVfrxRprt: TfrxReport;
    ApplicationEvents1: TApplicationEvents;
    Label29: TLabel;
    Label32: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancelInvGBtnClick(Sender: TObject);
    procedure NameInvGCbxEnter(Sender: TObject);
    procedure ListAddProduitInvGBtnClick(Sender: TObject);
    procedure EnterAddProduitBonLivGBtnClick(Sender: TObject);
    procedure NameInvGCbxKeyPress(Sender: TObject; var Key: Char);
    procedure NameInvGCbxExit(Sender: TObject);
    procedure InvDataSDataChange(Sender: TObject; Field: TField);
    procedure DeleteProduitInvGBtnClick(Sender: TObject);
    procedure ClearProduitInvGBtnClick(Sender: TObject);
    procedure SaveInvGBtnClick(Sender: TObject);
    procedure SaveValideInvGBtnClick(Sender: TObject);
    procedure AddProduitInvGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ProduitsListDBGridEhCellClick(Column: TColumnEh);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProduitsListDBGridEhExit(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
  private

    procedure applyInventory;
    procedure insertDataToInvList(CodeP: Integer);
    procedure GettingData;

  public


    const INVLSQL = 'SELECT '
                    +' IL.code_il, IL.code_i, IL.code_p, P.refer_p, P.nom_p, '
                    +' (P.qut_p + P.qutini_p) AS quttheo_il, IL.qutphys_il, '
                    +' ((P.qut_p + P. qutini_p) - qutphys_il) * -1 AS calcgap_il, '
                    +' ((P.qut_p + P. qutini_p) * P.prixht_p) AS valtheo_il, '
                    +' (qutphys_il * P.prixht_p) AS valphys_il, '
                    +' ((((P.qut_p + P. qutini_p) - qutphys_il) * -1) * P.prixht_p) AS valgap_il, '
                    +' IL.gap_il, IL.prixht_p,IL.code_u, IL.code_l, U.nom_u, L.nom_l '
                    +' FROM inventory_list IL '
                    +' LEFT JOIN produit P '
                    +' ON IL.code_p = P.code_p '
                    +' LEFT JOIN unite U '
                    +' ON IL.code_u = U.code_u '
                    +' LEFT JOIN localisation L '
                    +' ON IL.code_l = L.code_l '
                    ;

  end;

var
  InventoryGestionF: TInventoryGestionF;

implementation

uses   Winapi.ShellAPI,
       UMainF, UDataModule, UFastProduitsList,
       USplashAddUnite, USplash, UInventory, UProduitsList;

{$R *.dfm}


 var
    gGrayForms: TComponentList;

procedure GrayFormsFI;
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
          wForm.AlphaBlendValue := 80;
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

procedure NormalFormsFI;
begin
  FreeAndNil(gGrayForms);
end;





//refresh datagrid data - preserve row position
procedure Refresh_PreservePosition;
 var
 rowDelta: Integer;
 row: integer;   recNo: integer;
 ds : TDataSet;
begin

   InventoryGestionF.ProduitsListDBGridEh.DataSource.DataSet.DisableControls;

   ds := TDBGridEh(InventoryGestionF.ProduitsListDBGridEh).DataSource.DataSet;
   rowDelta := -1 + TDBGridEh(InventoryGestionF.ProduitsListDBGridEh).Row;
   row := ds.RecNo;
   ds.Refresh;

   DataModuleF.Inventory_listTable.Close;
   DataModuleF.Inventory_listTable.Open;


   with ds do   begin
     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
     EnableControls;
     end;

   InventoryGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
 end;

procedure TInventoryGestionF.CancelInvGBtnClick(Sender: TObject);
begin

 close;

end;

procedure TInventoryGestionF.ClearProduitInvGBtnClick(Sender: TObject);
begin
  FSplashAddUnite:=TFSplashAddUnite.Create(Application);
  FSplashAddUnite.Width:=350;
  FSplashAddUnite.Height:=160;
  FSplashAddUnite.Panel1.Color:=  $004735F9;
  FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
  FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
  FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
  FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;

  FSplashAddUnite.NameAddUniteSLbl.Caption:='Voulez-vous vraiment supprimer tous  '+ sLineBreak +  sLineBreak +'les produits de ce Inventaire ?' ;
  FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  FSplashAddUnite.Image1.Visible:=True;
  FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression des Produits!!';
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
  FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
  FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
  FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 41 ;
end;

procedure TInventoryGestionF.DeleteProduitInvGBtnClick(Sender: TObject);
begin
  if  DataModuleF.Inventory_listTable.RecordCount = 1 then
 begin
    DataModuleF.Inventory_listTable.DisableControls;
    DataModuleF.Inventory_listTable.Refresh;
    DataModuleF.Inventory_listTable.Delete;
    ProduitsListDBGridEh.Refresh;
    DataModuleF.Inventory_listTable.EnableControls;
 end else
 if DataModuleF.Inventory_listTable.RecordCount <= 0 then
 begin
  exit;
 end
 else
     begin
      DataModuleF.Inventory_listTable.DisableControls;
      DataModuleF.Inventory_listTable.Delete;
      ProduitsListDBGridEh.Refresh;
      DataModuleF.Inventory_listTable.Refresh;
      DataModuleF.Inventory_listTable.EnableControls;
     end;

end;

procedure TInventoryGestionF.EnterAddProduitBonLivGBtnClick(Sender: TObject);
var key : char  ;
begin
  key := #13;
  NameInvGCbxKeyPress(Sender, key);
end;

procedure TInventoryGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
 Var CodeINV :Integer;
begin

  if Tag = 0 then
  begin
    CodeINV:= DataModuleF.InventoryTable.FieldByName('code_i').AsInteger;
    if (CodeINV <> 0) AND (CodeINV <> Null) then
    begin
     MainForm.GstockdcConnection.ExecSQL('DELETE FROM inventory_list WHERE code_i = ' + IntToStr(CodeINV));
     DataModuleF.InventoryTable.Delete;
    end;
  end;


 MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_inv');
 NormalFormsFI  ;
end;

procedure TInventoryGestionF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_inv') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_inv');
   end;

end;

procedure TInventoryGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
   key := #0;
   CancelInvGBtnClick(Sender);
  end;

//  if key = #13 then
//  begin
//   key := #0;
////   SaveInvGBtnClick(Sender);
//  end;
end;

procedure TInventoryGestionF.FormShow(Sender: TObject);
begin

  GrayFormsFI  ;

    if Tag = 0 then
    begin
     DateInvGD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

     DataModuleF.Inventory_listTable.Close;
     DataModuleF.Inventory_listTable.Open;

    end;

    if Tag = 1 then
    begin

      if DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean = True then
      begin

           DateInvGD.Enabled:=False;
           NameInvGCbx.Enabled:= False;
           DesInvGEdt.Enabled:=False;
           ObserInvGMem.Enabled:=False;

           ResherchPARDesInvRdioBtn.Enabled:=False;
           ResherchPARRefInvRdioBtn.Enabled:=False;
           ResherchPARCBInvRdioBtn.Enabled:=False;

           EnterAddProduitBonLivGBtn.Enabled:=False;
           ListAddProduitInvGBtn.Enabled:=False;
           AddProduitInvGBtn.Enabled:=False;

           DeleteProduitInvGBtn.Enabled:=False;
           DeleteProduitInvGBtn.ImageIndex:=36;;
           ClearProduitInvGBtn.Enabled:=False;
           ClearProduitInvGBtn.ImageIndex:=39;

           SaveInvGBtn.Enabled:=False;
           SaveValideInvGBtn.Enabled:=False;

           ProduitsListDBGridEh.Columns[4].TextEditing:=False;//True for A
           ProduitsListDBGridEh.Options:=
           ProduitsListDBGridEh.Options + [dgRowSelect]-[dgAlwaysShowSelection]-[dgMultiSelect] ; //flip + and -  for A
           ProduitsListDBGridEh.Color:= $00EFE9E8;// clWhite for A
           ProduitsListDBGridEh.FixedColor:=$00D9D7D3;//clwindow for A
           ProduitsListDBGridEh.EvenRowColor:=$00D9D7D3;//clwindow for A

           ValiderInvGImg.ImageIndex:=0;//1 fo A
           ValiderInvGLbl.Color:=$004AC38B;// $007374FF for A
           ValiderInvGLbl.Font.Color:= clBlack;// clWhite for A
           ValiderInvGLbl.Caption:='Validé';

      end else
          begin

             ValiderInvGImg.ImageIndex:=1;//0 fo D
             ValiderInvGLbl.Color:=$007374FF;// $004AC38B for D
             ValiderInvGLbl.Font.Color:= clWhite;// clBlack for D
             ValiderInvGLbl.Caption:='Pas encore Validé';

          end;

    end;

end;

procedure TInventoryGestionF.ListAddProduitInvGBtnClick(Sender: TObject);
begin
//-------- use this code to start creating th form-----//
  MainForm.ProduitTable.Filtered:=False;
  FastProduitsListF := TFastProduitsListF.Create(self);
  try
//-------- Show the splash screan for the produit familly to add new one---------//
  FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
  FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);
  FastProduitsListF.Tag := 10;
  FastProduitsListF.SelectAllLbl.Visible:=True;
  FastProduitsListF.SelectAllSdr.Visible:=True;
  FastProduitsListF.ShowModal;
  //use this tag = 1 for adding from bon livration

  finally
    FreeAndNil(FastProduitsListF);
  end;

 // FastProduitsListF.OKproduitGBtn.Enabled:=False;
 // produitGestionF.CancelProduitGBtn.Tag:=0;
end;

procedure TInventoryGestionF.NameInvGCbxEnter(Sender: TObject);
var
I : Integer;
KeyState: TKeyboardState;
begin

    if ResherchPARDesInvRdioBtn.Checked then
    begin

      NameInvGCbx.Properties.Items.Clear;
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT nom_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;
     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if ( MainForm.SQLQuery.FieldByName('nom_p').IsNull = False )  then
     begin
       NameInvGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
       MainForm.SQLQuery.Next;
      end;

    end;


    if ResherchPARRefInvRdioBtn.Checked then
    begin

      NameInvGCbx.Properties.Items.Clear;
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT refer_p FROM produit ORDER By code_p ';
      MainForm.SQLQuery.Active := True;

      MainForm.SQLQuery.first;
     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if ( MainForm.SQLQuery.FieldByName('refer_p').IsNull = False )  then
     begin
       NameInvGCbx.Properties.Items.Add(MainForm.SQLQuery.FieldByName('refer_p').AsString);
       MainForm.SQLQuery.Next;
      end;

    end;

    if ResherchPARCBInvRdioBtn.Checked then
    begin

      NameInvGCbx.Properties.Items.Clear;

      //turn on CapsLock when enter edit to make sure codebare read well
      GetKeyboardState(KeyState);
      if (KeyState[VK_CAPITAL]=0) then
      begin
        // Simulate a "CAPS LOCK" key release
        Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
        // Simulate a "CAPS LOCK" key press
        Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
      end;


    end;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;

end;

procedure TInventoryGestionF.NameInvGCbxExit(Sender: TObject);
begin
NameInvGCbx.Text:='';
end;


procedure TInventoryGestionF.insertDataToInvList(CodeP: Integer);
Var CodeINV, CodeINVL :Integer;
Qut :Double;

begin

 if Tag = 0 then
   begin

     if DataModuleF.InventoryTable.IsEmpty then
     begin
      CodeINV := 01;
     end else
     begin
      DataModuleF.InventoryTable.Last;
      CodeINV:= DataModuleF.InventoryTable.FieldByName('code_i').AsInteger;
     end;

   end else
   begin

    CodeINV:= DataModuleF.InventoryTable.FieldByName('code_i').AsInteger;

   end;

  if  MainForm.SQLQuery.RecordCount > 0  then
  begin

    MainForm.SQLQuery3.Active:=False;
    MainForm.SQLQuery3.SQL.Clear;
    MainForm.SQLQuery3.SQl.Text:='SELECT code_p, qut_p, qutini_p FROM produit WHERE code_p = '+ IntToStr(CodeP);
    MainForm.SQLQuery3.Active:=True;

    Qut:= MainForm.SQLQuery3.FieldByName('qut_p').AsFloat + MainForm.SQLQuery3.FieldByName('qutini_p').AsFloat ;

    DataModuleF.Inventory_listTable.DisableControls;
    DataModuleF.Inventory_listTable.IndexFieldNames:='';
    DataModuleF.Inventory_listTable.Active:=False;
    DataModuleF.Inventory_listTable.SQL.Clear;
    DataModuleF.Inventory_listTable.SQL.Text:= INVLSQL+' ORDER by code_il  ' ;
    DataModuleF.Inventory_listTable.Active:=True;

     if  DataModuleF.Inventory_listTable.IsEmpty then
     begin
       CodeINVL := 1;
     end else
         begin
          DataModuleF.Inventory_listTable.Last;
          CodeINVL:= DataModuleF.Inventory_listTable.FieldValues['code_il'] + 1 ;
         end;

     DataModuleF.Inventory_listTable.Append;
     DataModuleF.Inventory_listTable.FieldByName('code_il').AsInteger:= CodeINVL ;
     DataModuleF.Inventory_listTable.FieldByName('code_i').AsInteger:=  CodeINV;
     DataModuleF.Inventory_listTable.FieldByName('code_p').AsInteger:=  CodeP ;
     DataModuleF.Inventory_listTable.FieldByName('qutphys_il').AsFloat := Qut;


    DataModuleF.Inventory_listTable.Post ;
    DataModuleF.Inventory_listTable.IndexFieldNames:='code_i';

    DataModuleF.Inventory_listTable.Active:=False;
    DataModuleF.Inventory_listTable.SQL.Clear;
    DataModuleF.Inventory_listTable.SQL.Text:= INVLSQL+' WHERE code_i = ' + IntToStr(CodeINV) +' ';
    DataModuleF.Inventory_listTable.Active:=True;

    NameInvGCbx.Text:='';
    ProduitsListDBGridEh.SetFocus;

   ProduitsListDBGridEh.SelectedIndex:=4;
   ProduitsListDBGridEh.EditorMode:=True;

   DataModuleF.Inventory_listTable.EnableControls;
   DataModuleF.Inventory_listTable.Last;


    MainForm.SQLQuery3.Active:=False;
    MainForm.SQLQuery3.SQL.Clear;

    end;

end;

procedure TInventoryGestionF.InvDataSDataChange(Sender: TObject; Field: TField);
begin

  if NOT InvDataS.DataSet.IsEmpty  then
  begin

   if DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean = False then
   begin
     DeleteProduitInvGBtn.Visible:= True;
     ClearProduitInvGBtn.Visible:= True;

     SaveInvGBtn.Enabled:=True;
     SaveValideInvGBtn.Enabled:=True;
   end;

  end else
      begin
        DeleteProduitInvGBtn.Visible:= False;
        ClearProduitInvGBtn.Visible:= False;

        SaveInvGBtn.Enabled:=False;
        SaveValideInvGBtn.Enabled:=False;

      end;

end;

procedure TInventoryGestionF.NameInvGCbxKeyPress(Sender: TObject;
  var Key: Char);
  var CodeCB,CodeP : Integer;
  const
  N = ['-', '&', '"', '(', ')', '_',',','.'];
begin
 if key = #13 then
 begin
  if (NameInvGCbx.Text <>'') AND NOT (NameInvGCbx.Text[1] in N ) then
  begin
   key := #0;

   if ResherchPARDesInvRdioBtn.Checked then
   begin

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,prixht_p,code_l,code_u FROM produit WHERE LOWER(nom_p) LIKE LOWER('
        +QuotedStr(NameInvGCbx.Text)+')';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

        insertDataToInvList(CodeP);

   end;
//--------------------------------------------------------------------------------------------------------------------
   if ResherchPARRefInvRdioBtn.Checked then
   begin
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,prixht_p,code_l,code_u FROM produit WHERE LOWER(refer_p) LIKE LOWER('
        +QuotedStr(NameInvGCbx.Text)+')';
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

        insertDataToInvList(CodeP);

   end;
 //---------------------------------------------------------------------------------------------
   if ResherchPARCBInvRdioBtn.Checked then
   begin
    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE LOWER(nom_cb) LIKE LOWER(' +''+ QuotedStr( NameInvGCbx.Text )+')' ;
    MainForm.SQLQuery.Active:=True;
    if MainForm.SQLQuery.FieldValues['code_p'] <> null then
    begin
     CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
    end;

    MainForm.SQLQuery.Active:=False;
    MainForm.SQLQuery.SQL.Clear;
    MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,prixht_p,code_l,code_u FROM produit WHERE code_p = '+QuotedStr(IntToStr(CodeCB)) +'OR'+ ' LOWER(codebar_p) LIKE LOWER(' + QuotedStr(NameInvGCbx.Text)+')';
    MainForm.SQLQuery.Active:=True;
    CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

    insertDataToInvList(CodeP);

   end;

   MainForm.SQLQuery.Active:=False;
   MainForm.SQLQuery.SQL.Clear;

   DataModuleF.Inventory_listTable.Refresh;
   DataModuleF.Inventory_listTable.Last;
   NameInvGCbx.SelectAll;

     end else
         begin
           NameInvGCbx.Text:= '';
         end;


 end;

end;

procedure TInventoryGestionF.ProduitsListDBGridEhCellClick(Column: TColumnEh);
begin

 Refresh_PreservePosition;

end;

procedure TInventoryGestionF.ProduitsListDBGridEhExit(Sender: TObject);
begin
    Refresh_PreservePosition;
end;

procedure TInventoryGestionF.ProduitsListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//Use this trick tp pervent wierd error show up (erro happen when cursor on last row and hit down)
  if (key = VK_DOWN) AND (DataModuleF.Inventory_listTable.RecNo=DataModuleF.Inventory_listTable.RecordCount)then
  begin

    key := VK_RETURN;

  end;
end;

procedure TInventoryGestionF.ProduitsListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key=#13 ) OR (Key=#9) then
  begin
         Refresh_PreservePosition;
   with TDBGridEh(Sender) do
      begin
     if SelectedIndex < (FieldCount-1) then
     SelectedIndex := SelectedIndex+1
     else
     SelectedIndex := 0;
    end;
   end;
end;

procedure TInventoryGestionF.SaveInvGBtnClick(Sender: TObject);
Var UpdateSQL,PCount :String;
    CodeINV :Integer;
begin

    //Update gap_il
    DataModuleF.Inventory_listTable.DisableControls;
    DataModuleF.Inventory_listTable.First;
    while NOT DataModuleF.Inventory_listTable.Eof do
    begin
      DataModuleF.Inventory_listTable.Edit;
      DataModuleF.Inventory_listTable.FieldByName('gap_il').AsFloat:=
      DataModuleF.Inventory_listTable.FieldByName('calcgap_il').AsFloat;
      DataModuleF.Inventory_listTable.Post;

      DataModuleF.Inventory_listTable.Next;
    end;
    DataModuleF.Inventory_listTable.EnableControls;


     CodeINV:=  DataModuleF.InventoryTable.FieldByName('code_i').AsInteger;
     PCount:=   IntToStr(InvDataS.DataSet.RecordCount);
     UpdateSQL:= ' UPDATE inventory SET nump_i ='+ QuotedStr(PCount) +'WHERE code_i = '+ IntToStr(CodeINV) +';';

   if Tag = 0 then
   begin

         DataModuleF.InventoryTable.Edit;
         DataModuleF.InventoryTable.FieldByName('num_i').AsString:= NumInvGEdt.Caption;
         DataModuleF.InventoryTable.FieldByName('date_i').AsDateTime:= DateInvGD.Date;
         DataModuleF.InventoryTable.FieldByName('time_i').AsdateTime:=TimeOf(Now);
         DataModuleF.InventoryTable.FieldByName('nom_i').AsString :=  DesInvGEdt.Text;
         DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean := False ;
         if ProduitsListDBGridEh.FieldColumns['calcgap_il'].Footer.SumValue <> 0 then
         begin
            DataModuleF.InventoryTable.FieldByName('totalpgap_i').AsFloat:=  ProduitsListDBGridEh.FieldColumns['calcgap_il'].Footer.SumValue;
         end else
             begin
               DataModuleF.InventoryTable.FieldByName('totalpgap_i').AsFloat:= StrToFloat('0') ;
             end;
         MainForm.SQLQuery.ExecSQL(UpdateSQL) ;
         DataModuleF.InventoryTable.FieldByName('obser_i').AsString  := ObserInvGMem.Text;
         DataModuleF.InventoryTable.FieldByName('code_ur').AsInteger:= StrToInt( MainForm.UserIDLbl.Caption);
         DataModuleF.InventoryTable.Post ;

         DataModuleF.InventoryTable.Refresh;
         DataModuleF.InventoryTable.Last;

   end;

   if Tag = 1 then
   begin

         DataModuleF.InventoryTable.Edit;
         DataModuleF.InventoryTable.FieldByName('num_i').AsString:= NumInvGEdt.Caption;
         DataModuleF.InventoryTable.FieldByName('date_i').AsDateTime:= DateInvGD.Date;
         DataModuleF.InventoryTable.FieldByName('time_i').AsdateTime:=TimeOf(Now);
         DataModuleF.InventoryTable.FieldByName('nom_i').AsString :=  DesInvGEdt.Text;
         DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean := False ;
         if ProduitsListDBGridEh.FieldColumns['calcgap_il'].Footer.SumValue <> 0 then
         begin
            DataModuleF.InventoryTable.FieldByName('totalpgap_i').AsFloat:= ProduitsListDBGridEh.FieldColumns['calcgap_il'].Footer.SumValue ;
         end else
             begin
               DataModuleF.InventoryTable.FieldByName('totalpgap_i').AsFloat:= StrToFloat('0') ;
             end;
         MainForm.SQLQuery.ExecSQL(UpdateSQL) ;
         DataModuleF.InventoryTable.FieldByName('obser_i').AsString  := ObserInvGMem.Text;
         DataModuleF.InventoryTable.FieldByName('code_ur').AsInteger:= StrToInt( MainForm.UserIDLbl.Caption);
         DataModuleF.InventoryTable.Post ;

         DataModuleF.InventoryTable.Refresh;


   end;

   begin
      FSplash := TFSplash.Create(InventoryGestionF);
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
   Tag := 1 ;//This is to prevent deleting invontlry when close
   Close;


end;


procedure TInventoryGestionF.AddProduitInvGBtnClick(Sender: TObject);
begin
ProduitsListF.AddProduitsBtnClick(Sender);
end;

procedure TInventoryGestionF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:=  'Inventaire N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger)]);;
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(ProduitsListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;
end;


procedure TInventoryGestionF.GettingData;
var
  NameRX,NumRX,DateRX,Agent : TfrxMemoView;
begin

    if NOT InvDataS.DataSet.IsEmpty then
    begin

      NumRX:= INVfrxRprt.FindObject('NumRX') as TfrxMemoView;
      NumRX.Text:= NumInvGEdt.Caption;

      DateRX:= INVfrxRprt.FindObject('DateRX') as TfrxMemoView;
      DateRX.Text:= DateToStr(DateInvGD.Date);

      NameRX:= INVfrxRprt.FindObject('NameRX') as TfrxMemoView;
      NameRX.Text:= DesInvGEdt.Text;

    end;


end;


procedure TInventoryGestionF.AdvToolButton2Click(Sender: TObject);
begin
DataModuleF.Inventory_listTable.DisableControls;

    GettingData;

  INVfrxRprt.PrepareReport;
  frxPDFExport1.FileName := 'Inventaire N° '
  +IntToStr(YearOf(Today)) + '-' + Format('%.*d', [5,(DataModuleF.InventoryTable.FieldByName('code_i').AsInteger)]);
  INVfrxRprt.Export(frxPDFExport1);


DataModuleF.Inventory_listTable.EnableControls;
end;

procedure TInventoryGestionF.AdvToolButton3Click(Sender: TObject);
begin
  DataModuleF.Inventory_listTable.DisableControls;

   GettingData;

  INVfrxRprt.PrepareReport;
  INVfrxRprt.ShowReport;

  DataModuleF.Inventory_listTable.EnableControls;
end;

procedure TInventoryGestionF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
var
  I: Integer;
begin

  if (Showing) and ((WindowState = wsMaximized) or (WindowState = wsNormal)) then
  begin

   //--- this is to clear the bon --------------------------
    if (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_DELETE) < 0) and (SaveInvGBtn.Enabled = True) then
    begin
      ClearProduitInvGBtnClick(Screen);

      Handled := true;
    end;

   //--- this is to focus in produit --------------------------
    if (GetKeyState(VK_F3) < 0) and (SaveInvGBtn.Enabled = True) then
    begin
      NameInvGCbx.SetFocus;
      Handled := true;
    end;



 //--- this is to switch between produits and quntity--------------------------
    if (GetKeyState(VK_F6) < 0) and (SaveInvGBtn.Enabled = True) then
    begin
      ProduitsListDBGridEh.SetFocus;
      if ProduitsListDBGridEh.SelectedField.FieldName <> 'qutphys_il' then
      begin
        for I := 0 to ProduitsListDBGridEh.FieldCount do
        begin
          if ProduitsListDBGridEh.SelectedField.FieldName = 'qutphys_il' then
          begin
            ProduitsListDBGridEh.SelectedIndex := I - 1;
            Handled := true;
            Break;
          end
          else
          begin
            ProduitsListDBGridEh.SelectedIndex := I;
          end;
        end;
      end;
      Handled := true;
    end;


 //--- this is to show the list produits -------------------------
    if (GetKeyState(VK_F8) < 0) and (ListAddProduitInvGBtn.Enabled = True) then
    begin
      ListAddProduitInvGBtnClick(Screen);

      Handled := true;
    end;
 //--- this is to save the bon--------------------------
    if (GetKeyState(VK_F9) < 0) and (SaveInvGBtn.Enabled = True) then
    begin

      SaveInvGBtnClick(Screen);

      Handled := true;
    end;

 //--- this is for fast save and validate--------------------------
    if (GetKeyState(VK_F10) < 0) and (SaveInvGBtn.Enabled = True) then
    begin

      SaveValideInvGBtnClick(Screen);

      Handled := true;
    end;


   //--- this is for new produit--------------------------
    if (GetKeyState(VK_F11) < 0) and (AddProduitInvGBtn.Enabled = True) then
    begin

      AddProduitInvGBtnClick(Screen);

      Handled := true;
    end;

  end;

end;

procedure TInventoryGestionF.applyInventory();
Var CodeP :Integer;
    QutPh,QutIni :Double;

begin

 DataModuleF.Inventory_listTable.DisableControls;
 DataModuleF.Inventory_listTable.First;
 while NOT DataModuleF.Inventory_listTable.Eof do
 begin

   CodeP:= DataModuleF.Inventory_listTable.FieldByName('code_p').AsInteger;
   QutPh:= DataModuleF.Inventory_listTable.FieldByName('qutphys_il').AsFloat;

   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:= 'SELECT code_p, qut_p, qutini_p  FROM produit WHERE code_p = '+ IntToStr(CodeP);
   MainForm.SQLQuery.Active:= True;

   QutIni:=MainForm.SQLQuery.FieldByName('qutini_p').AsFloat;

   MainForm.SQLQuery.Edit;
   MainForm.SQLQuery.FieldByName('qut_p').AsFloat:= (QutPh - QutIni);
   MainForm.SQLQuery.Post;

   DataModuleF.Inventory_listTable.Next;
 end;
 DataModuleF.Inventory_listTable.EnableControls;

 MainForm.SQLQuery.Active:= False;
 MainForm.SQLQuery.SQL.Clear;

end;

procedure TInventoryGestionF.SaveValideInvGBtnClick(Sender: TObject);
begin

 applyInventory();
 SaveInvGBtnClick(Sender);

 DataModuleF.InventoryTable.Edit;
 DataModuleF.InventoryTable.FieldByName('valider_i').AsBoolean := True ;
 DataModuleF.InventoryTable.Post;

end;

procedure TInventoryGestionF.sSpeedButton4Click(Sender: TObject);
begin
  DataModuleF.Inventory_listTable.Last;
end;

procedure TInventoryGestionF.sSpeedButton5Click(Sender: TObject);
begin
  DataModuleF.Inventory_listTable.Next;
end;

procedure TInventoryGestionF.sSpeedButton6Click(Sender: TObject);
begin
  DataModuleF.Inventory_listTable.Prior;
end;

procedure TInventoryGestionF.sSpeedButton7Click(Sender: TObject);
begin
  DataModuleF.Inventory_listTable.First;
end;

end.
