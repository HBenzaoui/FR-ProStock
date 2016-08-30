﻿unit UClientsList;

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
    ArrowsPnl: TPanel;
    LastClientbtn: TsSpeedButton;
    NextClientbtn: TsSpeedButton;
    PreviosClientbtn: TsSpeedButton;
    FisrtClientbtn: TsSpeedButton;
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
    ClientTableActif: TFDQuery;
    ClientTablePassif: TFDQuery;
    Panel3: TPanel;
    ClientTableActifnom_c: TWideStringField;
    ClientTableActifadr_c: TWideStringField;
    ClientTableActifville_c: TWideStringField;
    ClientTableActiffix_c: TWideStringField;
    ClientTableActifmob_c: TWideStringField;
    ClientTableActifemail_c: TWideStringField;
    ClientTableActifwillaya_c: TWideStringField;
    ClientTableActiffax_c: TWideStringField;
    ClientTableActifactiv_c: TBooleanField;
    ClientTableActiflogo_c: TBlobField;
    ClientTableActifmob2_c: TWideStringField;
    ClientTableActifrc_c: TWideStringField;
    ClientTableActifnif_c: TWideStringField;
    ClientTableActifnart_c: TWideStringField;
    ClientTableActifnis_c: TWideStringField;
    ClientTableActifobser_c: TWideMemoField;
    ClientTableActifnbank_c: TWideStringField;
    ClientTableActifrib_c: TWideStringField;
    ClientTableActifactivite_c: TWideStringField;
    ClientTableActifpays_c: TWideStringField;
    ClientTableActifsiteweb_c: TWideStringField;
    ClientTableActifoldcredit_c: TCurrencyField;
    ClientTableActifmaxcredit_c: TCurrencyField;
    ClientTableActifcode_c: TIntegerField;
    ClientTableActiftarification_c: TSmallintField;
    ClientTablePassifnom_c: TWideStringField;
    ClientTablePassifadr_c: TWideStringField;
    ClientTablePassifville_c: TWideStringField;
    ClientTablePassiffix_c: TWideStringField;
    ClientTablePassifmob_c: TWideStringField;
    ClientTablePassifemail_c: TWideStringField;
    ClientTablePassifwillaya_c: TWideStringField;
    ClientTablePassiffax_c: TWideStringField;
    ClientTablePassifactiv_c: TBooleanField;
    ClientTablePassiflogo_c: TBlobField;
    ClientTablePassifmob2_c: TWideStringField;
    ClientTablePassifrc_c: TWideStringField;
    ClientTablePassifnif_c: TWideStringField;
    ClientTablePassifnart_c: TWideStringField;
    ClientTablePassifnis_c: TWideStringField;
    ClientTablePassifobser_c: TWideMemoField;
    ClientTablePassifnbank_c: TWideStringField;
    ClientTablePassifrib_c: TWideStringField;
    ClientTablePassifactivite_c: TWideStringField;
    ClientTablePassifpays_c: TWideStringField;
    ClientTablePassifsiteweb_c: TWideStringField;
    ClientTablePassifoldcredit_c: TCurrencyField;
    ClientTablePassifmaxcredit_c: TCurrencyField;
    ClientTablePassifcode_c: TIntegerField;
    ClientTablePassiftarification_c: TSmallintField;
    sSpeedButton3: TsSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxClientListDB: TfrxDBDataset;
    ClientListfrxRprt: TfrxReport;
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

