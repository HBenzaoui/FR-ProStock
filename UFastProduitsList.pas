unit UFastProduitsList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvToolBtn;

type
  TFastProduitsListF = class(TForm)
    TopP: TPanel;
    ResearchProduitsLbl: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchProduitsEdt: TSearchBox;
    ResherchPARDesProduitsRdioBtn: TRadioButton;
    ResherchPARDCodProduitsRdioBtn: TRadioButton;
    Panel2: TPanel;
    Panel3: TPanel;
    ProduitListDataS: TDataSource;
    CancelProduitGBtn: TAdvToolButton;
    OKProduitGBtn: TAdvToolButton;
    ProduitsListDBGridEh: TDBGridEh;
    LastClientbtn: TsSpeedButton;
    NextClientbtn: TsSpeedButton;
    PreviosClientbtn: TsSpeedButton;
    FisrtClientbtn: TsSpeedButton;
    procedure FisrtClientbtnClick(Sender: TObject);
    procedure PreviosClientbtnClick(Sender: TObject);
    procedure NextClientbtnClick(Sender: TObject);
    procedure LastClientbtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhDblClick(Sender: TObject);
    procedure ProduitsListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ProduitsListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure ResearchProduitsEdtChange(Sender: TObject);
    procedure ResearchProduitsEdtKeyPress(Sender: TObject; var Key: Char);
    procedure ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
    procedure ResherchPARDCodProduitsRdioBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKProduitGBtnClick(Sender: TObject);
    procedure ProduitsListDBGridEhCheckRowHaveDetailPanel(
      Sender: TCustomDBGridEh; var RowHaveDetailPanel: Boolean);
    procedure CancelProduitGBtnClick(Sender: TObject);
    procedure ResearchProduitsEdtEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodePForFastPList: Integer;
  end;

var
  FastProduitsListF: TFastProduitsListF;

implementation

{$R *.dfm}

uses
  UMainF, UProduitGestion, USplashAddUnite, UClientGestion, UBonRecGestion,
  UBonLivGestion, UBonFacVGestion, UComptoir,  UBonFacAGestion, UPertesGestion,
  UBonFacPGestion;


procedure TFastProduitsListF.FisrtClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.First;
end;


procedure TFastProduitsListF.LastClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.Last;
end;

procedure TFastProduitsListF.NextClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.Next;
end;

procedure TFastProduitsListF.PreviosClientbtnClick(Sender: TObject);
begin
  MainForm.ProduitTable.Prior;
end;

procedure TFastProduitsListF.ProduitsListDBGridEhDblClick(Sender: TObject);
//var CodeBR,i  : Integer;

begin
     if ProduitsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
        begin

         OKProduitGBtnClick(Sender);

     end;

end;

procedure TFastProduitsListF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
//------ use this code to high light the selected row in dbgrid----//
 if gdSelected in State then
begin
   ProduitsListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

//------ use this code to orange the produit with 0 or null in prix achate ----//
  if  (MainForm.ProduitTable.FieldValues['prixht_p'] = 0)   then
 begin
 ProduitsListDBGridEh.Canvas.Font.Color:=$000099FF;
 ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

 //------ use this code to red the produit with 0 or null in stock----//
 if  (MainForm.ProduitTable.FieldValues['QutDispo'] = 0)   then
 begin
 ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;
 ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

  end;


procedure TFastProduitsListF.ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['r','R'] then
  begin
    ResearchProduitsEdt.SetFocus;
  end;
    if Key = #13 then
  begin
      FastProduitsListF.OKProduitGBtnClick(Sender);
  end;
end;


procedure TFastProduitsListF.ProduitsListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
begin
  MainForm.ProduitTable.IndexesActive := false;
end;

procedure TFastProduitsListF.ResearchProduitsEdtChange(Sender: TObject);
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

procedure TFastProduitsListF.ResearchProduitsEdtKeyPress(Sender: TObject; var Key: Char);
const
  N =[Char(VK_ESCAPE)];
begin
  if (Key in N) then
  begin
   key := #0;
    ResearchProduitsEdt.Text := '';
  end;
  if key = #13 then
  begin
   key := #0;
  // if ResherchPARDesProduitsRdioBtn.Checked then
   if  MainForm.ProduitTable.RecordCount > 0  then

      OKProduitGBtnClick(Sender);
  end;

end;


procedure TFastProduitsListF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ResearchProduitsEdt.Clear;
ResearchProduitsEdt.SetFocus;
end;

procedure TFastProduitsListF.ResherchPARDCodProduitsRdioBtnClick(Sender: TObject);
begin
ResearchProduitsEdt.Clear;
ResearchProduitsEdt.SetFocus;
end;

