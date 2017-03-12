﻿unit UFournisseurList;

interface

uses
  Winapi.Windows,MMsystem, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  EhLibFireDAC, DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, frxClass, frxDBSet,
  frxExportXLS, frxExportPDF, Data.DB, Vcl.ComCtrls, sStatusBar, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.OleAuto,ExcelXP;

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
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FournisseurListF: TFournisseurListF;

implementation

{$R *.dfm}

uses UMainF, UFournisseurGestion, USplash, UClientGestion,Threading;

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
MainForm.FournisseurTable.DisableControls;

    GettingData;

FourListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Etat liste des Fournisseurs';
FourListfrxRprt.Export(frxXLSExport1);

MainForm.FournisseurTable.EnableControls;
end;

procedure TFournisseurListF.EditFournisseursBtnClick(Sender: TObject);
begin
      //----------------- Show the splash screan for the produit familly to add new one---------//
     FournisseurGestionF:=TFournisseurGestionF.Create(FournisseurListF);
     FournisseurGestionF.FournisseurGPgControl.TabIndex:= 0;
     FournisseurGestionF.Left:=  ( Screen.Width div 2 ) - (FournisseurGestionF.Width div 2)    ;
     FournisseurGestionF.Top:=   (Screen.Height div 2) - (FournisseurGestionF.Height div 2)    ;
     FournisseurGestionF.Show;
     FournisseurGestionF.NameFournisseurGEdt.SetFocus;
     FournisseurGestionF.OKFournisseurGBtn.Tag:= 1 ;
    if not FournisseursListDBGridEh.DataSource.DataSet.IsEmpty then
     begin
     //----------------- SHOW THE DATA ON THE Fournisseur GESTION PANEL -----------------------------//
         with MainForm.FournisseurTable do begin
            FournisseurGestionF.ActiveFournisseurGSlider.SliderOn:=  FieldValues['activ_f'];
            FournisseurGestionF.NameFournisseurGEdt.Text:= fieldbyname('nom_f').Value;
            FournisseurGestionF.AdrFournisseurGEdt.Text:= fieldbyname('adr_f').Value;
            FournisseurGestionF.WilayaFournisseurGCbx.Text:= fieldbyname('willaya_f').Value;
            FournisseurGestionF.VilleFournisseurGCbx.Text:= fieldbyname('ville_f').Value;
            FournisseurGestionF.FixFournisseurGEdt.Text:= fieldbyname('fix_f').Value;
            FournisseurGestionF.FaxFournisseurGEdt.Text:= fieldbyname('fax_f').Value;
            FournisseurGestionF.MobileFournisseurGEdt.Text:= fieldbyname('mob_f').Value;
            FournisseurGestionF.MobileFournisseurGEdt.Text:= fieldbyname('mob2_f').Value;
            FournisseurGestionF.EmailFournisseurGEdt.Text:= fieldbyname('email_f').Value;
            FournisseurGestionF.SiteFournisseurGEdt.Text:= fieldbyname('siteWeb_f').Value;

            FournisseurGestionF.RCFournisseurGEdt.Text:= fieldbyname('rc_f').Value;
            FournisseurGestionF.NArtFournisseurGEdt.Text:= fieldbyname('nart_f').Value;
            FournisseurGestionF.NIFFournisseurGEdt.Text:= fieldbyname('nif_f').Value;
            FournisseurGestionF.NISFournisseurGEdt.Text:= fieldbyname('nis_f').Value;
            FournisseurGestionF.NBankFournisseurGEdt.Text:= fieldbyname('nbank_f').Value;
            FournisseurGestionF.RIBFournisseurGEdt.Text:= fieldbyname('rib_f').Value;
            FournisseurGestionF.OldCreditFournisseurGEdt.Text:= CurrToStrF( fieldbyname('oldcredit_f').Value,ffNumber, 2);
            FournisseurGestionF.MaxCreditFournisseurGEdt.Text:= CurrToStrF( fieldbyname('maxcredit_f').Value,ffNumber, 2);

            FournisseurGestionF.ObserFournisseurGMem.Text:= fieldbyname('obser_f').Value;

            //----- this is to move the coursour to the last  --------------------------------------------------------
            FournisseurGestionF.NameFournisseurGEdt.SelStart :=  FournisseurGestionF.NameFournisseurGEdt.GetTextLen ;

           end ;

      end
  else  Exit
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
begin

 if ProduitListOpnDg.Execute then
 begin

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
<<<<<<< HEAD
    +'  SELECT code_f,nom_f,fix_f,mob_f,   '
    +'  mob2_f,fax_f,adr_f,ville_f,willaya_f,email_f,siteweb_f,rc_f,  '
    +'  nif_f,nart_f,nis_f,nbank_f,rib_f,oldcredit_f                  '
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
    +'     rib_f      = excluded.rib_f,   		oldcredit_f = excluded.oldcredit_f;   DROP TABLE tmp_table; '