uses UMainF,   UClientGestion, USplash;


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




   if ActifClientsRdioBtn.Checked then
   begin

 if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then

     begin


     //----------------- SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//

         with ClientTableActif do  begin

            ClientGestionF.ActiveClientGSlider.SliderOn:=  FieldValues['activ_c'];
            ClientGestionF.NameClientGEdt.Text:= fieldbyname('nom_c').Value;
            ClientGestionF.AcitiviteClientGEdt.Text:= fieldbyname('activite_c').Value;
            ClientGestionF.AdrClientGEdt.Text:= fieldbyname('adr_c').Value;
            ClientGestionF.WilayaClientGCbx.Text:= fieldbyname('willaya_c').Value;
            ClientGestionF.VilleClientGCbx.Text:= fieldbyname('ville_c').Value;
            ClientGestionF.FixClientGEdt.Text:= fieldbyname('fix_c').Value;
            ClientGestionF.FaxClientGEdt.Text:= fieldbyname('fax_c').Value;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob_c').Value;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob2_c').Value;
            ClientGestionF.EmailClientGEdt.Text:= fieldbyname('email_c').Value;
            ClientGestionF.SiteClientGEdt.Text:= fieldbyname('siteWeb_c').Value;

            ClientGestionF.RCClientGEdt.Text:= fieldbyname('rc_c').Value;
            ClientGestionF.NArtClientGEdt.Text:= fieldbyname('nart_c').Value;
            ClientGestionF.NIFClientGEdt.Text:= fieldbyname('nif_c').Value;
            ClientGestionF.NISClientGEdt.Text:= fieldbyname('nis_c').Value;
            ClientGestionF.NBankClientGEdt.Text:= fieldbyname('nbank_c').Value;
            ClientGestionF.RIBClientGEdt.Text:= fieldbyname('rib_c').Value;
            ClientGestionF.OldCreditClientGEdt.Text:= CurrToStrF( fieldbyname('oldcredit_c').Value,ffNumber, 2);
            ClientGestionF.MaxCreditClientGEdt.Text:= CurrToStrF( fieldbyname('maxcredit_c').Value,ffNumber, 2);
            ClientGestionF.ModeTarifClientGCbx.ItemIndex:= fieldbyname('tarification_c').AsInteger;
            ClientGestionF.ObserClientGMem.Text:= fieldbyname('obser_c').Value;

          end ;

      end

  else  Exit


   end;


   if PassifClientsRdioBtn.Checked then
   begin

    if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then

     begin
      //----------------- Show the splash screan for the produit familly to add new one---------//



     //----------------- SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//

         with ClientTablePassif do  begin

            ClientGestionF.ActiveClientGSlider.SliderOn:=  FieldValues['activ_c'];
            ClientGestionF.NameClientGEdt.Text:= fieldbyname('nom_c').Value;
            ClientGestionF.AcitiviteClientGEdt.Text:= fieldbyname('activite_c').Value;
            ClientGestionF.AdrClientGEdt.Text:= fieldbyname('adr_c').Value;
            ClientGestionF.WilayaClientGCbx.Text:= fieldbyname('willaya_c').Value;
            ClientGestionF.VilleClientGCbx.Text:= fieldbyname('ville_c').Value;
            ClientGestionF.FixClientGEdt.Text:= fieldbyname('fix_c').Value;
            ClientGestionF.FaxClientGEdt.Text:= fieldbyname('fax_c').Value;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob_c').Value;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob2_c').Value;
            ClientGestionF.EmailClientGEdt.Text:= fieldbyname('email_c').Value;
            ClientGestionF.SiteClientGEdt.Text:= fieldbyname('siteWeb_c').Value;

            ClientGestionF.RCClientGEdt.Text:= fieldbyname('rc_c').Value;
            ClientGestionF.NArtClientGEdt.Text:= fieldbyname('nart_c').Value;
            ClientGestionF.NIFClientGEdt.Text:= fieldbyname('nif_c').Value;
            ClientGestionF.NISClientGEdt.Text:= fieldbyname('nis_c').Value;
            ClientGestionF.NBankClientGEdt.Text:= fieldbyname('nbank_c').Value;
            ClientGestionF.RIBClientGEdt.Text:= fieldbyname('rib_c').Value;
            ClientGestionF.OldCreditClientGEdt.Text:= CurrToStrF( fieldbyname('oldcredit_c').Value,ffNumber, 2);
            ClientGestionF.MaxCreditClientGEdt.Text:= CurrToStrF( fieldbyname('maxcredit_c').Value,ffNumber, 2);
            ClientGestionF.ModeTarifClientGCbx.ItemIndex:= fieldbyname('tarification_c').AsInteger;
            ClientGestionF.ObserClientGMem.Text:= fieldbyname('obser_c').Value;

           end ;

      end

  else  Exit


   end;


   if toutClientsRdioBtn.Checked then

   begin

    if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then

     begin



     //----------------- SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//

         with MainForm.ClientTable do begin

            ClientGestionF.ActiveClientGSlider.SliderOn:=  FieldValues['activ_c'];
            ClientGestionF.NameClientGEdt.Text:= fieldbyname('nom_c').Value;
            ClientGestionF.AcitiviteClientGEdt.Text:= fieldbyname('activite_c').Value;
            ClientGestionF.AdrClientGEdt.Text:= fieldbyname('adr_c').Value;
            ClientGestionF.WilayaClientGCbx.Text:= fieldbyname('willaya_c').Value;
            ClientGestionF.VilleClientGCbx.Text:= fieldbyname('ville_c').Value;
            ClientGestionF.FixClientGEdt.Text:= fieldbyname('fix_c').Value;
            ClientGestionF.FaxClientGEdt.Text:= fieldbyname('fax_c').Value;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob_c').Value;
            ClientGestionF.MobileClientGEdt.Text:= fieldbyname('mob2_c').Value;
            ClientGestionF.EmailClientGEdt.Text:= fieldbyname('email_c').Value;
            ClientGestionF.SiteClientGEdt.Text:= fieldbyname('siteWeb_c').Value;

            ClientGestionF.RCClientGEdt.Text:= fieldbyname('rc_c').Value;
            ClientGestionF.NArtClientGEdt.Text:= fieldbyname('nart_c').Value;
            ClientGestionF.NIFClientGEdt.Text:= fieldbyname('nif_c').Value;
            ClientGestionF.NISClientGEdt.Text:= fieldbyname('nis_c').Value;
            ClientGestionF.NBankClientGEdt.Text:= fieldbyname('nbank_c').Value;
            ClientGestionF.RIBClientGEdt.Text:= fieldbyname('rib_c').Value;
            ClientGestionF.OldCreditClientGEdt.Text:= CurrToStrF( fieldbyname('oldcredit_c').Value,ffNumber, 2);
            ClientGestionF.MaxCreditClientGEdt.Text:= CurrToStrF( fieldbyname('maxcredit_c').Value,ffNumber, 2);
            ClientGestionF.ModeTarifClientGCbx.ItemIndex:= fieldbyname('tarification_c').AsInteger;
            ClientGestionF.ObserClientGMem.Text:= fieldbyname('obser_c').Value;

           end ;

      end

  else  Exit


   end;





