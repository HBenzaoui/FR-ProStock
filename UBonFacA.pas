unit UBonFacA;

interface

uses
  Winapi.Windows,DBGridEhImpExp,ShellAPI,
  DateUtils,
  MMSystem,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, acImage, Vcl.Menus, sStatusBar, Vcl.AppEvnts;

type
  TBonFacAF = class(TForm)
    BAFacListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBAFacBtn: TAdvToolButton;
    DeleteBAFacBtn: TAdvToolButton;
    AddBAFacBtn: TAdvToolButton;
    ResearchBARecLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBAFacEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBAFacD: TDateTimePicker;
    DateStartBAFacD: TDateTimePicker;
    ResherchBFAFourRdioBtn: TRadioButton;
    ResherchBFANumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    Panel3: TPanel;
    BonFacAfrxRprt: TfrxReport;
    frxBonFacADB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    FisrtBAFacbtn: TsSpeedButton;
    PreviosBAFacbtn: TsSpeedButton;
    NextBAFacbtn: TsSpeedButton;
    LastBAFacbtn: TsSpeedButton;
    FilterBVLivBtn: TAdvToolButton;
    sImage6: TsImage;
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
    ATermeMPFilterBVLivPMenu: TMenuItem;
    VirmentMPFilterBVLivPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVLivPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    StatuBar: TsStatusBar;
    SumGirdBAFacBtn: TAdvToolButton;
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
    procedure FisrtBAFacbtnClick(Sender: TObject);
    procedure PreviosBAFacbtnClick(Sender: TObject);
    procedure NextBAFacbtnClick(Sender: TObject);
    procedure LastBAFacbtnClick(Sender: TObject);
    procedure ResearchBAFacEdtChange(Sender: TObject);
    procedure DateStartBAFacDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AddBAFacBtnClick(Sender: TObject);
    procedure EditBAFacBtnClick(Sender: TObject);
    procedure DeleteBAFacBtnClick(Sender: TObject);
    procedure BAFacListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BAFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BAFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure RegleFilterBVLivPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ATermeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure VirmentMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure SumGirdBAFacBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBAFacEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchBAFacEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BAFacListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BAFacListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure BAFacListDBGridEhSortMarkingChanged(Sender: TObject);
  private
    procedure GettingData;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    procedure Select_ALL;
    procedure Select_ATerme;
    procedure Select_Cheque;
    procedure Select_Escpace;
    procedure Select_NOT_Regle;
    procedure Select_NOT_Valid;
    procedure Select_NOT_Valid_ATerme;
    procedure Select_NOT_Valid_Cheque;
    procedure Select_NOT_Valid_Escpace;
    procedure Select_NOT_Valid_Virment;
    procedure Select_Regle;
    procedure Select_Valid;
    procedure Select_Valid_ATerme;
    procedure Select_Valid_Cheque;
    procedure Select_Valid_Escpace;
    procedure Select_Valid_Virment;
    procedure Select_Virment;
    { Private declarations }
  public
    { Public declarations }

    const FASQL = 'SELECT *, '
      +'   ((montttc_bafac)-(montht_bafac - remise_bafac)) - (timber_bafac) AS MontantTVA, '
      +'   (montttc_bafac - montver_bafac) AS MontantRes, '
      +'  CASE  '
      +'     WHEN remise_bafac <> ''0'' AND montht_bafac <> ''0'' THEN  ROUND( CAST (((remise_bafac / montht_bafac) * 100) as NUMERIC),2) '
      +'     ELSE ''0'' '
      +'  END AS RemisePerc, '
      +'   (montht_bafac - remise_bafac) AS NeTHT, '
      +'   (montttc_bafac - remise_bafac) AS NetTTC '
      +' FROM bona_fac ';
  end;

var
  BonFacAF: TBonFacAF;

implementation

uses
  UMainF, UBonFacAGestion, USplashVersement, USplashAddUnite, UClientGestion,Threading,
  USplash, UProduitsList;

{$R *.dfm}


//-------------Filtring procedures-----------------//

