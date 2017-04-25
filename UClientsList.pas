unit UClientsList;

interface

uses
  Winapi.Windows, Winapi.Messages,MMSystem, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,

  EhLibFireDAC   ,Vcl.OleAuto   ,ExcelXP , DBGridEhImpExp,ShellAPI,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  Vcl.ImgList, acAlphaImageList, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn,
  Vcl.WinXCtrls, REST.Backend.EMSServices, REST.Backend.EMSFireDAC, frxClass,
  frxDBSet, frxExportXLS, frxExportPDF, acImage, Vcl.ComCtrls, sStatusBar,
  Vcl.Menus, Vcl.AppEvnts  ;

type
  TClientListF = class(TForm)
    ResearchClientsLbl: TLabel;
    AddClientsBtn: TAdvToolButton;
    EditClientsBtn: TAdvToolButton;
    DeleteClientsBtn: TAdvToolButton;
    LineP: TPanel;
    S02: TPanel;
    Panel1: TPanel;
    ClientsListDBGridEh: TDBGridEh;
    TopP: TPanel;
    ResearchClientsEdt: TSearchBox;
    ClientListDataS: TDataSource;
    toutClientsLbl: TLabel;
    ActifClientsRdioBtn: TRadioButton;
    PassifClientsRdioBtn: TRadioButton;
    toutClientsRdioBtn: TRadioButton;
    Panel2: TPanel;
    PassifClientsLbl: TLabel;
    ActifClientsLbl: TLabel;
    Panel3: TPanel;
    sSpeedButton3: TsSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxClientListDB: TfrxDBDataset;
    ClientListfrxRprt: TfrxReport;
    Panel4: TPanel;
    FisrtClientbtn: TsSpeedButton;
    PreviosClientbtn: TsSpeedButton;
    NextClientbtn: TsSpeedButton;
    LastClientbtn: TsSpeedButton;
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
    FilterBVLivPMenu: TPopupMenu;
    F1: TMenuItem;
    ValideFilterBVLivPMenu: TMenuItem;
    NotValideFilterBVLivPMenu: TMenuItem;
    N2: TMenuItem;
    ClearValideFilterBVLivPMenu: TMenuItem;
    F3: TMenuItem;
    RegleFilterBVLivPMenu: TMenuItem;
    NoTRegleFilterBVLivPMenu: TMenuItem;
    Crdit1: TMenuItem;
    N1: TMenuItem;
    ClearRegleFilterBVLivPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    sImage1: TsImage;
    sImage2: TsImage;
    ProduitListSaveDg: TSaveDialog;
    procedure AddClientsBtnClick(Sender: TObject);
    procedure EditClientsBtnClick(Sender: TObject);
    procedure ResearchClientsEdtChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NextClientbtnClick(Sender: TObject);
    procedure PreviosClientbtnClick(Sender: TObject);
    procedure LastClientbtnClick(Sender: TObject);
    procedure FisrtClientbtnClick(Sender: TObject);
    procedure DeleteClientsBtnClick(Sender: TObject);
    procedure ClientsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientsListDBGridEhDblClick(Sender: TObject);
    procedure ClientsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ResearchClientsEdtKeyPress(Sender: TObject; var Key: Char);
    procedure ActifClientsRdioBtnClick(Sender: TObject);
    procedure PassifClientsRdioBtnClick(Sender: TObject);
    procedure toutClientsRdioBtnClick(Sender: TObject);
    procedure ClientsListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure SumGirdBBVlivBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure e1Click(Sender: TObject);
    procedure ExporterverExcel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchClientsEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure RegleFilterBVLivPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure Crdit1Click(Sender: TObject);
    procedure ClearRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
  private
    procedure GettingData;
    procedure Select_ALL;
    procedure Select_NOT_Valid;
    procedure Select_Valid;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    procedure Select_Valid_Credit;
    procedure Select_Valid_Debite;
    procedure Select_Valid_Regle;
    procedure Select_NOT_Valid_Credit;
    procedure Select_NOT_Valid_Debite;
    procedure Select_NOT_Valid_Regle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientListF: TClientListF;

