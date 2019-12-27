unit UFastProduitsList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvToolBtn, UDataModule,
  sPanel, acSlider;

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
    SelectAllLbl: TLabel;
    SelectAllSdr: TsSlider;
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
    procedure ResearchProduitsEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ResearchProduitsEdtDblClick(Sender: TObject);
    procedure ResearchProduitsEdtMouseEnter(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure SelectAllSdrChanging(Sender: TObject; var CanChange: Boolean);
  private
    { Private declarations }
  public
    CodePForFastPList: Integer;
    const PSQL= 'SELECT *, '
    +'   ((prixht_p * tva_p)/100+ prixht_p ) AS PrixATTC,  '
    +'   ((prixvd_p * tva_p)/100+ prixvd_p ) AS PrixVTTCD, '
    +'   ((prixvr_p * tva_p)/100+ prixvr_p ) AS PrixVTTCR, '
    +'   ((prixvg_p * tva_p)/100+ prixvg_p ) AS PrixVTTCG, '
    +'   ((prixva_p * tva_p)/100+ prixva_p ) AS PrixVTTCA, '
    +'   ((prixva2_p * tva_p)/100+ prixva2_p ) AS PrixVTTCA2,  '
    +'   (qut_p + qutini_p ) AS QutDispo, '
    +'   ((qut_p + qutini_p) * prixht_p ) AS ValueStock '
    +' FROM produit ' ;
  end;

var
  FastProduitsListF: TFastProduitsListF;

implementation

{$R *.dfm}

uses System.Contnrs,
  UMainF, UProduitGestion, USplashAddUnite, UClientGestion, UBonRecGestion,
  UBonLivGestion, UBonFacVGestion, UComptoir,  UBonFacAGestion, UPertesGestion,
  UBonFacPGestion, UOptions, UReglementCGestion, UReglementFGestion,
  USplashPrintReport, UInventory, UInventoryGestion, UBonComAGestion;

  var
    gGrayForms: TComponentList;

procedure GrayFormsFp;
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

procedure NormalFormsFp;
begin
  FreeAndNil(gGrayForms);
end;


procedure TFastProduitsListF.FisrtClientbtnClick(Sender: TObject);
begin
   if Caption='Liste des Produits' then
   begin
    MainForm.ProduitTable.First;
   end;

   if Caption='Liste des Clients' then
   begin
     MainForm.FDQuery2.First;
   end;
end;


procedure TFastProduitsListF.LastClientbtnClick(Sender: TObject);
begin
     if Caption='Liste des Produits' then
   begin
    MainForm.ProduitTable.Last;
   end;

   if Caption='Liste des Clients' then
   begin
     MainForm.FDQuery2.Last;
   end;
end;

procedure TFastProduitsListF.NextClientbtnClick(Sender: TObject);
begin
     if Caption='Liste des Produits' then
   begin
    MainForm.ProduitTable.Next;
   end;

   if Caption='Liste des Clients' then
   begin
     MainForm.FDQuery2.Next;
   end;
end;

procedure TFastProduitsListF.PreviosClientbtnClick(Sender: TObject);
begin
     if Caption='Liste des Produits' then
   begin
     MainForm.ProduitTable.Prior;
   end;
   
   if Caption='Liste des Clients' then
   begin
     MainForm.FDQuery2.Prior;
   end;
end;

procedure TFastProduitsListF.ProduitsListDBGridEhDblClick(Sender: TObject);
begin
 
   if ProduitsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
   begin

         OKProduitGBtnClick(Sender);

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
         HlRect.Left :=  (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)-offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1));
       end;
       taCenter: begin
         Offset := ((ARect.Right - ARect.Left) div 2) - (AGrid.Canvas.TextWidth(DisplayText) div 2)
         - (AGrid.Canvas.TextWidth(Copy(DisplayText, 1,1)) - 2);

         HlRect.Left := (ARect.Right - AGrid.Canvas.TextWidth(DisplayText)- offset) + AGrid.Canvas.TextWidth(Copy(DisplayText, 1, Position-1));
       end;
     end;

     HlRect.Top := ARect.Top + 1;
     HlRect.Right := HlRect.Left +AGrid.Canvas.TextWidth(Copy(DisplayText, Position, Length(FilterText))) + 1 ;
     HlRect.Bottom := ARect.Bottom - 1;

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

procedure TFastProduitsListF.ProduitsListDBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
 if Caption='Liste des Produits' then
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

  if Caption='Liste des Clients' then
 begin

   if gdSelected in State then
   begin
      ProduitsListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

     //------ use this code to red the produit with 0 or null in stock----//
   if (MainForm.FDQuery2.FieldByName('credit_c').AsCurrency )> 0      then
   begin
      ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;


   //------ use this code to red the produit with 0 or null in stock----//
   if (MainForm.FDQuery2.FieldByName('credit_c').AsCurrency ) < 0     then
   begin
      ProduitsListDBGridEh.Canvas.Font.Color:=$00519509;//   Brush.Color:=green;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  
 end;

  if Caption='Liste des Fournisseurs' then
 begin
        if gdSelected in State then
   begin
      ProduitsListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

     //------ use this code to red the produit with 0 or null in stock----//
   if (MainForm.FDQuery2.FieldByName('credit_f').AsCurrency )> 0      then
   begin
      ProduitsListDBGridEh.Canvas.Font.Color:=$004735F9;//   Brush.Color:=clRed;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;


   //------ use this code to red the produit with 0 or null in stock----//
   if (MainForm.FDQuery2.FieldByName('credit_f').AsCurrency ) < 0     then
   begin
      ProduitsListDBGridEh.Canvas.Font.Color:=$00519509;//   Brush.Color:=green;
      ProduitsListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
   
 end;

  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchProduitsEdt.Text,State);
