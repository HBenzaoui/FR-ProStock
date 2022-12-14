unit UReglementCList;

interface

uses
  Winapi.Windows,DateUtils,DBGridEhImpExp,ShellAPI,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, acImage, Vcl.Menus, sStatusBar, Vcl.AppEvnts, frxExportBaseDialog;

type
  TReglementCListF = class(TForm)
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchRegCEdt: TSearchBox;
    Panel2: TPanel;
    DateEndRegCD: TDateTimePicker;
    DateStartRegCD: TDateTimePicker;
    ResherchRegCNumBRdioBtn: TRadioButton;
    ResherchRegCClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    RegCListDataS: TDataSource;
    BVLivListDBGridEh: TDBGridEh;
    RegCListfrxRprt: TfrxReport;
    frxRegCListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    FisrtBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    LastBARecbtn: TsSpeedButton;
    FilterBVLivBtn: TAdvToolButton;
    sImage2: TsImage;
    sImage1: TsImage;
    FilterBVLivPMenu: TPopupMenu;
    F1: TMenuItem;
    ValideFilterBVLivPMenu: TMenuItem;
    NotValideFilterBVLivPMenu: TMenuItem;
    N2: TMenuItem;
    ClearValideFilterBVLivPMenu: TMenuItem;
    F2: TMenuItem;
    EspeceMPFilterBVLivPMenu: TMenuItem;
    ChequeMPFilterBVLivPMenu: TMenuItem;
    ATermeMPFilterBVLivPMenu: TMenuItem;
    VirmentMPFilterBVLivPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVLivPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    V1: TMenuItem;
    StatuBar: TsStatusBar;
    SumGirdProduitBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel5: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel6: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ProduitListSaveDg: TSaveDialog;
    RglementClients1: TMenuItem;
    PopupMenu1: TPopupMenu;
    P1: TMenuItem;
    P2: TMenuItem;
    ReglementCfrxRprt: TfrxReport;
    procedure AddBARecBtnClick(Sender: TObject);
    procedure ResearchRegCEdtChange(Sender: TObject);
    procedure DateStartRegCDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVLivListDBGridEhDblClick(Sender: TObject);
    procedure BVLivListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVLivListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ATermeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure VirmentMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure SumGirdProduitBtnClick(Sender: TObject);
    procedure ResearchRegCEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BVLivListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure ResearchRegCEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure RglementClients1Click(Sender: TObject);
    procedure BVLivListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
  private
    procedure GettingData;
    procedure GettingDataRecuPai;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    procedure Select_ALL;
    procedure Select_MP_ATerme;
    procedure Select_BL;
    procedure Select_MP_Cheque;
    procedure Select_CTR;
    procedure Select_MP_Escpace;
    procedure Select_FacV;
    procedure Select_MP_Virment;
    procedure Select_RC;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReglementCListF: TReglementCListF;

implementation

uses Winapi.MMSystem,Threading,Vcl.Imaging.jpeg,StringTool,
  UReglementCGestion, UMainF, USplashAddUnite, USplash, UComptoir;

{$R *.dfm}



//-------------Filtring procedures-----------------//

procedure TReglementCListF.Select_ALL;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;


procedure TReglementCListF.Select_BL;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_bvliv <> ''0'' AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;


procedure TReglementCListF.Select_CTR;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_bvctr <> ''0'' AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.Select_RC;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE bon_or_no_rc = ''1'' AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;



procedure TReglementCListF.Select_FacV;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_bvfac <> ''0'' AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;


procedure TReglementCListF.Select_MP_Escpace;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_mdpai = 1 AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.Select_MP_Cheque;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_mdpai = 2 AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.Select_MP_ATerme;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_mdpai = 3 AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.Select_MP_Virment;
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE code_mdpai = 4 AND date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;



procedure TReglementCListF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TReglementCListF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;