end;

procedure TClientListF.DeleteClientsBtnClick(Sender: TObject);
begin
 if NOT (MainForm.ClientTable.FieldByName('code_c').AsInteger = 1) then
 begin

 if ActifClientsRdioBtn.Checked then

 begin

  if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
   begin
   GrayForms;
     with ClientTableActif do  begin


   if MyMessageDlg('Ėtes-vous sûr de vouloir supprimer le client : '+ sLineBreak +  QuotedStr(fieldbyname('nom_c').Value) , mtConfirmation, [mbYes,mbNo], ['Oui','Non'],'Attention', mbNo )  = mrYes then
       begin



      ClientTableActif.Delete;

      ClientListF.ClientTableActif.Refresh;

      ClientListF.ActifClientsLbl.Caption:= IntToStr( ClientListF.ClientTableActif.RecordCount);

      MainForm.ClientTable.Refresh;
      toutClientsLbl.Caption:= IntToStr(MainForm.ClientTable.RecordCount);


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

    end
    else

     NormalForms

    end;
   end

 else   Exit

 end;

 //------------------------------------------------------------------------------------------------

  if PassifClientsRdioBtn.Checked then

 begin

 if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
   begin
   GrayForms;
     with ClientTablePassif do  begin


   if MyMessageDlg('Ėtes-vous sûr de vouloir supprimer le client : '+ sLineBreak +  QuotedStr(fieldbyname('nom_c').Value) , mtConfirmation, [mbYes,mbNo], ['Oui','Non'],'Attention', mbNo )  = mrYes then
       begin


      ClientTablePassif.Delete;

      ClientListF.ClientTablePassif.Refresh;

      ClientListF.PassifClientsLbl.Caption:= IntToStr( ClientListF.ClientTablePassif.RecordCount);

       MainForm.ClientTable.Refresh;
      toutClientsLbl.Caption:= IntToStr(MainForm.ClientTable.RecordCount);



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

    end
    else

     NormalForms

    end;
   end

 else   Exit

 end;