procedure TFastProduitsListF.FormShow(Sender: TObject);
begin
  GrayForms  ;
 MainForm.ProduitTable.Refresh;
 ProduitsListDBGridEh.Refresh;

end;

procedure TFastProduitsListF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
MainForm.ProduitTable.Filtered := false;
NormalForms  ;
//FreeAndNil(FastProduitsListF);
end;

procedure TFastProduitsListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;

  MainForm.ProduitTable.Filtered:=False;
  ResearchProduitsEdt.Text:='';

  Close;

 end;
end;

procedure TFastProduitsListF.OKProduitGBtnClick(Sender: TObject);
var CodeBR,i,CodeP : Integer;
    NomP: string;
    lookupResultRefP : Variant;
begin
   if NOT (MainForm.ProduitTable.IsEmpty) then
    begin

    CodePForFastPList:=MainForm.ProduitTable.FieldValues['code_p'];

//----- this tag is for multiple products ------//
    if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 0) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

      MainForm.ProduitTable.DisableControls;

      MainForm.Bona_recPlistTable.DisableControls;
      MainForm.Bona_recPlistTable.IndexFieldNames:='';
      MainForm.Bona_recPlistTable.Active:=False;
      MainForm.Bona_recPlistTable.SQL.Clear;
      MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list ORDER by code_barecl' ;
      MainForm.Bona_recPlistTable.Active:=True;
      MainForm.Bona_recPlistTable.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  MainForm.Bona_recPlistTable.IsEmpty then
           begin
             MainForm.Bona_recPlistTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_recPlistTable.Last;
                CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
               end;

                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                  BonRecGestionF.ProduitsListDBGridEh.Columns[4].Visible := True
                 end;               

             MainForm.Bona_recPlistTable.Last;
             MainForm.Bona_recPlistTable.Append;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:=  01;
             
             MainForm.Bona_recPlistTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_recPlistTable.FieldValues['qut_p'])*(MainForm.Bona_recPlistTable.FieldValues['cond_p']);    
             
             MainForm.Bona_recPlistTable.Post ;

      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
           MainForm.Bona_recPlistTable.Last;
           MainForm.Bona_recPlistTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           OKProduitGBtn.Tag:=2;
         end else
             begin
                FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
                FSplashAddUnite.Image1.ImageIndex:=3;
                FSplashAddUnite.Width:=300;
                FSplashAddUnite.Height:=160;
                FSplashAddUnite.Panel1.Color:= $0028CAFE;
                FSplashAddUnite.Color:= $00EFE9E8;
                FSplashAddUnite.LineP.Color:=$0028CAFE;
                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
                if  MainForm.Bona_recPlistTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
                FSplashAddUnite.Image1.Visible:=True;
                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
                FSplashAddUnite.Top:=   MainForm.Top + 5;
                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=1;
             end;

           MainForm.Bona_recPlistTable.Refresh;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 0) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := MainForm.Bona_recPlistTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

      MainForm.Bona_recPlistTable.DisableControls;
      MainForm.Bona_recPlistTable.IndexFieldNames:='';
      MainForm.Bona_recPlistTable.Active:=False;
      MainForm.Bona_recPlistTable.SQL.Clear;
      MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list ORDER by code_barecl' ;
      MainForm.Bona_recPlistTable.Active:=True;
      MainForm.Bona_recPlistTable.Last;
           if  MainForm.Bona_recPlistTable.IsEmpty then
           begin
             MainForm.Bona_recPlistTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_recPlistTable.Last;
                CodeBR:= MainForm.Bona_recPlistTable.FieldValues['code_barecl'] + 1 ;
               end;

                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                  BonRecGestionF.ProduitsListDBGridEh.Columns[4].Visible := True
                 end;   
                 
             MainForm.Bona_recPlistTable.Last;
             MainForm.Bona_recPlistTable.Append;
             MainForm.Bona_recPlistTable.FieldValues['code_barecl']:= CodeBR ;
             MainForm.Bona_recPlistTable.FieldValues['code_barec']:= MainForm.Bona_recTable.FieldValues['code_barec'];
             MainForm.Bona_recPlistTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_recPlistTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_recPlistTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_recPlistTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_recPlistTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_recPlistTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_recPlistTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;

             MainForm.Bona_recPlistTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_recPlistTable.FieldValues['qut_p'])*(MainForm.Bona_recPlistTable.FieldValues['cond_p']);                 
             
             MainForm.Bona_recPlistTable.Post ;
           MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
           MainForm.Bona_recPlistTable.Last;
           MainForm.Bona_recPlistTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
          MainForm.Bona_recPlistTable.Active:=False;
          MainForm.Bona_recPlistTable.SQL.Clear;
          MainForm.Bona_recPlistTable.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
          MainForm.Bona_recPlistTable.Active:=True;

          Close;

   end else
       begin
          FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
          FSplashAddUnite.Image1.ImageIndex:=3;
          FSplashAddUnite.Width:=300;
          FSplashAddUnite.Height:=160;
          FSplashAddUnite.Panel1.Color:=  $0028CAFE;
          FSplashAddUnite.Color:= $00EFE9E8;
          FSplashAddUnite.LineP.Color:=$0028CAFE;
          FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
          FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
          FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
          FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2);
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2);
          if  MainForm.Bona_recPlistTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
          FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
          FSplashAddUnite.Image1.Visible:=True;
          FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
          FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
          FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
          FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
          FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
          FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
          FSplashAddUnite.Top:=   MainForm.Top + 5;
          FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
          FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 5 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=1;
       end;


       MainForm.Bona_recPlistTable.Refresh;
    end
     else

    if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 0)  then
    begin
     CancelProduitGBtnClick(Sender);

    end;

  //-------------------------------------------------------------------------------------------------