procedure TReglementCListF.AddBARecBtnClick(Sender: TObject);
  begin
    //-------- Show the splash screan for the produit familly to add new one---------//

      ResearchRegCEdt.Text:='';

              ReglementCGestionF:=TReglementCGestionF.Create(ReglementCListF);

        MainForm.RegclientTable.DisableControls;
        MainForm.RegclientTable.Last;
        ReglementCGestionF.NumRegCGEdt.Caption:=
        'RC'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((MainForm.RegclientTable.FieldByName('code_rc').AsInteger) + 1)]);
        MainForm.RegclientTable.EnableControls;


       //       ClientGestionF.BringToFront;
              ReglementCGestionF.Left:=  (Screen.Width div 2 ) - (ReglementCGestionF.Width div 2)    ;
              ReglementCGestionF.Top:=   (Screen.Height div 2) - (ReglementCGestionF.Height div 2)    ;
          //    MainForm.Align:= alClient;
           //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
              ReglementCGestionF.Show;
              ReglementCGestionF.ClientRegCGCbx.SetFocus;
              ReglementCGestionF.OKRegCGBtn.Tag:= 0 ;
  end;

procedure TReglementCListF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.RegclientTable.Close;
MainForm.RegclientTable.Open;
end;

procedure TReglementCListF.ResearchRegCEdtChange(Sender: TObject);
var SearchValue : String;
begin
 //----------- Searching in databese-------------------//
  if ResearchRegCEdt.Text<>'' then
  begin
    SearchValue:=   '('''+'%'+(ResearchRegCEdt.Text)+'%'+''')';
    if ResherchRegCClientRdioBtn.Checked then
    begin
      MainForm.RegclientTable.DisableControls;
      MainForm.RegclientTable.Active:=False;
      MainForm.RegclientTable.SQL.Clear;
      MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient '
      +' WHERE code_c IN( '+
        'SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' + SearchValue
        +' OR LOWER(activite_c) LIKE LOWER '+ SearchValue
        +' OR fix_c LIKE'+ SearchValue
        +' OR mob_c LIKE'+ SearchValue
        +' OR mob2_c LIKE'+ SearchValue
        +' OR fax_c LIKE'+ SearchValue
        +' OR LOWER(adr_c) LIKE LOWER '+ SearchValue
        +' OR LOWER(ville_c) LIKE LOWER '+ SearchValue
        +' OR LOWER(willaya_c) LIKE LOWER '+ SearchValue
        +' OR LOWER(email_c) LIKE LOWER '+ SearchValue
        +' OR LOWER(siteweb_c) LIKE LOWER '+ SearchValue +')';
      MainForm.RegclientTable.Active:=True;
      MainForm.RegclientTable.EnableControls;
    end;
    if ResherchRegCNumBRdioBtn.Checked then
    begin
      MainForm.RegclientTable.DisableControls;
      MainForm.RegclientTable.Active:=False;
      MainForm.RegclientTable.SQL.Clear;
      MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE LOWER(nom_rc) LIKE LOWER' +'('''+'%'+(ResearchRegCEdt.Text)+'%'+''')' ;
      MainForm.RegclientTable.Active:=True;
      MainForm.RegclientTable.EnableControls;
    end;
  end else
   begin
      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=False;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
      MainForm.ClientTable.Active:=True;
      MainForm.ClientTable.EnableControls;
     end;
end;

procedure TReglementCListF.ResearchRegCEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.RegclientTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.RegclientTable.Prior;
  end;
end;

procedure TReglementCListF.ResearchRegCEdtKeyPress(Sender: TObject;
  var Key: Char);
const
  N = [    Char(VK_ESCAPE)];
begin

  if(Key in N) then
  begin
   key := #0  ;
    ResearchRegCEdt.Text:= '';

  end;
  if key = #13 then
  begin
   key := #0;

    if ResearchRegCEdt.Text<>'' then
    begin

          if ResherchRegCClientRdioBtn.Checked then
          begin
          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=False;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+(ResearchRegCEdt.Text)+''')' +')';
          MainForm.RegclientTable.Active:=True;
          MainForm.RegclientTable.EnableControls;

          end;

          if ResherchRegCNumBRdioBtn.Checked then
          begin
          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=False;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient WHERE LOWER(nom_rc) LIKE LOWER' +'('''+(ResearchRegCEdt.Text)+''')' ;
          MainForm.RegclientTable.Active:=True;
          MainForm.RegclientTable.EnableControls;
          end;


    end else
     begin
          MainForm.RegclientTable.DisableControls;
          MainForm.RegclientTable.Active:=False;
          MainForm.RegclientTable.SQL.Clear;
          MainForm.RegclientTable.SQL.Text:='SELECT * FROM regclient ' ;
          MainForm.RegclientTable.Active:=True;
          MainForm.RegclientTable.EnableControls;


          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;



     end;
  end;