end;


procedure TFastProduitsListF.ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['r','R'] then
  begin
    ResearchProduitsEdt.SetFocus;
  end;
    if Key = #13 then
  begin
  if Caption='Liste des Produits' then
   begin
      FastProduitsListF.OKProduitGBtnClick(Sender);
   end;
  end;
end;


procedure TFastProduitsListF.ProduitsListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
begin
     if Caption='Liste des Produits' then
   begin
    MainForm.ProduitTable.IndexesActive := false;
   end;
end;

procedure TFastProduitsListF.ResearchProduitsEdtChange(Sender: TObject);
var  CodeCB : Integer;

const
E = ['-', '&', '"', '(', ')', '_',',','.'];

begin

   if Caption='Liste des Produits' then
   begin
 //----------- Searching in databese-------------------//
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT nom_cb,code_p FROM codebarres WHERE nom_cb LIKE ' +''+ QuotedStr( ResearchProduitsEdt.Text )+'' ;
      MainForm.SQLQuery.Active:=True;
      if MainForm.SQLQuery.FieldByName('code_p').AsInteger <> null then
     begin
      CodeCB:=MainForm.SQLQuery.FieldByName('code_p').AsInteger;
     end;
    if ResherchPARDesProduitsRdioBtn.Checked then
    if (ResearchProduitsEdt.text <> '') AND NOT (ResearchProduitsEdt.Text[1] in E ) then
    begin
      MainForm.ProduitTable.DisableControls;
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= PSQL + ' WHERE LOWER(nom_p) LIKE LOWER' + '('''+'%'+(ResearchProduitsEdt.Text)+'%'+''')' + ' OR ' + 'LOWER(refer_p) LIKE LOWER' +  '('''+'%'+(ResearchProduitsEdt.Text)+'%'+''')';
      MainForm.ProduitTable.Active:=True;
      MainForm.ProduitTable.EnableControls;
    end
    else
    begin
      MainForm.ProduitTable.DisableControls;
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= PSQL ;
      MainForm.ProduitTable.Active:=True;
      MainForm.ProduitTable.EnableControls;
      ResearchProduitsEdt.text := '';
    end;
     if ResherchPARDCodProduitsRdioBtn.Checked then
    if (ResearchProduitsEdt.text <> '') then
    begin
        MainForm.ProduitTable.DisableControls;
        MainForm.ProduitTable.Active:=False;
        MainForm.ProduitTable.SQL.Clear;
        MainForm.ProduitTable.SQL.Text:= PSQL +' WHERE LOWER(codebar_p) LIKE LOWER'+'('''+'%'+(ResearchProduitsEdt.Text)+'%'+''')'+ ' OR code_p = ' + IntToStr(CodeCB);
        MainForm.ProduitTable.Active:=True;
        MainForm.ProduitTable.EnableControls;
    end
    else
    begin
      MainForm.ProduitTable.DisableControls;
      MainForm.ProduitTable.Active:=False;
      MainForm.ProduitTable.SQL.Clear;
      MainForm.ProduitTable.SQL.Text:= PSQL ;
      MainForm.ProduitTable.Active:=True;
      MainForm.ProduitTable.EnableControls;
    end;
   
   end;


   if Caption='Liste des Clients' then
   begin

      MainForm.FDQuery2.Active:=False;
      MainForm.FDQuery2.SQL.Clear;
      MainForm.FDQuery2.SQL.Text:=
     'SELECT code_c,nom_c,activite_c,fix_c,mob_c,adr_c,credit_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchProduitsEdt.Text)+'%'+''')' ;
      MainForm.FDQuery2.Active:=True

     
   end;

   if Caption='Liste des Fournisseurs' then
   begin

      MainForm.FDQuery2.Active:=False;
      MainForm.FDQuery2.SQL.Clear;
      MainForm.FDQuery2.SQL.Text:=
     'SELECT code_f,nom_f,fix_f,mob_f,adr_f,credit_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchProduitsEdt.Text)+'%'+''')' ;
      MainForm.FDQuery2.Active:=True

     
   end;
   
   
end;

procedure TFastProduitsListF.ResearchProduitsEdtDblClick(Sender: TObject);
begin
  try
    BonCtrGestionF.ShowKeyBoardBonCtrGBtnClick(Sender);
//  ProduitBonCtrGCbx.SetFocus
  finally
    ResearchProduitsEdt.SetFocus
  end;
end;

procedure TFastProduitsListF.ResearchProduitsEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

    if key = VK_DOWN then
  begin
   if Caption='Liste des Produits' then
   begin
     MainForm.ProduitTable.Next;
   end else
       begin
          MainForm.FDQuery2.Next;
       end;


   
  end;


    if key = VK_UP then
  begin
   if Caption='Liste des Produits' then
   begin
     MainForm.ProduitTable.Prior;
   end else
       begin
        MainForm.FDQuery2.Prior; 
       end;
  end;
end;

procedure TFastProduitsListF.ResearchProduitsEdtKeyPress(Sender: TObject; var Key: Char);
const
  N =[Char(VK_ESCAPE)];
  E =['-', '&', '"', '(', ')', '_', ',', '.'];