=======
    +'  SELECT code_p,refer_p,nom_p,codebar_p,prixht_p,  '
    +'  prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p,tva_p, '
    +'  qut_p,perissable_p,alertdays_p,qutmin_p,qutmax_p,alertqut_p,obser_p '
    +'  FROM produit  '
    +'  WITH NO DATA; '
    +'  ALTER TABLE tmp_table ADD UNIQUE (refer_p); '
    +'  ALTER TABLE tmp_table ADD UNIQUE (nom_p);   '
    +'  ALTER TABLE tmp_table ADD UNIQUE (codebar_p); '

    +'  copy tmp_table from '+ '''' + GetCurrentDir +'\importedfour.csv'' DELIMITERS '';'' CSV HEADER; '

    +'  INSERT INTO produit   '
    +'  SELECT DISTINCT ON (code_p) *   '
    +'  FROM tmp_table                  '
    +'  ON CONFLICT  (code_p) DO UPDATE '
    +'   SET                            '
    +'       refer_p      = excluded.refer_p,       nom_p       = excluded.nom_p,    codebar_p       = excluded.codebar_p,  '
    +'       prixht_p     = excluded.prixht_p,      prixvd_p    = excluded.prixvd_p,     '
    +'       prixvr_p     = excluded.prixvr_p,      prixvg_p    = excluded.prixvg_p,     '
    +'       prixva_p     = excluded.prixva_p,      prixva2_p   = excluded.prixva2_p,    '
    +'       tva_p        = excluded.tva_p,         qut_p       = excluded.qut_p,        '
    +'       perissable_p = excluded.perissable_p,  alertdays_p = excluded.alertdays_p,  '
    +'       qutmin_p     = excluded.qutmin_p,      qutmax_p    = excluded.qutmax_p,     '
    +'       alertqut_p   = excluded.alertqut_p,    obser_p     = excluded.obser_p;  DROP TABLE tmp_table;    '
>>>>>>> 5f1587badaf242652e35ad877fddf588f6825e10
     );

    deletefile(GetCurrentDir+ '\importedfour.csv');

    RefreshGirdBtnClick(Sender);

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
end;

procedure TFournisseurListF.FormShow(Sender: TObject);
begin

       ResearchFournisseurEdt.SetFocus ;
  //----- for show how many Fournisseur on the database--------------//
      ToutFournisseursLbl.Caption:= IntToStr( MainForm.FournisseurTable.RecordCount) ;

      MainForm.FournisseurTable.DisableControls;

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur  WHERE activ_f = true ORDER BY code_f';
      MainForm.FournisseurTable.Active := true;

     ActifFournisseursLbl.Caption:= IntToStr(MainForm.FournisseurTable.RecordCount);

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f';
      MainForm.FournisseurTable.Active := true;

      PassifFournisseursLbl.Caption := IntToStr(MainForm.FournisseurTable.RecordCount);


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

end;

procedure TFournisseurListF.FournisseursListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if FournisseursListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
      EditFournisseursBtnClick(Sender) ;
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

procedure TFournisseurListF.ResearchFournisseurEdtChange(Sender: TObject);
begin
//      if (ResearchFournisseurEdt.text <> '') then
//
//                begin
//
//                  MainForm.FournisseurTable.Filtered:=false;
//                  MainForm.FournisseurTable.Filter := '[nom_f] LIKE ' + quotedstr(  '%'+  ResearchFournisseurEdt.Text +'%');
//                  MainForm.FournisseurTable.Filtered :=True;
//
//                  end
//                else
//
//                    begin
//                        MainForm.FournisseurTable.Filtered := False;
//
//                           end;



          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchFournisseurEdt.Text)+'%'+''')' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

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