end;

procedure TReglementCListF.RglementClients1Click(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=25;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=15;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_RC;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'Liste Règlement Client';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BVLivListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.RegclientTable.DisableControls;
//
//    GettingData;
//
//RegCListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Liste Règlement Client';
//RegCListfrxRprt.Export(frxXLSExport1);
//
//MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.RegclientTable.DisableControls;

    GettingData;

RegCListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Liste Règlement Client';
RegCListfrxRprt.Export(frxPDFExport1);


MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if Assigned(BonCtrGestionF) then
 begin
 if (BonCtrGestionF.Showing = False)  then
 begin
 if (ReglementCListF.Active = True)  AND  (Assigned(ReglementCGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F11) < 0)  then
  begin
    P1Click(Screen) ;
    Handled := true;
  end;

  if  (GetKeyState(VK_F12) < 0)  then
  begin
    P2Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (ReglementCListF.Active = True)  AND (ReglementCGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F11) < 0)  then
          begin
            P1Click(Screen) ;
            Handled := true;
          end;

          if  (GetKeyState(VK_F12) < 0)  then
          begin
            P2Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
 end;
 end else
     begin
        if (ReglementCListF.Active = True)  AND  (Assigned(ReglementCGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBARecBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F11) < 0)  then
  begin
    P1Click(Screen) ;
    Handled := true;
  end;

  if  (GetKeyState(VK_F12) < 0)  then
  begin
    P2Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (ReglementCListF.Active = True)  AND (ReglementCGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBARecBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F11) < 0)  then
          begin
            P1Click(Screen) ;
            Handled := true;
          end;

          if  (GetKeyState(VK_F12) < 0)  then
          begin
            P2Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
     end;
end;

procedure TReglementCListF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_ATerme;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.BVLivListDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if BVLivListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  EditBARecBtnClick(Sender) ;
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

procedure TReglementCListF.BVLivListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if gdSelected in State then
begin
   BVLivListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.RegclientTable.FieldValues['montver_rc'] <= 0)    then
 begin
 BVLivListDBGridEh.Canvas.Font.Color:=$004735F9;
 BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;


  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchRegCEdt.Text,State);
end;

procedure TReglementCListF.BVLivListDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not BVLivListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBARecBtnClick(Sender) ;
  end else exit
end;

procedure TReglementCListF.BVLivListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['n','N'] then
    AddBARecBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchRegCEdt.SetFocus;
  if not BVLivListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBARecBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBARecBtnClick(Sender);
  end else Exit;
end;

procedure TReglementCListF.BVLivListDBGridEhSortMarkingChanged(Sender: TObject);
begin
BVLivListDBGridEh.DefaultApplySorting;
end;

procedure TReglementCListF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Cheque;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.ClearFilterBVLivPMenuClick(Sender: TObject);
begin
  MainForm.ProduitTable.Filtered:=False;
  Select_ALL;
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=49;
  ClearValideFilterBVLivPMenu.Checked := True;
  ClearMPFilterBVLivPMenu.Checked := True;
end;

procedure TReglementCListF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
  ClearFilterBVLivPMenu.Checked:= True;
end;

procedure TReglementCListF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
  ClearFilterBVLivPMenu.Checked:= True;
end;