begin

  if (Key in N) then
  begin
   key := #0;
    ResearchProduitsEdt.Text := '';
  end;
  
  if (key = #13)   then
  begin
   key := #0;
   
   if Caption='Liste des Produits' then
   begin
     if  (ResearchProduitsEdt.Text <> '')  then
     begin
       if  NOT (ResearchProduitsEdt.Text[1] in E) then
          begin

         if  MainForm.ProduitTable.RecordCount > 0  then
            begin
            OKProduitGBtnClick(Sender);
            end else
                begin
                  ResearchProduitsEdt.Text := '';
                end;
        end else
            begin
               ResearchProduitsEdt.Text := '';
            end;

     end else
          begin

            if  MainForm.ProduitTable.RecordCount > 0  then
            begin
            OKProduitGBtnClick(Sender);
            end else
                begin
                  ResearchProduitsEdt.Text := '';
                end;
          end;
          
   
   end else
       begin
          OKProduitGBtnClick(Sender);
       end;

  end;

end;


procedure TFastProduitsListF.ResearchProduitsEdtMouseEnter(Sender: TObject);
begin
  Application.HintPause := 500;      // 250 mSec before hint is shown
  Application.HintHidePause := 5000;
  ResearchProduitsEdt.ShowHint := True;
  ResearchProduitsEdt.Hint := 'Double-cliquez ici pour afficher le clavier';
end;

procedure TFastProduitsListF.ResherchPARDesProduitsRdioBtnClick(Sender: TObject);
begin
ResearchProduitsEdt.Clear;
ResearchProduitsEdt.SetFocus;
ResearchProduitsEdt.NumbersOnly:= False;

//
//  if ResherchPARDCodProduitsRdioBtn.Checked then
//  begin
//  OKProduitGBtn.Caption:='Ajouter'  ;
//  OKProduitGBtn.ImageIndex:=10;
//  OKProduitGBtn.Margin:= -1;
//  OKProduitGBtn.Spacing:= -1;
//  OKproduitGBtn.Tag := 0;
//
//  end;
//  if ResherchPARDesProduitsRdioBtn.Checked then
//  begin
//  OKProduitGBtn.Caption:='OK' ;
//  OKProduitGBtn.ImageIndex:=17;
//  OKProduitGBtn.Margin:= 10;
//  OKProduitGBtn.Spacing:= 10;
//
//  end;

end;

procedure TFastProduitsListF.SelectAllSdrChanging(Sender: TObject;
  var CanChange: Boolean);
var i: integer;
begin

 if SelectAllSdr.SliderOn = True then
 begin
       ProduitsListDBGridEh.SelectedRows.Clear;

 end else
     begin

        ProduitsListDBGridEh.DataSource.DataSet.DisableControls;
        ProduitsListDBGridEh.SelectedRows.Clear;
        ProduitsListDBGridEh.DataSource.DataSet.First;
        for i := 0 to ProduitsListDBGridEh.DataSource.DataSet.RecordCount-1 do
        begin
          ProduitsListDBGridEh.SelectedRows.CurrentRowSelected := true;
          ProduitsListDBGridEh.DataSource.DataSet.Next;
        end;
        ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
     end;
end;

procedure TFastProduitsListF.ResherchPARDCodProduitsRdioBtnClick(Sender: TObject);
begin
ResearchProduitsEdt.Clear;
ResearchProduitsEdt.SetFocus;
ResearchProduitsEdt.NumbersOnly:= True;

//  if ResherchPARDCodProduitsRdioBtn.Checked then
//  begin
//  OKProduitGBtn.Caption:='Ajouter'  ;
//  OKProduitGBtn.ImageIndex:=10;
//  OKProduitGBtn.Margin:= -1;
//  OKProduitGBtn.Spacing:= -1;
//  OKproduitGBtn.Tag := 0;
//
//  end;
//  if ResherchPARDesProduitsRdioBtn.Checked then
//  begin
//  OKProduitGBtn.Caption:='OK' ;
//  OKProduitGBtn.ImageIndex:=17;
//  OKProduitGBtn.Margin:= 10;
//  OKProduitGBtn.Spacing:= 10;
//
//  end;

end;

procedure TFastProduitsListF.FormShow(Sender: TObject);
begin
  GrayFormsFp  ;
 if Caption='Liste des Produits' then
   begin
     MainForm.ProduitTable.Refresh;
     ProduitsListDBGridEh.Refresh;
   end;

end;

procedure TFastProduitsListF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   if Caption='Liste des Produits' then
   begin
     MainForm.SaveGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_fstprdtlst');
 
    MainForm.ProduitTable.Filtered := false;
   
   end else
       begin
         MainForm.FDQuery2.IndexFieldNames:='';       
         MainForm.FDQuery2.Active:= False;
         MainForm.FDQuery2.SQL.Clear;

       end;

   NormalFormsFp  ;
   
end;

procedure TFastProduitsListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_fstprdtlst') then
   begin

    MainForm.LoadGridLayout(ProduitsListDBGridEh,GetCurrentDir +'\bin\gc_fstprdtlst');
   end;
end;

procedure TFastProduitsListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
  key := #0;
  
  if Caption='Liste des Produits' then
   begin
     MainForm.ProduitTable.Filtered:=False;
   end;
  ResearchProduitsEdt.Text:='';

  Close;

 end;
end;

procedure TFastProduitsListF.FormPaint(Sender: TObject);
begin

    if (FastProduitsListF.Caption <> 'Liste des Fournisseurs') AND (FastProduitsListF.Caption <> 'Liste des Clients') then
    begin

      if MainForm.viewprixa_ur.Checked then
      begin

          ProduitsListDBGridEh.FieldColumns['prixht_p'].Visible:= true;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MinWidth:= 100;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].Width:= 100;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MaxWidth:= 0;


          ProduitsListDBGridEh.FieldColumns['prixattc'].Visible:= true;
          ProduitsListDBGridEh.FieldColumns['prixattc'].MinWidth:= 100;
          ProduitsListDBGridEh.FieldColumns['prixattc'].Width:= 100;
          ProduitsListDBGridEh.FieldColumns['prixattc'].MaxWidth:= 0;

      end else
      begin

          ProduitsListDBGridEh.FieldColumns['prixht_p'].Visible:= false;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MinWidth:= 0;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].Width:= 0;
          ProduitsListDBGridEh.FieldColumns['prixht_p'].MaxWidth:= 1;


          ProduitsListDBGridEh.FieldColumns['prixattc'].Visible:= false;
          ProduitsListDBGridEh.FieldColumns['prixattc'].MinWidth:= 0;
          ProduitsListDBGridEh.FieldColumns['prixattc'].Width:= 0;
          ProduitsListDBGridEh.FieldColumns['prixattc'].MaxWidth:= 1;

      end;
    end;