implementation

{$R *.dfm}

uses UMainF,   UClientGestion, USplash,System.Threading, UWorkingSplash;

procedure TClientListF.Select_Valid;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = true ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;



procedure TClientListF.Select_NOT_Valid;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = false ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;


procedure TClientListF.Select_ALL;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;


procedure TClientListF.Select_Valid_Credit;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = true AND credit_c > ''0'' ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.Select_Valid_Debite;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = true AND credit_c < ''0'' ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.Select_Valid_Regle;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = true AND credit_c = ''0'' ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;


procedure TClientListF.Select_NOT_Valid_Credit;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = false AND credit_c > ''0'' ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.Select_NOT_Valid_Debite;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = false AND credit_c < ''0'' ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.Select_NOT_Valid_Regle;
begin
MainForm.ClientTable.DisableControls;
MainForm.ClientTable.Active:= False;
MainForm.ClientTable.SQL.clear;
mainform.ClientTable.sql.Text:='SELECT * FROM client WHERE activ_c = false AND credit_c = ''0'' ';
MainForm.ClientTable.Active:= True;
MainForm.ClientTable.EnableControls;
end;


procedure TClientListF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E;
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TClientListF.NOT_FilteredColor;
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



procedure TClientListF.EditClientsBtnClick(Sender: TObject);
begin
      //----------------- Show the splash screan for the produit familly to add new one---------//
   if NOT (MainForm.ClientTable.FieldByName('code_c').AsInteger = 1) then
 begin
         ClientGestionF:=TClientGestionF.Create(ClientListF);

         ClientGestionF.Left:=  ( Screen.Width div 2 ) - (ClientGestionF.Width div 2)    ;
         ClientGestionF.Top:=   (Screen.Height div 2) - (ClientGestionF.Height div 2)    ;
    //     MainForm.Align:= alClient;
   //      AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
         ClientGestionF.ClientGPgControl.TabIndex:= 0;
         ClientGestionF.OKClientGBtn.Tag:= 1 ;
         ClientGestionF.Show;
         ClientGestionF.NameClientGEdt.SetFocus;


       //  MainForm.ClientTable.Refresh;

    if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
     begin
     //----------------- SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//
         with MainForm.ClientTable do begin
            ClientGestionF.ActiveClientGSlider.SliderOn:=  FieldValues['activ_c'];
            ClientGestionF.NameClientGEdt.Text:= fieldbyname('nom_c').AsString;
            ClientGestionF.AcitiviteClientGEdt.Text:= fieldbyname('activite_c').AsString;
            ClientGestionF.AdrClientGEdt.Text:= fieldbyname('adr_c').AsString;
            ClientGestionF.WilayaClientGCbx.Text:= fieldbyname('willaya_c').AsString;
            ClientGestionF.VilleClientGCbx.Text:= fieldbyname('ville_c').AsString;
            ClientGestionF.FixClientGEdt.Text:= fieldbyname('fix_c').AsString;
            ClientGestionF.FaxClientGEdt.Text:= fieldbyname('fax_c').AsString;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob_c').AsString;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob2_c').AsString;
            ClientGestionF.EmailClientGEdt.Text:= fieldbyname('email_c').AsString;
            ClientGestionF.SiteClientGEdt.Text:= fieldbyname('siteWeb_c').AsString;

            ClientGestionF.RCClientGEdt.Text:= fieldbyname('rc_c').AsString;
            ClientGestionF.NArtClientGEdt.Text:= fieldbyname('nart_c').AsString;
            ClientGestionF.NIFClientGEdt.Text:= fieldbyname('nif_c').AsString;
            ClientGestionF.NISClientGEdt.Text:= fieldbyname('nis_c').AsString;
            ClientGestionF.NBankClientGEdt.Text:= fieldbyname('nbank_c').AsString;
            ClientGestionF.RIBClientGEdt.Text:= fieldbyname('rib_c').AsString;
            ClientGestionF.OldCreditClientGEdt.Text:= CurrToStrF( fieldbyname('oldcredit_c').Value,ffNumber, 2);
            ClientGestionF.MaxCreditClientGEdt.Text:= CurrToStrF( fieldbyname('maxcredit_c').Value,ffNumber, 2);
            ClientGestionF.ModeTarifClientGCbx.ItemIndex:= fieldbyname('tarification_c').AsInteger;
            ClientGestionF.ObserClientGMem.Text:= fieldbyname('obser_c').AsString;
             //----- this is to move the coursour to the last  --------------------------------------------------------
            ClientGestionF.NameClientGEdt.SelStart :=  ClientGestionF.NameClientGEdt.GetTextLen ;
           end ;
   end;

 end else
     begin
       sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
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