//---------- from this is to add produit to the bon livrartyion with fastform tag = 1-------------------------------------------

  //----- this tag is for multiple products ------//
    if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 1) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

      MainForm.ProduitTable.DisableControls;

      MainForm.SQLQuery.DisableControls;
      MainForm.SQLQuery.IndexFieldNames:='';
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bonv_liv_list ORDER by code_bvlivl' ;
      MainForm.SQLQuery.Active:=True;
      MainForm.SQLQuery.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

               if BonLivGestionF.ClientBonLivGCbx.Text<> '' then
         begin
           MainForm.ClientTable.DisableControls;
            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonLivGestionF.ClientBonLivGCbx.Text )+')'  ;
            MainForm.ClientTable.Active:=True;

         end;

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  MainForm.SQLQuery.IsEmpty then
           begin
             MainForm.SQLQuery.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.SQLQuery.Last;
                CodeBR:= MainForm.SQLQuery.FieldByName('code_bvlivl').AsInteger + 1 ;
               end;

             MainForm.SQLQuery.Last;
             MainForm.SQLQuery.Append;
             MainForm.SQLQuery.FieldByName('code_bvlivl').AsInteger:= CodeBR ;
             MainForm.SQLQuery.FieldByName('code_bvliv').AsInteger:= MainForm.Bonv_livTable.FieldByName('code_bvliv').AsInteger;
             MainForm.SQLQuery.FieldByName('code_p').AsInteger:=  MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
             MainForm.SQLQuery.FieldByName('qut_p').AsFloat :=  01;
             MainForm.SQLQuery.FieldByName('cond_p').AsInteger:=  01;
             MainForm.SQLQuery.FieldByName('tva_p').AsInteger:= MainForm.ProduitTable.FieldByName('tva_p').AsInteger;

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonLivGestionF.ClientBonLivGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             end;
             end else
                 begin
                  MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
                 end;

             MainForm.SQLQuery.Post ;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

//          MainForm.Bonv_liv_listTable.Next;
      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
//           MainForm.Bonv_liv_listTable.Refresh;
//           MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';
           MainForm.Bonv_liv_listTable.Filtered:= False;
           MainForm.Bonv_liv_listTable.Last;