//-------------------------------------------------------------------------------------------------


  if toutClientsRdioBtn.Checked then

 begin

 if not ClientsListDBGridEh.DataSource.DataSet.IsEmpty then
   begin
   GrayForms;
     with MainForm.ClientTable do  begin


   if MyMessageDlg('Ėtes-vous sûr de vouloir supprimer le client : '+ sLineBreak +  QuotedStr(fieldbyname('nom_c').Value) , mtConfirmation, [mbYes,mbNo], ['Oui','Non'],'Attention', mbNo )  = mrYes then
       begin


      MainForm.ClientTable.Delete;

      MainForm.ClientTable.Refresh;

      toutClientsLbl.Caption:= IntToStr( MainForm.ClientTable.RecordCount);


      ClientListF.ClientTableActif.Refresh;

      ClientListF.ActifClientsLbl.Caption:= IntToStr( ClientListF.ClientTableActif.RecordCount);


       ClientListF.ClientTablePassif.Refresh;

       ClientListF.PassifClientsLbl.Caption:= IntToStr( ClientListF.ClientTablePassif.RecordCount);



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

    end
    else

     NormalForms

    end;
   end

 else   Exit

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
 if MainForm.ClientTable.FieldValues['oldcredit_c'] <> 0     then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
 end else
if   ClientListDataS.DataSet = ClientTableActif then
begin
if ClientTableActif.FieldValues['oldcredit_c'] <> 0     then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end else
if  ClientListDataS.DataSet = ClientTablePassif then

 if ClientTablePassif.FieldValues['oldcredit_c'] <> 0    then
 begin
 ClientsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
 ClientsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
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
 ClientTableActif.IndexesActive:= false;
 ClientTablePassif.IndexesActive:= false;

end;

procedure TClientListF.FisrtClientbtnClick(Sender: TObject);
begin

    if ActifClientsRdioBtn.Checked then

    begin

        ClientTableActif.First;

    end;

     if PassifClientsRdioBtn.Checked then

    begin

         ClientTablePassif.First;

    end;

     if ToutClientsRdioBtn.Checked then

    begin

        MainForm.ClientTable.First;

    end;

end;

procedure TClientListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //--------- do that when i want ODER by the Indexed of the FirDACTable-----/
 MainForm.ClientTable.IndexesActive:=True;
 ClientTableActif.IndexesActive:= True;
 ClientTablePassif.IndexesActive:= True;
end;

procedure TClientListF.FormShow(Sender: TObject);
begin

   if ActifClientsRdioBtn.Checked then

      ActifClientsRdioBtnClick(Sender);

       ResearchClientsEdt.SetFocus ;


       //----- for show how many Clients on the database--------------//

      ToutClientsLbl.Caption:= IntToStr( MainForm.ClientTable.RecordCount) ;

      ActifClientsLbl.Caption:= IntToStr( ClientListF.ClientTableActif.RecordCount);
      PassifClientsLbl.Caption:= IntToStr( ClientListF.ClientTablePassif.RecordCount);



end;

procedure TClientListF.LastClientbtnClick(Sender: TObject);

begin

 if ActifClientsRdioBtn.Checked then

    begin

        ClientTableActif.last;

    end;

     if PassifClientsRdioBtn.Checked then

    begin

         ClientTablePassif.last;

    end;

     if ToutClientsRdioBtn.Checked then

    begin

        MainForm.ClientTable.last;

    end;
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

  if ActifClientsRdioBtn.Checked then

    begin

        ClientTableActif.Next;

    end;

     if PassifClientsRdioBtn.Checked then

    begin

         ClientTablePassif.Next;

    end;

     if ToutClientsRdioBtn.Checked then

    begin

        MainForm.ClientTable.Next;

    end;

end;

