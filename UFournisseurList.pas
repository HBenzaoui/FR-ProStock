unit UFournisseurList;

interface

uses
  Winapi.Windows,MMsystem, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  EhLibFireDAC,
  DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton,
  AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  frxClass, frxDBSet, frxExportXLS, frxExportPDF;

type
  TFournisseurListF = class(TForm)
    FournisseursListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditFournisseursBtn: TAdvToolButton;
    DeleteFournisseursBtn: TAdvToolButton;
    AddFournisseursBtn: TAdvToolButton;
    ResearchFournisseursLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    toutFournisseursLbl: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PassifFournisseursLbl: TLabel;
    Label5: TLabel;
    ActifFournisseursLbl: TLabel;
    ArrowsPnl: TPanel;
    LastClientbtn: TsSpeedButton;
    NextClientbtn: TsSpeedButton;
    PreviosClientbtn: TsSpeedButton;
    FisrtFournisseursbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchFournisseurEdt: TSearchBox;
    ActifFournisseursRdioBtn: TRadioButton;
    PassifFournisseursRdioBtn: TRadioButton;
    toutFournisseursRdioBtn: TRadioButton;
    Panel2: TPanel;
    FournisseurListDataS: TDataSource;
    Panel3: TPanel;
    Button1: TButton;
    sSpeedButton3: TsSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxFournisseurListDB: TfrxDBDataset;
    FourListfrxRprt: TfrxReport;
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
    procedure Button1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
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

uses UMainF, UFournisseurGestion, USplash, UClientGestion;

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

procedure TFournisseurListF.Button1Click(Sender: TObject);
begin
FreeAndNil(FournisseurListF);
FreeAndNil(MainForm.TabSheetFournisseur);
end;

procedure TFournisseurListF.DeleteFournisseursBtnClick(Sender: TObject);
begin

//-------------------------------------------------------------------------------------------------

 if not FournisseursListDBGridEh.DataSource.DataSet.IsEmpty then
   begin
   GrayForms;
     with MainForm.FournisseurTable do  begin


   if MyMessageDlg('Ėtes-vous sûr de vouloir supprimer le Fournisseur : '+ sLineBreak +  QuotedStr(fieldbyname('nom_f').Value) , mtConfirmation, [mbYes,mbNo], ['Oui','Non'],'Attention', mbNo )  = mrYes then
       begin


      MainForm.FournisseurTable.Delete;

      MainForm.FournisseurTable.Refresh;

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

    end
    else

     NormalForms

    end;


 end;


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

           end ;
      end
  else  Exit
end;

procedure TFournisseurListF.FisrtFournisseursbtnClick(Sender: TObject);
begin
        MainForm.FournisseurTable.First;
end;

procedure TFournisseurListF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //--------- do that when i want ODER by the Indexed of the FirDACTable-----/
 MainForm.FournisseurTable.IndexesActive:=True;
// MainForm.FournisseurTableActif.IndexesActive:= True;
// MainForm.FournisseurTablePassif.IndexesActive:= True;
 ShowMessage('hello');
end;

procedure TFournisseurListF.FormCreate(Sender: TObject);
begin
//FournisseursListDBGridEh.Height:= (MainForm.Height) - (FournisseursListDBGridEh.Top)
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

     FournisseurListF.ActifFournisseursLbl.Caption :=
     IntToStr(MainForm.FournisseurTable.RecordCount);

      MainForm.FournisseurTable.Active := false;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text :=
      'SELECT * FROM fournisseur WHERE activ_f = false ORDER BY code_f';
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
 if MainForm.FournisseurTable.FieldValues['oldcredit_f'] <> 0     then
 begin
 FournisseursListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 FournisseursListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;
//if  FournisseurListDataS.DataSet = MainForm.FournisseurTableActif then
//begin
//if MainForm.FournisseurTableActif.FieldValues['oldcredit_f'] <> 0     then
// begin
// FournisseursListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
// FournisseursListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;
//end;
//
// if  FournisseurListDataS.DataSet = MainForm.FournisseurTablePassif then
// begin
// if MainForm.FournisseurTablePassif.FieldValues['oldcredit_f'] <> 0    then
// begin
// FournisseursListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
// FournisseursListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
// end;
// end;

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


   if Key in ['n'] then

  AddFournisseursBtnClick(Sender) ;


   if Key in ['r'] then

    ResearchFournisseurEdt.SetFocus ;

if not FournisseursListDBGridEh.DataSource.DataSet.IsEmpty then

  begin

  if Key in ['s' ] then

  DeleteFournisseursBtnClick(Sender) ;


   if Key in ['m'] then

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

procedure TFournisseurListF.ResearchFournisseurEdtChange(Sender: TObject);
begin
      if (ResearchFournisseurEdt.text <> '') then

                begin

                  MainForm.FournisseurTable.Filtered:=false;
                  MainForm.FournisseurTable.Filter := '[nom_f] LIKE ' + quotedstr(  '%'+  ResearchFournisseurEdt.Text +'%');
                  MainForm.FournisseurTable.Filtered :=True;

                  end
                else

                    begin
                        MainForm.FournisseurTable.Filtered := False;

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
  Agent.Text:= MainForm.UserIDLbl.Caption ;

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

procedure TFournisseurListF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.FournisseurTable.DisableControls;

    GettingData;

FourListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Etat liste des Fournisseurs';
FourListfrxRprt.Export(frxXLSExport1);

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

end.