//           MainForm.Bonv_liv_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           OKProduitGBtn.Tag:=2;
         end else
             begin
                FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
                FSplashAddUnite.Image1.ImageIndex:=3;
                FSplashAddUnite.Width:=300;
                FSplashAddUnite.Height:=160;
                FSplashAddUnite.Panel1.Color:= $0028CAFE;
                FSplashAddUnite.Color:= $00EFE9E8;
                FSplashAddUnite.LineP.Color:=$0028CAFE;
                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
                if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
                FSplashAddUnite.Image1.Visible:=True;
                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
                FSplashAddUnite.Top:=   MainForm.Top + 5;
                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=1;
             end;

              MainForm.Bonv_liv_listTable.Refresh;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 1) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := MainForm.Bonv_liv_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
      begin
             if BonLivGestionF.ClientBonLivGCbx.Text<> '' then
           begin
             MainForm.ClientTable.DisableControls;
              MainForm.ClientTable.Active:=false;
              MainForm.ClientTable.SQL.Clear;
              MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonLivGestionF.ClientBonLivGCbx.Text )+')'  ;
              MainForm.ClientTable.Active:=True;

           end;


          MainForm.ProduitTable.DisableControls;

          MainForm.Bonv_liv_listTable.DisableControls;
          MainForm.Bonv_liv_listTable.IndexFieldNames:='';
          MainForm.Bonv_liv_listTable.Active:=False;
          MainForm.Bonv_liv_listTable.SQL.Clear;
          MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list ORDER by code_bvlivl' ;
          MainForm.Bonv_liv_listTable.Active:=True;
          MainForm.Bonv_liv_listTable.Last;
           if  MainForm.Bonv_liv_listTable.IsEmpty then
           begin
             MainForm.Bonv_liv_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_liv_listTable.Last;
                CodeBR:= MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl'] + 1 ;
               end;
             MainForm.Bonv_liv_listTable.Last;
             MainForm.Bonv_liv_listTable.Append;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl']:= CodeBR ;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonLivGestionF.ClientBonLivGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_liv_listTable.Post ;

           MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';
           MainForm.Bonv_liv_listTable.Last;
           MainForm.Bonv_liv_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
           MainForm.Bonv_liv_listTable.Active:=False;
           MainForm.Bonv_liv_listTable.SQL.Clear;
           MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
           MainForm.Bonv_liv_listTable.Active:=True;

          MainForm.ClientTable.Active:=false;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;


          Close;

     end else
       begin
          FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
          FSplashAddUnite.Image1.ImageIndex:=3;
          FSplashAddUnite.Width:=300;
          FSplashAddUnite.Height:=160;
          FSplashAddUnite.Panel1.Color:=  $0028CAFE;
          FSplashAddUnite.Color:= $00EFE9E8;
          FSplashAddUnite.LineP.Color:=$0028CAFE;
          FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
          FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
          FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
          FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2);
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2);
          if  MainForm.Bonv_liv_listTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p']
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
          FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
          FSplashAddUnite.Image1.Visible:=True;
          FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
          FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
          FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
          FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
          FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
          FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
          FSplashAddUnite.Top:=   MainForm.Top + 5;
          FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
          FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 10 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=3;
       end;

       MainForm.Bonv_liv_listTable.Refresh;
    end
     else


    if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 1)  then
    begin
     CancelProduitGBtnClick(Sender);

    end;


      //-------------------------------------------------------------------------------------------------

//---------- from this is to add produit to the facture de vente with fastform tag = 2-------------------------------------------

  //----- this tag is for multiple products ------//

     if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 2) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := MainForm.Bonv_fac_listTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

         if BonFacVGestionF.ClientBonFacVGCbx.Text<> '' then
       begin
         MainForm.ClientTable.DisableControls;
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacVGestionF.ClientBonFacVGCbx.Text )+')'  ;
         MainForm.ClientTable.Active:=True;
       end;

      MainForm.ProduitTable.DisableControls;

      MainForm.Bonv_fac_listTable.DisableControls;
      MainForm.Bonv_fac_listTable.IndexFieldNames:='';
      MainForm.Bonv_fac_listTable.Active:=False;
      MainForm.Bonv_fac_listTable.SQL.Clear;
      MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list ORDER by code_bvfacl' ;
      MainForm.Bonv_fac_listTable.Active:=True;
      MainForm.Bonv_fac_listTable.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  MainForm.Bonv_fac_listTable.IsEmpty then
           begin
             MainForm.Bonv_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_fac_listTable.Last;
                CodeBR:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
               end;

             MainForm.Bonv_fac_listTable.Last;
             MainForm.Bonv_fac_listTable.Append;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeBR ;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
             MainForm.Bonv_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_fac_listTable.FieldValues['cond_p']:=  01;
             MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacVGestionF.ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_fac_listTable.Post ;

            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;
      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';
           MainForm.Bonv_fac_listTable.Last;
           MainForm.Bonv_fac_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           OKProduitGBtn.Tag:=2;
         end else
             begin
                FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
                FSplashAddUnite.Image1.ImageIndex:=3;
                FSplashAddUnite.Width:=300;
                FSplashAddUnite.Height:=160;
                FSplashAddUnite.Panel1.Color:= $0028CAFE;
                FSplashAddUnite.Color:= $00EFE9E8;
                FSplashAddUnite.LineP.Color:=$0028CAFE;
                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
                if  MainForm.Bonv_fac_listTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
                FSplashAddUnite.Image1.Visible:=True;
                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
                FSplashAddUnite.Top:=   MainForm.Top + 5;
                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 15 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=4;
             end;

             MainForm.Bonv_fac_listTable.Refresh;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 2) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := MainForm.Bonv_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

        if BonFacVGestionF.ClientBonFacVGCbx.Text<> '' then
       begin
         MainForm.ClientTable.DisableControls;
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacVGestionF.ClientBonFacVGCbx.Text )+')'  ;
         MainForm.ClientTable.Active:=True;
       end;

      MainForm.Bonv_fac_listTable.DisableControls;
      MainForm.Bonv_fac_listTable.IndexFieldNames:='';
      MainForm.Bonv_fac_listTable.Active:=False;
      MainForm.Bonv_fac_listTable.SQL.Clear;
      MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list ORDER by code_bvfacl' ;
      MainForm.Bonv_fac_listTable.Active:=True;
      MainForm.Bonv_fac_listTable.Last;
           if  MainForm.Bonv_fac_listTable.IsEmpty then
           begin
             MainForm.Bonv_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_fac_listTable.Last;
                CodeBR:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
               end;

             MainForm.Bonv_fac_listTable.Last;
             MainForm.Bonv_fac_listTable.Append;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeBR ;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
             MainForm.Bonv_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacVGestionF.ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_fac_listTable.Post ;
           MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';
           MainForm.Bonv_fac_listTable.Last;
           MainForm.Bonv_fac_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
          MainForm.Bonv_fac_listTable.Active:=False;
          MainForm.Bonv_fac_listTable.SQL.Clear;
          MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
          MainForm.Bonv_fac_listTable.Active:=True;


            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;

          Close;

   end else
       begin
          FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
          FSplashAddUnite.Image1.ImageIndex:=3;
          FSplashAddUnite.Width:=300;
          FSplashAddUnite.Height:=160;
          FSplashAddUnite.Panel1.Color:=  $0028CAFE;
          FSplashAddUnite.Color:= $00EFE9E8;
          FSplashAddUnite.LineP.Color:=$0028CAFE;
          FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
          FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
          FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
          FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2);
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2);
          if  MainForm.Bonv_fac_listTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p']
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
          FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
          FSplashAddUnite.Image1.Visible:=True;
          FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
          FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
          FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
          FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
          FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
          FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
          FSplashAddUnite.Top:=   MainForm.Top + 5;
          FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
          FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 15 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=4;
       end;

       MainForm.Bonv_fac_listTable.Refresh;
    end
     else


    if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 2)  then
    begin
     CancelProduitGBtnClick(Sender);

    end;

    //-------------------------------------------------------------------------------------------------