procedure TBonFacAF.Select_ALL;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Valid;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = true AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_NOT_Valid;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = false AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Escpace;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE code_mdpai = 1 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Cheque;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE code_mdpai = 2 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_ATerme;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE code_mdpai = 3 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Virment;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE code_mdpai = 4 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Valid_Escpace;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = true AND code_mdpai = 1 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Valid_Cheque;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = true AND code_mdpai = 2 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Valid_ATerme;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = true AND code_mdpai = 3 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Valid_Virment;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = true AND code_mdpai = 4 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_NOT_Valid_Escpace;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = false AND code_mdpai = 1';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_NOT_Valid_Cheque;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = false AND code_mdpai = 2 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_NOT_Valid_ATerme;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = false AND code_mdpai = 3 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_NOT_Valid_Virment;
begin
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE valider_bafac = false AND code_mdpai = 4 AND date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.Select_Regle;
begin
  MainForm.Bona_facTable.Filtered := False;
  MainForm.Bona_facTable.Filter:='MontantRes <= 0 ';
  MainForm.Bona_facTable.Filtered:=True;
  MainForm.Bona_facTable.First;
end;

procedure TBonFacAF.Select_NOT_Regle;
begin
  MainForm.Bona_facTable.Filtered := False;
  MainForm.Bona_facTable.Filter:='MontantRes > 0 ';
  MainForm.Bona_facTable.Filtered:=True;
  MainForm.Bona_facTable.First;
end;

procedure TBonFacAF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonFacAF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;








procedure TBonFacAF.FisrtBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.First;
end;

procedure TBonFacAF.PreviosBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.Prior;
end;

procedure TBonFacAF.NextBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.Next;
end;

procedure TBonFacAF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
MainForm.Bona_FacTable.Filtered:= False;
Select_Valid;
Select_NOT_Regle;
sImage1.ImageIndex:=3;
sImage1.Visible:= True;
sImage6.ImageIndex:=10;
sImage6.Visible:=True;
F1.Enabled:= False;
FilteredColor;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
 ClearValideFilterBVLivPMenu.Checked := True;

    if (sImage2.Visible = True)  then
   begin 
     if sImage2.ImageIndex = 5 then
    begin
     Select_Valid_Escpace;
     Select_NOT_Regle;
    end;
      if sImage2.ImageIndex = 6 then
    begin
    Select_Valid_Cheque;
    Select_NOT_Regle;
    end;
      if sImage2.ImageIndex = 7 then
    begin
    Select_Valid_ATerme;
    Select_NOT_Regle;
    end;
      if sImage2.ImageIndex = 8 then
    begin
    Select_Valid_Virment;
    Select_NOT_Regle;
    end;
  end;
end;

procedure TBonFacAF.NotValideFilterBVLivPMenuClick(Sender: TObject);
begin
  sImage1.ImageIndex:=4;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  ClearFilterBVLivPMenu.Checked:= False;
  Select_NOT_Valid;
   if (sImage2.Visible = True)  then
  begin
   if sImage2.ImageIndex = 5 then
  begin
   Select_NOT_Valid_Escpace;
  end;
    if sImage2.ImageIndex = 6 then
  begin
  Select_NOT_Valid_Cheque;
  end;
    if sImage2.ImageIndex = 7 then
  begin
  Select_NOT_Valid_ATerme;
  end;
    if sImage2.ImageIndex = 8 then
  begin
  Select_NOT_Valid_Virment;
  end;
  end; 
end;

procedure TBonFacAF.LastBAFacbtnClick(Sender: TObject);
begin
MainForm.Bona_facTable.Last;
end;

procedure TBonFacAF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Bona_FacTable.Close;
MainForm.Bona_FacTable.Open;
end;

procedure TBonFacAF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 MainForm.Bona_FacTable.Filtered:= False;
 Select_Valid;
 Select_Regle;
 sImage1.ImageIndex:=3;
 sImage1.Visible:= True;
 sImage6.ImageIndex:=9;
 sImage6.Visible:=True;
 F1.Enabled:= False;
 FilteredColor;
 ATermeMPFilterBVLivPMenu.Enabled:= False;
 ClearValideFilterBVLivPMenu.Checked := True;

   if (sImage2.Visible = True)  then
   begin 

     if sImage2.ImageIndex = 5 then
    begin
     Select_Valid_Escpace;
    end;
      if sImage2.ImageIndex = 6 then
    begin
    Select_Valid_Cheque;
    end;
      if sImage2.ImageIndex = 7 then
    begin
    Select_Valid_ATerme;
    end;
      if sImage2.ImageIndex = 8 then
    begin
    Select_Valid_Virment;
    end;
  end;
