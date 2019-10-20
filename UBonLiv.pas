unit UBonLiv;

interface

uses
  Winapi.Windows,MMSystem,  Winapi.Messages,DBGridEhImpExp,ShellAPI,
  EhLibFireDAC,
   System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, System.DateUtils, frxClass, frxDBSet, frxExportPDF, frxExportXLS, Vcl.Menus,
  acImage, sStatusBar ,IniFiles, Vcl.AppEvnts, frxExportBaseDialog
  ;


const
  SETTINGS_FILE = 'Edijus\Settings.ini';

type
  TBonLivF = class(TForm)
    TopP: TPanel;
    EditBVLivBtn: TAdvToolButton;
    DeleteBVLivBtn: TAdvToolButton;
    AddBVLivBtn: TAdvToolButton;
    ResearchBALivLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBVLivEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVLivD: TDateTimePicker;
    DateStartBVLivD: TDateTimePicker;
    Panel3: TPanel;
    BVLivListDBGridEh: TDBGridEh;
    ResherchBVLNumBRdioBtn: TRadioButton;
    ResherchBVLClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxBonLivDB: TfrxDBDataset;
    BonLivfrxRprt: TfrxReport;
    FilterBVLivBtn: TAdvToolButton;
    FilterBVLivPMenu: TPopupMenu;
    F1: TMenuItem;
    F2: TMenuItem;
    ValideFilterBVLivPMenu: TMenuItem;
    NotValideFilterBVLivPMenu: TMenuItem;
    N2: TMenuItem;
    ClearValideFilterBVLivPMenu: TMenuItem;
    EspeceMPFilterBVLivPMenu: TMenuItem;
    ChequeMPFilterBVLivPMenu: TMenuItem;
    ATermeMPFilterBVLivPMenu: TMenuItem;
    VirmentMPFilterBVLivPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVLivPMenu: TMenuItem;
    LastBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    sImage1: TsImage;
    sImage2: TsImage;
    F3: TMenuItem;
    NoTRegleFilterBVLivPMenu: TMenuItem;
    N1: TMenuItem;
    ClearRegleFilterBVLivPMenu: TMenuItem;
    RegleFilterBVLivPMenu: TMenuItem;
    sImage6: TsImage;
    StatuBar: TsStatusBar;
    SumGirdBBVlivBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    S01: TPanel;
    Panel1: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    ApplicationEvents1: TApplicationEvents;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ProduitListSaveDg: TSaveDialog;
    procedure ResearchBVLivEdtChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure AddBVLivBtnClick(Sender: TObject);
    procedure DeleteBVLivBtnClick(Sender: TObject);
    procedure EditBVLivBtnClick(Sender: TObject);
    procedure BVLivListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DateStartBVLivDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BVLivListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVLivListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVLivListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure RegleFilterBVLivPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ATermeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure VirmentMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVLivPMenuClick(Sender: TObject);
    procedure BVLivListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure SumGirdBBVlivBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBVLivEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ResearchBVLivEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVLivListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
  private
    procedure GettingData;
    procedure Select_ALL;
    procedure Select_Valid;
    procedure Select_NOT_Valid;
    procedure Select_Escpace;
    procedure Select_Cheque;
    procedure Select_ATerme;
    procedure Select_Virment;
    procedure Select_Valid_ATerme;
    procedure Select_Valid_Cheque;
    procedure Select_Valid_Escpace;
    procedure Select_Valid_Virment;
    procedure Select_NOT_Valid_ATerme;
    procedure Select_NOT_Valid_Cheque;
    procedure Select_NOT_Valid_Escpace;
    procedure Select_NOT_Valid_Virment;
    procedure Select_NOT_Regle;
    procedure Select_Regle;
    procedure FilteredColor;
    procedure NOT_FilteredColor;
    { Private declarations }
  public
    { Public declarations }
    const BLSQL= 'SELECT *, '
    +'   ((montttc_bvliv)-(montht_bvliv - remise_bvliv)) AS MontantTVA,  '
    +'   (montttc_bvliv - montver_bvliv) AS MontantRes, '
    +'  CASE '
    +'     WHEN remise_bvliv <> ''0'' AND montht_bvliv <> ''0'' THEN  ROUND( CAST (((remise_bvliv / montht_bvliv) * 100) as NUMERIC),2) '
    +'     ELSE ''0'' '                                                                                                                
    +'  END AS RemisePerc,  '                                                                                                       
    +'   (montht_bvliv - remise_bvliv) AS NeTHT '
    +' FROM bonv_liv ' ;
  end;

