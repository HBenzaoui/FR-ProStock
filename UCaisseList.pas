unit UCaisseList;

interface

uses
  Winapi.Windows,DateUtils, EhLibFireDAC,DBGridEhImpExp,ShellAPI,

   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  AdvToolBtn, acImage, Vcl.Menus, sStatusBar, frxExportBaseDialog;

type
  TCaisseListF = class(TForm)
    CaisseListDBGridEh: TDBGridEh;
    Panel3: TPanel;
    CaisseListDataS: TDataSource;
    Panel4: TPanel;
    Shape1: TShape;
    SoldIniCaisseListLbl: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    SoldPeriodeCaisseListLbl: TLabel;
    SoldTotalCaisseListLbl: TLabel;
    Label8: TLabel;
    CaisseListfrxRprt: TfrxReport;
    frxCaisseListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    TopP: TPanel;
    PeriodCaiseeListLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NextCaiseebtn: TsSpeedButton;
    PreviosCaiseebtn: TsSpeedButton;
    FisrtCaiseebtn: TsSpeedButton;
    LastCaiseebtn: TsSpeedButton;
    FilterBVLivBtn: TAdvToolButton;
    LineP: TPanel;
    Panel2: TPanel;
    DateEndCaisseListD: TDateTimePicker;
    DateStartCaisseListD: TDateTimePicker;
    DaysCaisseListCbx: TComboBox;
    CaisseListCbx: TComboBox;
    sImage2: TsImage;
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
    F2: TMenuItem;
    EspeceMPFilterBVLivPMenu: TMenuItem;
    ChequeMPFilterBVLivPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVLivPMenu: TMenuItem;
    FilterparlePrixDeVente1: TMenuItem;
    T2: TMenuItem;
    N0TVA1: TMenuItem;
    N4: TMenuItem;
    ClearTVAFilterPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    FilterparlesFactures1: TMenuItem;
    BondeLivration1: TMenuItem;
    BondeReception1: TMenuItem;
    ClearBRFilterPMenu: TMenuItem;
    N6: TMenuItem;
    V1: TMenuItem;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    StatuBar: TsStatusBar;
    PaidOnlyCaisseBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel8: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel9: TPanel;
    ProduitListSaveDg: TSaveDialog;
    C1: TMenuItem;
    B1: TMenuItem;
    procedure CaisseListCbxDropDown(Sender: TObject);
    procedure CaisseListCbxChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DaysCaisseListCbxChange(Sender: TObject);
    procedure DateStartCaisseListDChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CaisseListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FisrtCaiseebtnClick(Sender: TObject);
    procedure PreviosCaiseebtnClick(Sender: TObject);
    procedure NextCaiseebtnClick(Sender: TObject);
    procedure LastCaiseebtnClick(Sender: TObject);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure RegleFilterBVLivPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVLivPMenuClick(Sender: TObject);
    procedure BondeLivration1Click(Sender: TObject);
    procedure BondeReception1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure ClearBRFilterPMenuClick(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure N0TVA1Click(Sender: TObject);
    procedure ClearTVAFilterPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure CaisseListCbxExit(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure PaidOnlyCaisseBtnClick(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure CaisseListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);  private
    procedure GettingData;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    procedure Select_ALL;
    procedure Select_BL;
    procedure Select_BR;
    procedure Select_BCA;
    procedure Select_BCV;
    procedure Select_CTR;
    procedure Select_Deca;
    procedure Select_Enca;
    procedure Select_FacA;
    procedure Select_FacV;
    procedure Select_MP_ATerme;
    procedure Select_MP_Escpace;
    procedure Select_RegC;
    procedure Select_RegF;
    procedure CearTVAFilterPMenuClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CaisseListF: TCaisseListF;

implementation

uses
  UMainF;

{$R *.dfm}




//-------------Filtring procedures-----------------//

procedure TCaisseListF.Select_ALL;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;


procedure TCaisseListF.Select_Deca;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND decaiss_ocb <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;


procedure TCaisseListF.Select_Enca;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND encaiss_ocb <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.Select_MP_Escpace;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:= 'SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_mdpai = 1 ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;


procedure TCaisseListF.Select_MP_ATerme;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:=  'SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_mdpai = 3 ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.Select_BCV;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_bvcom <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.Select_BL;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_bvliv <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;


procedure TCaisseListF.Select_CTR;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_bvctr <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;



procedure TCaisseListF.Select_FacV;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_bvfac <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;


procedure TCaisseListF.Select_BCA;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_bacom <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.Select_BR;
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_barec <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;


procedure TCaisseListF.Select_FacA;              
begin

MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_bafac <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

end;

procedure TCaisseListF.Select_RegC;
begin

MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_rc <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

end;

procedure TCaisseListF.Select_RegF;
begin

MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
mainform.Opt_cas_bnk_CaisseTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = false AND code_rf <> ''0'' ';
MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

end;


procedure TCaisseListF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TCaisseListF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;




procedure TCaisseListF.CaisseListCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte WHERE nature_cmpt = false ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      CaisseListCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

       for I := 0 to MainForm.CompteTable.RecordCount - 1 do
       if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
       begin
         CaisseListCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
         MainForm.CompteTable.Next;
        end;
     end;
     CaisseListCbx.Items.Add('Tous');

end;

procedure TCaisseListF.CaisseListCbxExit(Sender: TObject);
begin
if CaisseListCbx.ItemIndex = -1 then
   CaisseListCbx.ItemIndex := CaisseListCbx.Items.Count -1;
end;

procedure TCaisseListF.CaisseListDBGridEhDrawColumnCell(Sender: TObject;
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
   CaisseListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   CaisseListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 //------ use this code to red the produit with 0 or null in stock----//    decaiss_ocb
 if  (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'] <= 0)
 AND (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] <= 0) then
 begin
 CaisseListDBGridEh.Canvas.Font.Color:=$004735F9;
 CaisseListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;

procedure TCaisseListF.CaisseListDBGridEhSortMarkingChanged(Sender: TObject);
begin
   CaisseListDBGridEh.DefaultApplySorting;
end;

procedure TCaisseListF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);
  ClearRegleFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=20;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_BR;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.ClearFilterBVLivPMenuClick(Sender: TObject);
begin
  MainForm.ProduitTable.Filtered:=False;
  Select_ALL;
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=49;
  ClearValideFilterBVLivPMenu.Checked := True;
  ClearRegleFilterBVLivPMenu.Checked := True;
  ClearMPFilterBVLivPMenu.Checked := True;
  ClearTVAFilterPMenu.Checked := True;
end;

procedure TCaisseListF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
end;


procedure TCaisseListF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
  ClearRegleFilterBVLivPMenu.Checked:= True;
end;


procedure TCaisseListF.ClearTVAFilterPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
end;

procedure TCaisseListF.CearTVAFilterPMenuClick(Sender: TObject);
begin

end;

procedure TCaisseListF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
begin
  MainForm.Opt_cas_bnk_CaisseTable.Filtered:=False;
  Select_ALL;
  sImage1.Visible:= False;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=49;
end;

procedure TCaisseListF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'Etat de la Caisse';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(CaisseListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
//
//    GettingData;
//
//CaisseListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Etat de la Caisse';
//CaisseListfrxRprt.Export(frxXLSExport1);
//
//MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

    GettingData;

CaisseListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Etat de la Caisse';
CaisseListfrxRprt.Export(frxPDFExport1);


MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

   GettingData;

  CaisseListfrxRprt.PrepareReport;
  CaisseListfrxRprt.ShowReport;

  MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
end;

procedure TCaisseListF.B1Click(Sender: TObject);
begin
// Bon de Commande
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);
  ClearRegleFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=38;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_BCA;
  ClearFilterBVLivPMenu.Checked:= False;


end;

procedure TCaisseListF.BondeLivration1Click(Sender: TObject);
begin
ClearValideFilterBVLivPMenuClick(Sender);
ClearRegleFilterBVLivPMenuClick(Sender);
ClearTVAFilterPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
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

procedure TCaisseListF.BondeReception1Click(Sender: TObject);
begin
ClearValideFilterBVLivPMenuClick(Sender);
ClearRegleFilterBVLivPMenuClick(Sender);
ClearTVAFilterPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
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

procedure TCaisseListF.ClearBRFilterPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
end;

procedure TCaisseListF.C1Click(Sender: TObject);
begin
//Commande Client
ClearValideFilterBVLivPMenuClick(Sender);
ClearRegleFilterBVLivPMenuClick(Sender);
ClearTVAFilterPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;



  sImage1.ImageIndex:=38;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=15;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_BCV;
  ClearFilterBVLivPMenu.Checked:= False;


end;

procedure TCaisseListF.CaisseListCbxChange(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Double;
CodeC : Integer;
begin
if CaisseListCbx.Text <> 'Tous' then
  begin

               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select code_cmpt,nom_cmpt FROM compte where LOWER(nom_cmpt) LIKE LOWER('''+CaisseListCbx.Text+''')'+ ' group by code_cmpt';
               MainForm.CompteTable.Active:=True;
               CodeC:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;

         MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
         MainForm.Opt_cas_bnk_CaisseTable.Active:=False;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;

         if DaysCaisseListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false and code_cmpt ='+ IntToStr(CodeC)
                                                   + ' and date_ocb BETWEEN'''+(DateToStr(DateStartCaisseListD.Date))+ ''' AND ''' +(DateToStr(DateEndCaisseListD.Date))+'''';

         end else
             begin
                 MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false and code_cmpt ='+ IntToStr(CodeC);
               end;

         MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

        MainForm.Opt_cas_bnk_CaisseTable.First;

        while not MainForm.Opt_cas_bnk_CaisseTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_CaisseTable.Next;
        end;


               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = false and code_cmpt ='+IntToStr(CodeC) +' group by code_cmpt';
               MainForm.CompteTable.Active:=True;

               MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


    SoldIniCaisseListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
    SoldPeriodeCaisseListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;



               MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false and code_cmpt ='+ IntToStr(CodeC);
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       SoldTotalCaisseListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
           MainForm.CompteTable.EnableControls;

  end else
      begin


        MainForm.Opt_cas_bnk_CaisseTable.DisableControls;

         MainForm.Opt_cas_bnk_CaisseTable.Active:=False;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
         if DaysCaisseListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartCaisseListD.Date))+ ''' AND ''' +(DateToStr(DateEndCaisseListD.Date))+'''';

         end else
             begin
              MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false ';
             end;
         MainForm.Opt_cas_bnk_CaisseTable.Active:=True;

        MainForm.Opt_cas_bnk_CaisseTable.First;

        while not MainForm.Opt_cas_bnk_CaisseTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_CaisseTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = false group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


        SoldIniCaisseListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);

        SoldPeriodeCaisseListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       SoldTotalCaisseListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;

           MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
           MainForm.CompteTable.EnableControls;


      end;

end;

procedure TCaisseListF.FormShow(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Double;
begin

 if (DaysCaisseListCbx.ItemIndex = 2) AND (CaisseListCbx.ItemIndex = 0) then
 begin

  DateStartCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

         MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
         MainForm.Opt_cas_bnk_CaisseTable.Active:=False;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Clear;
         MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartCaisseListD.Date))+ ''' AND ''' +(DateToStr(DateEndCaisseListD.Date))+'''';
         MainForm.Opt_cas_bnk_CaisseTable.Active:=True;


        MainForm.Opt_cas_bnk_CaisseTable.First;

        while not MainForm.Opt_cas_bnk_CaisseTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_CaisseTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_CaisseTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_CaisseTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = false group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


  SoldIniCaisseListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
  SoldPeriodeCaisseListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = false ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];
          MainForm.SQLQuery.Next;
        end;

  SoldTotalCaisseListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_CaisseTable.EnableControls;
           MainForm.CompteTable.EnableControls;

 end else
     begin
       DaysCaisseListCbxChange(Sender);
       CaisseListCbxChange(Sender);

     end;

     // --- this is to show the paied only -------------

//     MainForm.Opt_cas_bnk_CaisseTable.Filtered:= True;
end;

procedure TCaisseListF.DaysCaisseListCbxChange(Sender: TObject);
begin

     if DaysCaisseListCbx.Text = 'Aujourd''hui' then
    begin
      DateStartCaisseListD.Enabled:=True;
      DateEndCaisseListD.Enabled:=True;

      DateStartCaisseListD.Date:=Now;// EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
      DateEndCaisseListD.Date:=Now; //  EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysCaisseListCbx.Text = 'Hier' then
    begin
      DateStartCaisseListD.Enabled:=True;
      DateEndCaisseListD.Enabled:=True;

      DateStartCaisseListD.Date:= Yesterday;//  EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now - 1));
      DateEndCaisseListD.Date:= Yesterday//  EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now - 1));
    end;
      if DaysCaisseListCbx.Text = 'Mois en cours' then
    begin
      DateStartCaisseListD.Enabled:=True;
      DateEndCaisseListD.Enabled:=True;

      DateStartCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
      DateEndCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
    end;
      if DaysCaisseListCbx.Text = 'Cette Année' then
    begin
      DateStartCaisseListD.Date:=EncodeDate (YearOf(Now),01,01);
      DateEndCaisseListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysCaisseListCbx.Text = 'Toutes' then
    begin
      DateStartCaisseListD.Enabled:=False;
      DateEndCaisseListD.Enabled:=False;

    end;

     CaisseListCbxChange(Sender);


end;

procedure TCaisseListF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);
  ClearRegleFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
  
  sImage1.ImageIndex:=21;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=13;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_FacA;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.DateStartCaisseListDChange(Sender: TObject);

  begin
    CaisseListCbxChange(Sender);
  end;

  procedure TCaisseListF.GettingData;
var
  PreiodRX,Agent,Caisse,SoldeINI,SoldePre,SoldeTotal : TfrxMemoView;
begin
  PreiodRX:= CaisseListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartCaisseListD.Date) + ' au ' + DateToStr(DateEndCaisseListD.Date) ;

    Agent:= CaisseListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

    Caisse:= CaisseListfrxRprt.FindObject('Caisse') as TfrxMemoView;
  Caisse.Text:= 'Caisse : ' + CaisseListCbx.Text;

    SoldeINI:= CaisseListfrxRprt.FindObject('SoldeINI') as TfrxMemoView;
  SoldeINI.Text:=   SoldIniCaisseListLbl.Caption;

    SoldePre:= CaisseListfrxRprt.FindObject('SoldePre') as TfrxMemoView;
  SoldePre.Text:=   SoldPeriodeCaisseListLbl.Caption;

    SoldeTotal:= CaisseListfrxRprt.FindObject('SoldeTotal') as TfrxMemoView;
  SoldeTotal.Text:= SoldTotalCaisseListLbl.Caption;

end;

procedure TCaisseListF.LastCaiseebtnClick(Sender: TObject);
begin
 MainForm.Opt_cas_bnk_CaisseTable.Last;
end;

procedure TCaisseListF.N0TVA1Click(Sender: TObject);
begin
ClearValideFilterBVLivPMenuClick(Sender);
ClearRegleFilterBVLivPMenuClick(Sender);
ClearBRFilterPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
ClearBRFilterPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=25;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=24;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_RegF;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.NextCaiseebtnClick(Sender: TObject);
begin
 MainForm.Opt_cas_bnk_CaisseTable.Next;
end;

procedure TCaisseListF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearMPFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked := True;
  
  sImage1.ImageIndex:=7;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_ATerme;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.NotValideFilterBVLivPMenuClick(Sender: TObject);
begin
ClearRegleFilterBVLivPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);
ClearTVAFilterPMenuClick(Sender);
ClearBRFilterPMenuClick(Sender);

ClearRegleFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked := True;

  FilterBVLivBtn.ImageIndex:=50;
  MainForm.ProduitTable.Filtered:= False;
  Select_All;
  Select_Enca;
  sImage1.ImageIndex:=19;
  sImage1.Visible:= True;
  FilteredColor;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.PreviosCaiseebtnClick(Sender: TObject);
begin
 MainForm.Opt_cas_bnk_CaisseTable.Prior;
end;

procedure TCaisseListF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Opt_cas_bnk_CaisseTable.Close;
MainForm.Opt_cas_bnk_CaisseTable.Open;
end;

procedure TCaisseListF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearMPFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);
                                             
ClearValideFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked := True;
  
  sImage1.ImageIndex:=5;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Escpace;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.PaidOnlyCaisseBtnClick(Sender: TObject);
begin
  if PaidOnlyCaisseBtn.Tag = 0 then
  begin

    MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
    MainForm.Opt_cas_bnk_CaisseTable.Filtered:= False;
    mainform.Opt_cas_bnk_CaisseTable.Filter := 'decaiss_ocb <> 0 OR encaiss_ocb <> 0';// + quotedstr('%' + ResearchProduitsEdt.Text + '%')  + ' OR [code_p] = '+ IntToStr(CodeCB) ;
    MainForm.Opt_cas_bnk_CaisseTable.Filtered:= True;
    MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

    PaidOnlyCaisseBtn.Tag := 1;
    PaidOnlyCaisseBtn.ImageIndex:=25;
    PaidOnlyCaisseBtn.Hint:='Tout';
  end else
      begin

        MainForm.Opt_cas_bnk_CaisseTable.DisableControls;
        MainForm.Opt_cas_bnk_CaisseTable.Filtered := false;
        MainForm.Opt_cas_bnk_CaisseTable.EnableControls;

        PaidOnlyCaisseBtn.Tag := 0;
        PaidOnlyCaisseBtn.ImageIndex:=28;
        PaidOnlyCaisseBtn.Hint:='Payé seulement';
      end;
end;

procedure TCaisseListF.T2Click(Sender: TObject);
begin
ClearValideFilterBVLivPMenuClick(Sender);
ClearRegleFilterBVLivPMenuClick(Sender);
ClearBRFilterPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
ClearBRFilterPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;

  sImage1.ImageIndex:=25;
  sImage1.Visible:= True;
  sImage2.ImageIndex:=23;
  sImage2.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_RegC;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.V1Click(Sender: TObject);
begin
ClearValideFilterBVLivPMenuClick(Sender);
ClearRegleFilterBVLivPMenuClick(Sender);
ClearTVAFilterPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
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

procedure TCaisseListF.ValideFilterBVLivPMenuClick(Sender: TObject);
begin
ClearRegleFilterBVLivPMenuClick(Sender);
ClearMPFilterBVLivPMenuClick(Sender);
ClearTVAFilterPMenuClick(Sender);
ClearBRFilterPMenuClick(Sender);

ClearRegleFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked:= True;

 FilterBVLivBtn.ImageIndex:=50;
 MainForm.ProduitTable.Filtered:= False;
 Select_ALL;
 Select_Deca;
 sImage1.ImageIndex:=18;
 sImage1.Visible:= True;
 FilteredColor;
 ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TCaisseListF.FisrtCaiseebtnClick(Sender: TObject);
begin
 MainForm.Opt_cas_bnk_CaisseTable.First;
end;

procedure TCaisseListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(CaisseListDBGridEh,GetCurrentDir +'\bin\gc_caslst');


  MainForm.Opt_cas_bnk_CaisseTable.Filtered := false;
 FreeAndNil(CaisseListF);
end;

procedure TCaisseListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_caslst') then
   begin

    MainForm.LoadGridLayout(CaisseListDBGridEh,GetCurrentDir +'\bin\gc_caslst');
   end;
end;

end.