procedure TReglementCListF.DateStartRegCDChange(Sender: TObject);
begin
MainForm.RegclientTable.DisableControls;
MainForm.RegclientTable.Active:= False;
MainForm.RegclientTable.SQL.clear;
mainform.RegclientTable.sql.Text:='SELECT * FROM regclient WHERE date_rc BETWEEN '''+(DateToStr(DateStartRegCD.Date))+ ''' AND ''' +(DateToStr(DateEndRegCD.Date))+'''';
MainForm.RegclientTable.Active:= True;
MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.FormShow(Sender: TObject);
begin
  MainForm.RegclientTable.Active:= True;
  DateStartRegCD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndRegCD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartRegCDChange(Sender);
end;

procedure TReglementCListF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.RegclientTable.First;
end;

procedure TReglementCListF.P1Click(Sender: TObject);
begin
 if not MainForm.RegclientTable.IsEmpty then
 begin

  MainForm.RegclientTable.DisableControls;

  GettingDataRecuPai;

  ReglementCfrxRprt.PrepareReport;
  ReglementCfrxRprt.ShowReport;

  MainForm.RegclientTable.EnableControls;

 end;
end;

procedure TReglementCListF.P2Click(Sender: TObject);
begin
  MainForm.RegclientTable.DisableControls;

   GettingData;

  RegCListfrxRprt.PrepareReport;
  RegCListfrxRprt.ShowReport;

  MainForm.RegclientTable.EnableControls;
end;

procedure TReglementCListF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.RegclientTable.Prior;
end;

procedure TReglementCListF.NextBARecbtnClick(Sender: TObject);
begin
 MainForm.RegclientTable.Next;
end;

procedure TReglementCListF.NotValideFilterBVLivPMenuClick(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=21;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=15;
  sImage2.Visible:= True;  
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_FacV;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.RegclientTable.Last;
end;

procedure TReglementCListF.EditBARecBtnClick(Sender: TObject);
var
 CodeF: Integer;
 begin
 if MainForm.RegclientTable.FieldByName('bon_or_no_rc').AsInteger = 1 then

 begin
  ReglementCGestionF := TReglementCGestionF.Create(ReglementCListF);


      if Assigned(ReglementCListF) then
    begin
    ResearchRegCEdt.Text:='';
    end;


   if NOT (MainForm.RegclientTable.IsEmpty) Then
   begin

       ReglementCGestionF.NumRegCGEdt.Caption := MainForm.RegclientTable.FieldByName('nom_rc').AsString;
       ReglementCGestionF.DateRegCGD.Date:= MainForm.RegclientTable.FieldByName('date_rc').AsDateTime;
       ReglementCGestionF.ObserRegCGMem.Lines.Text := MainForm.RegclientTable.FieldByName('obser_rc').AsString;
       if (MainForm.RegclientTable.FieldByName('code_c').AsInteger<> null) and (MainForm.RegclientTable.FieldByName('code_c').AsInteger<> 0) then
       begin
       CodeF:=MainForm.RegclientTable.FieldByName('code_c').AsInteger;
       ReglementCGestionF.ClientRegCGCbx.Text:= MainForm.RegclientTable.FieldByName('ClientrRC').AsWideString;
         MainForm.SQLQuery.Active:=false;
         MainForm.SQLQuery.SQL.Clear;
         MainForm.SQLQuery.SQL.Text:='Select * FROM client WHERE code_c ='+(IntToStr( CodeF ) ) ;
         MainForm.SQLQuery.Active:=True;
         ReglementCGestionF.RegCGClientOLDCredit.Caption:= CurrToStrF(MainForm.SQLQuery.FieldByName('oldcredit_c').AsFloat,ffNumber,2);
         MainForm.SQLQuery.Active:=false;
         MainForm.SQLQuery.SQL.Clear;
//         MainForm.SQLQuery.SQL.Text:='Select * FROM client ' ;
//         MainForm.SQLQuery.Active:=True;
        end;

       if (MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger<> null ) AND (MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger<> 0) then
       begin
       CodeF:=MainForm.RegclientTable.FieldByName('code_mdpai').AsInteger;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         ReglementCGestionF.ModePaieRegCGCbx.Text:= MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger<> null) AND (MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger<> 0) then
       begin
       CodeF:=MainForm.RegclientTable.FieldByName('code_cmpt').AsInteger;
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         ReglementCGestionF.CompteRegCGCbx.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString<> null then
       begin
        ReglementCGestionF.NChequeRegCGCbx.Text:= MainForm.RegclientTable.FieldByName('num_cheque_rc').AsString;
       end;


    ReglementCGestionF.VerRegCGEdt.Text :=      CurrToStrF(MainForm.RegclientTable.FieldByName('montver_rc').AsFloat, ffNumber, 2);


            ReglementCGestionF.Left:=  (Screen.Width div 2 ) - (ReglementCGestionF.Width div 2)    ;
            ReglementCGestionF.Top:=   (Screen.Height div 2) - (ReglementCGestionF.Height div 2)    ;

      ReglementCGestionF.Tag:= 1;
      ReglementCGestionF.Show;




     end;



 end;

  {

if MainForm.RegclientTable.FieldValues['bon_or_no_rf'] = 2 then
 begin
//        MainForm.Bona_recPlistTable.Active:= False;
//     MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';
//
//    CodeREG:=  MainForm.RegclientTable.FieldValues['code_barec'];
//
//    MainForm.Bona_recTable.DisableControls;
//    MainForm.Bona_recTable.Active:= False;
//    MainForm.Bona_recTable.SQL.clear;
//    mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE code_barec = '+ IntToStr(CodeREG) ;
//    MainForm.Bona_recTable.Active:= True;
//    CodeBREC:= MainForm.Bona_recTable.FieldValues['code_barec'];
//
//            MainForm.Bona_recPlistTable.Active:= False;
//  MainForm.Bona_recPlistTable.SQL.clear;
//  mainform.Bona_recPlistTable.sql.Text:='SELECT * FROM bona_rec_list WHERE code_barec = '+ IntToStr(CodeBREC) ;
//  MainForm.Bona_recPlistTable.Active:= True;
//
//     BonRecF.EditBARecBtnClick(Sender);
 end;
 if MainForm.RegclientTable.FieldValues['bon_or_no_rf'] = 3 then
 begin

//         MainForm.Bona_fac_listTable.Active:= False;
//     MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
//
//    CodeREG:=  MainForm.RegclientTable.FieldValues['code_bafac'];
//
//    MainForm.Bona_facTable.DisableControls;
//    MainForm.Bona_facTable.Active:= False;
//    MainForm.Bona_facTable.SQL.clear;
//    mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac WHERE code_bafac = '+ IntToStr(CodeREG) ;
//    MainForm.Bona_facTable.Active:= True;
//    CodeBREC:= MainForm.Bona_facTable.FieldValues['code_bafac'];
//
//            MainForm.Bona_fac_listTable.Active:= False;
//  MainForm.Bona_fac_listTable.SQL.clear;
//  mainform.Bona_fac_listTable.sql.Text:='SELECT * FROM bona_fac_list WHERE code_bafac = '+ IntToStr(CodeBREC) ;
//  MainForm.Bona_fac_listTable.Active:= True;
//
//
//       BonFacAF.EditBAFacBtnClick(Sender);
//
//
//  MainForm.Bona_facTable.Active:= False;
//  MainForm.Bona_facTable.SQL.clear;
//  mainform.Bona_facTable.sql.Text:='SELECT * FROM bona_fac ' ;
//  MainForm.Bona_facTable.Active:= True;
//  MainForm.Bona_facTable.EnableControls;


 end;
   }



end;

procedure TReglementCListF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
                                             
ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=5;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Escpace;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.DeleteBARecBtnClick(Sender: TObject);
begin
 if NOT (MainForm.RegclientTable.IsEmpty) then
 begin
     if MainForm.RegclientTable.FieldValues['bon_or_no_rc'] = 1 then
     begin
      FSplashAddUnite:=TFSplashAddUnite.Create(ReglementCListF);
      FSplashAddUnite.Width:=300;
      FSplashAddUnite.Height:=160;
      FSplashAddUnite.Panel1.Color:=  $004735F9;
      FSplashAddUnite.LineP.Top:= (FSplashAddUnite.Height) - 44  ;
      FSplashAddUnite.OKAddUniteSBtn.Top:= (FSplashAddUnite.Height) - 36;
      FSplashAddUnite.Image1.Left:= 1;
      FSplashAddUnite.OKAddUniteSBtn.ImageIndex:=17;
      FSplashAddUnite.CancelAddUniteSBtn.Top:=(FSplashAddUnite.Height) - 36;
      FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18;
      FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'le Versement ?';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Règlement';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 25 ;

     end else
         begin
           sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
//           TTask.Run ( procedure
//           begin
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
//           end);
         end;

 end;
end;


  procedure TReglementCListF.GettingData;
var
  PreiodRX,Agent: TfrxMemoView;
begin
  PreiodRX:= RegCListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartRegCD.Date) + ' au ' + DateToStr(DateEndRegCD.Date) ;
      Agent:= RegCListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
  end;

  procedure TReglementCListF.GettingDataRecuPai;
var
  Name,Tel,Mob,Adr,MoneyWordRX : TfrxMemoView;
  str1 : string;

  Logo : TfrxPictureView;
    S: TMemoryStream;
  Jpg: TJPEGImage;
begin



  if NOT (MainForm.CompanyTable.IsEmpty) then
  begin

    Name:= ReglementCfrxRprt.FindObject('Name') as TfrxMemoView;
    Name.Text:= MainForm.CompanyTable.FieldByName('nom_comp').AsString ;
    Name.Visible:=True;

    Tel:= ReglementCfrxRprt.FindObject('Tel') as TfrxMemoView;
    Tel.Text:= MainForm.CompanyTable.FieldByName('fix_comp').AsString ;
    Tel.Visible:=True;

      Mob:= ReglementCfrxRprt.FindObject('Mob') as TfrxMemoView;
    Mob.Text:= MainForm.CompanyTable.FieldByName('mob_comp').AsString ;
    Mob.Visible:=True;

      Adr:= ReglementCfrxRprt.FindObject('Adr') as TfrxMemoView;
    Adr.Text:= MainForm.CompanyTable.FieldByName('adr_comp').AsString ;
    Adr.Visible:=True;

      Logo:= ReglementCfrxRprt.FindObject('Logo') as TfrxPictureView;
      Logo.Visible:=True;

        if (MainForm.CompanyTable.fieldbyname('logo_comp').Value <> null) then
      begin
              S := TMemoryStream.Create;
          try
            TBlobField(MainForm.CompanyTable.FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
              Logo.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;

           end;

  end;



      str1:='';
    str1:= MontantEnToutesLettres(MainForm.RegclientTable.FieldByName('montver_rc').AsCurrency);
    str1[1] := Upcase(str1[1]);
    MoneyWordRX := ReglementCfrxRprt.FindObject('MoneyWordRX') as TfrxMemoView;
    MoneyWordRX.Text:='';
    MoneyWordRX.Text :=str1;// StringReplace(ObserBonLivGLbl.Caption, '%my_str%', 'new string', [rfReplaceAll]);

  end;




procedure TReglementCListF.SumGirdProduitBtnClick(Sender: TObject);
begin
  if SumGirdProduitBtn.Tag = 0 then
  begin
    BVLivListDBGridEh.FooterRowCount:=1;
    SumGirdProduitBtn.Tag := 1;
  end else
      begin
        BVLivListDBGridEh.FooterRowCount:=0;
        SumGirdProduitBtn.Tag := 0;
      end;
end;

procedure TReglementCListF.V1Click(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=22;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=15;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_CTR;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.ValideFilterBVLivPMenuClick(Sender: TObject);
begin
ClearMPFilterBVLivPMenuClick(Sender);

ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=20;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=15;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_BL;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Virment;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TReglementCListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(BVLivListDBGridEh,GetCurrentDir +'\bin\gc_regclst');


Action:= caFree;
ReglementCListF:= nil;
end;

procedure TReglementCListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_regclst') then
   begin

    MainForm.LoadGridLayout(BVLivListDBGridEh,GetCurrentDir +'\bin\gc_regclst');
   end;
end;

procedure TReglementCListF.FormPaint(Sender: TObject);
begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;


      if MainForm.totaux_ur.Checked then
      begin

       SumGirdProduitBtn.Enabled:= True;

      end else
      begin

       SumGirdProduitBtn.Enabled:= False;

      end;
end;

end.