procedure TClientListF.PreviosClientbtnClick(Sender: TObject);
begin

  if ActifClientsRdioBtn.Checked then

    begin

        ClientTableActif.Prior;

    end;

     if PassifClientsRdioBtn.Checked then

    begin

         ClientTablePassif.Prior;

    end;

     if ToutClientsRdioBtn.Checked then

    begin

        MainForm.ClientTable.Prior;

    end;




end;

procedure TClientListF.ActifClientsRdioBtnClick(Sender: TObject);
begin

  ClientListDataS.DataSet:= ClientTableActif;

  ResearchClientsEdt.Text:= '';
  ResearchClientsEdt.SetFocus;

  ClientTableActif.Filtered := false;
  ClientTableActif.Refresh;


end;

procedure TClientListF.PassifClientsRdioBtnClick(Sender: TObject);
begin

  ClientListDataS.DataSet:= ClientTablePassif;

   ResearchClientsEdt.Text:= '';
  ResearchClientsEdt.SetFocus;

  ClientTablePassif.Filtered := false;
  ClientTablePassif.Refresh;


end;

procedure TClientListF.toutClientsRdioBtnClick(Sender: TObject);
begin
 ClientListDataS.DataSet:= MainForm.ClientTable;
 ResearchClientsEdt.Text:= '';
  ResearchClientsEdt.SetFocus;

   MainForm.ClientTable.Filtered := False;
   MainForm.ClientTable.Refresh;

end;

procedure TClientListF.ResearchClientsEdtChange(Sender: TObject);


begin
        if ActifClientsRdioBtn.Checked then

              //----------- Searching in databese-------------------//

       if (ResearchClientsEdt.text <> '') then

                begin

                  ClientTableActif.Filtered:=false;
                  ClientTableActif.Filter := '[nom_c] LIKE ' + quotedstr(    ResearchClientsEdt.Text +'%' )+'OR  [nom_c] LIKE ' + quotedstr(  '%' +  ResearchClientsEdt.Text +'%'  )    +  'and  [activ_c] = true' ;
                  ClientTableActif.Filtered :=True;

                  end
                else

                    begin

                         ClientTableActif.Filtered := false;

                           end;



   if PassifClientsRdioBtn.Checked then

          if (ResearchClientsEdt.text <> '') then

                begin

                  ClientTablePassif.Filtered:=false;
                  ClientTablePassif.Filter := '[nom_c] LIKE ' + quotedstr(  '%'+  ResearchClientsEdt.Text +'%') +  'and  [activ_c] = false' ;
                  ClientTablePassif.Filtered :=True;

                  end
                else

                    begin

                         ClientTablePassif.Filtered := false;

                     end;

   if toutClientsRdioBtn.Checked then


      if (ResearchClientsEdt.text <> '') then

                begin

                  MainForm.ClientTable.Filtered:=false;
                  MainForm.ClientTable.Filter := '[nom_c] LIKE ' + quotedstr(  '%'+  ResearchClientsEdt.Text +'%');
                  MainForm.ClientTable.Filtered :=True;

                  end
                else

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
  Agent.Text:= MainForm.UserIDLbl.Caption ;


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
      ClientTableActif.DisableControls;
    ClientTablePassif.DisableControls;

   GettingData;

  ClientListfrxRprt.PrepareReport;
  ClientListfrxRprt.ShowReport;

  MainForm.ClientTable.EnableControls;
      ClientTableActif.EnableControls;
    ClientTablePassif.EnableControls;
end;

procedure TClientListF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.ClientTable.DisableControls;
    ClientTableActif.DisableControls;
    ClientTablePassif.DisableControls;

    GettingData;

ClientListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Etat liste des Client';
ClientListfrxRprt.Export(frxXLSExport1);

MainForm.ClientTable.EnableControls;
    ClientTableActif.EnableControls;
    ClientTablePassif.EnableControls;
end;

procedure TClientListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.ClientTable.DisableControls;
    ClientTableActif.DisableControls;
    ClientTablePassif.DisableControls;

    GettingData;

ClientListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat liste des Client';
ClientListfrxRprt.Export(frxPDFExport1);

MainForm.ClientTable.EnableControls;
    ClientTableActif.EnableControls;
    ClientTablePassif.EnableControls;
end;

end.