end;

procedure TFastProduitsListF.OKProduitGBtnClick(Sender: TObject);
var CodeBR,i,CodeP,CodeINV,CodeINVL : Integer;
    NomP: string;
    lookupResultRefP : Variant;
begin

   if Caption='Liste des Produits' then
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
      MainForm.Bona_recPlistTable.SQL.Text:= BonRecGestionF.BRLSQL+ ' ORDER by code_barecl' ;
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
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
           MainForm.Bona_recPlistTable.Last;

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
      MainForm.Bona_recPlistTable.SQL.Text:= BonRecGestionF.BRLSQL+ ' ORDER by code_barecl' ;
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
          MainForm.Bona_recPlistTable.SQL.Text:= BonRecGestionF.BRLSQL+ ' WHERE code_barec = ' + QuotedStr(IntToStr(MainForm.Bona_recTable.FieldValues['code_barec']));
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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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

        BonRecGestionF.ProduitsListDBGridEh.SetFocus;

        BonRecGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
        BonRecGestionF.ProduitsListDBGridEh.EditorMode:=True;

        MainForm.Bona_recPlistTable.Last;

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
             MainForm.SQLQuery.FieldValues['prixht_p']:=  MainForm.ProduitTable.FieldValues['prixht_p'] ;

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

//           BonLivGestionF.ProduitsListDBGridEh.SetFocus;
//
//           BonLivGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
//           BonLivGestionF.ProduitsListDBGridEh.EditorMode:=True;

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
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
              MainForm.Bonv_liv_listTable.Last;

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
          MainForm.Bonv_liv_listTable.SQL.Text:= BonLivGestionF.BLLSQL+' ORDER by code_bvlivl ' ;
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
             MainForm.Bonv_liv_listTable.FieldValues['prixht_p']:=  MainForm.ProduitTable.FieldValues['prixht_p'] ;

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
           MainForm.Bonv_liv_listTable.SQL.Text:= BonLivGestionF.BLLSQL+' WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']))+' ';
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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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

          BonLivGestionF.ProduitsListDBGridEh.SetFocus;

           BonLivGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
           BonLivGestionF.ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_liv_listTable.Last;
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
      MainForm.Bonv_fac_listTable.SQL.Text:= BonFacVGestionF.FVLSQL +' ORDER by code_bvfacl' ;
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
             MainForm.Bonv_fac_listTable.FieldValues['prixht_p']:=  MainForm.ProduitTable.FieldValues['prixht_p'] ;

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
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
             MainForm.Bonv_fac_listTable.Last;

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
      MainForm.Bonv_fac_listTable.SQL.Text:= BonFacVGestionF.FVLSQL +' ORDER by code_bvfacl' ;
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
             MainForm.Bonv_fac_listTable.FieldValues['prixht_p']:=  MainForm.ProduitTable.FieldValues['prixht_p'] ;

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
          MainForm.Bonv_fac_listTable.SQL.Text:= BonFacVGestionF.FVLSQL +' WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
          MainForm.Bonv_fac_listTable.Active:=True;


            MainForm.ClientTable.Active:=false;
            MainForm.ClientTable.SQL.Clear;
            MainForm.ClientTable.SQL.Text:='Select * FROM client' ;
            MainForm.ClientTable.Active:=True;
            MainForm.ClientTable.EnableControls;

          Close;

//           BonFacVGestionF.ProduitsListDBGridEh.SetFocus;
//
//           BonFacVGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
//           BonFacVGestionF.ProduitsListDBGridEh.EditorMode:=True;
           MainForm.Bonv_fac_listTable.Last;

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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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

                 BonFacVGestionF.ProduitsListDBGridEh.SetFocus;

           BonFacVGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
           BonFacVGestionF.ProduitsListDBGridEh.EditorMode:=True;

           MainForm.Bonv_fac_listTable.Last;

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
      MainForm.Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL +' ORDER by code_bafacl' ;
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
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
             MainForm.Bona_fac_listTable.Last;

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
      MainForm.Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL +' ORDER by code_bafacl' ;
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
          MainForm.Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL +' WHERE code_bafac = ' + QuotedStr(IntToStr(MainForm.Bona_facTable.FieldValues['code_bafac']));
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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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


        BonFacAGestionF.ProduitsListDBGridEh.SetFocus;

        BonFacAGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
        BonFacAGestionF.ProduitsListDBGridEh.EditorMode:=True;

        MainForm.Bona_fac_listTable.Last;

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
      MainForm.Bonv_ctr_listTable.SQL.Text:= BonCtrGestionF.BCLSQL +' ORDER by code_bvctrl' ;
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
             MainForm.Bonv_ctr_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];

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
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
             MainForm.Bonv_ctr_listTable.Last;
             BonCtrGestionF.showInPoleClient;

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
      MainForm.Bonv_ctr_listTable.SQL.Text:= BonCtrGestionF.BCLSQL +' ORDER by code_bvctrl' ;
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
             MainForm.Bonv_ctr_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];

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
          MainForm.Bonv_ctr_listTable.SQL.Text:= BonCtrGestionF.BCLSQL +' WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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


