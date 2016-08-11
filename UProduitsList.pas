unit UProduitsList;

interface

uses
 USplashAddUnite,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, EhLibFireDAC, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton,
  AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, Data.SqlExpr, Vcl.Imaging.jpeg,
  DBGridEh, frxExportPDF, frxClass, frxExportXLS, frxDBSet;

type
  TProduitsListF = class(TForm)
    ProduitsListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditProduitsBtn: TAdvToolButton;
    DeleteProduitsBtn: TAdvToolButton;
    AddProduitsBtn: TAdvToolButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    ResearchProduitsLbl: TLabel;
    ArrowsPnl: TPanel;
    LastClientbtn: TsSpeedButton;
    NextClientbtn: TsSpeedButton;
    PreviosClientbtn: TsSpeedButton;
    FisrtClientbtn: TsSpeedButton;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchProduitsEdt: TSearchBox;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARDCodProduitsRdioBtn: TRadioButton;
    Panel2: TPanel;
    ProduitListDataS: TDataSource;
    ProduitListGridImgLst: TsAlphaImageList;
    Panel3: TPanel;
    sSpeedButton3: TsSpeedButton;
    Panel4: TPanel;
    ProduitListfrxRprt: TfrxReport;
    frxProduitListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    sSpeedButton4: TsSpeedButton;
    procedure AddProduitsBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure EditProduitsBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure DeleteProduitsBtnClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure FisrtClientbtnClick(Sender: TObject);
    procedure LastClientbtnClick(Sender: TObject);
    procedure NextClientbtnClick(Sender: TObject);
    procedure PreviosClientbtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure ResearchProduitsEdtKeyPress(Sender: TObject; var Key: Char);
    procedure ResearchProduitsEdtChange(Sender: TObject);
    procedure ProduitsListDBGridEhDblClick(Sender: TObject);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ResherchPARDCodProduitsRdioBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
  private
    procedure GettingData;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ProduitsListF: TProduitsListF;

implementation

{$R *.dfm}

uses
  UMainF, UProduitGestion, USplashPrinting;

function GridSelectAll(ProduitsListDBGridEh: TDBGridEh): Longint;
begin
  Result := 0;
  ProduitsListDBGridEh.SelectedRows.Clear;
  with ProduitsListDBGridEh.DataSource.DataSet do
  begin
    First;
    DisableControls;
    try
      while not EOF do
      begin
        ProduitsListDBGridEh.SelectedRows.CurrentRowSelected := True;
        Inc(Result);
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TProduitsListF.AddProduitsBtnClick(Sender: TObject);
var
  codeP, refnum: integer;
begin
//-------- use this code to disable contron o dbgrid when adding or editing in the background-----//
  MainForm.ProduitTable.DisableControls;
  MainForm.ProduitTable.Filtered:=False;
  MainForm.ProduitTable.IndexesActive := True;
//-------- use this code to start creating th form-----//
  produitGestionF := TproduitGestionF.Create(ProduitsListF);

  if MainForm.ProduitTable.RecordCount <= 0 then
  begin
    MainForm.ProduitTable.insert;
    MainForm.ProduitTable.FieldValues['code_p'] := 1;
   MainForm.ProduitTable.post;
  end
  else
  begin
    MainForm.ProduitTable.Last;
    codeP := MainForm.ProduitTable.FieldValues['code_p'];
    MainForm.ProduitTable.insert;
    MainForm.ProduitTable.FieldValues['code_p'] := codeP + 1;
   MainForm.ProduitTable.post;
  end;
//------this code is to sent ne reference produit using P00001----
  refnum := MainForm.ProduitTable.FieldValues['code_p'];
  ProduitGestionF.RefProduitGEdt.Text := 'P' + Format('%.*d', [5, refnum]);
  ProduitGestionF.RandomCBProduitGBtn.Tag := 0;
//-------- Show the splash screan for the produit familly to add new one---------//
  produitGestionF.Left := (Screen.Width div 2) - (produitGestionF.Width div 2);
  produitGestionF.Top := (Screen.Height div 2) - (produitGestionF.Height div 2);
  produitGestionF.produitGPgControl.TabIndex := 0;
  produitGestionF.ImageShowProduitG.Picture.Graphic := nil;
  produitGestionF.ImageShowProduitG.Grayed := True;
  produitGestionF.ImageShowProduitG.Blend := 50;
  produitGestionF.Show;
  produitGestionF.NameproduitGEdt.SetFocus;
  produitGestionF.OKproduitGBtn.Tag := 0;
  produitGestionF.OKproduitGBtn.Enabled:=False;
  ProduitGestionF.Tag := 0;