procedure TClientListF.ExporterverExcel1Click(Sender: TObject);
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
    xlw.SaveAs(GetCurrentDir+ '\importedclinet.csv',xlCSV);

    xlw.Close;
    xlw := UnAssigned;
    xls.Quit;
    xls := UnAssigned;

    ConvertANSIFileToUTF8File(GetCurrentDir+ '\importedclinet.csv',GetCurrentDir+ '\importedclinet.csv');

    MainForm.GstockdcConnection.ExecSQL(

       '  CREATE UNLOGGED TABLE tmp_table '
     // +'  ON COMMIT DROP              '
      +'  AS                          '
      +'  SELECT code_c,nom_c,activite_c,fix_c,mob_c,   '
      +'  mob2_c,fax_c,adr_c,ville_c,willaya_c,email_c,siteweb_c,rc_c,  '
      +'  nif_c,nart_c,nis_c,nbank_c,rib_c,credit_c                  '
      +'  FROM client                                                   '
      +'  WITH NO DATA;                                                 '

      +'  copy tmp_table from '+ '''' + GetCurrentDir +'\importedclinet.csv'' DELIMITERS '';'' CSV HEADER; '


      +'     INSERT INTO client    '
      +'     SELECT DISTINCT ON (code_c) * '
      +'     FROM tmp_table                 '
      +'    ON CONFLICT  (code_c) DO UPDATE  '
      +'       SET                            '
      +'     nom_c      = excluded.nom_c,       activite_c  = excluded.activite_c,     '
      +'     fix_c      = excluded.fix_c,       mob_c       = excluded.mob_c,          '
      +'     mob2_c     = excluded.mob2_c,   		fax_c       = excluded.fax_c,          '
      +'     adr_c      = excluded.adr_c,       ville_c     = excluded.ville_c,        '
      +'     willaya_c  = excluded.willaya_c,  	email_c     = excluded.email_c,        '
      +'     siteweb_c  = excluded.siteweb_c,   rc_c        = excluded.rc_c,           '
      +'     nif_c      = excluded.nif_c,   		nart_c      = excluded.nart_c,         '
      +'     nis_c      = excluded.nis_c,   		nbank_c     = excluded.nbank_c,        '
      +'     rib_c      = excluded.rib_c,   		credit_c    = excluded.credit_c;   DROP TABLE tmp_table; '

       );

      deletefile(GetCurrentDir+ '\importedclinet.csv');

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
            ImportTask.Start;;

 end;



end;

procedure TClientListF.DeleteClientsBtnClick(Sender: TObject);
Var CodeC :Integer;
begin
 if NOT (MainForm.ClientTable.FieldByName('code_c').AsInteger = 1) then
 begin
  if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
   begin
      CodeC:= MainForm.ClientTable.FieldByName('code_c').AsInteger;
    
      // ------ this code is to check if the produit are in bons if it is the user cant delte it ------------
      MainForm.SQLQuery.Active:= False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:=
      'select * '
     +  'from (   '
     +   'select code_c as code_c from bonv_liv '
     +   'union all '
     +   'select code_c from bonv_fac '
     +   'union all '
     +   'select code_c from regclient '
     +   'union all '
     +   'select code_c from bonp_fac '
     +   'union all '
     +   'select code_c from bonv_ctr '
     +     ') a '
     +     'where code_c = '+IntToStr(MainForm.ClientTable.FieldByName('code_c').AsInteger) ;

      MainForm.SQLQuery.Active:= True;

     if MainForm.SQLQuery.IsEmpty then
     begin

       GrayForms;
       with MainForm.ClientTable do  begin


       if MyMessageDlg('Ėtes-vous sûr de vouloir supprimer le client : '+ sLineBreak +  QuotedStr(fieldbyname('nom_c').Value) , mtConfirmation, [mbYes,mbNo], ['Oui','Non'],'Attention', mbNo )  = mrYes then
         begin

        MainForm.ClientTable.Delete;

        MainForm.ClientTable.Refresh;

       MainForm.ClientTable.DisableControls;

        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client  WHERE activ_c = true  ';
        MainForm.ClientTable.Active := true;

       ActifClientsLbl.Caption := IntToStr(MainForm.ClientTable.RecordCount - 1); // -1 is to not calculate the Comptoir

        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client WHERE activ_c = false  ';
        MainForm.ClientTable.Active := true;

        PassifClientsLbl.Caption := IntToStr(MainForm.ClientTable.RecordCount);

        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client   ';
        MainForm.ClientTable.Active := true;

        ToutClientsLbl.Caption :=   IntToStr(MainForm.ClientTable.RecordCount - 1);  // -1 is to not calculate the Comptoir

        if ActifClientsRdioBtn.Checked then
         begin
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text :=
          'SELECT * FROM client  WHERE activ_c = true  ';
          MainForm.ClientTable.Active := true;
         end;

         if PassifClientsRdioBtn.Checked then
         begin
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text :=
          'SELECT * FROM client  WHERE activ_c = false  ';
          MainForm.ClientTable.Active := true;
         end;

         if toutClientsRdioBtn.Checked then
         begin
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text :=
          'SELECT * FROM client  ';
          MainForm.ClientTable.Active := true;
         end;

        MainForm.ClientTable.EnableControls;

        FSplash := TFSplash.Create(ClientListF);
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

            MainForm.ClientTable.FindNearest([CodeC]);
      end
      else

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
 end else
      begin
         sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
           TTask.Run ( procedure
            begin
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
            end);
      end;

end;

procedure TClientListF.e1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'Etat liste des Client';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(ClientsListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.ClientTable.DisableControls;
//
//    GettingData;
//
//ClientListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Etat liste des Client';
//ClientListfrxRprt.Export(frxXLSExport1);
//
//MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.ClearFilterBVLivPMenuClick(Sender: TObject);
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

procedure TClientListF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 sImage2.Visible:= False;
 RegleFilterBVLivPMenu.Enabled:= True;

  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex := 50;
end;

procedure TClientListF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TClientListF.ClientsListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if ClientsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
      EditClientsBtnClick(Sender) ;
end;
end;


//-----this is to highlight text in dbgrid when shearch---------------
//procedure HighlightCellText(AGrid :TDbGridEH; const ARect : TRect; AColumn : TColumnEh;  FilterText : string; AState:TGridDrawState ;
//  BkColor : TColor = clYellow; SelectedBkColor : TColor = clGray);
//var
//  HlRect : TRect;
//  Position : Integer;
//  HlText, FilterColName,DisplayText: string;
//  i, offset : Integer;
//begin
//   DisplayText := Acolumn.Field.AsString;
//   Position := Pos(AnsiLowerCase(FilterText), AnsiLowerCase(DisplayText){  AnsiLowerCase(AColumn.DisplayText)});
//   if Position > 0 then
//   begin
//     // set highlight area
//     case AColumn.Alignment of
//       taLeftJustify:  HlRect.Left := ARect.Left + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1)) + 1;
//       taRightJustify: begin
//         Offset := AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 1;
//         HlRect.Left :=  (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)-offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1));
//       end;
//       taCenter: begin
//         Offset := ((ARect.Right - ARect.Left) div 2) - (AGrid.Canvas.TextWidth(DisplayText) div 2)
//         - (AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 2);
//
//         HlRect.Left := (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)- offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1));
//       end;
//     end;
//
//     HlRect.Top := ARect.Top + 1;
//     HlRect.Right := HlRect.Left +AGrid.Canvas.TextWidth(Copy(DisplayText, Position, Length(FilterText))) + 1 ;
//     HlRect.Bottom := ARect.Bottom - 1;
//
//     //check for  limit of the cell
//     if HlRect.Right > ARect.Right then
//       HlRect.Right := ARect.Right;
//
//     // setup the color and draw the rectangle in a width of the matching text
//     if gdSelected in AState then
//       AGrid.Canvas.Brush.Color := $0000FFFF//$00F8CA90//$0083CAF4
//     else
//       AGrid.Canvas.Brush.Color := $0000FFFF;//$00F8CA90;//$0083CAF4;
//
//     AGrid.Canvas.FillRect(HlRect);
//
//     HlText := Copy(DisplayText,Position, Length(FilterText));
//     AGrid.Canvas.TextRect(HlRect,HlRect.Left + 1,HlRect.Top + 1, HlText);
//   end;
//end;

procedure TClientListF.ClientsListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
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
   ClientsListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

if  ClientListDataS.DataSet = MainForm.ClientTable then
 begin

//------ use this code to red the produit with 0 or null in stock----//
 if (MainForm.ClientTable.FieldByName('credit_c').AsCurrency )> 0      then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;


 //------ use this code to red the produit with 0 or null in stock----//
 if (MainForm.ClientTable.FieldByName('credit_c').AsCurrency ) < 0     then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$00519509;//   Brush.Color:=green;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
 end;

//  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchClientsEdt.Text,State);
end;

procedure TClientListF.ClientsListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
begin
  if key = VK_DELETE  then
  DeleteClientsBtnClick(Sender) ;
end else exit
end;

procedure TClientListF.ClientsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
   if Key in ['n','N'] then
  AddClientsBtnClick(Sender) ;
   if Key in ['r','R'] then
    ResearchClientsEdt.SetFocus ;
if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteClientsBtnClick(Sender) ;
   if Key in ['m','M'] then
  EditClientsBtnClick(Sender) ;
  end else Exit ;
  end;

procedure TClientListF.ClientsListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
// var i:Integer;
begin

 //--------- do that when i want ODER by the EHDBNGRID-----/
 MainForm.ClientTable.IndexesActive:=false;
end;

procedure TClientListF.Crdit1Click(Sender: TObject);
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

procedure TClientListF.FisrtClientbtnClick(Sender: TObject);
begin
        MainForm.ClientTable.First;
end;

procedure TClientListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(ClientsListDBGridEh,GetCurrentDir +'\bin\gc_clntlst');


 //--------- do that when i want ODER by the Indexed of the FirDACTable-----/
 MainForm.ClientTable.IndexesActive:=True;

 Action := caFree;

 ClientListF:= nil;

end;

procedure TClientListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_clntlst') then
   begin

    MainForm.LoadGridLayout(ClientsListDBGridEh,GetCurrentDir +'\bin\gc_clntlst');
   end;
end;

procedure TClientListF.FormShow(Sender: TObject);
begin
       ResearchClientsEdt.SetFocus ;
   //----- for show how many Clients on the database--------------//
//
//      ToutClientsLbl.Caption:= IntToStr( MainForm.ClientTable.RecordCount) ;
////
//      MainForm.ClientTable.DisableControls;
////
//      MainForm.ClientTable.Active := false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text :=
//      'SELECT * FROM client  WHERE activ_c = true ';
//      MainForm.ClientTable.Active := true;
//
//     ActifClientsLbl.Caption :=  IntToStr(MainForm.ClientTable.RecordCount - 1);  // -1 is to not calculate the Comptoir
//
//      MainForm.ClientTable.Active := false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text :=
//      'SELECT * FROM client WHERE activ_c = false ';
//      MainForm.ClientTable.Active := true;
//
//      PassifClientsLbl.Caption := IntToStr(MainForm.ClientTable.RecordCount);
//
//      MainForm.ClientTable.Active := false;
//      MainForm.ClientTable.SQL.Clear;
//      MainForm.ClientTable.SQL.Text :=
//      'SELECT * FROM client   ';
//      MainForm.ClientTable.Active := true;
//
//      ToutClientsLbl.Caption :=  IntToStr(MainForm.ClientTable.RecordCount - 1); // -1 is to not calculate the Comptoir
//
//
//
//      if ActifClientsRdioBtn.Checked then
//       begin
//        MainForm.ClientTable.Active := false;
//        MainForm.ClientTable.SQL.Clear;
//        MainForm.ClientTable.SQL.Text :=
//        'SELECT * FROM client  WHERE activ_c = true  ';
//        MainForm.ClientTable.Active := true;
//       end;
//
//       if PassifClientsRdioBtn.Checked then
//       begin
//        MainForm.ClientTable.Active := false;
//        MainForm.ClientTable.SQL.Clear;
//        MainForm.ClientTable.SQL.Text :=
//        'SELECT * FROM client  WHERE activ_c = false  ';
//        MainForm.ClientTable.Active := true;
//       end;
//
//       if toutClientsRdioBtn.Checked then
//       begin
//        MainForm.ClientTable.Active := false;
//        MainForm.ClientTable.SQL.Clear;
//        MainForm.ClientTable.SQL.Text :=
//        'SELECT * FROM client  ';
//        MainForm.ClientTable.Active := true;
//       end;
//
//
//      MainForm.ClientTable.EnableControls;



end;

procedure TClientListF.LastClientbtnClick(Sender: TObject);

begin
        MainForm.ClientTable.last;
end;

procedure TClientListF.AddClientsBtnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

            ClientGestionF:=TClientGestionF.Create(ClientListF);
     //       ClientGestionF.BringToFront;
            ClientGestionF.Left:=  (Screen.Width div 2 ) - (ClientGestionF.Width div 2)    ;
            ClientGestionF.Top:=   (Screen.Height div 2) - (ClientGestionF.Height div 2)    ;
        //    MainForm.Align:= alClient;
         //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
            ClientGestionF.Show;
            ClientGestionF.ClientGPgControl.TabIndex:= 0;
            ClientGestionF.NameClientGEdt.SetFocus;
            ClientGestionF.OKClientGBtn.Tag:= 0 ;


end;

procedure TClientListF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.ClientTable.DisableControls;

    GettingData;

ClientListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat liste des Client';
ClientListfrxRprt.Export(frxPDFExport1);

MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.ClientTable.DisableControls;

   GettingData;

  ClientListfrxRprt.PrepareReport;
  ClientListfrxRprt.ShowReport;

  MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (ClientListF.Active = True)  AND  (Assigned(ClientGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddClientsBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditClientsBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteClientsBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (ClientListF.Active = True)  AND (ClientGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddClientsBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditClientsBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteClientsBtnClick(Screen);
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

procedure TClientListF.NextClientbtnClick(Sender: TObject);
begin
     MainForm.ClientTable.Next;
end;

procedure TClientListF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
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

procedure TClientListF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TClientListF.PreviosClientbtnClick(Sender: TObject);
begin
   MainForm.ClientTable.Prior;
 end;

procedure TClientListF.ActifClientsRdioBtnClick(Sender: TObject);
begin
  ResearchClientsEdt.Text:= '';
  ResearchClientsEdt.SetFocus;

  MainForm.ClientTable.DisableControls;

  MainForm.ClientTable.Active := false;
  MainForm.ClientTable.SQL.Clear;
  MainForm.ClientTable.SQL.Text :=
  'SELECT * FROM client WHERE activ_c = true   ';
  MainForm.ClientTable.Active := true;

  MainForm.ClientTable.EnableControls;

end;

procedure TClientListF.PassifClientsRdioBtnClick(Sender: TObject);
begin

  ResearchClientsEdt.Text:= '';
  ResearchClientsEdt.SetFocus;

  MainForm.ClientTable.DisableControls;

  MainForm.ClientTable.Active := false;
  MainForm.ClientTable.SQL.Clear;
  MainForm.ClientTable.SQL.Text :=
  'SELECT * FROM client WHERE activ_c = false   ';
  MainForm.ClientTable.Active := true;

  MainForm.ClientTable.EnableControls;


end;

procedure TClientListF.toutClientsRdioBtnClick(Sender: TObject);
begin
  ResearchClientsEdt.Text:= '';
  ResearchClientsEdt.SetFocus;

  MainForm.ClientTable.DisableControls;

  MainForm.ClientTable.Active := false;
  MainForm.ClientTable.SQL.Clear;
  MainForm.ClientTable.SQL.Text :=
  'SELECT * FROM client   ';
  MainForm.ClientTable.Active := true;

  MainForm.ClientTable.EnableControls;

end;

procedure TClientListF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TClientListF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.ClientTable.Close;
MainForm.ClientTable.Open;
end;

procedure TClientListF.RegleFilterBVLivPMenuClick(Sender: TObject);
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

procedure TClientListF.ResearchClientsEdtChange(Sender: TObject);
begin
//  if (ResearchClientsEdt.text <> '') then
//      begin
//      MainForm.ClientTable.Filtered:=false;
//      MainForm.ClientTable.Filter := '[nom_c] LIKE ' + quotedstr(  '%'+  ResearchClientsEdt.Text +'%');
//      MainForm.ClientTable.Filtered :=True;
//    end  else
//      begin
//        MainForm.ClientTable.Filtered := False;
//       end;



          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchClientsEdt.Text)+'%'+''')' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.ResearchClientsEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.ClientTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.ClientTable.Prior;
  end;
