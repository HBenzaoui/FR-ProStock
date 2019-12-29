unit UBonComV;

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
  acImage, sStatusBar ,IniFiles, Vcl.AppEvnts, frxExportBaseDialog, UDataModule ;


const
  SETTINGS_FILE = 'Edijus\Settings.ini';

type
  TBonComVF = class(TForm)
    TopP: TPanel;
    EditBVComBtn: TAdvToolButton;
    DeleteBVComBtn: TAdvToolButton;
    AddBVComBtn: TAdvToolButton;
    ResearchBVComLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBVComEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVComD: TDateTimePicker;
    DateStartBVComD: TDateTimePicker;
    Panel3: TPanel;
    BVComListDBGridEh: TDBGridEh;
    ResherchBVLNumBRdioBtn: TRadioButton;
    ResherchBVLClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxBonComVDB: TfrxDBDataset;
    BonComVfrxRprt: TfrxReport;
    FilterBVComBtn: TAdvToolButton;
    FilterBVComPMenu: TPopupMenu;
    F1: TMenuItem;
    F2: TMenuItem;
    ValideFilterBVComPMenu: TMenuItem;
    NotValideFilterBVComPMenu: TMenuItem;
    N2: TMenuItem;
    ClearValideFilterBVComPMenu: TMenuItem;
    EspeceMPFilterBVComPMenu: TMenuItem;
    ChequeMPFilterBVComPMenu: TMenuItem;
    ATermeMPFilterBVComPMenu: TMenuItem;
    VirmentMPFilterBVComPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVComPMenu: TMenuItem;
    LastBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
    N5: TMenuItem;
    ClearFilterBVComPMenu: TMenuItem;
    sImage1: TsImage;
    sImage2: TsImage;
    F3: TMenuItem;
    NoTRegleFilterBVComPMenu: TMenuItem;
    N1: TMenuItem;
    ClearRegleFilterBVComPMenu: TMenuItem;
    RegleFilterBVComPMenu: TMenuItem;
    sImage6: TsImage;
    StatuBar: TsStatusBar;
    SumGirdBVComBtn: TAdvToolButton;
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
    procedure ResearchBVComEdtChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure AddBVComBtnClick(Sender: TObject);
    procedure DeleteBVComBtnClick(Sender: TObject);
    procedure EditBVComBtnClick(Sender: TObject);
    procedure BVComListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DateStartBVComDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BVComListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVComListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVComListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ValideFilterBVComPMenuClick(Sender: TObject);
    procedure NotValideFilterBVComPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVComPMenuClick(Sender: TObject);
    procedure ClearFilterBVComPMenuClick(Sender: TObject);
    procedure RegleFilterBVComPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVComPMenuClick(Sender: TObject);
    procedure ClearRegleFilterBVComPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVComPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVComPMenuClick(Sender: TObject);
    procedure ATermeMPFilterBVComPMenuClick(Sender: TObject);
    procedure VirmentMPFilterBVComPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVComPMenuClick(Sender: TObject);
    procedure BVComListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure SumGirdBVComBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBVComEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ResearchBVComEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVComListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
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
    const BCVSQL= 'SELECT *, '
    +'   ((montttc_bvcom)-(montht_bvcom - remise_bvcom)) AS MontantTVA,  '
    +'   (montttc_bvcom - montver_bvcom) AS MontantRes, '
    +'  CASE '
    +'     WHEN remise_bvcom <> ''0'' AND montht_bvcom <> ''0'' THEN  ROUND( CAST (((remise_bvcom / montht_bvcom) * 100) as NUMERIC),2) '
    +'     ELSE ''0'' '                                                                                                                
    +'  END AS RemisePerc,  '                                                                                                       
    +'   (montht_bvcom - remise_bvcom) AS NeTHT '
    +' FROM bonv_com' ;
  end;

var
  BonComVF: TBonComVF;

implementation

uses
  UMainF, UBonComVGestion, USplashAddUnite,  UClientGestion, USplash,Threading,
  USplashVersement, UProduitsList;

{$R *.dfm}