end;

procedure TProduitsListF.DeleteProduitsBtnClick(Sender: TObject);
Var NomP: String;
begin

  if NOT (MainForm.ProduitTable.IsEmpty) Then
  begin
    FSplashAddUnite:=TFSplashAddUnite.Create(ProduitsListF);
    FSplashAddUnite.Width:=350;
    FSplashAddUnite.Height:=160;
    FSplashAddUnite.Panel1.Color:=  $004735F9;
    FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
    FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
    FSplashAddUnite.Image1.Left:= 1;
    FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
    FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
    if  MainForm.ProduitTable.FieldValues['nom_p'] <> NULL then
    begin
    NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
    end else begin
      NomP:='';
    end;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer le Produit : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
    FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
    FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
    FSplashAddUnite.Image1.Visible:=True;
    FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Produit';
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
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 4 ;

  end;
end;

procedure TProduitsListF.EditProduitsBtnClick(Sender: TObject);
var
  S: TMemoryStream;
  Jpg: TJPEGImage;
begin
  begin
      //----------------- Show the splash screan for the produit familly to add new one---------//
    ProduitGestionF := TProduitGestionF.Create(ProduitsListF);
    ProduitGestionF.Left := (Screen.Width div 2) - (ProduitGestionF.Width div 2);
    ProduitGestionF.Top := (Screen.Height div 2) - (ProduitGestionF.Height div 2);
    //   MainForm.Align:= alClient;
   //    AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
    ProduitGestionF.ProduitGPgControl.TabIndex := 0;
    ProduitGestionF.Show;
    ProduitGestionF.NameProduitGEdt.SetFocus;
    ProduitGestionF.OKProduitGBtn.Tag := 1;

    ProduitGestionF.Tag := 1;
        //  MainForm.ClientTable.Refresh;
    if not ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
    begin
 //---------SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//
      with MainForm.ProduitTable do
      begin
        if (fieldbyname('refer_p').Value <> null) then
        begin
        ProduitGestionF.RefProduitGEdt.Text := fieldbyname('refer_p').Value;
        end;
        if (fieldbyname('codebar_p').Value <> null) then
        begin
        ProduitGestionF.CodeBarProduitGEdt.Text := fieldbyname('codebar_p').Value;
        end;
        if (fieldbyname('nom_p').Value <> null) then
        begin
        ProduitGestionF.NameProduitGEdt.Text := fieldbyname('nom_p').Value;
        end;
        //	FamP:= fieldbyname('code_famp').Value;
        if (fieldbyname('famp').Value <> null) then
        begin
          ProduitGestionF.FamilleProduitGCbx.Text := fieldbyname('famp').Value;
        end;
        //	FamSP:= fieldbyname('code_sfamp').Value;
        if (fieldbyname('sfamp').Value <> null) then
        begin
          ProduitGestionF.SFamilleProduitGCbx.Text := fieldbyname('sfamp').Value;
        end;
          //  ProduitGestionF.UniteProduitGCbx.Text:= fieldbyname('unite_p').Value;
        if (fieldbyname('unit').Value <> null) then
        begin
          ProduitGestionF.UniteProduitGCbx.Text := fieldbyname('unit').Value;
        end;
        ProduitGestionF.TVAProduitGCbx.Text := fieldbyname('tva_p').Value;
        ProduitGestionF.PerProduitGSlider.SliderOn := fieldbyname('perissable_p').Value;
        if (fieldbyname('dateperiss_p').Value <> null) then
        begin
          ProduitGestionF.DatePerProduitGD.Date := fieldbyname('dateperiss_p').Value;
        end;
        ProduitGestionF.AlertJoursProduitEdt.Text := fieldbyname('alertdays_p').Value;

        if FieldValues['prixht_p'] <> 0 then
        begin
        ProduitGestionF.PrixAHTProduitEdt.Text := CurrToStrF(FieldValues['prixht_p'], ffNumber, 2);
        end else
          begin
           ProduitGestionF.PrixAHTProduitEdt.Text :='';
          end;

        if FieldValues['PrixATTC'] <> 0 then
        begin
        ProduitGestionF.PrixATTCProduitEdt.Text := CurrToStrF(FieldValues['PrixATTC'], ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixATTCProduitEdt.Text := '';
            end;

        if FieldValues['prixvd_p'] <> 0 then
        begin
        ProduitGestionF.PrixVHTDProduitEdt.Text := CurrToStrF(fieldbyname('prixvd_p').Value, ffNumber, 2);
        end else
            begin
              ProduitGestionF.PrixVHTDProduitEdt.Text :='';
            end;

        if FieldValues['PrixVTTCD'] <> 0 then
        begin
        ProduitGestionF.PrixVTTCDProduitEdt.Text := CurrToStrF(fieldbyname('PrixVTTCD').Value, ffNumber, 2);
        end else
            begin
             ProduitGestionF.PrixVTTCDProduitEdt.Text :='';
            end;

        if FieldValues['prixvr_p'] <> 0 then
        begin
        ProduitGestionF.PrixVHTRProduitEdt.Text := CurrToStrF(fieldbyname('prixvr_p').Value, ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixVHTRProduitEdt.Text := '';
            end;

        if FieldValues['PrixVTTCR'] <> 0 then
        begin
        ProduitGestionF.PrixVTTCRProduitEdt.Text := CurrToStrF(fieldbyname('PrixVTTCR').Value, ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixVTTCRProduitEdt.Text :='';
            end;

        if FieldValues['prixvg_p'] <> 0 then
        begin
        ProduitGestionF.PrixVHTGProduitEdt.Text := CurrToStrF(fieldbyname('prixvg_p').Value, ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixVHTGProduitEdt.Text := '';
            end;

        if FieldValues['PrixVTTCG'] <> 0 then
        begin
        ProduitGestionF.PrixVTTCGProduitEdt.Text := CurrToStrF(fieldbyname('PrixVTTCG').Value, ffNumber, 2);
        end else
            begin
              ProduitGestionF.PrixVTTCGProduitEdt.Text :='';
            end;

        if FieldValues['prixva_p'] <> 0 then
        begin
        ProduitGestionF.PrixVHTA1ProduitEdt.Text := CurrToStrF(fieldbyname('prixva_p').Value, ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixVHTA1ProduitEdt.Text :='';
            end;

        if FieldValues['PrixVTTCA'] <> 0 then
        begin
        ProduitGestionF.PrixVTTCA1ProduitEdt.Text := CurrToStrF(fieldbyname('PrixVTTCA').Value, ffNumber, 2);
        end else
            begin
             ProduitGestionF.PrixVTTCA1ProduitEdt.Text := '';
            end;

        if FieldValues['prixva2_p'] <> 0 then
        begin
        ProduitGestionF.PrixVHTA2ProduitEdt.Text := CurrToStrF(fieldbyname('prixva2_p').Value, ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixVHTA2ProduitEdt.Text :='';
            end;

        if FieldValues['PrixVTTCA2'] <> 0 then
        begin
        ProduitGestionF.PrixVTTCA2ProduitEdt.Text := CurrToStrF(fieldbyname('PrixVTTCA2').Value, ffNumber, 2);
        end else
            begin
            ProduitGestionF.PrixVTTCA2ProduitEdt.Text :='';
            end;

        //----- use this code to refresh all the prices -----//
        if FieldValues['prixht_p'] <> 0 then
       begin
        ProduitGestionF.PrixATTCProduitEdtExit(Sender); //----
        end;
       //----------------------------------------------------//
    //    if (fieldbyname('qut_p').Value <> null) then
        begin
          ProduitGestionF.StockActuelProduitEdt.Text := FloatToStrF(((fieldbyname('qut_p').Value) + (fieldbyname('qutini_p').Value)), ffNumber,14, 2);
          ProduitGestionF.StockINProduitEdt.Text := FloatToStrF(fieldbyname('qutini_p').Value, ffNumber,14, 2);
        end;
    //    if (fieldbyname('alertqut_p').Value <> null) then
    //    begin
          ProduitGestionF.StockAlertProduitEdt.Text := IntToStr(fieldbyname('alertqut_p').Value);
   //     end;
          //	FourP:= fieldbyname('code_f').Value;
        if (fieldbyname('fourp').Value <> null) then
   //     begin
          ProduitGestionF.FournisseurProduitGCbx.Text := fieldbyname('fourp').Value;
    //    end;
//        if (fieldbyname('qutmin_p').Value <> null) then
   //     begin
          ProduitGestionF.MinStockProduitGCbx.Text := FloatToStrF(fieldbyname('qutmin_p').Value, ffNumber,14, 2);
  //      end;
   //     if (fieldbyname('qutmax_p').Value <> null) then
   //     begin
          ProduitGestionF.MaxStockProduitGCbx.Text := FloatToStrF(fieldbyname('qutmax_p').Value, ffNumber,14, 2);
    //    end;
        if (fieldbyname('local').Value <> null) then
        begin
          ProduitGestionF.LocalisationProduitGCbx.Text := fieldbyname('local').Value;
        end;

        ProduitGestionF.ObserProduitGMem.Text := fieldbyname('obser_p').Value;
        if (fieldbyname('logo_p').Value <> null) then
        begin
          S := TMemoryStream.Create;
          try
            TBlobField(FieldByName('logo_p')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              ProduitGestionF.ImageShowProduitG.ImageIndex := -1;
              ProduitGestionF.ImageShowProduitG.Stretch := True;
              ProduitGestionF.ImageEditProduitGBtn.Visible := true;
              ProduitGestionF.ImageDeleteProduitGBtn.Visible := True;
              ProduitGestionF.ImageShowProduitG.Grayed := False;
              ProduitGestionF.ImageShowProduitG.Blend := 0;
              ProduitGestionF.ImageShowProduitG.Picture.Assign(Jpg);
            finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;
        end
        else
        begin
          ProduitGestionF.ImageShowProduitG.Picture.Graphic := nil;
          ProduitGestionF.ImageShowProduitG.ImageIndex := 0;
          ProduitGestionF.ImageShowProduitG.Grayed := True;
          ProduitGestionF.ImageShowProduitG.Blend := 50;
        end;
      end;
    end
    else  begin
      Exit
    end;
//    produitGestionF.OKproduitGBtn.Enabled:=False;
//    produitGestionF.OKproduitGBtn.ImageIndex:=1;

  end;
end;

procedure TProduitsListF.FisrtClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.First;
end;

procedure TProduitsListF.LastClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.Last;
end;

procedure TProduitsListF.NextClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.Next;
end;

procedure TProduitsListF.PreviosClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.Prior;
end;

procedure TProduitsListF.ProduitsListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if ProduitsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  EditProduitsBtnClick(Sender) ;
end;
end;

procedure TProduitsListF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  {  if gdFocused in State then
      begin
 // ProduitsListDBGridEh.Canvas.DrawFocusRect(Rect);
    ProduitsListDBGridEh.Canvas.Brush.Color:=clAqua;
       end;  }

//------ use this code to high light the selected row in dbgrid----//
 if gdSelected in State then
begin
   ProduitsListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

  if  (MainForm.ProduitTable.FieldValues['prixht_p'] = 0) OR (MainForm.ProduitTable.FieldValues['qut_p'] = null)   then
 begin
 ProduitsListDBGridEh.Canvas.Font.Color:=$000099FF;
 ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
 //------ use this code to red the produit with 0 or null in stock----//
 if  (MainForm.ProduitTable.FieldValues['qut_p'] = 0) OR (MainForm.ProduitTable.FieldValues['qut_p'] = null)   then
 begin
 ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
 ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  end;

procedure TProduitsListF.ProduitsListDBGridEhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if not ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then

  DeleteProduitsBtnClick(Sender) ;

  end
  else
    exit

end;

procedure TProduitsListF.ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin

  if Key in ['n'] then
    AddProduitsBtnClick(Sender);

  if Key in ['r'] then
    ResearchProduitsEdt.SetFocus;

  if not ProduitsListDBGridEh.DataSource.DataSet.IsEmpty then
  begin

  if Key in ['s' ] then

  DeleteProduitsBtnClick(Sender) ;


    if Key in ['m'] then
      EditProduitsBtnClick(Sender);

  end
  else
    Exit;
end;

procedure TProduitsListF.ProduitsListDBGridEhMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
//var
//  gc: TGridCoord;
begin
//  gc:= ProduitsListDBGridEh.MouseCoord(x, y);

//  if (gc.X > 0) AND (gc.Y > 0) then
//  begin
//    ProduitsListDBGridEh.DataSource.DataSet.MoveBy
//        (gc.Y - TDBGridEh(ProduitsListDBGridEh).Row);
//  end;
end;

procedure TProduitsListF.ProduitsListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
begin
  MainForm.ProduitTable.IndexesActive := false;

end;

procedure TProduitsListF.ResearchProduitsEdtChange(Sender: TObject);
var  CodeCB : Integer;

begin

 //----------- Searching in databese-------------------//
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE nom_cb LIKE ' +''+ QuotedStr( ResearchProduitsEdt.Text )+'' ;
      MainForm.SQLQuery.Active:=True;
      if MainForm.SQLQuery.FieldValues['code_p'] <> null then
     begin
      CodeCB:=MainForm.SQLQuery.FieldValues['code_p'];
     end;
    if ResherchPARDesProduitsRdioBtn.Checked then
    if (ResearchProduitsEdt.text <> '') then
    begin
      MainForm.ProduitTable.Filtered := false;
      MainForm.ProduitTable.Filter := '[nom_p] LIKE ' + quotedstr('%' +ResearchProduitsEdt.Text + '%') + ' OR '+
     '[refer_p] LIKE ' + quotedstr('%' +ResearchProduitsEdt.Text + '%') ;
      MainForm.ProduitTable.Filtered := True;
    end
    else
    begin
     MainForm.ProduitTable.Filtered := false;
    end;
  if ResherchPARDCodProduitsRdioBtn.Checked then
    if (ResearchProduitsEdt.text <> '') then
    begin
      MainForm.ProduitTable.Filtered := false;
      MainForm.ProduitTable.Filter := '[codebar_p] LIKE ' + quotedstr('%' + ResearchProduitsEdt.Text + '%')  + ' OR [code_p] = '+ IntToStr(CodeCB) ;
      MainForm.ProduitTable.Filtered := True;
    end
    else
    begin
      MainForm.ProduitTable.Filtered := false;
    end;

end;

procedure TProduitsListF.ResearchProduitsEdtKeyPress(Sender: TObject; var Key: Char);
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchProduitsEdt.Text := '';

  end;

end;


procedure TProduitsListF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ResearchProduitsEdt.Clear;
ResearchProduitsEdt.SetFocus;
end;

procedure TProduitsListF.ResherchPARDCodProduitsRdioBtnClick(Sender: TObject);
begin
ResearchProduitsEdt.Clear;
ResearchProduitsEdt.SetFocus;
end;

procedure TProduitsListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(ProduitsListF);
end;


  procedure TProduitsListF.GettingData;
var
  Agent,Actif,Passif,Tout,Four : TfrxMemoView;
begin
  Agent:= ProduitListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserIDLbl.Caption ;

end;

procedure TProduitsListF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.ProduitTable.DisableControls;

   GettingData;

  ProduitListfrxRprt.PrepareReport;
  ProduitListfrxRprt.ShowReport;

  MainForm.ProduitTable.EnableControls;
end;

procedure TProduitsListF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.ProduitTable.DisableControls;

    GettingData;

ProduitListfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'Liste Des Produits';
ProduitListfrxRprt.Export(frxXLSExport1);

MainForm.ProduitTable.EnableControls;
end;

procedure TProduitsListF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.ProduitTable.DisableControls;

    GettingData;

ProduitListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Liste Des Produits';
ProduitListfrxRprt.Export(frxPDFExport1);

MainForm.ProduitTable.EnableControls;
end;

procedure TProduitsListF.Button1Click(Sender: TObject);
begin
//frxProduitListDB.load
end;

procedure TProduitsListF.sSpeedButton4Click(Sender: TObject);
begin

  if NOT (MainForm.ProduitTable.IsEmpty) Then
  begin
    FSplashPrinting:=TFSplashPrinting.Create(Application);
//    FSplashPrinting.Width:=350;
//    FSplashPrinting.Height:=160;
//    FSplashPrinting.Panel1.Color:=  $004735F9;
//    FSplashPrinting.LineP.Top:= (FSplashPrinting.Height) - 44  ;
   // FSplashPrinting.Image1.Left:= 1;
//    FSplashPrinting.Image1.Visible:=True;
//    FSplashPrinting.Image1.Top:= (FSplashPrinting.Height div 2) - (FSplashPrinting.Image1.Height div 2 ) ;
    FSplashPrinting.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashPrinting.Width div 2);
    FSplashPrinting.Top:=   MainForm.Top + 5;

    AnimateWindow(FSplashPrinting.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashPrinting.Show;

  end;


//FSplashPrinting.Position:= poScreenCenter;
//FSplashPrinting.ShowModal;
end;

end.








