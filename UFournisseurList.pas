unit UFournisseurList;

interface

uses
  Winapi.Windows,MMsystem,DBGridEhImpExp,ShellAPI,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  EhLibFireDAC, DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Data.DB, Vcl.ComCtrls, sStatusBar, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.OleAuto,ExcelXP, Vcl.AppEvnts, acImage,
  frxExportBaseDialog;

type
  TFournisseurListF = class(TForm)
    FournisseursListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditFournisseursBtn: TAdvToolButton;
    DeleteFournisseursBtn: TAdvToolButton;
    AddFournisseursBtn: TAdvToolButton;
    ResearchFournisseursLbl: TLabel;
    toutFournisseursLbl: TLabel;
    PassifFournisseursLbl: TLabel;
    ActifFournisseursLbl: TLabel;
    LineP: TPanel;
    Panel1: TPanel;
    S02: TPanel;
    ResearchFournisseurEdt: TSearchBox;
    ActifFournisseursRdioBtn: TRadioButton;
    PassifFournisseursRdioBtn: TRadioButton;
    toutFournisseursRdioBtn: TRadioButton;
    Panel2: TPanel;
    FournisseurListDataS: TDataSource;
    Panel3: TPanel;
    sSpeedButton3: TsSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxFournisseurListDB: TfrxDBDataset;
    FourListfrxRprt: TfrxReport;
    LastClientbtn: TsSpeedButton;
    NextClientbtn: TsSpeedButton;
    FisrtFournisseursbtn: TsSpeedButton;
    PreviosClientbtn: TsSpeedButton;
    Panel4: TPanel;
    StatuBar: TsStatusBar;
    SumGirdBBVlivBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel6: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel7: TPanel;
    ExcelExportPMenu: TPopupMenu;
    e1: TMenuItem;
    ExporterverExcel1: TMenuItem;
    ProduitListOpnDg: TOpenDialog;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ApplicationEvents1: TApplicationEvents;
    FilterBVLivBtn: TAdvToolButton;
    sImage1: TsImage;
    FilterBVLivPMenu: TPopupMenu;
    F1: TMenuItem;
    ValideFilterBVLivPMenu: TMenuItem;
    NotValideFilterBVLivPMenu: TMenuItem;
    N2: TMenuItem;
    ClearValideFilterBVLivPMenu: TMenuItem;
    F3: TMenuItem;
    RegleFilterBVLivPMenu: TMenuItem;
    NoTRegleFilterBVLivPMenu: TMenuItem;
    N1: TMenuItem;
    ClearRegleFilterBVLivPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    Crdit1: TMenuItem;
    sImage2: TsImage;
    ProduitListSaveDg: TSaveDialog;
    AdvToolButton4: TAdvToolButton;
    procedure ResearchFournisseurEdtKeyPress(Sender: TObject; var Key: Char);
    procedure ResearchFournisseurEdtChange(Sender: TObject);
    procedure FisrtFournisseursbtnClick(Sender: TObject);
    procedure LastClientbtnClick(Sender: TObject);
    procedure PreviosClientbtnClick(Sender: TObject);
    procedure NextClientbtnClick(Sender: TObject);
    procedure AddFournisseursBtnClick(Sender: TObject);
    procedure EditFournisseursBtnClick(Sender: TObject);
    procedure DeleteFournisseursBtnClick(Sender: TObject);
    procedure ActifFournisseursRdioBtnClick(Sender: TObject);
    procedure PassifFournisseursRdioBtnClick(Sender: TObject);
    procedure toutFournisseursRdioBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FournisseursListDBGridEhDblClick(Sender: TObject);
    procedure FournisseursListDBGridEhKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure FournisseursListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FournisseursListDBGridEhTitleBtnClick(Sender: TObject;
      ACol: Integer; Column: TColumnEh);
    procedure FournisseursListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure SumGirdBBVlivBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure e1Click(Sender: TObject);
    procedure ExporterverExcel1Click(Sender: TObject);
    procedure ResearchFournisseurEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure RegleFilterBVLivPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure Crdit1Click(Sender: TObject);
    procedure ClearRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
  private
    procedure GettingData;
    procedure Select_Valid;
    procedure Select_ALL;
    procedure Select_NOT_Valid;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    procedure Select_Valid_Credit;
    procedure Select_Valid_Debite;
    procedure Select_Valid_Regle;
    procedure Select_NOT_Valid_Credit;
    procedure Select_NOT_Valid_Debite;
    procedure Select_NOT_Valid_Regle;
    function isFourExistInClientList(NameF: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FournisseurListF: TFournisseurListF;

implementation

{$R *.dfm}

uses UMainF, UFournisseurGestion, USplash, UClientGestion,Threading, UWorkingSplash, UComptoir, USplashPrintReport;


procedure TFournisseurListF.Select_Valid;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = true ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;



procedure TFournisseurListF.Select_NOT_Valid;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = false ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;


procedure TFournisseurListF.Select_ALL;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;


procedure TFournisseurListF.Select_Valid_Credit;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = true AND credit_f > ''0'' ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.Select_Valid_Debite;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = true AND credit_f < ''0'' ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.Select_Valid_Regle;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = true AND credit_f = ''0'' ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;


procedure TFournisseurListF.Select_NOT_Valid_Credit;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = false AND credit_f > ''0'' ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.Select_NOT_Valid_Debite;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = false AND credit_f < ''0'' ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.Select_NOT_Valid_Regle;
begin
MainForm.FournisseurTable.DisableControls;
MainForm.FournisseurTable.Active:= False;
MainForm.FournisseurTable.SQL.clear;
mainform.FournisseurTable.sql.Text:='SELECT * FROM fournisseur WHERE activ_f = false AND credit_f = ''0'' ';
MainForm.FournisseurTable.Active:= True;
MainForm.FournisseurTable.EnableControls;
end;


procedure TFournisseurListF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E;
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TFournisseurListF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8;
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;


//----- this is a function for custome  Messagedlg  French Caption and buttons and default NON --------//

function MyMessageDlg(CONST Msg: string; DlgTypt: TmsgDlgType; button: TMsgDlgButtons;
  Caption: ARRAY OF string; dlgcaption: string; DefaultBtn: TMsgDlgBtn ): Integer;
var
  aMsgdlg: TForm;
  i: Integer;
  Dlgbutton: Tbutton;
  Captionindex: Integer;

begin
  aMsgdlg := createMessageDialog(Msg, DlgTypt, button,DefaultBtn);
  aMsgdlg.Caption := dlgcaption;
  Captionindex := 0 ;

  for i := 0 to aMsgdlg.componentcount - 1 Do
  begin
    if (aMsgdlg.components[i] is Tbutton) then
    Begin
      Dlgbutton := Tbutton(aMsgdlg.components[i]);
      if Captionindex <= High(Caption) then
        Dlgbutton.Caption := Caption[Captionindex];
      inc(Captionindex);
    end;
  end;
  Result := aMsgdlg.Showmodal;
end;

procedure TFournisseurListF.ActifFournisseursRdioBtnClick(Sender: TObject);
begin

  ResearchFournisseurEdt.Text:= '';
  ResearchFournisseurEdt.SetFocus;


  MainForm.FournisseurTable.DisableControls;

  MainForm.FournisseurTable.Active := false;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text :=
  'SELECT * FROM fournisseur WHERE activ_f = true ORDER BY code_f ';
  MainForm.FournisseurTable.Active := true;



    MainForm.FournisseurTable.EnableControls;



end;

procedure TFournisseurListF.AddFournisseursBtnClick(Sender: TObject);
begin
 //-------- Show the splash screan for the produit familly to add new one---------//

    FournisseurGestionF:=TFournisseurGestionF.Create(FournisseurListF);
    FournisseurGestionF.FournisseurGPgControl.TabIndex:= 0;
    FournisseurGestionF.Left:=  (Screen.Width div 2 ) - (FournisseurGestionF.Width div 2)    ;
    FournisseurGestionF.Top:=   (Screen.Height div 2) - (FournisseurGestionF.Height div 2)    ;
    FournisseurGestionF.Show;
    FournisseurGestionF.NameFournisseurGEdt.SetFocus;
    FournisseurGestionF.OKFournisseurGBtn.Tag:= 0 ;
end;

procedure TFournisseurListF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.FournisseurTable.DisableControls;

    GettingData;

FourListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat liste des Fournisseurs';
FourListfrxRprt.Export(frxPDFExport1);

MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.FournisseurTable.DisableControls;

   GettingData;

  FourListfrxRprt.PrepareReport;
  FourListfrxRprt.ShowReport;

  MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.AdvToolButton4Click(Sender: TObject);
begin
//-------- Show the splash screan for the Type de charge to add new one---------//
    FSplashPrintReport:=TFSplashPrintReport.Create(FournisseurListF);
    FSplashPrintReport.Image1.ImageIndex:=17;
    FSplashPrintReport.ListClientFourGBtn.ImageIndex:=59;
    FSplashPrintReport.Panel1.Caption:='Impression de Fournisseur Situation';
    FSplashPrintReport.Label5.Caption:='Four:';
    FSplashPrintReport.RequiredRegCGlbl.Caption:='S''il vous plaît entrer le nom de le Fournisseur';
    FSplashPrintReport.Tag:=1;


    FSplashPrintReport.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashPrintReport.Width div 2);
    FSplashPrintReport.Top:=  MainForm.Top + 5 ;

    if NOT (MainForm.FournisseurTable.IsEmpty) AND (MainForm.FournisseurTable.FieldByName('code_f').AsInteger <> 0 ) then
    begin

      FSplashPrintReport.NameReportPCbx.Text:= MainForm.FournisseurTable.FieldByName('nom_f').AsString;

    end;

    AnimateWindow(FSplashPrintReport.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashPrintReport.Show;

end;

procedure TFournisseurListF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if Assigned(BonCtrGestionF) then
 begin
 if (BonCtrGestionF.Showing = False)  then
 begin
 if (FournisseurListF.Active = True)  AND  (Assigned(FournisseurGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddFournisseursBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditFournisseursBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteFournisseursBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (FournisseurListF.Active = True)  AND (FournisseurGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddFournisseursBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditFournisseursBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteFournisseursBtnClick(Screen);
            Handled := true;
          end;
             if  (GetKeyState(VK_F12) < 0)  then
          begin
            AdvToolButton3Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
 end;
 end else
     begin
       if (FournisseurListF.Active = True)  AND  (Assigned(FournisseurGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddFournisseursBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditFournisseursBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteFournisseursBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (FournisseurListF.Active = True)  AND (FournisseurGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddFournisseursBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditFournisseursBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteFournisseursBtnClick(Screen);
            Handled := true;
          end;
             if  (GetKeyState(VK_F12) < 0)  then
          begin
            AdvToolButton3Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
     end;
end;

procedure TFournisseurListF.ClearFilterBVLivPMenuClick(Sender: TObject);
begin
sImage1.Visible:= False;
sImage2.Visible:= False;
F1.Enabled:= True;
FilterBVLivBtn.ImageIndex:=49;
NOT_FilteredColor;
ClearValideFilterBVLivPMenu.Checked:= True;
ClearFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
MainForm.Bonv_livTable.Filtered:= False;
Select_ALL;
end;

procedure TFournisseurListF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 sImage2.Visible:= False;
 RegleFilterBVLivPMenu.Enabled:= True;

  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex := 50;
end;


procedure TFournisseurListF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
begin
  if (sImage2.Visible = False)  then
  begin
  FilterBVLivBtn.ImageIndex:=50;
  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  end else
  begin
   if sImage2.ImageIndex = 7 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
   Select_NOT_Valid_Credit;
  end;
    if sImage2.ImageIndex = 33 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
  Select_NOT_Valid_Debite;
  end;
    if sImage2.ImageIndex = 9 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
  Select_NOT_Valid_Regle;
  end;

  end;
end;

procedure TFournisseurListF.Crdit1Click(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=9;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= False;
FilteredColor;
Select_Valid_Regle;
end;

procedure TFournisseurListF.DeleteFournisseursBtnClick(Sender: TObject);
Var CodeF : integer;
begin

//-------------------------------------------------------------------------------------------------

 if not FournisseursListDBGridEh.DataSource.DataSet.IsEmpty then
   begin
   CodeF:= MainForm.FournisseurTable.FieldByName('code_f').AsInteger ;
         // ------ this code is to check if the produit are in bons if it is the user cant delte it ------------
      MainForm.SQLQuery.Active:= False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:=
      'select * '
     +  'from (   '
     +   'select code_f as code_f from bona_rec '
     +   'union all '
     +   'select code_f from regfournisseur '
     +   'union all '
     +   'select code_f from bona_fac '
     +     ') a '
     +     'where code_f = '+IntToStr(MainForm.FournisseurTable.FieldByName('code_f').AsInteger) ;

      MainForm.SQLQuery.Active:= True;
   if MainForm.SQLQuery.IsEmpty then
   begin

    GrayForms;
     with MainForm.FournisseurTable do  begin

    if MyMessageDlg('Ėtes-vous sûr de vouloir supprimer le Fournisseur : '
       + sLineBreak +  QuotedStr(fieldbyname('nom_f').Value) , mtConfirmation, [mbYes,mbNo], ['Oui','Non'],'Attention', mbNo )  = mrYes then
       begin

      MainForm.FournisseurTable.Delete;

      MainForm.FournisseurTable.Refresh;

        MainForm.FournisseurTable.DisableControls;

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
      MainForm.FournisseurTable.Active := true;

     ActifFournisseursLbl.Caption :=  IntToStr(MainForm.FournisseurTable.RecordCount);

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f ';
      MainForm.FournisseurTable.Active := true;

      PassifFournisseursLbl.Caption :=IntToStr(MainForm.FournisseurTable.RecordCount);

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur ORDER BY code_f ';
      MainForm.FournisseurTable.Active := true;

      ToutFournisseursLbl.Caption := IntToStr(MainForm.FournisseurTable.RecordCount);

      if ActifFournisseursRdioBtn.Checked then
       begin
        MainForm.FournisseurTable.Active := false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text :=
        'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
        MainForm.FournisseurTable.Active := true;
       end;

       if PassifFournisseursRdioBtn.Checked then
       begin
        MainForm.FournisseurTable.Active := false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text :=
        'SELECT * FROM fournisseur  WHERE activ_f = false ORDER BY code_f';
        MainForm.FournisseurTable.Active := true;
       end;

       if toutFournisseursRdioBtn.Checked then
       begin
        MainForm.FournisseurTable.Active := false;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text :=
        'SELECT * FROM fournisseur ORDER BY code_f';
        MainForm.FournisseurTable.Active := true;
       end;

      MainForm.FournisseurTable.EnableControls;

      FSplash := TFSplash.Create(FournisseurListF);
      try
        FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
        FSplash.Top := 0;

        FSplash.Label1.Caption:='  Suppression avec succés';
        FSplash.Color:= $004735F9;
        AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE);
        sleep(250);
        AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR
          AW_SLIDE OR AW_HIDE);
      finally
        FSplash.free;
      end;
        NormalForms;
        sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

       MainForm.FournisseurTable.FindNearest([CodeF]);
        
    end     else
     NormalForms
    end;
     end else
         begin
            sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
//            TTask.Run ( procedure
//            begin
             FSplash := TFSplash.Create(nil);
              try
                FSplash.Left := MainForm.Width - FSplash.Width - 15 ;                   
                FSplash.Top := (MainForm.Height - FSplash.Height ) - 15 ;
                 FSplash.Label1.Font.Height:=21;
                FSplash.Label1.Caption:='Suppressions ne sont pas autorisés!';
                FSplash.Color:= $004735F9;
                AnimateWindow(FSplash.Handle, 100, AW_HOR_NEGATIVE OR AW_SLIDE OR AW_ACTIVATE);
                sleep(700);
                AnimateWindow(FSplash.Handle, 100, AW_HOR_POSITIVE OR
                  AW_SLIDE OR AW_HIDE);
              finally
                FSplash.free;
              end;
//            end);
         end;
 end;
end;

procedure TFournisseurListF.e1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'Etat liste des Fournisseurs';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(FournisseursListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;


//MainForm.FournisseurTable.DisableControls;
//
//    GettingData;
//
//FourListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Etat liste des Fournisseurs';
//FourListfrxRprt.Export(frxXLSExport1);
//
//MainForm.FournisseurTable.EnableControls;
end;


function TFournisseurListF.isFourExistInClientList(NameF :string) : Boolean;

begin

   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:= 'SELECT LOWER(nom_c) FROM client WHERE LOWER(nom_c) LIKE '+ QuotedStr(LowerCase(NameF));
   MainForm.SQLQuery.Active:= True;

     if  MainForm.SQLQuery.IsEmpty then
     begin
       Result := False;

     end else
         begin
             Result := True;
         end;

   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.SQL.Clear;
end;


procedure TFournisseurListF.EditFournisseursBtnClick(Sender: TObject);
begin

 if NOT MainForm.FournisseurTable.IsEmpty then
 begin

    //----------------- Show the splash screan for the produit familly to add new one---------//
   FournisseurGestionF:=TFournisseurGestionF.Create(FournisseurListF);
   FournisseurGestionF.FournisseurGPgControl.TabIndex:= 0;
   FournisseurGestionF.Left:=  ( Screen.Width div 2 ) - (FournisseurGestionF.Width div 2)    ;
   FournisseurGestionF.Top:=   (Screen.Height div 2) - (FournisseurGestionF.Height div 2)    ;
   FournisseurGestionF.OKFournisseurGBtn.Tag:= 1 ;

   //----------------- Check if exist as fournisseur and if it exist show it as -----------------------------//
    if isFourExistInClientList(MainForm.FournisseurTable.FieldByName('nom_f').AsString) = True then
    begin

      FournisseurGestionF.Label1.Visible:= True;
      FournisseurGestionF.Label2.Visible:= True;
      FournisseurGestionF.FourClientGSlider.Visible:= True;
      FournisseurGestionF.FourClientGSlider.SliderOn:= True;
      FournisseurGestionF.Label1.Enabled:= False;
      FournisseurGestionF.Label2.Enabled:= False;
      FournisseurGestionF.FourClientGSlider.Enabled:= False;
      FournisseurGestionF.FourClientGSlider.Enabled:= False;

      FournisseurGestionF.Label8.Visible:= True;
      FournisseurGestionF.PayFourClientGSlider.Visible:= True;


    end;


   //----------------- SHOW CAPITAL CRDIT AND RESTE -----------------------------//
   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.Close();
   MainForm.SQLQuery.SQL.Clear;
   MainForm.SQLQuery.SQL.Text:=
   'SELECT code_f, SUM(TotalA) AS Capital, SUM(TotalAR) AS Regle FROM ( '
   +'SELECT FR.code_f, SUM(BR.montttc_barec) AS TotalA, SUM(BR.montver_barec) AS TotalAR FROM fournisseur FR '
   +'INNER JOIN bona_rec BR ON FR.code_f = BR.code_f '
   +'WHERE FR.code_f = :CodeF AND BR.valider_barec = TRUE GROUP BY FR.code_f '
   +'UNION ALL SELECT FR.code_f, SUM(FA.montttc_bafac) AS TotalA, SUM(FA.montver_bafac) AS TotalAR FROM fournisseur FR '
   +'INNER JOIN bona_fac FA ON FR.code_f = FA.code_f '
   +'WHERE FR.code_f = :CodeF AND FA.valider_bafac = TRUE GROUP BY FR.code_f '
   +'UNION ALL SELECT FR.code_f, SUM(BCA.montttc_bacom) AS TotalA, SUM(BCA.montver_bacom) AS TotalAR FROM fournisseur FR '
   +'INNER JOIN bona_com BCA ON FR.code_f = BCA.code_f '
   +'WHERE FR.code_f = 6 AND BCA.valider_bacom = TRUE GROUP BY FR.code_f '
   +'UNION ALL SELECT FR.code_f, ''0'' AS TotalA, SUM(RF.montver_rf) AS TotalAR FROM fournisseur FR '
   +'INNER JOIN regfournisseur RF ON FR.code_f = RF.code_f '
   +'WHERE FR.code_f = :CodeF AND RF.bon_or_no_rf = 1 GROUP BY FR.code_f '
   +') TA GROUP BY code_f ';

    MainForm.SQLQuery.ParamByName('CodeF').AsInteger := MainForm.FournisseurTable.FieldByName('code_F').AsInteger;
    MainForm.SQLQuery.Open();

    if NOT MainForm.SQLQuery.isEmpty then
    begin
     FournisseurGestionF.CapitalFourGLbl.Caption:= CurrToStrF( MainForm.SQLQuery.fieldbyname('capital').Value,ffNumber, 2) + ' DA';
     FournisseurGestionF.RegleFourGLbl.Caption:= CurrToStrF( MainForm.SQLQuery.fieldbyname('regle').Value,ffNumber, 2) + ' DA';
    end else
        begin
         FournisseurGestionF.CapitalFourGLbl.Caption:= CurrToStrF( 0,ffNumber, 2) + ' DA';
         FournisseurGestionF.RegleFourGLbl.Caption:= CurrToStrF( 0,ffNumber, 2) + ' DA';
        end;

 //----------------- SHOW THE DATA ON THE Fournisseur GESTION PANEL -----------------------------//
     with MainForm.FournisseurTable do begin
        FournisseurGestionF.ActiveFournisseurGSlider.SliderOn:=  FieldValues['activ_f'];
        FournisseurGestionF.NameFournisseurGEdt.Text:= fieldbyname('nom_f').Value;
        if fieldbyname('adr_f').Value <> null then begin
        FournisseurGestionF.AdrFournisseurGEdt.Text:= fieldbyname('adr_f').Value;
        end;
        if fieldbyname('willaya_f').Value <> null then begin
        FournisseurGestionF.WilayaFournisseurGCbx.Text:= fieldbyname('willaya_f').Value;
        end;
        if fieldbyname('ville_f').Value <> null then begin
        FournisseurGestionF.VilleFournisseurGCbx.Text:= fieldbyname('ville_f').Value;
        end;
        if fieldbyname('fix_f').Value <> null then begin
        FournisseurGestionF.FixFournisseurGEdt.Text:= fieldbyname('fix_f').Value;
        end;
        if fieldbyname('fax_f').Value <> null then begin
        FournisseurGestionF.FaxFournisseurGEdt.Text:= fieldbyname('fax_f').Value;
        end;
        if fieldbyname('mob_f').Value <> null then begin
        FournisseurGestionF.MobileFournisseurGEdt.Text:= fieldbyname('mob_f').Value;
        end;
        if fieldbyname('mob2_f').Value <> null then begin
        FournisseurGestionF.Mobile2FournisseurGEdt.Text:= fieldbyname('mob2_f').Value;
        end;
        if fieldbyname('email_f').Value <> null then begin
        FournisseurGestionF.EmailFournisseurGEdt.Text:= fieldbyname('email_f').Value;
        end;
        if fieldbyname('siteWeb_f').Value <> null then begin
        FournisseurGestionF.SiteFournisseurGEdt.Text:= fieldbyname('siteWeb_f').Value;
        end;
        if fieldbyname('rc_f').Value <> null then begin
        FournisseurGestionF.RCFournisseurGEdt.Text:= fieldbyname('rc_f').Value;
        end;
        if fieldbyname('nart_f').Value <> null then begin
        FournisseurGestionF.NArtFournisseurGEdt.Text:= fieldbyname('nart_f').Value;
        end;
        if fieldbyname('nif_f').Value <> null then begin
        FournisseurGestionF.NIFFournisseurGEdt.Text:= fieldbyname('nif_f').Value;
        end;
        if fieldbyname('nis_f').Value <> null then begin
        FournisseurGestionF.NISFournisseurGEdt.Text:= fieldbyname('nis_f').Value;
        end;
        if fieldbyname('nbank_f').Value <> null then begin
        FournisseurGestionF.NBankFournisseurGEdt.Text:= fieldbyname('nbank_f').Value;
        end;
        if fieldbyname('rib_f').Value <> null then begin
        FournisseurGestionF.RIBFournisseurGEdt.Text:= fieldbyname('rib_f').Value;
        end;
        if  fieldbyname('credit_f').Value <> null then begin
        FournisseurGestionF.CreditFourGLbl.Caption:= CurrToStrF( fieldbyname('credit_f').Value,ffNumber, 2) + ' DA';
        end;
        if  fieldbyname('oldcredit_f').Value <> null then begin
        FournisseurGestionF.OldCreditFournisseurGEdt.Text:= CurrToStrF( fieldbyname('oldcredit_f').Value,ffNumber, 2);
        end;
        if  fieldbyname('maxcredit_f').Value <> null then begin
        FournisseurGestionF.MaxCreditFournisseurGEdt.Text:= CurrToStrF( fieldbyname('maxcredit_f').Value,ffNumber, 2);
        end;
        if fieldbyname('obser_f').Value <> null then begin
        FournisseurGestionF.ObserFournisseurGMem.Text:= fieldbyname('obser_f').Value;
        end;

        //----- this is to move the coursour to the last  --------------------------------------------------------
        FournisseurGestionF.NameFournisseurGEdt.SelStart :=  FournisseurGestionF.NameFournisseurGEdt.GetTextLen ;

       end ;


   FournisseurGestionF.Show;
   FournisseurGestionF.NameFournisseurGEdt.SetFocus;

   MainForm.SQLQuery.Active:= False;
   MainForm.SQLQuery.Close();
   MainForm.SQLQuery.SQL.Clear;

 end;
end;


procedure ConvertANSIFileToUTF8File(AInputFileName, AOutputFileName: TFileName);
var
  Strings: TStringList;
begin
  Strings := TStringList.Create;
  try
    Strings.LoadFromFile(AInputFileName);
    Strings.Text := UTF8Encode(Strings.Text);
    Strings.SaveToFile(AOutputFileName, TEncoding.UTF8);
  finally
    Strings.Free;
  end
end;

procedure TFournisseurListF.ExporterverExcel1Click(Sender: TObject);
var
  xls,xlw: Variant;
  ImportTask: ITask;
begin

 if ProduitListOpnDg.Execute then
 begin
            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
            FWorkingSplash.Show;

       ImportTask := TTask.Create (procedure ()
  begin
   try
    xls := CreateOleObject('Excel.Application');
    xls.DisplayAlerts := False  ;
    xlw := xls.WorkBooks.Open(ProduitListOpnDg.FileName);
    xlw.SaveAs(GetCurrentDir+ '\importedfour.csv',xlCSV);

    xlw.Close;
    xlw := UnAssigned;
    xls.Quit;
    xls := UnAssigned;

    ConvertANSIFileToUTF8File(GetCurrentDir+ '\importedfour.csv',GetCurrentDir+ '\importedfour.csv');

    MainForm.GstockdcConnection.ExecSQL(

       '  CREATE UNLOGGED TABLE tmp_table '
     // +'  ON COMMIT DROP              '
      +'  AS                          '
      +'  SELECT code_f,nom_f,fix_f,mob_f,   '
      +'  mob2_f,fax_f,adr_f,ville_f,willaya_f,email_f,siteweb_f,rc_f,  '
      +'  nif_f,nart_f,nis_f,nbank_f,rib_f,credit_f                  '
      +'  FROM fournisseur                                                   '
      +'  WITH NO DATA;                                                 '


      +'  copy tmp_table from '+ '''' + GetCurrentDir +'\importedfour.csv'' DELIMITERS '';'' CSV HEADER; '


      +'     INSERT INTO fournisseur    '
      +'     SELECT DISTINCT ON (code_f) * '
      +'     FROM tmp_table                 '
      +'    ON CONFLICT  (code_f) DO UPDATE  '
      +'       SET                            '
      +'     nom_f      = excluded.nom_f,          '
      +'     fix_f      = excluded.fix_f,       mob_f       = excluded.mob_f,          '
      +'     mob2_f     = excluded.mob2_f,   		fax_f       = excluded.fax_f,          '
      +'     adr_f      = excluded.adr_f,       ville_f     = excluded.ville_f,        '
      +'     willaya_f  = excluded.willaya_f,  	email_f     = excluded.email_f,        '
      +'     siteweb_f  = excluded.siteweb_f,   rc_f        = excluded.rc_f,           '
      +'     nif_f      = excluded.nif_f,   		nart_f      = excluded.nart_f,         '
      +'     nis_f      = excluded.nis_f,   		nbank_f     = excluded.nbank_f,        '
      +'     rib_f      = excluded.rib_f,   		credit_f = excluded.credit_f;   DROP TABLE tmp_table; '

       );

      deletefile(GetCurrentDir+ '\importedfour.csv');

      RefreshGirdBtnClick(Sender);

                  FWorkingSplash.Close;
            FWorkingSplash.WorkingNormalForms;

         except

        on E : Exception do
        begin
        sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
            FWorkingSplash.Close;
            FWorkingSplash.WorkingNormalForms;
             Exit
        end;

      end;

                     FWorkingSplash.Close;
            FWorkingSplash.WorkingNormalForms;

     end);
          ImportTask.Start;

 end;

end;

procedure TFournisseurListF.FisrtFournisseursbtnClick(Sender: TObject);
begin
        MainForm.FournisseurTable.First;
end;

procedure TFournisseurListF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(FournisseursListDBGridEh,GetCurrentDir +'\bin\gc_fourlst');


 //--------- do that when i want ODER by the Indexed of the FirDACTable-----/
 MainForm.FournisseurTable.IndexesActive:=True;



FreeAndNil(FournisseurListF);
end;

procedure TFournisseurListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_fourlst') then
   begin

    MainForm.LoadGridLayout(FournisseursListDBGridEh,GetCurrentDir +'\bin\gc_fourlst');
   end;
end;

procedure TFournisseurListF.FormPaint(Sender: TObject);
begin

      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=False;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
      MainForm.FournisseurTable.Active:=True;
      MainForm.FournisseurTable.EnableControls;


      if MainForm.totaux_ur.Checked then
      begin

       SumGirdBBVlivBtn.Enabled:= True;

      end else
      begin

       SumGirdBBVlivBtn.Enabled:= False;

      end;
end;

procedure TFournisseurListF.FormShow(Sender: TObject);
begin

       ResearchFournisseurEdt.SetFocus ;
  //----- for show how many Fournisseur on the database--------------//
//      ToutFournisseursLbl.Caption:= IntToStr( MainForm.FournisseurTable.RecordCount) ;
//
//      MainForm.FournisseurTable.DisableControls;
//
//      MainForm.FournisseurTable.Active := false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text :=
//      'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
//      MainForm.FournisseurTable.Active := true;
//
//     ActifFournisseursLbl.Caption:= IntToStr(MainForm.FournisseurTable.RecordCount);
//
//      MainForm.FournisseurTable.Active := false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text :=
//      'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f';
//      MainForm.FournisseurTable.Active := true;
//
//      PassifFournisseursLbl.Caption := IntToStr(MainForm.FournisseurTable.RecordCount);
//
//
//      MainForm.FournisseurTable.Active := false;
//      MainForm.FournisseurTable.SQL.Clear;
//      MainForm.FournisseurTable.SQL.Text :=
//      'SELECT * FROM fournisseur ORDER BY code_f ';
//      MainForm.FournisseurTable.Active := true;
//
//      ToutFournisseursLbl.Caption := IntToStr(MainForm.FournisseurTable.RecordCount);
//
//      if ActifFournisseursRdioBtn.Checked then
//       begin
//        MainForm.FournisseurTable.Active := false;
//        MainForm.FournisseurTable.SQL.Clear;
//        MainForm.FournisseurTable.SQL.Text :=
//        'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
//        MainForm.FournisseurTable.Active := true;
//       end;
//
//       if PassifFournisseursRdioBtn.Checked then
//       begin
//        MainForm.FournisseurTable.Active := false;
//        MainForm.FournisseurTable.SQL.Clear;
//        MainForm.FournisseurTable.SQL.Text :=
//        'SELECT * FROM fournisseur  WHERE activ_f = false ORDER BY code_f';
//        MainForm.FournisseurTable.Active := true;
//       end;
//
//       if toutFournisseursRdioBtn.Checked then
//       begin
//        MainForm.FournisseurTable.Active := false;
//        MainForm.FournisseurTable.SQL.Clear;
//        MainForm.FournisseurTable.SQL.Text :=
//        'SELECT * FROM fournisseur ORDER BY code_f';
//        MainForm.FournisseurTable.Active := true;
//       end;
//
//
//      MainForm.FournisseurTable.EnableControls;

end;

procedure TFournisseurListF.FournisseursListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if FournisseursListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
      EditFournisseursBtnClick(Sender) ;
end;
end;

//-----this is to highlight text in dbgrid when shearch---------------
procedure HighlightCellText(AGrid :TDbGridEH; const ARect : TRect; AColumn : TColumnEh;  FilterText : string; AState:TGridDrawState ;
  BkColor : TColor = clYellow; SelectedBkColor : TColor = clGray);
var
  HlRect : TRect;
  Position : Integer;
  HlText, FilterColName,DisplayText: string;
  i, offset : Integer;
begin
   DisplayText := Acolumn.Field.AsString;
   Position := Pos(AnsiLowerCase(FilterText), AnsiLowerCase(DisplayText){  AnsiLowerCase(AColumn.DisplayText)});
   if Position > 0 then
   begin
     // set highlight area
     case AColumn.Alignment of
       taLeftJustify:  HlRect.Left := ARect.Left + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1)) + 1;
       taRightJustify: begin
         Offset := AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 1;
         HlRect.Left :=  (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)-offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1)) -10;
       end;
       taCenter: begin
         Offset := ((ARect.Right - ARect.Left) div 2) - (AGrid.Canvas.TextWidth(DisplayText) div 2)
         - (AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 2);

         HlRect.Left := (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)- offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1)) - 10;
       end;
     end;

     HlRect.Top := ARect.Top ;
     HlRect.Right := HlRect.Left +AGrid.Canvas.TextWidth(Copy(DisplayText, Position, Length(FilterText))) + 2 ;
     HlRect.Bottom := ARect.Bottom ;

     //check for  limit of the cell
     if HlRect.Right > ARect.Right then
       HlRect.Right := ARect.Right;

     // setup the color and draw the rectangle in a width of the matching text
     if gdSelected in AState then
       AGrid.Canvas.Brush.Color := $006DCEFE//$00626262//$0000FFFF//$00F8CA90//$0083CAF4    $00FD9732 //
     else
       AGrid.Canvas.Brush.Color := $006DCEFE;//$00626262;//$0000FFFF;//$00F8CA90;//$0083CAF4; $00FD9732;

     AGrid.Canvas.FillRect(HlRect);

     HlText := Copy(DisplayText,Position, Length(FilterText));
     AGrid.Canvas.TextRect(HlRect,HlRect.Left + 1,HlRect.Top + 1, HlText);
   end;
end;

procedure TFournisseurListF.FournisseursListDBGridEhDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  {  if gdFocused in State then
      begin
 // ProduitsListDBGridEh.Canvas.DrawFocusRect(Rect);
    ProduitsListDBGridEh.Canvas.Brush.Color:=clAqua;
       end;  }

//------ use this code to high light the selected row in dbgrid----//
 if gdSelected in State then
begin
   FournisseursListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   FournisseursListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
//------ use this code to red the produit with 0 or null in stock----//
if  FournisseurListDataS.DataSet = MainForm.FournisseurTable then
begin
 if (MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency ) > 0     then
 begin
 FournisseursListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 FournisseursListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

  if (MainForm.FournisseurTable.FieldByName('credit_f').AsCurrency) < 0     then
 begin
 FournisseursListDBGridEh.Canvas.Font.Color:=$00519509;//   Brush.Color:=clgreen;
 FournisseursListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;
// disabled becouse error
 HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchFournisseurEdt.Text,State);
end;

procedure TFournisseurListF.FournisseursListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if not FournisseursListDBGridEh.DataSource.DataSet.IsEmpty then
begin
  if key = VK_DELETE  then
  DeleteFournisseursBtnClick(Sender) ;
end else exit
end;

procedure TFournisseurListF.FournisseursListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key in ['n','N'] then
  AddFournisseursBtnClick(Sender) ;
   if Key in ['r','R'] then
    ResearchFournisseurEdt.SetFocus ;
if not FournisseursListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteFournisseursBtnClick(Sender) ;
   if Key in ['m','M'] then
  EditFournisseursBtnClick(Sender) ;
  end else Exit ;
end;

procedure TFournisseurListF.FournisseursListDBGridEhTitleBtnClick(
  Sender: TObject; ACol: Integer; Column: TColumnEh);
begin
 //--------- do that when i want ODER by the EHDBNGRID-----/
 MainForm.FournisseurTable.IndexesActive:=false;
// MainForm.FournisseurTableActif.IndexesActive:= false;
// MainForm.FournisseurTablePassif.IndexesActive:= false;
end;

procedure TFournisseurListF.LastClientbtnClick(Sender: TObject);
begin

        MainForm.FournisseurTable.last;

end;

procedure TFournisseurListF.NextClientbtnClick(Sender: TObject);
begin
        MainForm.FournisseurTable.Next;
end;

procedure TFournisseurListF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=33;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Debite;
end;

procedure TFournisseurListF.NotValideFilterBVLivPMenuClick(Sender: TObject);
begin
  sImage1.ImageIndex:=4;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  ClearFilterBVLivPMenu.Checked:= False;
  Select_NOT_Valid;
   if (sImage2.Visible = True)  then
  begin
   if sImage2.ImageIndex = 7 then
  begin
   Select_NOT_Valid_Credit;
  end;
    if sImage2.ImageIndex = 33 then
  begin
  Select_NOT_Valid_Debite;
  end;
    if sImage2.ImageIndex = 9 then
  begin
  Select_NOT_Valid_Regle;
  end;

  end;
end;

procedure TFournisseurListF.PassifFournisseursRdioBtnClick(Sender: TObject);
begin


  ResearchFournisseurEdt.Text:= '';
  ResearchFournisseurEdt.SetFocus;

  MainForm.FournisseurTable.DisableControls;

  MainForm.FournisseurTable.Active := false;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text :=
  'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f ';
  MainForm.FournisseurTable.Active := true;

  MainForm.FournisseurTable.EnableControls;

end;

procedure TFournisseurListF.PreviosClientbtnClick(Sender: TObject);
begin
        MainForm.FournisseurTable.Prior;
end;

procedure TFournisseurListF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.FournisseurTable.Close;
MainForm.FournisseurTable.Open;
end;

procedure TFournisseurListF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=7;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Credit;

end;

procedure TFournisseurListF.ResearchFournisseurEdtChange(Sender: TObject);
var SearchValue : String;
begin
  if (ResearchFournisseurEdt.text <> '') then
  begin
    SearchValue:=   '('''+'%'+(ResearchFournisseurEdt.Text)+'%'+''')';
    MainForm.FournisseurTable.DisableControls;
    MainForm.FournisseurTable.Active:=False;
    MainForm.FournisseurTable.SQL.Clear;
    MainForm.FournisseurTable.SQL.Text:= 'SELECT * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' + SearchValue
        +' OR fix_f LIKE'+ SearchValue
        +' OR mob_f LIKE'+ SearchValue
        +' OR mob2_f LIKE'+ SearchValue
        +' OR fax_f LIKE'+ SearchValue
        +' OR LOWER(adr_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(ville_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(willaya_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(email_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(siteweb_f) LIKE LOWER '+ SearchValue ;
    MainForm.FournisseurTable.Active:=True;
    MainForm.FournisseurTable.EnableControls;
  end else
      begin
        MainForm.FournisseurTable.DisableControls;
        MainForm.FournisseurTable.Active:=False;
        MainForm.FournisseurTable.SQL.Clear;
        MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
        MainForm.FournisseurTable.Active:=True;
        MainForm.FournisseurTable.EnableControls;
      end;

end;

procedure TFournisseurListF.ResearchFournisseurEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.FournisseurTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.FournisseurTable.Prior;
  end;
end;

procedure TFournisseurListF.ResearchFournisseurEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = [    Char(VK_ESCAPE)];
begin

  if(Key in N) then
  begin
   key := #0  ;
    ResearchFournisseurEdt.Text:= '';

  end;



    if key = #13 then
  begin
   key := #0;

    if (ResearchFournisseurEdt.text <> '') then
      begin
      MainForm.FournisseurTable.Filtered:=false;
      MainForm.FournisseurTable.Filter := '[nom_f] LIKE ' + quotedstr(ResearchFournisseurEdt.Text +'%');
      MainForm.FournisseurTable.Filtered :=True;
    end  else
      begin
        MainForm.FournisseurTable.Filtered := False;
       end;
  end;
end;

procedure TFournisseurListF.toutFournisseursRdioBtnClick(Sender: TObject);
begin
  ResearchFournisseurEdt.Text:= '';
  ResearchFournisseurEdt.SetFocus;

  MainForm.FournisseurTable.DisableControls;
    MainForm.FournisseurTable.Active := false;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text :=
  'SELECT * FROM fournisseur ORDER BY code_f ';
  MainForm.FournisseurTable.Active := true;

    MainForm.FournisseurTable.EnableControls;


end;

  procedure TFournisseurListF.ValideFilterBVLivPMenuClick(Sender: TObject);
begin
  sImage1.ImageIndex:=3;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  ClearFilterBVLivPMenu.Checked:= False;
  Select_Valid;
 if (sImage2.Visible = True)  then
  begin
//  Select_Valid;
    if sImage2.ImageIndex = 7 then
    begin
     Select_Valid_Credit;
    end;
      if sImage2.ImageIndex = 33 then
    begin
    Select_Valid_Debite;
    end;
      if sImage2.ImageIndex = 9 then
    begin
    Select_Valid_Regle;
    end;

  end;
end;

procedure TFournisseurListF.GettingData;
var
  Agent,Actif,Passif,Tout,Four : TfrxMemoView;
begin
  Agent:= FourListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

    Actif:= FourListfrxRprt.FindObject('Actif') as TfrxMemoView;
  Actif.Text:= ActifFournisseursLbl.Caption ;


    Passif:= FourListfrxRprt.FindObject('Passif') as TfrxMemoView;
  Passif.Text:= PassifFournisseursLbl.Caption  ;


      Tout:= FourListfrxRprt.FindObject('Tout') as TfrxMemoView;
  Tout.Text:= toutFournisseursLbl.Caption  ;

    Four:= FourListfrxRprt.FindObject('Four') as TfrxMemoView;

    if  ActifFournisseursRdioBtn.Checked then
    begin
    Four.Text:= ActifFournisseursRdioBtn.Caption
    end;

    if PassifFournisseursRdioBtn.Checked  then
    begin
    Four.Text:= PassifFournisseursRdioBtn.Caption  ;
    end;

    if ToutFournisseursRdioBtn.Checked  then
    begin
      Four.Text:= ToutFournisseursRdioBtn.Caption
    end;

end;

procedure TFournisseurListF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.FournisseurTable.DisableControls;

   GettingData;

  FourListfrxRprt.PrepareReport;
  FourListfrxRprt.ShowReport;

  MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.FournisseurTable.DisableControls;

    GettingData;

FourListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat liste des Fournisseurs';
FourListfrxRprt.Export(frxPDFExport1);

MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.SumGirdBBVlivBtnClick(Sender: TObject);
begin
  if SumGirdBBVlivBtn.Tag = 0 then
  begin
    FournisseursListDBGridEh.FooterRowCount:=1;
    SumGirdBBVlivBtn.Tag := 1;
  end else
      begin
        FournisseursListDBGridEh.FooterRowCount:=0;
        SumGirdBBVlivBtn.Tag := 0;
      end;
end;

end.
