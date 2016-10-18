unit UClientsList;

interface

uses
  Winapi.Windows, Winapi.Messages,MMSystem, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,

  EhLibFireDAC
  ,
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
  frxDBSet, frxExportXLS, frxExportPDF  ;

type
  TClientListF = class(TForm)
    ResearchClientsLbl: TLabel;
    AddClientsBtn: TAdvToolButton;
    EditClientsBtn: TAdvToolButton;
    DeleteClientsBtn: TAdvToolButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    LineP: TPanel;
    S02: TPanel;
    S01: TPanel;
    Panel1: TPanel;
    ClientsListDBGridEh: TDBGridEh;
    TopP: TPanel;
    ResearchClientsEdt: TSearchBox;
    ClientListDataS: TDataSource;
    toutClientsLbl: TLabel;
    Label2: TLabel;
    ActifClientsRdioBtn: TRadioButton;
    PassifClientsRdioBtn: TRadioButton;
    toutClientsRdioBtn: TRadioButton;
    Panel2: TPanel;
    Label3: TLabel;
    PassifClientsLbl: TLabel;
    Label5: TLabel;
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
    Panel5: TPanel;
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
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientListF: TClientListF;

implementation

{$R *.dfm}

uses UMainF,   UClientGestion, USplash,System.Threading;


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
         ClientGestionF.Show;
         ClientGestionF.NameClientGEdt.SetFocus;
          ClientGestionF.OKClientGBtn.Tag:= 1 ;

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
        'SELECT * FROM client  WHERE activ_c = true ORDER BY code_c';
        MainForm.ClientTable.Active := true;

       ActifClientsLbl.Caption := IntToStr(MainForm.ClientTable.RecordCount - 1); // -1 is to not calculate the Comptoir

        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client WHERE activ_c = false ORDER BY code_c';
        MainForm.ClientTable.Active := true;

        PassifClientsLbl.Caption := IntToStr(MainForm.ClientTable.RecordCount);

        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client ORDER BY code_c ';
        MainForm.ClientTable.Active := true;

        ToutClientsLbl.Caption :=   IntToStr(MainForm.ClientTable.RecordCount - 1);  // -1 is to not calculate the Comptoir

        if ActifClientsRdioBtn.Checked then
         begin
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text :=
          'SELECT * FROM client  WHERE activ_c = true ORDER BY code_c';
          MainForm.ClientTable.Active := true;
         end;

         if PassifClientsRdioBtn.Checked then
         begin
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text :=
          'SELECT * FROM client  WHERE activ_c = false ORDER BY code_c';
          MainForm.ClientTable.Active := true;
         end;

         if toutClientsRdioBtn.Checked then
         begin
          MainForm.ClientTable.Active := false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text :=
          'SELECT * FROM client ORDER BY code_c';
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

procedure TClientListF.ClientsListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if ClientsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
      EditClientsBtnClick(Sender) ;
end;
end;

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
 if (MainForm.ClientTable.FieldByName('credit_c').AsCurrency 
   + MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency   ) > 0      then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;


 //------ use this code to red the produit with 0 or null in stock----//
 if (MainForm.ClientTable.FieldByName('credit_c').AsCurrency 
   + MainForm.ClientTable.FieldByName('oldcredit_c').AsCurrency   ) < 0     then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$00519509;//   Brush.Color:=green;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
 end;
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
   if Key in ['n'] then
  AddClientsBtnClick(Sender) ;
   if Key in ['r'] then
    ResearchClientsEdt.SetFocus ;
if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s' ] then
  DeleteClientsBtnClick(Sender) ;
   if Key in ['m'] then
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

procedure TClientListF.FisrtClientbtnClick(Sender: TObject);
begin
        MainForm.ClientTable.First;
end;

procedure TClientListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //--------- do that when i want ODER by the Indexed of the FirDACTable-----/
 MainForm.ClientTable.IndexesActive:=True;

 Action := caFree;

 ClientListF:= nil;

end;

procedure TClientListF.FormShow(Sender: TObject);
begin
       ResearchClientsEdt.SetFocus ;
   //----- for show how many Clients on the database--------------//
//
      ToutClientsLbl.Caption:= IntToStr( MainForm.ClientTable.RecordCount) ;
//
      MainForm.ClientTable.DisableControls;
//
      MainForm.ClientTable.Active := false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text :=
      'SELECT * FROM client  WHERE activ_c = true ORDER BY code_c';
      MainForm.ClientTable.Active := true;

     ActifClientsLbl.Caption :=  IntToStr(MainForm.ClientTable.RecordCount - 1);  // -1 is to not calculate the Comptoir

      MainForm.ClientTable.Active := false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text :=
      'SELECT * FROM client WHERE activ_c = false ORDER BY code_c';
      MainForm.ClientTable.Active := true;

      PassifClientsLbl.Caption := IntToStr(MainForm.ClientTable.RecordCount);

      MainForm.ClientTable.Active := false;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text :=
      'SELECT * FROM client ORDER BY code_c ';
      MainForm.ClientTable.Active := true;

      ToutClientsLbl.Caption :=  IntToStr(MainForm.ClientTable.RecordCount - 1); // -1 is to not calculate the Comptoir



      if ActifClientsRdioBtn.Checked then
       begin
        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client  WHERE activ_c = true ORDER BY code_c';
        MainForm.ClientTable.Active := true;
       end;

       if PassifClientsRdioBtn.Checked then
       begin
        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client  WHERE activ_c = false ORDER BY code_c';
        MainForm.ClientTable.Active := true;
       end;

       if toutClientsRdioBtn.Checked then
       begin
        MainForm.ClientTable.Active := false;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text :=
        'SELECT * FROM client ORDER BY code_c';
        MainForm.ClientTable.Active := true;
       end;


      MainForm.ClientTable.EnableControls;



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

procedure TClientListF.NextClientbtnClick(Sender: TObject);
begin
     MainForm.ClientTable.Next;
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
  'SELECT * FROM client WHERE activ_c = true ORDER BY code_c ';
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
  'SELECT * FROM client WHERE activ_c = false ORDER BY code_c ';
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
  'SELECT * FROM client ORDER BY code_c ';
  MainForm.ClientTable.Active := true;

  MainForm.ClientTable.EnableControls;

end;

procedure TClientListF.ResearchClientsEdtChange(Sender: TObject);
begin
  if (ResearchClientsEdt.text <> '') then
      begin
      MainForm.ClientTable.Filtered:=false;
      MainForm.ClientTable.Filter := '[nom_c] LIKE ' + quotedstr(  '%'+  ResearchClientsEdt.Text +'%');
      MainForm.ClientTable.Filtered :=True;
    end  else
      begin
        MainForm.ClientTable.Filtered := False;
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

procedure TClientListF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.ClientTable.DisableControls;

   GettingData;

  ClientListfrxRprt.PrepareReport;
  ClientListfrxRprt.ShowReport;

  MainForm.ClientTable.EnableControls;
end;

procedure TClientListF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.ClientTable.DisableControls;

    GettingData;

ClientListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Etat liste des Client';
ClientListfrxRprt.Export(frxXLSExport1);

MainForm.ClientTable.EnableControls;
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

procedure TClientListF.FormPaint(Sender: TObject);
begin
MainForm.ClientTable.Refresh;
end;

end.