var
  BonLivF: TBonLivF;

implementation

uses
  UMainF, UBonLivGestion, USplashAddUnite,  UClientGestion, USplash,Threading,
  USplashVersement, UProduitsList;

{$R *.dfm}

//-------------Filtring procedures-----------------//

procedure TBonLivF.Select_ALL;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Valid;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = true AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_NOT_Valid;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = false AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Escpace;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE code_mdpai = 1 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Cheque;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE code_mdpai = 2 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_ATerme;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE code_mdpai = 3 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Virment;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE code_mdpai = 4 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Valid_Escpace;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = true AND code_mdpai = 1 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Valid_Cheque;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = true AND code_mdpai = 2 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Valid_ATerme;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = true AND code_mdpai = 3 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Valid_Virment;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = true AND code_mdpai = 4 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_NOT_Valid_Escpace;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = false AND code_mdpai = 1';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_NOT_Valid_Cheque;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = false AND code_mdpai = 2 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_NOT_Valid_ATerme;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = false AND code_mdpai = 3 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_NOT_Valid_Virment;
begin
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE valider_bvliv = false AND code_mdpai = 4 AND date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.Select_Regle;
begin
  MainForm.Bonv_livTable.Filtered := False;
  MainForm.Bonv_livTable.Filter:='MontantRes <= 0 ';
  MainForm.Bonv_livTable.Filtered:=True;
  MainForm.Bonv_livTable.First;
end;

procedure TBonLivF.Select_NOT_Regle;
begin
  MainForm.Bonv_livTable.Filtered := False;
  MainForm.Bonv_livTable.Filter:='MontantRes > 0 ';
  MainForm.Bonv_livTable.Filtered:=True;
  MainForm.Bonv_livTable.First;
end;

procedure TBonLivF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonLivF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;


procedure TBonLivF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Close;
MainForm.Bonv_livTable.Open;
end;

procedure TBonLivF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 MainForm.Bonv_livTable.Filtered:= False;
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