//-------------Filtring procedures-----------------//

procedure TBonComVF.Select_ALL;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Valid;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = true AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_NOT_Valid;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = false AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Escpace;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE code_mdpai = 1 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Cheque;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE code_mdpai = 2 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_ATerme;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE code_mdpai = 3 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Virment;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE code_mdpai = 4 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Valid_Escpace;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = true AND code_mdpai = 1 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Valid_Cheque;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = true AND code_mdpai = 2 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Valid_ATerme;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = true AND code_mdpai = 3 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Valid_Virment;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = true AND code_mdpai = 4 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_NOT_Valid_Escpace;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = false AND code_mdpai = 1';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_NOT_Valid_Cheque;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = false AND code_mdpai = 2 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_NOT_Valid_ATerme;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = false AND code_mdpai = 3 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_NOT_Valid_Virment;
begin
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE valider_bvcom = false AND code_mdpai = 4 AND date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.Select_Regle;
begin
  DataModuleF.Bonv_comTable.Filtered := False;
  DataModuleF.Bonv_comTable.Filter:='MontantRes <= 0 ';
  DataModuleF.Bonv_comTable.Filtered:=True;
  DataModuleF.Bonv_comTable.First;
end;

procedure TBonComVF.Select_NOT_Regle;
begin
  DataModuleF.Bonv_comTable.Filtered := False;
  DataModuleF.Bonv_comTable.Filter:='MontantRes > 0 ';
  DataModuleF.Bonv_comTable.Filtered:=True;
  DataModuleF.Bonv_comTable.First;
end;

procedure TBonComVF.FilteredColor;
begin
 FilterBVComBtn.Color:= $0077D90E; 
 FilterBVComBtn.ColorHot:=  $0080FF00;
 FilterBVComBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonComVF.NOT_FilteredColor;
begin
 FilterBVComBtn.Color:= $00EFE9E8;
 FilterBVComBtn.ColorHot:= $00EFE9E8; 
 FilterBVComBtn.BorderHotColor:= $004735F9;
end;


procedure TBonComVF.RefreshGirdBtnClick(Sender: TObject);
begin
DataModuleF.Bonv_comTable.Close;
DataModuleF.Bonv_comTable.Open;
end;

procedure TBonComVF.RegleFilterBVComPMenuClick(Sender: TObject);
begin
 FilterBVComBtn.ImageIndex:=50;
 DataModuleF.Bonv_comTable.Filtered:= False;
 Select_Valid;
 Select_Regle;
 sImage1.ImageIndex:=3;
 sImage1.Visible:= True;
 sImage6.ImageIndex:=9;
 sImage6.Visible:=True;
 F1.Enabled:= False;
 FilteredColor;
 ATermeMPFilterBVComPMenu.Enabled:= False;
 ClearValideFilterBVComPMenu.Checked := True;

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