//       BonCtrGestionF.ProduitsListDBGridEh.SetFocus;
//
//        BonCtrGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
//        BonCtrGestionF.ProduitsListDBGridEh.EditorMode:=True;

        MainForm.Bonv_ctr_listTable.Last;
        BonCtrGestionF.showInPoleClient;


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
      MainForm.Bonp_fac_listTable.SQL.Text:= BonFacPGestionF.FPLSQL +' ORDER by code_bpfacl' ;
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
             MainForm.Bonp_fac_listTable.FieldValues['prixht_p']:=  MainForm.ProduitTable.FieldValues['prixht_p'] ;

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
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
             MainForm.Bonp_fac_listTable.Last;

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
      MainForm.Bonp_fac_listTable.SQL.Text:= BonFacPGestionF.FPLSQL +' ORDER by code_bpfacl' ;
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
             MainForm.Bonp_fac_listTable.FieldValues['prixht_p']:=  MainForm.ProduitTable.FieldValues['prixht_p'] ;

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
          MainForm.Bonp_fac_listTable.SQL.Text:= BonFacPGestionF.FPLSQL +' WHERE code_bpfac = ' + QuotedStr(IntToStr(MainForm.Bonp_facTable.FieldValues['code_bpfac']));
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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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

       MainForm.Bonp_fac_listTable.Refresh;


       BonFacPGestionF.ProduitsListDBGridEh.SetFocus;

        BonFacPGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
        BonFacPGestionF.ProduitsListDBGridEh.EditorMode:=True;

        MainForm.Bonp_fac_listTable.Last;

    end
     else


      if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 6)  then
      begin
       CancelProduitGBtnClick(Sender);

      end;

//--------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------

    //--- this tage = 7 is for select produit in Favori----//
      if Tag = 7 then
      begin
        //Get the clicke button Sender and set it caption
       FOptions.FavBtn.Caption := MainForm.ProduitTable.FieldByName('nom_p').AsString;
       Close;

      end;

      //-------------------------------------------------------------------------------------------------


      //--- this tage = 8 is for select produit in Balance----//
      if Tag = 8 then
      begin
        //Get the clicke button Sender and set it caption
       FOptions.BalBtn.Caption := MainForm.ProduitTable.FieldByName('nom_p').AsString;
       Close;

      end;

      //-------------------------------------------------------------------------------------------------


       //--- this tage = 9 is for select produit in Movement De produit ----//
      if Tag = 9 then
      begin
        //Get the clicke button Sender and set it caption

       FSplashPrintReport.NameReportPCbx.Text:= MainForm.ProduitTable.fieldbyName('nom_p').asString;
       FSplashPrintReport.NameReportPCbxChange(Sender);
       Close;

      end;

      //-------------------------------------------------------------------------------------------------

      //--- this tage = 10 is for select produit in inventory ----//
     if Tag = 10 then
     begin

      if InventoryGestionF.Tag = 0 then
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

      if OKproduitGBtn.Tag = 0 then
      begin
       //Get the clicke button Sender and set it caption
       CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
       ResearchProduitsEdt.Text:='';
       ResearchProduitsEdt.SetFocus;
       MainForm.ProduitTable.Filtered := false;
       lookupResultRefP := DataModuleF.Inventory_listTable.Lookup('code_p',(CodeP),'code_p');
       if VarIsnull( lookupResultRefP) then
       begin

        MainForm.ProduitTable.DisableControls;

        DataModuleF.Inventory_listTable.DisableControls;
        DataModuleF.Inventory_listTable.IndexFieldNames:='';
        DataModuleF.Inventory_listTable.Active:=False;
        DataModuleF.Inventory_listTable.SQL.Clear;
        DataModuleF.Inventory_listTable.SQL.Text:= InventoryGestionF.INVLSQL +' ORDER by code_il' ;
        DataModuleF.Inventory_listTable.Active:=True;
        DataModuleF.Inventory_listTable.Last;

        //----- use this code to select more than one produit ------//
        if ProduitsListDBGridEh.SelectedRows.Count > 0 then
        with ProduitsListDBGridEh.DataSource.DataSet do
        for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
        begin
            GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
            CodeP:=MainForm.ProduitTable.FieldByName('code_p').AsInteger;
            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
            MainForm.SQLQuery3.SQl.Text:='SELECT code_p, qut_p, qutini_p FROM produit WHERE code_p = '+IntToStr(CodeP);
            MainForm.SQLQuery3.Active:=True;

          lookupResultRefP := DataModuleF.Inventory_listTable.Lookup('code_p',(CodeP),'code_p');
          if VarIsnull( lookupResultRefP) then
          begin
           if DataModuleF.Inventory_listTable.IsEmpty then
           begin
             DataModuleF.Inventory_listTable.Last;
             CodeINVL := 1;
           end else
               begin
                DataModuleF.Inventory_listTable.Last;
                CodeINVL:= DataModuleF.Inventory_listTable.FieldValues['code_il'] + 1 ;
               end;

             DataModuleF.Inventory_listTable.Append;
             DataModuleF.Inventory_listTable.FieldByName('code_il').AsInteger:= CodeINVL ;
             DataModuleF.Inventory_listTable.FieldByName('code_i').AsInteger:=  CodeINV;
             DataModuleF.Inventory_listTable.FieldByName('code_p').AsInteger:=   CodeP;
             DataModuleF.Inventory_listTable.FieldByName('qutphys_il').AsFloat :=
             MainForm.SQLQuery3.FieldByName('qut_p').AsFloat + MainForm.SQLQuery3.FieldByName('qutini_p').AsFloat;
             DataModuleF.Inventory_listTable.Post ;

            MainForm.SQLQuery3.Active:=False;
            MainForm.SQLQuery3.SQL.Clear;
          end;

        end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           DataModuleF.Inventory_listTable.IndexFieldNames:='code_i';
           DataModuleF.Inventory_listTable.Last;
           DataModuleF.Inventory_listTable.EnableControls;
           DataModuleF.Inventory_listTable.Refresh;
           MainForm.ProduitTable.EnableControls;

       end;

      end;

      if OKproduitGBtn.Tag = 1 then
      begin

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;
        MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,prixht_p,code_l,code_u FROM produit WHERE code_p = '
        +IntToStr(MainForm.ProduitTable.FieldByName('code_p').AsInteger);
        MainForm.SQLQuery.Active:=True;
        CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;

       lookupResultRefP := DataModuleF.Inventory_listTable.Lookup('code_p',(CodeP),'code_p');
       if VarIsnull( lookupResultRefP) then
       begin

        if InventoryGestionF.Tag = 0 then
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
            MainForm.SQLQuery3.SQl.Text:='SELECT code_p, qut_p, qutini_p FROM produit WHERE code_p = '+IntToStr(CodeP);
            MainForm.SQLQuery3.Active:=True;

          DataModuleF.Inventory_listTable.DisableControls;
          DataModuleF.Inventory_listTable.IndexFieldNames:='';
          DataModuleF.Inventory_listTable.Active:=False;
          DataModuleF.Inventory_listTable.SQL.Clear;
          DataModuleF.Inventory_listTable.SQL.Text:= InventoryGestionF.INVLSQL+' ORDER by code_il  ' ;
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
           DataModuleF.Inventory_listTable.FieldByName('qutphys_il').AsFloat :=
           MainForm.SQLQuery3.FieldByName('qut_p').AsFloat + MainForm.SQLQuery3.FieldByName('qutini_p').AsFloat;


          DataModuleF.Inventory_listTable.Post ;
          DataModuleF.Inventory_listTable.IndexFieldNames:='code_i';

          DataModuleF.Inventory_listTable.Active:=False;
          DataModuleF.Inventory_listTable.SQL.Clear;
          DataModuleF.Inventory_listTable.SQL.Text:= InventoryGestionF.INVLSQL+' WHERE code_i = ' + IntToStr(CodeINV) +' ';
          DataModuleF.Inventory_listTable.Active:=True;

          InventoryGestionF.ProduitsListDBGridEh.SetFocus;

         ProduitsListDBGridEh.SelectedIndex:=4;
         ProduitsListDBGridEh.EditorMode:=True;

         DataModuleF.Inventory_listTable.EnableControls;
         DataModuleF.Inventory_listTable.Last;

         MainForm.SQLQuery3.Active:=False;
         MainForm.SQLQuery3.SQL.Clear;

          end;


        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;

        DataModuleF.Inventory_listTable.Refresh;
        DataModuleF.Inventory_listTable.Last;


       end;

      end;

      DataModuleF.Inventory_listTable.Close;
      DataModuleF.Inventory_listTable.Open;
      Close;

     end;
     //-------------------------------------------------------------------------------------------------


     //-------------------------------------------------------------------------------------------