procedure TBonLivF.ResearchBVLivEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVLIVEdt.Text<>'' then
    begin

          if ResherchBVlClientRdioBtn.Checked then
          begin
          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:= BLSQL +' WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVLIVEdt.Text)+'%'+''')' +')';
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;

          end;

          if ResherchBVLNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:= BLSQL +' WHERE LOWER(num_bvliv) LIKE LOWER' +'('''+'%'+(ResearchBVLIVEdt.Text)+'%'+''')' ;
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:= BLSQL ;
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;

     end;
end;

procedure TBonLivF.ResearchBVLivEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.Bonv_livTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.Bonv_livTable.Prior;
  end;
end;

procedure TBonLivF.ResearchBVLivEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBVLivEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;

 //----------- Searching in databese-------------------//

    if ResearchBVLIVEdt.Text<>'' then
    begin

          if ResherchBVlClientRdioBtn.Checked then
          begin
          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:= BLSQL +' WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+(ResearchBVLIVEdt.Text+'%')+''')' +')';
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;

          end;

          if ResherchBVLNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:= BLSQL +' WHERE LOWER(num_bvliv) LIKE LOWER' +'('''+(ResearchBVLIVEdt.Text+'%')+''')' ;
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_livTable.DisableControls;
          MainForm.Bonv_livTable.Active:=False;
          MainForm.Bonv_livTable.SQL.Clear;
          MainForm.Bonv_livTable.SQL.Text:= BLSQL ;
          MainForm.Bonv_livTable.Active:=True;
          MainForm.Bonv_livTable.EnableControls;

     end;
end;

end;

procedure TBonLivF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.First;
end;

procedure TBonLivF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Prior;
end;

procedure TBonLivF.NextBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Next;
end;

procedure TBonLivF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
MainForm.Bonv_livTable.Filtered:= False;
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

procedure TBonLivF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonLivF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_livTable.Last;
end;

procedure TBonLivF.AddBVLivBtnClick(Sender: TObject);
var
  codeBL : integer;

begin
ClearFilterBVLivPMenuClick(Sender);

 if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;

MainForm.Bonv_liv_listTable.Active:= False;
MainForm.Bonv_liv_listTable.IndexFieldNames:='';
MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL + ' ORDER By code_bvliv ';
MainForm.Bonv_livTable.Active:= True;
//MainForm.Bonv_livTable.EnableControls;


ResearchBVLivEdt.Text:='';

codeBL:= 0;
// if not Assigned (BonLivGestionF) then
    BonLivGestionF := TBonLivGestionF.Create(nil);
    try
     if MainForm.Bonv_livTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_livTable.Insert;
        MainForm.Bonv_livTable.FieldValues['code_bvliv']:=1;
        MainForm.Bonv_livTable.FieldValues['num_bvliv']:= 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
        MainForm.Bonv_livTable.FieldValues['time_bvliv']:=TimeOf(Now);
        MainForm.Bonv_livTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bonv_livTable.Post;
        codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
      end else
          begin
            MainForm.Bonv_livTable.Last;
            codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
            MainForm.SQLQuery.Active:=False;    // if soemthig went wrong change it  back to Bonv_liv_listTable
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_bvliv FROM bonv_liv_list WHERE code_bvliv = ' + IntToStr(codeBL);
            MainForm.SQLQuery.Active:=True;

           if MainForm.SQLQuery.RecNo <= 0 then
           begin
        //   MainForm.Bonv_livTable.Last;
           codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_livTable.Edit;
             MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
             MainForm.Bonv_livTable.FieldValues['time_bvliv']:= TimeOf(Now);
             MainForm.Bonv_livTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             MainForm.Bonv_livTable.Post;
           end else
           begin
        //   MainForm.Bonv_livTable.Last;
          // codeBL := MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_livTable.Insert;
             MainForm.Bonv_livTable.FieldValues['code_bvliv']:= codeBL + 1;
             MainForm.Bonv_livTable.FieldValues['num_bvliv']:=  'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBL + 1)]);
             MainForm.Bonv_livTable.FieldValues['date_bvliv']:= DateOf(Today);
             MainForm.Bonv_livTable.FieldValues['time_bvliv']:= TimeOf(Now);
             MainForm.Bonv_livTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             MainForm.Bonv_livTable.Post;


           end;
            BonLivGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

      MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';
      MainForm.Bonv_liv_listTable.Active:=False;
      MainForm.Bonv_liv_listTable.SQL.Clear;
      MainForm.Bonv_liv_listTable.SQL.Text:= BonLivGestionF.BLLSQL;
      MainForm.Bonv_liv_listTable.Active:=True;

       MainForm.SQLQuery.Active:=False;
       MainForm.SQLQuery.SQL.Clear;

//MainForm.Bonv_liv_listTable.Refresh;
       BonLivGestionF.Tag:= 0;
       BonLivGestionF.ShowModal;

    finally
//      BonLivGestionF.Free;

      FreeAndNil(BonLivGestionF);

    end;


//       MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.Last;
MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.DeleteBVLivBtnClick(Sender: TObject);
begin
if NOT (MainForm.Bonv_livTable.IsEmpty) then
 begin
  if  (MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean <> True ) then
    begin
   MainForm.Bonv_liv_listTable.Active:=True;

    if NOT (MainForm.Bonv_liv_listTable.IsEmpty) then
     begin

           FSplashAddUnite:=TFSplashAddUnite.Create(BonLivF);
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
        FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Bon';
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
        FSplashAddUnite.OKAddUniteSBtn.Tag:= 9 ;
       end
        else
        begin
                MainForm.Bonv_livTable.Delete ;
          GrayForms;
          FSplash := TFSplash.Create(BonLivF);
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

  end  else
     begin
       sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
//       TTask.Run ( procedure
//       begin
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
//       end);
     end;

 end;
end;

procedure TBonLivF.EditBVLivBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (MainForm.Bonv_livTable.IsEmpty) Then
 begin
      if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;

   MainForm.Bonv_liv_listTable.Active := True;
     if NOT (MainForm.Bonv_liv_listTable.IsEmpty) then
    begin
     MainForm.Bonv_liv_listTable.Active := False;
     MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';

    BonLivGestionF := TBonLivGestionF.Create(nil);
    try
       MainForm.Bonv_liv_listTable.Active := True;
       BonLivGestionF.NumBonLivGEdt.Caption := MainForm.Bonv_livTable.FieldByName('num_bvliv').AsString;
       BonLivGestionF.DateBonLivGD.Date:= MainForm.Bonv_livTable.FieldValues['date_bvliv'];
       BonLivGestionF.ObserBonLivGMem.Lines.Text := MainForm.Bonv_livTable.FieldByName('obser_bvliv').AsString;
       if (MainForm.Bonv_livTable.FieldValues['code_c']<> null) and (MainForm.Bonv_livTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=MainForm.Bonv_livTable.FieldValues['code_c'];
       BonLivGestionF.ClientBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldValues['clientbvliv'];

        end;

       if (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bonv_livTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeC:=MainForm.Bonv_livTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeC ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonLivGestionF.ModePaieBonLivGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bonv_livTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeC:=MainForm.Bonv_livTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeC ) ) ;
         MainForm.CompteTable.Active:=True;
         BonLivGestionF.CompteBonLivGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if (MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv']<> null)  then
       begin
        BonLivGestionF.NChequeBonLivGCbx.Text:= MainForm.Bonv_livTable.FieldValues['num_cheque_bvliv'];

       end;


     if (MainForm.Bonv_livTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bonv_livTable.FieldValues['remise_bvliv']<> 0) then
     begin
     BonLivGestionF.RemisePerctageBonLivGEdt.Text :=     CurrToStrF(MainForm.Bonv_livTable.FieldValues['RemisePerc'], ffNumber, 2);
      BonLivGestionF.RemiseBonLivGEdt.Text :=     CurrToStrF(MainForm.Bonv_livTable.FieldValues['remise_bvliv'], ffNumber, 2);
     end;

       if (MainForm.Bonv_livTable.FieldValues['montht_bvliv']<> null) then
       begin
      BonLivGestionF.BonLivTotalHTLbl.Caption :=    CurrToStrF(MainForm.Bonv_livTable.FieldValues['montht_bvliv'], ffNumber, 2);
       end;
      if (MainForm.Bonv_livTable.FieldValues['MontantTVA']<> null) then
       begin
      BonLivGestionF.BonLivTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bonv_livTable.FieldValues['MontantTVA'], ffNumber, 2);
       end;
       if (MainForm.Bonv_livTable.FieldValues['montttc_bvliv']<> null) then
       begin
      BonLivGestionF.BonLivTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonv_livTable.FieldValues['montttc_bvliv'], ffNumber, 2);
       end;
       if (MainForm.Bonv_livTable.FieldValues['montver_bvliv']<> null) then
       begin
      BonLivGestionF.BonLivRegleLbl.Caption :=      CurrToStrF(MainForm.Bonv_livTable.FieldValues['montver_bvliv'], ffNumber, 2);
       end;
       if (MainForm.Bonv_livTable.FieldValues['MontantRes']<> null) then
       begin
      BonLivGestionF.BonLivResteLbl.Caption :=      CurrToStrF(MainForm.Bonv_livTable.FieldValues['MontantRes'], ffNumber, 2);
       end;



       if MainForm.Bonv_livTable.FieldByName('valider_bvliv').AsBoolean = True then
       begin
        FSplashVersement.DisableBonLiv;
       end else
           begin
            BonLivGestionF.EnableBonLiv;
            BonLivGestionF.ProduitBonLivGCbx.TabOrder:=0;

           end;
      BonLivGestionF.Tag:= 1;
      MainForm.Bonv_liv_listTable.Refresh;
      BonLivGestionF.ShowModal;




    finally
      FreeAndNil(BonLivGestionF);
    end;

  end else
     begin
       AddBVLivBtnClick(Sender);
     end;

 end;
end;

procedure TBonLivF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  MainForm.Bonv_livTable.Filtered:= False;
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

procedure TBonLivF.BVLivListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if gdSelected in State then
begin
   BVLivListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.Bonv_livTable.FieldValues['MontantRes'] > 0)    then
 begin
 BVLivListDBGridEh.Canvas.Font.Color:=$004735F9;
 BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (MainForm.Bonv_livTable.FieldValues['MontantRes'] < 0)    then
 begin
 BVLivListDBGridEh.Canvas.Font.Color:=$00519509;
 BVLivListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBVLivEdt.Text,State);
end;

procedure TBonLivF.BVLivListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVLivListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVLivBtnClick(Sender) ;
  end else exit
end;

procedure TBonLivF.BVLivListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBVLivBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBVLivEdt.SetFocus;
  if not BVLivListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBVLivBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBVLivBtnClick(Sender);
  end else Exit;
end;

procedure TBonLivF.BVLivListDBGridEhSortMarkingChanged(Sender: TObject);
begin
BVLivListDBGridEh.DefaultApplySorting;
end;

procedure TBonLivF.BVLivListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
    MainForm.Bonv_livTable.IndexesActive := false;
end;

procedure TBonLivF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_livTable.Filtered:= False;
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

procedure TBonLivF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
MainForm.Bonv_livTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonLivF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     MainForm.Bonv_livTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bonv_livTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;

end;

procedure TBonLivF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 MainForm.Bonv_livTable.Filtered:=False;
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
  MainForm.Bonv_livTable.Filtered := false;
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

procedure TBonLivF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonLivF.DateStartBVLivDChange(Sender: TObject);
begin
ClearFilterBVLivPMenuClick(Sender);

MainForm.Bonv_livTable.DisableControls;
MainForm.Bonv_livTable.Active:= False;
MainForm.Bonv_livTable.SQL.clear;
mainform.Bonv_livTable.sql.Text:= BLSQL +' WHERE date_bvliv BETWEEN '''+(DateToStr(DateStartBVLivD.Date))+ ''' AND ''' +(DateToStr(DateEndBVLivD.Date))+'''';
MainForm.Bonv_livTable.Active:= True;
MainForm.Bonv_livTable.EnableControls;
end;




procedure TBonLivF.FormShow(Sender: TObject);
begin
  DateStartBVLivD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVlivD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVlivDChange(Sender);




end;

procedure TBonLivF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonLivfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVLivD.Date) + ' au ' + DateToStr(DateEndBVLivD.Date) ;

      Agent:= BonLivfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonLivF.SumGirdBBVlivBtnClick(Sender: TObject);
begin
  if SumGirdBBVlivBtn.Tag = 0 then
  begin
    BVlivListDBGridEh.FooterRowCount:=1;
    SumGirdBBVlivBtn.Tag := 1;
  end else
      begin
        BVlivListDBGridEh.FooterRowCount:=0;
        SumGirdBBVlivBtn.Tag := 0;
      end;
end;

procedure TBonLivF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonLivF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_livTable.Filtered:= False;
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

procedure TBonLivF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'liste des BL';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BVLivListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.Bonv_livTable.DisableControls;
//
//    GettingData;
//
//BonLivfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'liste des BL';
//BonLivfrxRprt.Export(frxXLSExport1);
//
//MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Bonv_livTable.DisableControls;

    GettingData;

BonLivfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BL';
BonLivfrxRprt.Export(frxPDFExport1);


MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Bonv_livTable.DisableControls;

   GettingData;

  BonLivfrxRprt.PrepareReport;
  BonLivfrxRprt.ShowReport;

  MainForm.Bonv_livTable.EnableControls;
end;

procedure TBonLivF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonLivF.Active = True)  AND  (Assigned(BonLivGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBVLivBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBVLivBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBVLivBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonLivF.Active = True)  AND (BonLivGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBVLivBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBVLivBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBVLivBtnClick(Screen);
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

procedure TBonLivF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_livTable.Filtered:= False;
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

procedure TBonLivF.BVLivListDBGridEhDblClick(Sender: TObject);
begin
if BVLivListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonLivF.EditBVLivBtnClick(Sender) ;
end;
end;

procedure TBonLivF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  MainForm.SaveGridLayout(BVLivListDBGridEh,GetCurrentDir +'\bin\gc_bllst');

  FreeAndNil(BonLivF);

end;

procedure TBonLivF.FormCreate(Sender: TObject);
begin
   if FileExists(GetCurrentDir +'\bin\gc_bllst') then
   begin

    MainForm.LoadGridLayout(BVLivListDBGridEh,GetCurrentDir +'\bin\gc_bllst');
   end;

end;

procedure TBonLivF.FormPaint(Sender: TObject);
begin
        MainForm.ClientTable.DisableControls;
        MainForm.ClientTable.Active:=False;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;


      if MainForm.totaux_ur.Checked then
      begin

       SumGirdBBVlivBtn.Enabled:= True;

      end else
      begin

       SumGirdBBVlivBtn.Enabled:= False;

      end;


      if MainForm.viewprixa_ur.Checked then
      begin

          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].Visible:= true;
          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].MinWidth:= 150;
          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].Width:= 150;
          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].MaxWidth:= 0;

      end else
      begin

          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].Visible:= false;
          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].MinWidth:= 0;
          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].Width:= 0;
          BVLivListDBGridEh.FieldColumns['montaht_bvliv'].MaxWidth:= 1;

      end;
end;

end.