//---------- from this is to add produit to the facture d''achat with fastform tag = 3-------------------------------------------

  //----- this tag is for multiple products ------//

     if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 3) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

      MainForm.ProduitTable.DisableControls;

      MainForm.Bona_fac_listTable.DisableControls;
      MainForm.Bona_fac_listTable.IndexFieldNames:='';
      MainForm.Bona_fac_listTable.Active:=False;
      MainForm.Bona_fac_listTable.SQL.Clear;
      MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list ORDER by code_bafacl' ;
      MainForm.Bona_fac_listTable.Active:=True;
      MainForm.Bona_fac_listTable.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  MainForm.Bona_fac_listTable.IsEmpty then
           begin
             MainForm.Bona_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_fac_listTable.Last;
                CodeBR:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
               end;
               
                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   BonFacAGestionF.ProduitsListDBGridEh.Columns[4].Visible := True
                 end;

             MainForm.Bona_fac_listTable.Last;
             MainForm.Bona_fac_listTable.Append;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeBR ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:=  01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;

              MainForm.Bona_fac_listTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']);
             
             MainForm.Bona_fac_listTable.Post ;

      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
           MainForm.Bona_fac_listTable.Last;
           MainForm.Bona_fac_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           OKProduitGBtn.Tag:=2;
         end else
             begin
                FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
                FSplashAddUnite.Image1.ImageIndex:=3;
                FSplashAddUnite.Width:=300;
                FSplashAddUnite.Height:=160;
                FSplashAddUnite.Panel1.Color:= $0028CAFE;
                FSplashAddUnite.Color:= $00EFE9E8;
                FSplashAddUnite.LineP.Color:=$0028CAFE;
                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
                if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
                FSplashAddUnite.Image1.Visible:=True;
                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
                FSplashAddUnite.Top:=   MainForm.Top + 5;
                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=5;
             end;


             MainForm.Bona_fac_listTable.Refresh;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 3) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := MainForm.Bona_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

      MainForm.Bona_fac_listTable.DisableControls;
      MainForm.Bona_fac_listTable.IndexFieldNames:='';
      MainForm.Bona_fac_listTable.Active:=False;
      MainForm.Bona_fac_listTable.SQL.Clear;
      MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list ORDER by code_bafacl' ;
      MainForm.Bona_fac_listTable.Active:=True;
      MainForm.Bona_fac_listTable.Last;
           if  MainForm.Bona_fac_listTable.IsEmpty then
           begin
             MainForm.Bona_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bona_fac_listTable.Last;
                CodeBR:= MainForm.Bona_fac_listTable.FieldValues['code_bafacl'] + 1 ;
               end;
               
                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                   BonFacAGestionF.ProduitsListDBGridEh.Columns[4].Visible := True
                 end;
                 
             MainForm.Bona_fac_listTable.Last;
             MainForm.Bona_fac_listTable.Append;
             MainForm.Bona_fac_listTable.FieldValues['code_bafacl']:= CodeBR ;
             MainForm.Bona_fac_listTable.FieldValues['code_bafac']:= MainForm.Bona_facTable.FieldValues['code_bafac'];
             MainForm.Bona_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bona_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bona_fac_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             MainForm.Bona_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bona_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             MainForm.Bona_fac_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             MainForm.Bona_fac_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;

              MainForm.Bona_fac_listTable.FieldValues['qutinstock_p']:= 
             (MainForm.Bona_fac_listTable.FieldValues['qut_p'])*(MainForm.Bona_fac_listTable.FieldValues['cond_p']);
             
             MainForm.Bona_fac_listTable.Post ;
           MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
           MainForm.Bona_fac_listTable.Last;
           MainForm.Bona_fac_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
          MainForm.Bona_fac_listTable.Active:=False;
          MainForm.Bona_fac_listTable.SQL.Clear;
          MainForm.Bona_fac_listTable.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
          MainForm.Bona_fac_listTable.Active:=True;

          Close;

   end else
       begin
          FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
          FSplashAddUnite.Image1.ImageIndex:=3;
          FSplashAddUnite.Width:=300;
          FSplashAddUnite.Height:=160;
          FSplashAddUnite.Panel1.Color:=  $0028CAFE;
          FSplashAddUnite.Color:= $00EFE9E8;
          FSplashAddUnite.LineP.Color:=$0028CAFE;
          FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
          FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
          FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
          FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2);
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2);
          if  MainForm.Bona_fac_listTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p']
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
          FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
          FSplashAddUnite.Image1.Visible:=True;
          FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
          FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
          FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
          FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
          FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
          FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
          FSplashAddUnite.Top:=   MainForm.Top + 5;
          FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
          FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 20 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=5;
       end;

       MainForm.Bona_fac_listTable.Refresh;

    end
     else


    if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 3)  then
    begin
     CancelProduitGBtnClick(Sender);

    end;
  //-------------------------------------------------------------------------------------------------