//----------- from this is to add produit to the bon de command with fastform tag = 11 --------------

  //----- this tag is for multiple products ------//

      if (OKProduitGBtn.Tag = 0) AND (FastProduitsListF.Tag = 11) then
    begin

    CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;
     ResearchProduitsEdt.Text:='';
     ResearchProduitsEdt.SetFocus;
     MainForm.ProduitTable.Filtered := false;
    lookupResultRefP := DataModuleF.Bona_com_listTable.Lookup('code_p',(CodeP),'code_p');
     if VarIsnull( lookupResultRefP) then
     begin

      MainForm.ProduitTable.DisableControls;

      DataModuleF.Bona_com_listTable.DisableControls;
      DataModuleF.Bona_com_listTable.IndexFieldNames:='';
      DataModuleF.Bona_com_listTable.Active:=False;
      DataModuleF.Bona_com_listTable.SQL.Clear;
      DataModuleF.Bona_com_listTable.SQL.Text:= BonComAGestionF.BCALSQL+ ' ORDER by code_bacoml' ;
      DataModuleF.Bona_com_listTable.Active:=True;
      DataModuleF.Bona_com_listTable.Last;

//----- use this code to select more than one produit ------//
      if ProduitsListDBGridEh.SelectedRows.Count > 0 then
      with ProduitsListDBGridEh.DataSource.DataSet do
      for i:=0 to ProduitsListDBGridEh.SelectedRows.Count-1 do
      begin
      //   while ProduitsListDBGridEh.SelectedRows. do

        GotoBookmark(ProduitsListDBGridEh.SelectedRows.Items[i]);
           if  DataModuleF.Bona_com_listTable.IsEmpty then
           begin
             DataModuleF.Bona_com_listTable.Last;
             CodeBR := 1;
           end else
               begin
                DataModuleF.Bona_com_listTable.Last;
                CodeBR:= DataModuleF.Bona_com_listTable.FieldValues['code_bacoml'] + 1 ;
               end;

                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                  BonComAGestionF.ProduitsListDBGridEh.Columns[4].Visible := True
                 end;               

             DataModuleF.Bona_com_listTable.Last;
             DataModuleF.Bona_com_listTable.Append;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacoml']:= CodeBR ;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacom']:= DataModuleF.Bona_comTable.FieldValues['code_bacom'];
             DataModuleF.Bona_com_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             DataModuleF.Bona_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bona_com_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             DataModuleF.Bona_com_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldValues['cond_p']:=  01;
             
             DataModuleF.Bona_com_listTable.FieldValues['qutinstock_p']:= 
             (DataModuleF.Bona_com_listTable.FieldValues['qut_p'])*(DataModuleF.Bona_com_listTable.FieldValues['cond_p']);    
             
             DataModuleF.Bona_com_listTable.Post ;

      end;
           ProduitsListDBGridEh.SelectedRows.Clear;
           DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';
           DataModuleF.Bona_com_listTable.Last;
           DataModuleF.Bona_com_listTable.EnableControls;
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
                if  DataModuleF.Bona_com_listTable.FieldValues['code_p'] <> NULL then
                begin
                NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
                end else begin
                NomP:='';
                end;
                FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
                FSplashAddUnite.OKAddUniteSBtn.Tag:= 45 ;
                AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
                FSplashAddUnite.Show;
                //--- this tage = 0 is for multi name added by fastproduitx----//
                FSplashAddUnite.Tag:=1;
             end;

           DataModuleF.Bona_com_listTable.Refresh;
           DataModuleF.Bona_com_listTable.Last;

    end else

    if (OKproduitGBtn.Tag = 1) AND (FastProduitsListF.Tag = 11) then
    begin

        CodeP:= MainForm.ProduitTable.FieldByName('code_p').AsInteger ;

           lookupResultRefP := DataModuleF.Bona_com_listTable.Lookup('code_p',(CodeP),'code_p');
         if VarIsnull( lookupResultRefP) then
         begin
     MainForm.ProduitTable.DisableControls;

      DataModuleF.Bona_com_listTable.DisableControls;
      DataModuleF.Bona_com_listTable.IndexFieldNames:='';
      DataModuleF.Bona_com_listTable.Active:=False;
      DataModuleF.Bona_com_listTable.SQL.Clear;
      DataModuleF.Bona_com_listTable.SQL.Text:= BonComAGestionF.BCALSQL+ ' ORDER by code_bacoml' ;
      DataModuleF.Bona_com_listTable.Active:=True;
      DataModuleF.Bona_com_listTable.Last;
           if  DataModuleF.Bona_com_listTable.IsEmpty then
           begin
             DataModuleF.Bona_com_listTable.Last;
             CodeBR := 1;
           end else
               begin
                DataModuleF.Bona_com_listTable.Last;
                CodeBR:= DataModuleF.Bona_com_listTable.FieldValues['code_bacoml'] + 1 ;
               end;

                 if MainForm.ProduitTable.FieldByName('perissable_p').AsBoolean = True then
                 begin
                  BonComAGestionF.ProduitsListDBGridEh.Columns[4].Visible := True
                 end;   
                 
             DataModuleF.Bona_com_listTable.Last;
             DataModuleF.Bona_com_listTable.Append;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacoml']:= CodeBR ;
             DataModuleF.Bona_com_listTable.FieldValues['code_bacom']:= DataModuleF.Bona_comTable.FieldValues['code_bacom'];
             DataModuleF.Bona_com_listTable.FieldValues['code_p']:=  MainForm.ProduitTable.FieldValues['code_p'] ;
             DataModuleF.Bona_com_listTable.FieldValues['qut_p'] :=  01;
             DataModuleF.Bona_com_listTable.FieldValues['prixht_p']:= MainForm.ProduitTable.FieldValues['prixht_p'];
             DataModuleF.Bona_com_listTable.FieldValues['cond_p']:= 01;
             DataModuleF.Bona_com_listTable.FieldValues['tva_p']:= MainForm.ProduitTable.FieldValues['tva_p'];
             DataModuleF.Bona_com_listTable.FieldByName('prixvd_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvd_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixvr_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvr_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixvg_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixvg_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixva_p').AsCurrency:=  MainForm.ProduitTable.FieldByName('prixva_p').AsCurrency;
             DataModuleF.Bona_com_listTable.FieldByName('prixva2_p').AsCurrency:= MainForm.ProduitTable.FieldByName('prixva2_p').AsCurrency;

             DataModuleF.Bona_com_listTable.FieldValues['qutinstock_p']:= 
             (DataModuleF.Bona_com_listTable.FieldValues['qut_p'])*(DataModuleF.Bona_com_listTable.FieldValues['cond_p']);                 
             
             DataModuleF.Bona_com_listTable.Post ;
           DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';
           DataModuleF.Bona_com_listTable.Last;
           DataModuleF.Bona_com_listTable.EnableControls;
           MainForm.ProduitTable.EnableControls;
           MainForm.ProduitTable.Filtered:=False;
          DataModuleF.Bona_com_listTable.Active:=False;
          DataModuleF.Bona_com_listTable.SQL.Clear;
          DataModuleF.Bona_com_listTable.SQL.Text:= BonComAGestionF.BCALSQL+ ' WHERE code_bacom = ' + QuotedStr(IntToStr(DataModuleF.Bona_comTable.FieldValues['code_bacom']));
          DataModuleF.Bona_com_listTable.Active:=True;

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
          if  DataModuleF.Bona_com_listTable.FieldValues['code_p'] <> NULL then
          begin
          NomP:=   MainForm.ProduitTable.FieldValues['nom_p'];
          end else begin
            NomP:='';
          end;
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Article d�ja ins�r� : '+ sLineBreak +  sLineBreak + QuotedStr(NomP);
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
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 45 ;
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
          FSplashAddUnite.Show;
    //--- this tage = 0 is for multi name added by fastproduit----//
          FSplashAddUnite.Tag:=7;
       end;


       DataModuleF.Bona_com_listTable.Refresh;

        BonComAGestionF.ProduitsListDBGridEh.SetFocus;

        BonComAGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
        BonComAGestionF.ProduitsListDBGridEh.EditorMode:=True;

        DataModuleF.Bona_com_listTable.Last;

    end
     else

    if (OKProduitGBtn.Tag = 2) AND (FastProduitsListF.Tag = 11)  then
    begin
     CancelProduitGBtnClick(Sender);

    end;