end;

procedure TClientListF.ResearchClientsEdtKeyPress(Sender: TObject;
  var Key: Char);

const
  N = [    Char(VK_ESCAPE)];
begin

  if(Key in N) then
  begin
   key := #0  ;
    ResearchClientsEdt.Text:= '';

  end;

    if key = #13 then
  begin
   key := #0;

    if (ResearchClientsEdt.text <> '') then
      begin
      MainForm.ClientTable.Filtered:=false;
      MainForm.ClientTable.Filter := '[nom_c] LIKE ' + quotedstr(ResearchClientsEdt.Text+'%' );
      MainForm.ClientTable.Filtered :=True;
    end  else
      begin
        MainForm.ClientTable.Filtered := False;
       end;
  end;

end;

  procedure TClientListF.GettingData;
var
  Agent,Four,Actif,Passif,Tout : TfrxMemoView;
begin
  Agent:= ClientListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;


      Actif:= ClientListfrxRprt.FindObject('Actif') as TfrxMemoView;
  Actif.Text:= ActifClientsLbl.Caption ;


    Passif:= ClientListfrxRprt.FindObject('Passif') as TfrxMemoView;
  Passif.Text:= PassifClientsLbl.Caption  ;


      Tout:= ClientListfrxRprt.FindObject('Tout') as TfrxMemoView;
  Tout.Text:= toutClientsLbl.Caption  ;

    Four:= ClientListfrxRprt.FindObject('Four') as TfrxMemoView;

    if  ActifClientsRdioBtn.Checked then
    begin
    Four.Text:= ActifClientsRdioBtn.Caption
    end;

    if PassifClientsRdioBtn.Checked  then
    begin
    Four.Text:= PassifClientsRdioBtn.Caption  ;
    end;

    if ToutClientsRdioBtn.Checked  then
    begin
      Four.Text:= ToutClientsRdioBtn.Caption
    end;

end;

procedure TClientListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.ClientTable.DisableControls;

    GettingData;

ClientListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat liste des Client';
ClientListfrxRprt.Export(frxPDFExport1);

MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.SumGirdBBVlivBtnClick(Sender: TObject);
begin
  if SumGirdBBVlivBtn.Tag = 0 then
  begin
    ClientsListDBGridEh.FooterRowCount:=1;
    SumGirdBBVlivBtn.Tag := 1;
  end else
      begin
        ClientsListDBGridEh.FooterRowCount:=0;
        SumGirdBBVlivBtn.Tag := 0;
      end;
end;

procedure TClientListF.FormPaint(Sender: TObject);
begin
MainForm.ClientTable.Refresh;
end;

end.