//---------- from this is to add produit to the comptoir with fastform tag = 4-------------------------------------------

  //----- this tag is for multiple products ------//

     if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 4) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

      MainForm.ProduitTable.DisableControls;

      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
      MainForm.Bonv_ctr_listTable.Active:=False;
      MainForm.Bonv_ctr_listTable.SQL.Clear;
      MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list ORDER by code_bvctrl' ;
      MainForm.Bonv_ctr_listTable.Active:=True;
      MainForm.Bonv_ctr_listTable.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  MainForm.Bonv_ctr_listTable.IsEmpty then
           begin
             MainForm.Bonv_ctr_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_ctr_listTable.Last;
                CodeBR:= MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] + 1 ;
               end;

             MainForm.Bonv_ctr_listTable.Last;
             MainForm.Bonv_ctr_listTable.Append;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl']:= CodeBR ;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
             MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:=  01;
             MainForm.Bonv_ctr_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND ( BonCtrGestionF.ClientBonCtrGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;



             MainForm.Bonv_ctr_listTable.Post ;

      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';
           MainForm.Bonv_ctr_listTable.Last;
           MainForm.Bonv_ctr_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           OKProduitGBtn.Tag:=2;
         end else
             begin
                FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
                FSplashAddUnite.Image1.ImageIndex:=3;
                FSplashAddUnite.Width:=300;
                FSplashAddUnite.Height:=160;
                FSplashAddUnite.Panel1.Color:= $0028CAFE;
                FSplashAddUnite.Color:= $00EFE9E8;
                FSplashAddUnite.LineP.Color:=$0028CAFE;
                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
                if  MainForm.Bonv_ctr_listTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
                FSplashAddUnite.Image1.Visible:=True;
                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
                FSplashAddUnite.Top:=   MainForm.Top + 5;
                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 23 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=6;
             end;

             MainForm.Bonv_ctr_listTable.Refresh;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 4) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := MainForm.Bonv_ctr_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

      MainForm.Bonv_ctr_listTable.DisableControls;
      MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
      MainForm.Bonv_ctr_listTable.Active:=False;
      MainForm.Bonv_ctr_listTable.SQL.Clear;
      MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list ORDER by code_bvctrl' ;
      MainForm.Bonv_ctr_listTable.Active:=True;
      MainForm.Bonv_ctr_listTable.Last;
           if  MainForm.Bonv_ctr_listTable.IsEmpty then
           begin
             MainForm.Bonv_ctr_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_ctr_listTable.Last;
                CodeBR:= MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] + 1 ;
               end;
             MainForm.Bonv_ctr_listTable.Last;
             MainForm.Bonv_ctr_listTable.Append;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl']:= CodeBR ;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
             MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_ctr_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND ( BonCtrGestionF.ClientBonCtrGCbx.Text<> '' ) then
           begin

             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;


             MainForm.Bonv_ctr_listTable.Post ;
           MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';
           MainForm.Bonv_ctr_listTable.Last;
           MainForm.Bonv_ctr_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
          MainForm.Bonv_ctr_listTable.Active:=False;
          MainForm.Bonv_ctr_listTable.SQL.Clear;
          MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
          MainForm.Bonv_ctr_listTable.Active:=True;

          Close;

   end else
       begin
          FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
          FSplashAddUnite.Image1.ImageIndex:=3;
          FSplashAddUnite.Width:=300;
          FSplashAddUnite.Height:=160;
          FSplashAddUnite.Panel1.Color:=  $0028CAFE;
          FSplashAddUnite.Color:= $00EFE9E8;
          FSplashAddUnite.LineP.Color:=$0028CAFE;
          FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
          FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
          FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
          FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2);
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2);
          if  MainForm.Bonv_ctr_listTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p']
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
          FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
          FSplashAddUnite.Image1.Visible:=True;
          FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
          FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
          FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
          FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
          FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
          FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
          FSplashAddUnite.Top:=   MainForm.Top + 5;
          FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
          FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 23 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=6;
       end;


       MainForm.Bonv_ctr_listTable.Refresh;
    end
     else


      if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 4)  then
      begin
       CancelProduitGBtnClick(Sender);

      end;