//End of Add in bon command---------------------------    


    end;//---End if produit is empty

   end;//------End for produit---------



   //This is for chosing clients
   if Caption='Liste des Clients' then
   begin
    //This tag = 0 if for choosing client in bon livaration
    if Tag = 0 then
    begin
      
     BonLivGestionF.ClientBonLivGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_c').asString;
     BonLivGestionF.ProduitBonLivGCbx.SetFocus;
     Close;

    end;

    //This tag = 1 if for choosing client in Facture preforma
    if Tag = 1 then
    begin

     BonFacPGestionF.ClientBonFacVGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_c').asString;
     BonFacPGestionF.ProduitBonFacVGCbx.SetFocus;
     Close;
      
    end;

    //This tag = 2 if for choosing client in Facture Vente
    if Tag = 2 then
    begin

     BonFacVGestionF.ClientBonFacVGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_c').asString;
     BonFacVGestionF.ProduitBonFacVGCbx.SetFocus;
     Close;
      
    end;

    //This tag = 3 if for choosing client in Comptoir
    if Tag = 3 then
    begin

     BonCtrGestionF.ClientBonCtrGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_c').asString;
     BonCtrGestionF.ProduitBonCtrGCbx.SetFocus;
     Close;    
      
    end;


        //This tag = 4 if for choosing client in Reg Client
    if Tag = 4 then
    begin

     ReglementCGestionF.ClientRegCGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_c').asString;
     ReglementCGestionF.ClientRegCGCbxChange(Sender);
     ReglementCGestionF.VerRegCGEdt.SetFocus;
     Close;    
      
    end;


        //This tag = 5 if for choosing client in Situation Client
    if Tag = 5 then
    begin

     FSplashPrintReport.NameReportPCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_c').asString;
     FSplashPrintReport.NameReportPCbxChange(Sender);
     Close;

    end;

   
   end;


      //This is for chosing Four
   if Caption='Liste des Fournisseurs' then
   begin
    //This tag = 0 if for choosing client in bon reception
    if Tag = 0 then
    begin

     BonRecGestionF.FournisseurBonRecGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_f').asString;
     BonRecGestionF.FournisseurBonRecGCbxExit(Sender);
     BonRecGestionF.ProduitBonRecGCbx.SetFocus;
     Close;
      
    end;

    //This tag = 1 if for choosing four in Facture achat
    if Tag = 1 then
    begin

     BonFacAGestionF.FourBonFacAGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_f').asString;
     BonFacAGestionF.FourBonFacAGCbxExit(Sender);
     BonFacAGestionF.ProduitBonFacAGCbx.SetFocus;
     Close;
      
    end;

        //This tag = 2 if for choosing four in Reg Four
    if Tag = 2 then
    begin

     ReglementFGestionF.FournisseurRegFGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_f').asString;
     ReglementFGestionF.FournisseurRegFGCbxChange(Sender);
     ReglementFGestionF.VerRegFGEdt.SetFocus;
     Close;
      
    end;

        //This tag = 3 if for choosing four in Situation Four
    if Tag = 3 then
    begin

     FSplashPrintReport.NameReportPCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_f').asString;
     FSplashPrintReport.NameReportPCbxChange(Sender);
     Close;

    end;
        //This tag = 4 if for choosing four in Bon Commande Four
    if Tag = 4 then
    begin

     BonComAGestionF.FournisseurBonComGCbx.Text:= MainForm.FDQuery2.fieldbyName('nom_f').asString;
     BonComAGestionF.ProduitBonComGCbx.SetFocus;
     Close;
      
    end;

   
   end;
   
   