end;

procedure TBonFacAF.ResearchBAFacEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBAFacEdt.Text<>'' then
    begin

          if ResherchBFAFourRdioBtn.Checked then
          begin
            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:= FASQL +' WHERE code_f IN( SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+'%'+(ResearchBAFacEdt.Text)+'%'+''')' +')';
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;

          end;

          if ResherchBFANumBRdioBtn.Checked then
          begin
            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:= FASQL +' WHERE LOWER(num_bafac) LIKE LOWER' +'('''+'%'+(ResearchBAFacEdt.Text)+'%'+''')' ;
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;
          end;


    end else
     begin
            MainForm.FournisseurTable.DisableControls;
            MainForm.FournisseurTable.Active:=False;
            MainForm.FournisseurTable.SQL.Clear;
            MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
            MainForm.FournisseurTable.Active:=True;
            MainForm.FournisseurTable.EnableControls;

            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:= FASQL ;
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;

     end;
end;

procedure TBonFacAF.ResearchBAFacEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.Bona_FacTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.Bona_FacTable.Prior;
  end;
end;

procedure TBonFacAF.ResearchBAFacEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBAFacEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;


 //----------- Searching in databese-------------------//

    if ResearchBAFacEdt.Text<>'' then
    begin

          if ResherchBFAFourRdioBtn.Checked then
          begin
            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:= FASQL +' WHERE code_f IN( SELECT code_f FROM client WHERE LOWER(nom_f) LIKE LOWER' +'('''+(ResearchBAFacEdt.Text+'%')+''')' +')';
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;

          end;

          if ResherchBFANumBRdioBtn.Checked then
          begin
            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:= FASQL +' WHERE LOWER(num_bafac) LIKE LOWER' +'('''+(ResearchBAFacEdt.Text+'%')+''')' ;
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;
          end;


    end else
     begin
            MainForm.FournisseurTable.DisableControls;
            MainForm.FournisseurTable.Active:=False;
            MainForm.FournisseurTable.SQL.Clear;
            MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
            MainForm.FournisseurTable.Active:=True;
            MainForm.FournisseurTable.EnableControls;

            MainForm.Bona_FacTable.DisableControls;
            MainForm.Bona_FacTable.Active:=False;
            MainForm.Bona_FacTable.SQL.Clear;
            MainForm.Bona_FacTable.SQL.Text:= FASQL ;
            MainForm.Bona_FacTable.Active:=True;
            MainForm.Bona_FacTable.EnableControls;

     end;

end;

end;

procedure TBonFacAF.DateStartBAFacDChange(Sender: TObject);
begin
ClearFilterBVLivPMenuClick(Sender);
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' WHERE date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
MainForm.Bona_facTable.Active:= True;
MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.FormShow(Sender: TObject);
begin
   MainForm.Bona_facTable.Active:= True;
  DateStartBAFacD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBAFacD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBAFacDChange(Sender);
end;

procedure TBonFacAF.AddBAFacBtnClick(Sender: TObject);
var
  codeFA : integer;

begin

 ClearFilterBVLivPMenuClick(Sender);

  if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;
 
MainForm.Bona_fac_listTable.Active:= False;
MainForm.Bona_fac_listTable.IndexFieldNames:='';
MainForm.Bona_facTable.DisableControls;
MainForm.Bona_facTable.Active:= False;
MainForm.Bona_facTable.SQL.clear;
mainform.Bona_facTable.sql.Text:= FASQL +' ORDER By code_bafac ';
MainForm.Bona_facTable.Active:= True;
//MainForm.Bona_facTable.EnableControls;

 BonFacAGestionF := TBonFacAGestionF.Create(nil);
 try


  if Assigned(BonFacAF) then
  begin
  ResearchBAFacEdt.Text:='';

  end;

  MainForm.Bona_fac_listTable.IndexFieldNames:='';
  codeFA:= 0;

     if MainForm.Bona_facTable.RecordCount <= 0 then
      begin

        MainForm.Bona_facTable.Insert;
        MainForm.Bona_facTable.FieldValues['code_bafac']:=1;
        MainForm.Bona_facTable.FieldValues['num_bafac']:= 'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
        MainForm.Bona_facTable.FieldValues['time_bafac']:=TimeOf(Now);
        MainForm.Bona_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bona_facTable.Post;
        codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
      end else
          begin
            MainForm.Bona_facTable.Last;

            codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bona_fac_list WHERE code_bafac = ' + QuotedStr(IntToStr(codeFA));
            MainForm.SQLQuery.Active:=True;

           if MainForm.SQLQuery.RecordCount <= 0 then
           begin

            codeFA := MainForm.Bona_facTable.FieldValues['code_bafac'];

             MainForm.Bona_facTable.Edit;
             MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
             MainForm.Bona_facTable.FieldValues['time_bafac']:= TimeOf(Now);
             MainForm.Bona_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             MainForm.Bona_facTable.Post;

           end else
           begin
             MainForm.Bona_facTable.Insert;
             MainForm.Bona_facTable.FieldValues['code_bafac']:= codeFA + 1;
             MainForm.Bona_facTable.FieldValues['num_bafac']:=  'FA'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFA + 1)]);
             MainForm.Bona_facTable.FieldValues['date_bafac']:= DateOf(Today);
             MainForm.Bona_facTable.FieldValues['time_bafac']:= TimeOf(Now);
             MainForm.Bona_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             MainForm.Bona_facTable.Post;
           end;
            BonFacAGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

      MainForm.Bona_fac_listTable.Active:=False;
      MainForm.Bona_fac_listTable.SQL.Clear;
      MainForm.Bona_fac_listTable.SQL.Text:= BonFacAGestionF.FALSQL ;
      MainForm.Bona_fac_listTable.Active:=True;

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;

   MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
       BonFacAGestionF.Tag:= 0;
       BonFacAGestionF.ShowModal;

  finally

//   BonFacAGestionF.Free;

   FreeAndNil(BonFacAGestionF);

  end;

//       MainForm.Bona_facTable.DisableControls;
  MainForm.Bona_facTable.Active:= False;
  MainForm.Bona_facTable.SQL.clear;
  mainform.Bona_facTable.sql.Text:= FASQL +' WHERE date_bafac BETWEEN '''+(DateToStr(DateStartBAFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBAFacD.Date))+'''';
  MainForm.Bona_facTable.Active:= True;
  MainForm.Bona_facTable.Last;
  MainForm.Bona_facTable.EnableControls;

end;

procedure TBonFacAF.EditBAFacBtnClick(Sender: TObject);
var
 CodeF : Integer;
begin


 if NOT (MainForm.Bona_facTable.IsEmpty) Then
 begin
      if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;


    MainForm.Bona_fac_listTable.Active:=True;

   if  NOT (MainForm.Bona_fac_listTable.IsEmpty) then
    begin

      MainForm.Bona_fac_listTable.Active:=False;
      MainForm.Bona_fac_listTable.IndexFieldNames:='code_bafac';
     //  MainForm.Bona_facTable.Refresh;

    BonFacAGestionF := TBonFacAGestionF.Create(nil);
    try
//       MainForm.Bona_facTable.Refresh;
       BonFacAGestionF.NumBonFacAGEdt.Caption := MainForm.Bona_facTable.FieldValues['num_bafac'];
       BonFacAGestionF.DateBonFacAGD.Date:= MainForm.Bona_facTable.FieldValues['date_bafac'];
       BonFacAGestionF.ObserBonFacAGMem.Lines.Text := MainForm.Bona_facTable.FieldByName('obser_bafac').AsString;
       if (MainForm.Bona_facTable.FieldValues['code_f']<> null) and (MainForm.Bona_facTable.FieldValues['code_f']<> 0) then
       begin
       CodeF:=MainForm.Bona_facTable.FieldValues['code_f'];
       BonFacAGestionF.FourBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldValues['fourbafac'];

        end;

       if (MainForm.Bona_facTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bona_facTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeF:=MainForm.Bona_facTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonFacAGestionF.ModePaieBonFacAGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'] ;
         if  MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger = 1 then
         begin
         BonFacAGestionF.TimberBonFacAGlbl.Visible:= True;
         BonFacAGestionF.TimberPerctageBonFacAGLbl.Visible:= True;
         BonFacAGestionF.TimberPerctageBonFacAGEdt.Visible:= True;
         BonFacAGestionF.TimberBonFacAGEdt.Visible:= True;
         BonFacAGestionF.TimberBonFacAGEdt.Text :=     CurrToStrF(MainForm.Bona_facTable.FieldValues['timber_bafac'], ffNumber, 2);
         end;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.Bona_facTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bona_facTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeF:=MainForm.Bona_facTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
         MainForm.CompteTable.Active:=True;
         BonFacAGestionF.CompteBonFacAGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.Bona_facTable.FieldValues['num_cheque_bafac']<> null then
       begin
        BonFacAGestionF.NChequeBonFacAGCbx.Text:= MainForm.Bona_facTable.FieldValues['num_cheque_bafac'];
       end;


     if (MainForm.Bona_facTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bona_facTable.FieldValues['remise_bafac']<> 0)  then
     begin
     BonFacAGestionF.RemisePerctageBonFacAGEdt.Text :=     CurrToStrF(MainForm.Bona_facTable.FieldValues['RemisePerc'], ffNumber, 2);
     BonFacAGestionF.RemiseBonFacAGEdt.Text :=       CurrToStrF(MainForm.Bona_facTable.FieldValues['remise_bafac'], ffNumber, 2);

     end;

    BonFacAGestionF.BonFacATotalHTLbl.Caption :=    CurrToStrF(MainForm.Bona_facTable.FieldValues['montht_bafac'], ffNumber, 2);

    BonFacAGestionF.BonFacATotalTVALbl.Caption :=   CurrToStrF(MainForm.Bona_facTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonFacAGestionF.BonFacATotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bona_facTable.FieldValues['montttc_bafac'], ffNumber, 2);
    BonFacAGestionF.BonFacARegleLbl.Caption :=      CurrToStrF(MainForm.Bona_facTable.FieldValues['montver_bafac'], ffNumber, 2);
    BonFacAGestionF.BonFacAResteLbl.Caption :=      CurrToStrF(MainForm.Bona_facTable.FieldValues['MontantRes'], ffNumber, 2);

       if MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean = True then
       begin
        FSplashVersement.DisableBonFacA;
       end else
           begin
            BonFacAGestionF.EnableBonFacA;
            BonFacAGestionF.ProduitBonFacAGCbx.TabOrder:=0;
           end;
      BonFacAGestionF.Tag:= 1;
       MainForm.Bona_fac_listTable.Refresh;
      BonFacAGestionF.ShowModal;

    finally
      FreeAndNil(BonFacAGestionF);
    end;

  end else
     begin
       AddBAFacBtnClick(Sender);
     end;

 end;

end;

procedure TBonFacAF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=5;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Escpace;
if sImage6.Visible = True  then 
 begin
  MainForm.Bona_FacTable.Filtered:= False;
  if RegleFilterBVLivPMenu.Checked then
  begin
   Select_Regle;
  end;
   if NoTRegleFilterBVLivPMenu.Checked then
  begin
   Select_NOT_Regle; 
  end;
 end;
end;

procedure TBonFacAF.DeleteBAFacBtnClick(Sender: TObject);
begin
 if NOT (MainForm.Bona_facTable.IsEmpty) then
 begin
    if  (MainForm.Bona_facTable.FieldByName('valider_bafac').AsBoolean <> True ) then
    begin
    MainForm.Bona_fac_listTable.Active:=True;

  if NOT (MainForm.Bona_fac_listTable.IsEmpty) then
   begin

      FSplashAddUnite:=TFSplashAddUnite.Create(BonFacAF);
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
      FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'les piéces de vente sèlèctionnèes? ';
      FSplashAddUnite.NameAddUniteSLbl.Top:= (FSplashAddUnite.Panel1.Height) + 10 ;
      FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
      FSplashAddUnite.Image1.Visible:=True;
      FSplashAddUnite.Image1.Top:= (FSplashAddUnite.Height div 2) - (FSplashAddUnite.Image1.Height div 2 ) ;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Facture d''Achat';
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:=clWhite;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Height:=22;
      FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
      FSplashAddUnite.NameAddUniteSEdt.Visible:=False;
      FSplashAddUnite.RequiredStarAddUniteSLbl.Visible:=False;
      FSplashAddUnite.NameAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.NameAddUniteSLbl.Width div 2) + (FSplashAddUnite.Image1.Width div 2);
      FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
      FSplashAddUnite.Top:=   MainForm.Top + 5;

      AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
      FSplashAddUnite.Show;
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 16 ;
     end
      else
      begin
              MainForm.Bona_facTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(BonFacAF);
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

        sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
        NormalForms;
      end;
       end else
           begin
             sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
//             TTask.Run ( procedure
//             begin
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
//             end);
           end;

 end;
end;

procedure TBonFacAF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'liste des FA';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BAFacListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;


//MainForm.Bona_facTable.DisableControls;
//
//    GettingData;
//
//BonFacAfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'liste des FA';
//BonFacAfrxRprt.Export(frxXLSExport1);
//
//MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Bona_facTable.DisableControls;

    GettingData;

BonFacAfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des FA';
BonFacAfrxRprt.Export(frxPDFExport1);


MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Bona_facTable.DisableControls;

   GettingData;

  BonFacAfrxRprt.PrepareReport;
  BonFacAfrxRprt.ShowReport;

  MainForm.Bona_facTable.EnableControls;
end;

procedure TBonFacAF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonFacAF.Active = True)  AND  (Assigned(BonFacAGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBAFacBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBAFacBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBAFacBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonFacAF.Active = True)  AND (BonFacAGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBAFacBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBAFacBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBAFacBtnClick(Screen);
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

procedure TBonFacAF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=7;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= False;
FilteredColor;
Select_Valid_ATerme;
  if sImage6.Visible = True then
   begin
   MainForm.Bona_FacTable.Filtered:= False;
    if RegleFilterBVLivPMenu.Checked then
    begin
     
     Select_Regle; 
     
    end;
     if NoTRegleFilterBVLivPMenu.Checked then
    begin
     Select_NOT_Regle; 
    end;
  end;
end;

procedure TBonFacAF.BAFacListDBGridEhDblClick(Sender: TObject);
begin
if BAFacListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonFacAF.EditBAFacBtnClick(Sender) ;
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

procedure TBonFacAF.BAFacListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
// HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBAFacEdt.Text,State);
end;

procedure TBonFacAF.BAFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BAFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBAFacBtnClick(Sender) ;
  end else exit
end;

procedure TBonFacAF.BAFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBAFacBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBAFacEdt.SetFocus;
  if not BAFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBAFacBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBAFacBtnClick(Sender);
  end else Exit;
end;

procedure TBonFacAF.BAFacListDBGridEhSortMarkingChanged(Sender: TObject);
begin
    BAFacListDBGridEh.DefaultApplySorting;
end;

procedure TBonFacAF.BAFacListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
    MainForm.Bona_facTable.IndexesActive:= False;
end;

procedure TBonFacAF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=6;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Cheque;

  if sImage6.Visible = True then
   begin
   MainForm.Bona_FacTable.Filtered:= False;
    if RegleFilterBVLivPMenu.Checked then
    begin
     Select_Regle; 
    end;
     if NoTRegleFilterBVLivPMenu.Checked then
    begin
     Select_NOT_Regle; 
    end;
  end;
end;

procedure TBonFacAF.ClearFilterBVLivPMenuClick(Sender: TObject);
begin
sImage1.Visible:= False;
sImage2.Visible:= False;
sImage6.Visible:= False;
F1.Enabled:= True;
FilterBVLivBtn.ImageIndex:=49;
NOT_FilteredColor;
ClearValideFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearFilterBVLivPMenu.Checked:= True;
ClearRegleFilterBVLivPMenu.Checked:= True;
MainForm.Bona_FacTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonFacAF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
begin
 sImage2.Visible:= False;
 RegleFilterBVLivPMenu.Enabled:= True;

 if sImage6.Visible = False then
 begin
  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex := 50;
 end else
  begin
    if sImage6.ImageIndex = 9 then
    begin
     FilteredColor;
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bona_FacTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bona_FacTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonFacAF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 MainForm.Bona_FacTable.Filtered:=False; 
 //Select_ALL;
 sImage1.Visible:= False;
 sImage6.Visible:= False;
 F1.Enabled:= True;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
 if sImage2.Visible = False then
 begin
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=50;
 end else
  begin
    if sImage2.ImageIndex = 5 then
    begin
    FilterBVLivBtn.ImageIndex:=49;
     Select_NOT_Valid_Escpace;
    end;
      if sImage2.ImageIndex = 6 then
    begin
    FilterBVLivBtn.ImageIndex:=49;
    Select_NOT_Valid_Cheque;
    end;
      if sImage2.ImageIndex = 7 then
    begin
    FilterBVLivBtn.ImageIndex:=49;
    Select_NOT_Valid_ATerme;
    end;
      if sImage2.ImageIndex = 8 then
    begin
    FilterBVLivBtn.ImageIndex:=49;
    Select_NOT_Valid_Virment;
    end;  
  end;  
   if sImage1.Visible = False then
 begin
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=50;
  MainForm.Bona_FacTable.Filtered := false;
  Select_ALL;
  
  end  else
  begin
      if sImage1.ImageIndex = 3 then
    begin
    FilteredColor;
    FilterBVLivBtn.ImageIndex:=49;
    Select_Valid;
    end;
      if sImage1.ImageIndex = 4 then
    begin
    FilteredColor;
    FilterBVLivBtn.ImageIndex:=49;
    Select_NOT_Valid;
    end; 
  end;
end;

procedure TBonFacAF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
begin
  if (sImage2.Visible = False)  then
  begin
  FilterBVLivBtn.ImageIndex:=50;
  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  end else
  begin
   if sImage2.ImageIndex = 5 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
   Select_NOT_Valid_Escpace;
  end;
    if sImage2.ImageIndex = 6 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
  Select_NOT_Valid_Cheque;
  end;
    if sImage2.ImageIndex = 7 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
  Select_NOT_Valid_ATerme;
  end;
    if sImage2.ImageIndex = 8 then
  begin
  FilterBVLivBtn.ImageIndex:=49;
  Select_NOT_Valid_Virment;
  end;
  end;
end;

procedure TBonFacAF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonFacAfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBAFacD.Date) + ' au ' + DateToStr(DateEndBAFacD.Date) ;

    Agent:= BonFacAfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonFacAF.SumGirdBAFacBtnClick(Sender: TObject);
begin
  if SumGirdBAFacBtn.Tag = 0 then
  begin
    BAFacListDBGridEh.FooterRowCount:=1;
    SumGirdBAFacBtn.Tag := 1;
  end else
      begin
        BAFacListDBGridEh.FooterRowCount:=0;
        SumGirdBAFacBtn.Tag := 0;
      end;
end;

procedure TBonFacAF.ValideFilterBVLivPMenuClick(Sender: TObject);
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
    if sImage2.ImageIndex = 5 then
    begin
     Select_Valid_Escpace;
    end;
      if sImage2.ImageIndex = 6 then
    begin
    Select_Valid_Cheque;
    end;
      if sImage2.ImageIndex = 7 then
    begin
    Select_Valid_ATerme;
    end;
      if sImage2.ImageIndex = 8 then
    begin
    Select_Valid_Virment;
    end;
  end; 
end;

procedure TBonFacAF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=8;
sImage2.Visible:=True;
RegleFilterBVLivPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Virment;

  if sImage6.Visible = True then
   begin
   MainForm.Bona_FacTable.Filtered:= False;
    if RegleFilterBVLivPMenu.Checked then
    begin
     Select_Regle; 
    end;
     if NoTRegleFilterBVLivPMenu.Checked then
    begin
     Select_NOT_Regle; 
    end;
  end;
end;

procedure TBonFacAF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(BAFacListDBGridEh,GetCurrentDir +'\bin\gc_fcalst');

 FreeAndNil(BonFacAF);
end;

procedure TBonFacAF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_fcalst') then
   begin

    MainForm.LoadGridLayout(BAFacListDBGridEh,GetCurrentDir +'\bin\gc_fcalst');
   end;
end;

procedure TBonFacAF.FormPaint(Sender: TObject);
begin
  MainForm.FournisseurTable.DisableControls;
  MainForm.FournisseurTable.Active:=False;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
  MainForm.FournisseurTable.Active:=True;
  MainForm.FournisseurTable.EnableControls;


    if MainForm.totaux_ur.Checked then
      begin

       SumGirdBAFacBtn.Enabled:= True;

      end else
      begin

       SumGirdBAFacBtn.Enabled:= False;

      end;
end;

end.