//--------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------
    
    //--- this tage = 5 is for select produit for Perte----//
      if Tag = 5 then
      begin

       PertesGestionF.NamePerteGCbx.Text:= MainForm.ProduitTable.FieldByName('nom_p').AsString;
       Close; 
      
      end;







      //-------------------------------------------------------------------------------------------------

//---------- from this is to add produit to the facture PROFORMA with fastform tag = 2-------------------------------------------

  //----- this tag is for multiple products ------//

     if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 6) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := MainForm.Bonp_fac_listTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

         if BonFacPGestionF.ClientBonFacVGCbx.Text<> '' then
       begin
         MainForm.ClientTable.DisableControls;
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacPGestionF.ClientBonFacVGCbx.Text )+')'  ;
         MainForm.ClientTable.Active:=True;
       end;

      MainForm.ProduitTable.DisableControls;

      MainForm.Bonp_fac_listTable.DisableControls;
      MainForm.Bonp_fac_listTable.IndexFieldNames:='';
      MainForm.Bonp_fac_listTable.Active:=False;
      MainForm.Bonp_fac_listTable.SQL.Clear;
      MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list ORDER by code_bpfacl' ;
      MainForm.Bonp_fac_listTable.Active:=True;
      MainForm.Bonp_fac_listTable.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  MainForm.Bonp_fac_listTable.IsEmpty then
           begin
             MainForm.Bonp_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonp_fac_listTable.Last;
                CodeBR:= MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl'] + 1 ;
               end;

             MainForm.Bonp_fac_listTable.Last;
             MainForm.Bonp_fac_listTable.Append;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl']:= CodeBR ;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfac']:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
             MainForm.Bonp_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonp_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonp_fac_listTable.FieldValues['cond_p']:=  01;
             MainForm.Bonp_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacPGestionF.ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonp_fac_listTable.Post ;

            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;
      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';
           MainForm.Bonp_fac_listTable.Last;
           MainForm.Bonp_fac_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           OKProduitGBtn.Tag:=2;
         end else
             begin
                FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
                FSplashAddUnite.Image1.ImageIndex:=3;
                FSplashAddUnite.Width:=300;
                FSplashAddUnite.Height:=160;
                FSplashAddUnite.Panel1.Color:= $0028CAFE;
                FSplashAddUnite.Color:= $00EFE9E8;
                FSplashAddUnite.LineP.Color:=$0028CAFE;
                FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
                FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
                FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
                FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
                FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
                if  MainForm.Bonp_fac_listTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
                FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
                FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
                FSplashAddUnite.Image1.Visible:=True;
                FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
                FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
                FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
                FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
                FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
                FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
                FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
                FSplashAddUnite.Top:=   MainForm.Top + 5;
                FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
                FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 37 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=7;
             end;

             MainForm.Bonp_fac_listTable.Refresh;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 6) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := MainForm.Bonp_fac_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

        if BonFacPGestionF.ClientBonFacVGCbx.Text<> '' then
       begin
         MainForm.ClientTable.DisableControls;
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacPGestionF.ClientBonFacVGCbx.Text )+')'  ;
         MainForm.ClientTable.Active:=True;
       end;

      MainForm.Bonp_fac_listTable.DisableControls;
      MainForm.Bonp_fac_listTable.IndexFieldNames:='';
      MainForm.Bonp_fac_listTable.Active:=False;
      MainForm.Bonp_fac_listTable.SQL.Clear;
      MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list ORDER by code_bpfacl' ;
      MainForm.Bonp_fac_listTable.Active:=True;
      MainForm.Bonp_fac_listTable.Last;
           if  MainForm.Bonp_fac_listTable.IsEmpty then
           begin
             MainForm.Bonp_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonp_fac_listTable.Last;
                CodeBR:= MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl'] + 1 ;
               end;

             MainForm.Bonp_fac_listTable.Last;
             MainForm.Bonp_fac_listTable.Append;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfacl']:= CodeBR ;
             MainForm.Bonp_fac_listTable.FieldValues['code_bpfac']:= MainForm.Bonp_facTable.FieldValues['code_bpfac'];
             MainForm.Bonp_fac_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             MainForm.Bonp_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonp_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonp_fac_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];

           if  NOT (MainForm.ClientTable.IsEmpty) AND (BonFacPGestionF.ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvr_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvg_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva_p'];
             end;
             if MainForm.ClientTable.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonp_fac_listTable.FieldValues['prixvd_p']:= MainForm.ProduitTable.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonp_fac_listTable.Post ;
           MainForm.Bonp_fac_listTable.IndexFieldNames:='code_bpfac';
           MainForm.Bonp_fac_listTable.Last;
           MainForm.Bonp_fac_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
          MainForm.Bonp_fac_listTable.Active:=False;
          MainForm.Bonp_fac_listTable.SQL.Clear;
          MainForm.Bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list WHERE code_bpfac = ' + QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldValues['code_bpfac']));
          MainForm.Bonp_fac_listTable.Active:=True;


            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;

          Close;

   end else
       begin
          FSplashAddUnite:=TFSplashAddUnite.Create(FastProduitsListF);
          FSplashAddUnite.Image1.ImageIndex:=3;
          FSplashAddUnite.Width:=300;
          FSplashAddUnite.Height:=160;
          FSplashAddUnite.Panel1.Color:=  $0028CAFE;
          FSplashAddUnite.Color:= $00EFE9E8;
          FSplashAddUnite.LineP.Color:=$0028CAFE;
          FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
          FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 15;
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 15;
          FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
          FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
          FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2);
          FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2);
          if  MainForm.Bonv_fac_listTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p']
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article déja inséré : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:= 22;
          FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
          FSplashAddUnite.NameAddUniteSLbl.Font.Height:=18;
          FSplashAddUnite.Image1.Visible:=True;
          FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Attention...';
          FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=$0040332D;
          FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
          FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
          FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
          FSplashAddUnite.NameAddUniteSLbl.Left:= FSplashAddUnite.Image1.Left + FSplashAddUnite.Image1.Width + 10;
          FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
          FSplashAddUnite.Top:=   MainForm.Top + 5;
          FSplashAddUnite.CancelAddUniteSBtn.Caption:='Ignorer' ;
          FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 37 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=7;
       end;

       MainForm.Bonv_fac_listTable.Refresh;
    end
     else


    if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 6)  then
    begin
     CancelProduitGBtnClick(Sender);

    end;





    end;