end;

procedure TFastProduitsListF.ProduitsListDBGridEhCheckRowHaveDetailPanel(
  Sender: TCustomDBGridEh; var RowHaveDetailPanel: Boolean);
begin

 if Caption='Liste des Produits' then
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

end;

procedure TFastProduitsListF.CancelProduitGBtnClick(Sender: TObject);
begin
     if Caption='Liste des Produits' then
   begin
     MainForm.ProduitTable.Filtered:=False;
   end;
  ResearchProduitsEdt.Text:='';
  Close;

end;

procedure TFastProduitsListF.ResearchProduitsEdtEnter(Sender: TObject);
var
  KeyState: TKeyboardState;
begin

   if Caption='Liste des Produits' then
   begin
    OKproduitGBtn.Tag := 1;
   end;

   if ResherchPARDCodProduitsRdioBtn.Checked then
 BEGIN
  //turn on CapsLock when enter edit to make sure codebare read well
  GetKeyboardState(KeyState);
  if (KeyState[VK_CAPITAL]=0) then
  begin
    // Simulate a "CAPS LOCK" key release
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
    // Simulate a "CAPS LOCK" key press
    Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;
 END;


end;

procedure TFastProduitsListF.FormActivate(Sender: TObject);
begin
 SetWindowPos(FastProduitsListF.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

end.