procedure TBonComVF.ResearchBVComEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVComEdt.Text<>'' then
    begin

          if ResherchBVlClientRdioBtn.Checked then
          begin
          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Active:=False;
          DataModuleF.Bonv_comTable.SQL.Clear;
          DataModuleF.Bonv_comTable.SQL.Text:= BCVSQL +' WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVComEdt.Text)+'%'+''')' +')';
          DataModuleF.Bonv_comTable.Active:=True;
          DataModuleF.Bonv_comTable.EnableControls;

          end;

          if ResherchBVLNumBRdioBtn.Checked then
          begin
          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Active:=False;
          DataModuleF.Bonv_comTable.SQL.Clear;
          DataModuleF.Bonv_comTable.SQL.Text:= BCVSQL +' WHERE LOWER(num_bvcom) LIKE LOWER' +'('''+'%'+(ResearchBVComEdt.Text)+'%'+''')' ;
          DataModuleF.Bonv_comTable.Active:=True;
          DataModuleF.Bonv_comTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Active:=False;
          DataModuleF.Bonv_comTable.SQL.Clear;
          DataModuleF.Bonv_comTable.SQL.Text:= BCVSQL ;
          DataModuleF.Bonv_comTable.Active:=True;
          DataModuleF.Bonv_comTable.EnableControls;

     end;
end;

procedure TBonComVF.ResearchBVComEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     DataModuleF.Bonv_comTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     DataModuleF.Bonv_comTable.Prior;
  end;
end;

procedure TBonComVF.ResearchBVComEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBVComEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;

 //----------- Searching in databese-------------------//

    if ResearchBVComEdt.Text<>'' then
    begin

          if ResherchBVlClientRdioBtn.Checked then
          begin
          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Active:=False;
          DataModuleF.Bonv_comTable.SQL.Clear;
          DataModuleF.Bonv_comTable.SQL.Text:= BCVSQL +' WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+(ResearchBVComEdt.Text+'%')+''')' +')';
          DataModuleF.Bonv_comTable.Active:=True;
          DataModuleF.Bonv_comTable.EnableControls;

          end;

          if ResherchBVLNumBRdioBtn.Checked then
          begin
          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Active:=False;
          DataModuleF.Bonv_comTable.SQL.Clear;
          DataModuleF.Bonv_comTable.SQL.Text:= BCVSQL +' WHERE LOWER(num_bvcom) LIKE LOWER' +'('''+(ResearchBVComEdt.Text+'%')+''')' ;
          DataModuleF.Bonv_comTable.Active:=True;
          DataModuleF.Bonv_comTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          DataModuleF.Bonv_comTable.DisableControls;
          DataModuleF.Bonv_comTable.Active:=False;
          DataModuleF.Bonv_comTable.SQL.Clear;
          DataModuleF.Bonv_comTable.SQL.Text:= BCVSQL ;
          DataModuleF.Bonv_comTable.Active:=True;
          DataModuleF.Bonv_comTable.EnableControls;

     end;
end;

end;

procedure TBonComVF.FisrtBARecbtnClick(Sender: TObject);
begin
DataModuleF.Bonv_comTable.First;
end;

procedure TBonComVF.PreviosBARecbtnClick(Sender: TObject);
begin
DataModuleF.Bonv_comTable.Prior;
end;

procedure TBonComVF.NextBARecbtnClick(Sender: TObject);
begin
DataModuleF.Bonv_comTable.Next;
end;

procedure TBonComVF.NoTRegleFilterBVComPMenuClick(Sender: TObject);
begin
FilterBVComBtn.ImageIndex:=50;
DataModuleF.Bonv_comTable.Filtered:= False;
Select_Valid;
Select_NOT_Regle;
sImage1.ImageIndex:=3;
sImage1.Visible:= True;
sImage6.ImageIndex:=10;
sImage6.Visible:=True;
F1.Enabled:= False;
FilteredColor;
 ATermeMPFilterBVComPMenu.Enabled:= True;
 ClearValideFilterBVComPMenu.Checked := True;

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

procedure TBonComVF.NotValideFilterBVComPMenuClick(Sender: TObject);
begin
  sImage1.ImageIndex:=4;
  sImage1.Visible:= True;
  FilterBVComBtn.ImageIndex:=50;
  FilteredColor;
  ClearFilterBVComPMenu.Checked:= False;
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

procedure TBonComVF.LastBARecbtnClick(Sender: TObject);
begin
DataModuleF.Bonv_comTable.Last;
end;

procedure TBonComVF.AddBVComBtnClick(Sender: TObject);
var
  codeBL : integer;

begin
ClearFilterBVComPMenuClick(Sender);

 if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;

DataModuleF.Bonv_com_listTable.Active:= False;
DataModuleF.Bonv_com_listTable.IndexFieldNames:='';
DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL + ' ORDER By code_bvcom ';
DataModuleF.Bonv_comTable.Active:= True;
//DataModuleF.Bonv_comTable.EnableControls;


ResearchBVComEdt.Text:='';

codeBL:= 0;
// if not Assigned (BonComVGestionF) then
    BonComVGestionF := TBonComVGestionF.Create(nil);
    try
     if DataModuleF.Bonv_comTable.RecordCount <= 0 then
      begin

        DataModuleF.Bonv_comTable.Insert;
        DataModuleF.Bonv_comTable.FieldValues['code_bvcom']:=1;
        DataModuleF.Bonv_comTable.FieldValues['num_bvcom']:= 'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        DataModuleF.Bonv_comTable.FieldValues['date_bvcom']:= DateOf(Today);
        DataModuleF.Bonv_comTable.FieldValues['time_bvcom']:=TimeOf(Now);
        DataModuleF.Bonv_comTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        DataModuleF.Bonv_comTable.Post;
        codeBL := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
      end else
          begin
            DataModuleF.Bonv_comTable.Last;
            codeBL := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
            MainForm.SQLQuery.Active:=False;    // if soemthig went wrong change it  back to bonv_com_listTable
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT code_bvcom FROM bonv_com_list WHERE code_bvcom = ' + IntToStr(codeBL);
            MainForm.SQLQuery.Active:=True;

           if MainForm.SQLQuery.RecNo <= 0 then
           begin
        //   DataModuleF.Bonv_comTable.Last;
           codeBL := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
             DataModuleF.Bonv_comTable.Edit;
             DataModuleF.Bonv_comTable.FieldValues['date_bvcom']:= DateOf(Today);
             DataModuleF.Bonv_comTable.FieldValues['time_bvcom']:= TimeOf(Now);
             DataModuleF.Bonv_comTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             DataModuleF.Bonv_comTable.Post;
           end else
           begin
        //   DataModuleF.Bonv_comTable.Last;
          // codeBL := DataModuleF.Bonv_comTable.FieldValues['code_bvcom'];
             DataModuleF.Bonv_comTable.Insert;
             DataModuleF.Bonv_comTable.FieldValues['code_bvcom']:= codeBL + 1;
             DataModuleF.Bonv_comTable.FieldValues['num_bvcom']:=  'BL'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBL + 1)]);
             DataModuleF.Bonv_comTable.FieldValues['date_bvcom']:= DateOf(Today);
             DataModuleF.Bonv_comTable.FieldValues['time_bvcom']:= TimeOf(Now);
             DataModuleF.Bonv_comTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
             DataModuleF.Bonv_comTable.Post;


           end;
            BonComVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

      DataModuleF.Bonv_com_listTable.IndexFieldNames:='code_bvcom';
      DataModuleF.Bonv_com_listTable.Active:=False;
      DataModuleF.Bonv_com_listTable.SQL.Clear;
      DataModuleF.Bonv_com_listTable.SQL.Text:= BonComVGestionF.BCVLSQL;
      DataModuleF.Bonv_com_listTable.Active:=True;

       MainForm.SQLQuery.Active:=False;
       MainForm.SQLQuery.SQL.Clear;

//DataModuleF.Bonv_com_listTable.Refresh;
       BonComVGestionF.Tag:= 0;
       BonComVGestionF.ShowModal;

    finally
//      BonComVGestionF.Free;

      FreeAndNil(BonComVGestionF);

    end;


//       DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.Last;
DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.DeleteBVComBtnClick(Sender: TObject);
begin
if NOT (DataModuleF.Bonv_comTable.IsEmpty) then
 begin
  if  (DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean <> True ) then
    begin
   DataModuleF.Bonv_com_listTable.Active:=True;

    if NOT (DataModuleF.Bonv_com_listTable.IsEmpty) then
     begin

           FSplashAddUnite:=TFSplashAddUnite.Create(BonComVF);
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
        FSplashAddUnite.OKAddUniteSBtn.Tag:= 46 ;
       end
        else
        begin
                DataModuleF.Bonv_comTable.Delete ;
          GrayForms;
          FSplash := TFSplash.Create(BonComVF);
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

procedure TBonComVF.EditBVComBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (DataModuleF.Bonv_comTable.IsEmpty) Then
 begin
      if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;

   DataModuleF.Bonv_com_listTable.Active := True;
     if NOT (DataModuleF.Bonv_com_listTable.IsEmpty) then
    begin
     DataModuleF.Bonv_com_listTable.Active := False;
     DataModuleF.Bonv_com_listTable.IndexFieldNames:='code_bvcom';

    BonComVGestionF := TBonComVGestionF.Create(nil);
    try
       DataModuleF.Bonv_com_listTable.Active := True;
       BonComVGestionF.NumBonComVGEdt.Caption := DataModuleF.Bonv_comTable.FieldByName('num_bvcom').AsString;
       BonComVGestionF.DateBonComVGD.Date:= DataModuleF.Bonv_comTable.FieldValues['date_bvcom'];
       BonComVGestionF.ObserBonComVGMem.Lines.Text := DataModuleF.Bonv_comTable.FieldByName('obser_bvcom').AsString;
       if (DataModuleF.Bonv_comTable.FieldValues['code_c']<> null) and (DataModuleF.Bonv_comTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=DataModuleF.Bonv_comTable.FieldValues['code_c'];
       BonComVGestionF.ClientBonComVGCbx.Text:= DataModuleF.Bonv_comTable.FieldValues['clientbvcom'];

        end;

       if (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<> null ) AND (DataModuleF.Bonv_comTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeC:=DataModuleF.Bonv_comTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeC ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonComVGestionF.ModePaieBonComVGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<> null) AND (DataModuleF.Bonv_comTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeC:=DataModuleF.Bonv_comTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeC ) ) ;
         MainForm.CompteTable.Active:=True;
         BonComVGestionF.CompteBonComVGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if (DataModuleF.Bonv_comTable.FieldValues['num_cheque_bvcom']<> null)  then
       begin
        BonComVGestionF.NChequeBonComVGCbx.Text:= DataModuleF.Bonv_comTable.FieldValues['num_cheque_bvcom'];

       end;


     if (DataModuleF.Bonv_comTable.FieldValues['RemisePerc']<> null) AND (DataModuleF.Bonv_comTable.FieldValues['remise_bvcom']<> 0) then
     begin
     BonComVGestionF.RemisePerctageBonComVGEdt.Text :=     CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['RemisePerc'], ffNumber, 2);
      BonComVGestionF.RemiseBonComVGEdt.Text :=     CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['remise_bvcom'], ffNumber, 2);
     end;

       if (DataModuleF.Bonv_comTable.FieldValues['montht_bvcom']<> null) then
       begin
      BonComVGestionF.BonComVTotalHTLbl.Caption :=    CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['montht_bvcom'], ffNumber, 2);
       end;
      if (DataModuleF.Bonv_comTable.FieldValues['MontantTVA']<> null) then
       begin
      BonComVGestionF.BonComVTotalTVALbl.Caption :=   CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['MontantTVA'], ffNumber, 2);
       end;
       if (DataModuleF.Bonv_comTable.FieldValues['montttc_bvcom']<> null) then
       begin
      BonComVGestionF.BonComVTotalTTCLbl.Caption :=   CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['montttc_bvcom'], ffNumber, 2);
       end;
       if (DataModuleF.Bonv_comTable.FieldValues['montver_bvcom']<> null) then
       begin
      BonComVGestionF.BonComVRegleLbl.Caption :=      CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['montver_bvcom'], ffNumber, 2);
       end;
       if (DataModuleF.Bonv_comTable.FieldValues['MontantRes']<> null) then
       begin
      BonComVGestionF.BonComVResteLbl.Caption :=      CurrToStrF(DataModuleF.Bonv_comTable.FieldValues['MontantRes'], ffNumber, 2);
       end;



       if DataModuleF.Bonv_comTable.FieldByName('valider_bvcom').AsBoolean = True then
       begin
        FSplashVersement.DisableBonComV;
       end else
           begin
            BonComVGestionF.EnableBonComV;
            BonComVGestionF.ProduitBonComVGCbx.TabOrder:=0;

           end;
      BonComVGestionF.Tag:= 1;
      DataModuleF.Bonv_com_listTable.Refresh;
      BonComVGestionF.ShowModal;




    finally
      FreeAndNil(BonComVGestionF);
    end;

  end else
     begin
       AddBVComBtnClick(Sender);
     end;

 end;
end;

procedure TBonComVF.EspeceMPFilterBVComPMenuClick(Sender: TObject);
begin
FilterBVComBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=5;
sImage2.Visible:=True;
RegleFilterBVComPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Escpace;
if sImage6.Visible = True  then 
 begin
  DataModuleF.Bonv_comTable.Filtered:= False;
  if RegleFilterBVComPMenu.Checked then
  begin
   Select_Regle;
  end;
   if NoTRegleFilterBVComPMenu.Checked then
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

procedure TBonComVF.BVComListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if gdSelected in State then
begin
   BVComListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BVComListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (DataModuleF.Bonv_comTable.FieldValues['MontantRes'] > 0)    then
 begin
 BVComListDBGridEh.Canvas.Font.Color:=$004735F9;
 BVComListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (DataModuleF.Bonv_comTable.FieldValues['MontantRes'] < 0)    then
 begin
 BVComListDBGridEh.Canvas.Font.Color:=$00519509;
 BVComListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBVComEdt.Text,State);
end;

procedure TBonComVF.BVComListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVComListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVComBtnClick(Sender) ;
  end else exit
end;

procedure TBonComVF.BVComListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBVComBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBVComEdt.SetFocus;
  if not BVComListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBVComBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBVComBtnClick(Sender);
  end else Exit;
end;

procedure TBonComVF.BVComListDBGridEhSortMarkingChanged(Sender: TObject);
begin
BVComListDBGridEh.DefaultApplySorting;
end;

procedure TBonComVF.BVComListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
    DataModuleF.Bonv_comTable.IndexesActive := false;
end;

procedure TBonComVF.ChequeMPFilterBVComPMenuClick(Sender: TObject);
begin  
FilterBVComBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=6;
sImage2.Visible:=True;
RegleFilterBVComPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Cheque;

  if sImage6.Visible = True then
   begin
   DataModuleF.Bonv_comTable.Filtered:= False;
    if RegleFilterBVComPMenu.Checked then
    begin
     Select_Regle; 
    end;
     if NoTRegleFilterBVComPMenu.Checked then
    begin
     Select_NOT_Regle; 
    end;
  end;
end;

procedure TBonComVF.ClearFilterBVComPMenuClick(Sender: TObject);
begin
sImage1.Visible:= False;
sImage2.Visible:= False;
sImage6.Visible:= False;
F1.Enabled:= True;
FilterBVComBtn.ImageIndex:=49;
NOT_FilteredColor;
ClearValideFilterBVComPMenu.Checked:= True;
ClearMPFilterBVComPMenu.Checked:= True;
ClearFilterBVComPMenu.Checked:= True;
ClearRegleFilterBVComPMenu.Checked:= True;
DataModuleF.Bonv_comTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVComPMenu.Enabled:= True;
end;

procedure TBonComVF.ClearMPFilterBVComPMenuClick(Sender: TObject);
begin
 sImage2.Visible:= False;
 RegleFilterBVComPMenu.Enabled:= True;

 if sImage6.Visible = False then
 begin
  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  FilterBVComBtn.ImageIndex := 50;
 end else
  begin
    if sImage6.ImageIndex = 9 then
    begin
     FilteredColor;
     FilterBVComBtn.ImageIndex:=49;
     DataModuleF.Bonv_comTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVComBtn.ImageIndex:=49;
     DataModuleF.Bonv_comTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;

end;

procedure TBonComVF.ClearRegleFilterBVComPMenuClick(Sender: TObject);
begin
 DataModuleF.Bonv_comTable.Filtered:=False;
 //Select_ALL;
 sImage1.Visible:= False;
 sImage6.Visible:= False;
 F1.Enabled:= True;
 ATermeMPFilterBVComPMenu.Enabled:= True;
 if sImage2.Visible = False then
 begin
  NOT_FilteredColor;
  FilterBVComBtn.ImageIndex:=50;
 end else
  begin
    if sImage2.ImageIndex = 5 then
    begin
    FilterBVComBtn.ImageIndex:=49;
     Select_NOT_Valid_Escpace;
    end;
      if sImage2.ImageIndex = 6 then
    begin
    FilterBVComBtn.ImageIndex:=49;
    Select_NOT_Valid_Cheque;
    end;
      if sImage2.ImageIndex = 7 then
    begin
    FilterBVComBtn.ImageIndex:=49;
    Select_NOT_Valid_ATerme;
    end;
      if sImage2.ImageIndex = 8 then
    begin
    FilterBVComBtn.ImageIndex:=49;
    Select_NOT_Valid_Virment;
    end;  
  end;  
   if sImage1.Visible = False then
 begin
  NOT_FilteredColor;
  FilterBVComBtn.ImageIndex:=50;
  DataModuleF.Bonv_comTable.Filtered := false;
  Select_ALL;
  
  end  else
  begin
      if sImage1.ImageIndex = 3 then
    begin
    FilteredColor;
    FilterBVComBtn.ImageIndex:=49;
    Select_Valid;
    end;
      if sImage1.ImageIndex = 4 then
    begin
    FilteredColor;
    FilterBVComBtn.ImageIndex:=49;
    Select_NOT_Valid;
    end; 
  end;

end;

procedure TBonComVF.ClearValideFilterBVComPMenuClick(Sender: TObject);
begin
  if (sImage2.Visible = False)  then
  begin
  FilterBVComBtn.ImageIndex:=50;
  sImage1.Visible:= False;
  Select_ALL;
  NOT_FilteredColor;
  end else
  begin
   if sImage2.ImageIndex = 5 then
  begin
  FilterBVComBtn.ImageIndex:=49;
   Select_NOT_Valid_Escpace;
  end;
    if sImage2.ImageIndex = 6 then
  begin
  FilterBVComBtn.ImageIndex:=49;
  Select_NOT_Valid_Cheque;
  end;
    if sImage2.ImageIndex = 7 then
  begin
  FilterBVComBtn.ImageIndex:=49;
  Select_NOT_Valid_ATerme;
  end;
    if sImage2.ImageIndex = 8 then
  begin
  FilterBVComBtn.ImageIndex:=49;
  Select_NOT_Valid_Virment;
  end;
  end;
end;

procedure TBonComVF.DateStartBVComDChange(Sender: TObject);
begin
ClearFilterBVComPMenuClick(Sender);

DataModuleF.Bonv_comTable.DisableControls;
DataModuleF.Bonv_comTable.Active:= False;
DataModuleF.Bonv_comTable.SQL.clear;
DataModuleF.Bonv_comTable.sql.Text:= BCVSQL +' WHERE date_bvcom BETWEEN '''+(DateToStr(DateStartBVComD.Date))+ ''' AND ''' +(DateToStr(DateEndBVComD.Date))+'''';
DataModuleF.Bonv_comTable.Active:= True;
DataModuleF.Bonv_comTable.EnableControls;
end;




procedure TBonComVF.FormShow(Sender: TObject);
begin
  DateStartBVComD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVComD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVComDChange(Sender);




end;

procedure TBonComVF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonComVfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVComD.Date) + ' au ' + DateToStr(DateEndBVComD.Date) ;

      Agent:= BonComVfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonComVF.SumGirdBVComBtnClick(Sender: TObject);
begin
  if SumGirdBVComBtn.Tag = 0 then
  begin
    BVComListDBGridEh.FooterRowCount:=1;
    SumGirdBVComBtn.Tag := 1;
  end else
      begin
        BVComListDBGridEh.FooterRowCount:=0;
        SumGirdBVComBtn.Tag := 0;
      end;
end;

procedure TBonComVF.ValideFilterBVComPMenuClick(Sender: TObject);
begin
  sImage1.ImageIndex:=3;
  sImage1.Visible:= True;
  FilterBVComBtn.ImageIndex:=50;
  FilteredColor;
  ClearFilterBVComPMenu.Checked:= False;
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

procedure TBonComVF.VirmentMPFilterBVComPMenuClick(Sender: TObject);
begin
FilterBVComBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=8;
sImage2.Visible:=True;
RegleFilterBVComPMenu.Enabled:= True;

FilteredColor;
Select_Valid_Virment;

  if sImage6.Visible = True then
   begin
   DataModuleF.Bonv_comTable.Filtered:= False;
    if RegleFilterBVComPMenu.Checked then
    begin
     Select_Regle; 
    end;
     if NoTRegleFilterBVComPMenu.Checked then
    begin
     Select_NOT_Regle; 
    end;
  end;
end;

procedure TBonComVF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'liste des BL';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BVComListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//DataModuleF.Bonv_comTable.DisableControls;
//
//    GettingData;
//
//BonComVfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'liste des BL';
//BonComVfrxRprt.Export(frxXLSExport1);
//
//DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.AdvToolButton2Click(Sender: TObject);
begin
DataModuleF.Bonv_comTable.DisableControls;

    GettingData;

BonComVfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BL';
BonComVfrxRprt.Export(frxPDFExport1);


DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.AdvToolButton3Click(Sender: TObject);
begin
  DataModuleF.Bonv_comTable.DisableControls;

   GettingData;

  BonComVfrxRprt.PrepareReport;
  BonComVfrxRprt.ShowReport;

  DataModuleF.Bonv_comTable.EnableControls;
end;

procedure TBonComVF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonComVF.Active = True)  AND  (Assigned(BonComVGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBVComBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBVComBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBVComBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonComVF.Active = True)  AND (BonComVGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBVComBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBVComBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBVComBtnClick(Screen);
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

procedure TBonComVF.ATermeMPFilterBVComPMenuClick(Sender: TObject);
begin
FilterBVComBtn.ImageIndex:=50;
sImage1.ImageIndex:=3;
sImage1.Visible:=True;
sImage2.ImageIndex:=7;
sImage2.Visible:=True;
RegleFilterBVComPMenu.Enabled:= False;
FilteredColor;
Select_Valid_ATerme;
  if sImage6.Visible = True then
   begin
   DataModuleF.Bonv_comTable.Filtered:= False;
    if RegleFilterBVComPMenu.Checked then
    begin
     
     Select_Regle; 
     
    end;
     if NoTRegleFilterBVComPMenu.Checked then
    begin
     Select_NOT_Regle; 
    end;
  end;
end;

procedure TBonComVF.BVComListDBGridEhDblClick(Sender: TObject);
begin
if BVComListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonComVF.EditBVComBtnClick(Sender) ;
end;
end;

procedure TBonComVF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  MainForm.SaveGridLayout(BVComListDBGridEh,GetCurrentDir +'\bin\gc_bllst');

  FreeAndNil(BonComVF);

end;

procedure TBonComVF.FormCreate(Sender: TObject);
begin
   if FileExists(GetCurrentDir +'\bin\gc_bllst') then
   begin

    MainForm.LoadGridLayout(BVComListDBGridEh,GetCurrentDir +'\bin\gc_bllst');
   end;

end;

procedure TBonComVF.FormPaint(Sender: TObject);
begin
        MainForm.ClientTable.DisableControls;
        MainForm.ClientTable.Active:=False;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;


      if MainForm.totaux_ur.Checked then
      begin

       SumGirdBVComBtn.Enabled:= True;

      end else
      begin

       SumGirdBVComBtn.Enabled:= False;

      end;


      if MainForm.viewprixa_ur.Checked then
      begin

          BVComListDBGridEh.FieldColumns['montaht_bvcom'].Visible:= true;
          BVComListDBGridEh.FieldColumns['montaht_bvcom'].MinWidth:= 150;
          BVComListDBGridEh.FieldColumns['montaht_bvcom'].Width:= 150;
          BVComListDBGridEh.FieldColumns['montaht_bvcom'].MaxWidth:= 0;

      end else
      begin

          BVComListDBGridEh.FieldColumns['montaht_bvcom'].Visible:= false;
          BVComListDBGridEh.FieldColumns['montaht_bvcom'].MinWidth:= 0;
          BVComListDBGridEh.FieldColumns['montaht_bvcom'].Width:= 0;
          BVComListDBGridEh.FieldColumns['montaht_bvcom'].MaxWidth:= 1;

      end;
end;

end.