end;

procedure TFastProduitsListF.ProduitsListDBGridEhCheckRowHaveDetailPanel(
  Sender: TCustomDBGridEh; var RowHaveDetailPanel: Boolean);
begin
if ProduitsListDBGridEh.SelectedRows.Count > 0  then
begin
OKProduitGBtn.Caption:='Ajouter'  ;
OKProduitGBtn.ImageIndex:=10;
OKProduitGBtn.Margin:= -1;
OKProduitGBtn.Spacing:= -1;
OKproduitGBtn.Tag := 0;

end;
if ProduitsListDBGridEh.SelectedRows.Count <= 0 then
begin
OKProduitGBtn.Caption:='OK' ;
OKProduitGBtn.ImageIndex:=17;
OKProduitGBtn.Margin:= 10;
OKProduitGBtn.Spacing:= 10;

end;

end;

procedure TFastProduitsListF.CancelProduitGBtnClick(Sender: TObject);
begin
MainForm.ProduitTable.Filtered:=False;
  ResearchProduitsEdt.Text:='';
Close;

end;

procedure TFastProduitsListF.ResearchProduitsEdtEnter(Sender: TObject);
begin
OKproduitGBtn.Tag := 1;
end;

procedure TFastProduitsListF.FormActivate(Sender: TObject);
begin
 SetWindowPos(FastProduitsListF.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

end.
