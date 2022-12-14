unit UBonComA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,DBGridEhImpExp,ShellAPI,
  Winapi.MMSystem, System.Variants,DateUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton,
  AdvToolBtn, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  EhLibFireDAC,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.AppEvnts, frxExportPDF, frxClass, frxExportXLS, frxDBSet, acImage,
  Vcl.Menus, sStatusBar, frxExportBaseDialog ;

type
  TBonComAF = class(TForm)
    BAComListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBAComBtn: TAdvToolButton;
    DeleteBAComBtn: TAdvToolButton;
    AddBAComBtn: TAdvToolButton;
    ResearchBAComLbl: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBAComEdt: TSearchBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DateEndBAComD: TDateTimePicker;
    DateStartBAComD: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ResherchBARFourRdioBtn: TRadioButton;
    ResherchBARNumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxBonComADB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonComAfrxRprt: TfrxReport;
    PreviosBACombtn: TsSpeedButton;
    NextBACombtn: TsSpeedButton;
    LastBACombtn: TsSpeedButton;
    FisrtBACombtn: TsSpeedButton;
    FilterBVLivBtn: TAdvToolButton;
    sImage1: TsImage;
    sImage6: TsImage;
    sImage2: TsImage;
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
    SumGirdBAComBtn: TAdvToolButton;
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
    procedure AddBAComBtnClick(Sender: TObject);
    procedure FisrtBACombtnClick(Sender: TObject);
    procedure LastBACombtnClick(Sender: TObject);
    procedure PreviosBACombtnClick(Sender: TObject);
    procedure NextBACombtnClick(Sender: TObject);
    procedure BAComListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure EditBAComBtnClick(Sender: TObject);
    procedure DeleteBAComBtnClick(Sender: TObject);
    procedure ResearchBAComEdtChange(Sender: TObject);
    procedure DateStartBAComDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BAComListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BAComListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BAComListDBGridEhKeyPress(Sender: TObject; var Key: Char);
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
    procedure SumGirdBAComBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBAComEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchBAComEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BAComListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure BAComListDBGridEhSortMarkingChanged(Sender: TObject);

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
//    procedure HighlightCellText(AGrid :TDbGridEH; const ARect : TRect; AColumn : TColumnEh;  FilterText : string; AState:TGridDrawState ;
 // BkColor : TColor = clYellow; SelectedBkColor : TColor = clGray);

    { Private declarations }
  public
    { Public declarations }
    const BCFSQL = 'SELECT *, '
+'   ((montttc_bacom)-(montht_bacom - remise_bacom)) AS MontantTVA, '
+'   (montttc_bacom - montver_bacom) AS MontantRes, '
+'  CASE '
+'     WHEN remise_bacom <> ''0'' AND montht_bacom <> ''0'' THEN  ROUND( CAST (((remise_bacom / montht_bacom) * 100) as NUMERIC),2) '
+'     ELSE ''0'' '
+'  END AS RemisePerc,  '
+'   (montht_bacom - remise_bacom) AS NeTHT '
+' FROM bona_com ';
  end;


var
  BonComAF: TBonComAF;

implementation

uses UMainF, UBonComAGestion, USplashVersement, USplashAddUnite, USplash,Threading,
  UClientGestion, UProduitsList, UDataModule;

{$R *.dfm}


procedure TBonComAF.Select_ALL;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Valid;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = true AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_NOT_Valid;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = false AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Escpace;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE code_mdpai = 1 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Cheque;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE code_mdpai = 2 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_ATerme;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE code_mdpai = 3 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Virment;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE code_mdpai = 4 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Valid_Escpace;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = true AND code_mdpai = 1 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Valid_Cheque;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = true AND code_mdpai = 2 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Valid_ATerme;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = true AND code_mdpai = 3 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Valid_Virment;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = true AND code_mdpai = 4 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_NOT_Valid_Escpace;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = false AND code_mdpai = 1';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_NOT_Valid_Cheque;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = false AND code_mdpai = 2 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_NOT_Valid_ATerme;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = false AND code_mdpai = 3 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_NOT_Valid_Virment;
begin
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE valider_bacom = false AND code_mdpai = 4 AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.Select_Regle;
begin
  DataModuleF.Bona_comTable.Filtered := False;
  DataModuleF.Bona_comTable.Filter:='MontantRes <= 0 ';
  DataModuleF.Bona_comTable.Filtered:=True;
  DataModuleF.Bona_comTable.First;
end;

procedure TBonComAF.Select_NOT_Regle;
begin
  DataModuleF.Bona_comTable.Filtered := False;
  DataModuleF.Bona_comTable.Filter:='MontantRes > 0 ';
  DataModuleF.Bona_comTable.Filtered:=True;
  DataModuleF.Bona_comTable.First;
end;

procedure TBonComAF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonComAF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;




procedure TBonComAF.AddBAComBtnClick(Sender: TObject);
var
  codeBCF : integer;

//  MyForm :TBonComAGestionF;
begin
ClearFilterBVLivPMenuClick(Sender);

 if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;

  DataModuleF.Bona_com_listTable.Active:=False;
  DataModuleF.Bona_com_listTable.IndexFieldNames:='';
  DataModuleF.Bona_comTable.DisableControls;
  DataModuleF.Bona_comTable.Active:= False;
  DataModuleF.Bona_comTable.SQL.clear;
  DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' ORDER By code_bacom';
  DataModuleF.Bona_comTable.Active:= True;

 codeBCF:= 0;

 BonComAGestionF := TBonComAGestionF.Create(nil);
 try

  if Assigned(BonComAF) then
  begin
  ResearchBAComEdt.Text:='';
  end;

     if DataModuleF.Bona_comTable.RecordCount <= 0 then
      begin

        DataModuleF.Bona_comTable.Insert;
        DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger:=1;
        DataModuleF.Bona_comTable.FieldByName('num_bacom').AsString:= 'BCF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime:= DateOf(Today);
        DataModuleF.Bona_comTable.FieldByName('time_bacom').AsDateTime:=TimeOf(Now);
        DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger:=0;
        DataModuleF.Bona_comTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
        DataModuleF.Bona_comTable.Post;
        codeBCF := DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
      end else
          begin
            DataModuleF.Bona_comTable.Last;
            codeBCF := DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bona_com_list WHERE code_bacom = ' + QuotedStr(IntToStr(codeBCF));
            MainForm.SQLQuery.Active:=True;

           if MainForm.SQLQuery.RecordCount <= 0 then
           begin
        //   DataModuleF.Bona_comTable.Last;
           codeBCF := DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger;
             DataModuleF.Bona_comTable.Edit;
             DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime:= DateOf(Today);
             DataModuleF.Bona_comTable.FieldByName('time_bacom').AsDateTime:= TimeOf(Now);
             DataModuleF.Bona_comTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
             DataModuleF.Bona_comTable.Post;

           end else
                 begin
              //   DataModuleF.Bona_comTable.Last;
                // codeBCF := DataModuleF.Bona_comTable.FieldByName('code_bacom'];
                 DataModuleF.Bona_comTable.Insert;
                 DataModuleF.Bona_comTable.FieldByName('code_bacom').AsInteger:= codeBCF + 1;
                 DataModuleF.Bona_comTable.FieldByName('num_bacom').AsString:=  'BCF'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBCF + 1)]);
                 DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime:= DateOf(Today);
                 DataModuleF.Bona_comTable.FieldByName('time_bacom').AsDateTime:= TimeOf(Now);
                 DataModuleF.Bona_comTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                 DataModuleF.Bona_comTable.Post;
                 end;
     //    BonComAGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

   DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

           BonComAGestionF.Tag:= 0;
      BonComAGestionF.ShowModal;

 finally
//    BonComAGestionF.Free

         FreeAndNil(BonComAGestionF);

 end;

//      DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE bon_or_no_bacom = true AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.Last;
DataModuleF.Bona_comTable.EnableControls;

            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;

end;

procedure TBonComAF.FisrtBACombtnClick(Sender: TObject);
begin
BAComListDBGridEh.DataSource.DataSet.First;
end;

procedure TBonComAF.LastBACombtnClick(Sender: TObject);
begin
BAComListDBGridEh.DataSource.DataSet.Last;
end;

procedure TBonComAF.PreviosBACombtnClick(Sender: TObject);
begin
BAComListDBGridEh.DataSource.DataSet.Prior;
end;

procedure TBonComAF.NextBACombtnClick(Sender: TObject);
begin
BAComListDBGridEh.DataSource.DataSet.Next;
end;

procedure TBonComAF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
DataModuleF.Bona_comTable.Filtered:= False;
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

procedure TBonComAF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonComAF.BAComListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

 if gdSelected in State then
begin
   BAComListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BAComListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (DataModuleF.Bona_comTable.FieldValues['MontantRes'] > 0)    then
 begin
 BAComListDBGridEh.Canvas.Font.Color:=$004735F9;
 BAComListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (DataModuleF.Bona_comTable.FieldValues['MontantRes'] < 0)    then
 begin
 BAComListDBGridEh.Canvas.Font.Color:=$00519509;
 BAComListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

 HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBAComEdt.Text,State);
end;

procedure TBonComAF.BAComListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BAComListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBAComBtnClick(Sender) ;
  end else exit
end;

procedure TBonComAF.BAComListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBAComBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBAComEdt.SetFocus;
  if not BAComListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBAComBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBAComBtnClick(Sender);
  end else Exit;
end;

procedure TBonComAF.BAComListDBGridEhSortMarkingChanged(Sender: TObject);
begin
  BAComListDBGridEh.DefaultApplySorting;
end;

procedure TBonComAF.BAComListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
    DataModuleF.Bona_comTable.IndexesActive:= False;
end;

procedure TBonComAF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   DataModuleF.Bona_comTable.Filtered:= False;
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

procedure TBonComAF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
DataModuleF.Bona_comTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonComAF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     DataModuleF.Bona_comTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     DataModuleF.Bona_comTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonComAF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 DataModuleF.Bona_comTable.Filtered:=False;
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
  DataModuleF.Bona_comTable.Filtered := false;
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

procedure TBonComAF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonComAF.EditBAComBtnClick(Sender: TObject);
var
 CodeF : Integer;

 begin
    if NOT (DataModuleF.Bona_comTable.IsEmpty) Then
   begin
     if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;

    DataModuleF.Bona_com_listTable.Active:=True;
    if  NOT (DataModuleF.Bona_com_listTable.IsEmpty) then
   begin

    DataModuleF.Bona_com_listTable.Active:=False;


      DataModuleF.Bona_com_listTable.IndexFieldNames:='code_bacom';

      BonComAGestionF := TBonComAGestionF.Create(nil);
      try


         BonComAGestionF.NumBonComGEdt.Caption := DataModuleF.Bona_comTable.FieldByName('num_bacom').AsString;
         BonComAGestionF.DateBonComGD.Date:= DataModuleF.Bona_comTable.FieldByName('date_bacom').AsDateTime;
         BonComAGestionF.ObserBonComGMem.Lines.Text := DataModuleF.Bona_comTable.FieldByName('obser_bacom').AsString;
         if (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger<> null) and (DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger<> 0) then
         begin
         CodeF:=DataModuleF.Bona_comTable.FieldByName('code_f').AsInteger;
         BonComAGestionF.FournisseurBonComGCbx.Text:= DataModuleF.Bona_comTable.FieldByName('fourbacom').AsWideString;
          end;

         if (DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger<> null ) AND (DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger<> 0) then
         begin
         CodeF:=DataModuleF.Bona_comTable.FieldByName('code_mdpai').AsInteger;
           MainForm.Mode_paiementTable.Active:=false;
           MainForm.Mode_paiementTable.SQL.Clear;
           MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
           MainForm.Mode_paiementTable.Active:=True;
           BonComAGestionF.ModePaieBonComGCbx.Text:= MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString;
           MainForm.Mode_paiementTable.Active:=false;
           MainForm.Mode_paiementTable.SQL.Clear;
           MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
           MainForm.Mode_paiementTable.Active:=True;

         end;
         if (DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger<> null) AND (DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger<> 0) then
         begin
         CodeF:=DataModuleF.Bona_comTable.FieldByName('code_cmpt').AsInteger;
           MainForm.CompteTable.Active:=false;
           MainForm.CompteTable.SQL.Clear;
           MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
           MainForm.CompteTable.Active:=True;
           BonComAGestionF.CompteBonComGCbx.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;
           MainForm.CompteTable.Active:=false;
           MainForm.CompteTable.SQL.Clear;
           MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
           MainForm.CompteTable.Active:=True;
         end;
         if DataModuleF.Bona_comTable.FieldByName('num_cheque_bacom').AsString<> null then
         begin
          BonComAGestionF.NChequeBonComGCbx.Text:= DataModuleF.Bona_comTable.FieldByName('num_cheque_bacom').AsString;
         end;



     if (DataModuleF.Bona_comTable.FieldByName('RemisePerc').AsFloat<> null) AND (DataModuleF.Bona_comTable.FieldByName('remise_bacom').AsFloat<> 0) then
     begin
      BonComAGestionF.RemisePerctageBonComGEdt.Text :=     FloatToStrF(DataModuleF.Bona_comTable.FieldByName('RemisePerc').AsFloat, ffNumber, 8, 2);
      BonComAGestionF.RemiseBonComGEdt.Text :=     FloatToStrF(DataModuleF.Bona_comTable.FieldByName('remise_bacom').AsFloat, ffNumber, 14, 2);
     end;

       if (DataModuleF.Bona_comTable.FieldByName('montht_bacom').AsFloat<> null) then
       begin
      BonComAGestionF.BonComTotalHTLbl.Caption :=    FloatToStrF(DataModuleF.Bona_comTable.FieldByName('montht_bacom').AsFloat, ffNumber, 14, 2);
       end;
      if (DataModuleF.Bona_comTable.FieldByName('MontantTVA').AsFloat<> null) then
       begin
      BonComAGestionF.BonComTotalTVALbl.Caption :=   FloatToStrF(DataModuleF.Bona_comTable.FieldByName('MontantTVA').AsFloat, ffNumber, 14, 2);
       end;
       if (DataModuleF.Bona_comTable.FieldByName('montttc_bacom').AsFloat<> null) then
       begin
      BonComAGestionF.BonComTotalTTCLbl.Caption :=   FloatToStrF(DataModuleF.Bona_comTable.FieldByName('montttc_bacom').AsFloat, ffNumber, 14, 2);
       end;
       if (DataModuleF.Bona_comTable.FieldByName('montver_bacom').AsFloat<> null) then
       begin
      BonComAGestionF.BonComRegleLbl.Caption :=      FloatToStrF(DataModuleF.Bona_comTable.FieldByName('montver_bacom').AsFloat, ffNumber, 14, 2);
       end;
       if (DataModuleF.Bona_comTable.FieldByName('MontantRes').AsFloat<> null) then
       begin
      BonComAGestionF.BonComResteLbl.Caption :=      FloatToStrF(DataModuleF.Bona_comTable.FieldByName('MontantRes').AsFloat, ffNumber, 14, 2);
       end;



       if DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean = True then
       begin
        FSplashVersement.DisableBonComA;
       end else
           begin
            BonComAGestionF.EnableBonCom;
            BonComAGestionF.ProduitBonComGCbx.TabOrder:=0;
           end;
      BonComAGestionF.Tag:= 1;
      DataModuleF.Bona_com_listTable.Refresh;
      BonComAGestionF.ShowModal;



      finally
       FreeAndNil(BonComAGestionF);
      end;


     end else
       begin
         AddBAComBtnClick(Sender);
       end;

  end;
 end;

procedure TBonComAF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  DataModuleF.Bona_comTable.Filtered:= False;
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

procedure TBonComAF.DeleteBAComBtnClick(Sender: TObject);
begin

if NOT (DataModuleF.Bona_comTable.IsEmpty) then
 begin
    if  (DataModuleF.Bona_comTable.FieldByName('valider_bacom').AsBoolean <> True ) then
    begin
     DataModuleF.Bona_com_listTable.Active:=True;

      if NOT (DataModuleF.Bona_com_listTable.IsEmpty) then
       begin

             FSplashAddUnite:=TFSplashAddUnite.Create(BonComAF);
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
          FSplashAddUnite.NameAddUniteSLbl.Caption:='Ėtes-vous sûr de vouloir supprimer'+sLineBreak+sLineBreak+ 'les piéces d''achat sèlèctionnèes? ';
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
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 44 ;
         end
          else
          begin
                  DataModuleF.Bona_comTable.Delete ;
            GrayForms;
            FSplash := TFSplash.Create(Self);
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

//     DataModuleF.Bona_comTable.Active:= False;
//    DataModuleF.Bona_comTable.SQL.clear;
//    DataModuleF.Bona_comTable.sql.Text:='SELECT * FROM bona_com WHERE bon_or_no_bacom = true AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
//    DataModuleF.Bona_comTable.Active:= True;
//    DataModuleF.Bona_comTable.EnableControls;
end;


procedure IncArray;
var i : integer;
    data : array of integer;
 // PData = ^TData;

begin
  for i := Low(data) to High(data) do
    data[i] := data[i] + 5;
end;



procedure TBonComAF.RefreshGirdBtnClick(Sender: TObject);
begin
DataModuleF.Bona_comTable.Close;
DataModuleF.Bona_comTable.Open;
end;

procedure TBonComAF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 DataModuleF.Bona_comTable.Filtered:= False;
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

procedure TBonComAF.ResearchBAComEdtChange(Sender: TObject);
var SearchValue : String;
begin
 //----------- Searching in databese-------------------//
  if ResearchBAComEdt.Text<>'' then
  begin
    SearchValue:=   '('''+'%'+(ResearchBAComEdt.Text)+'%'+''')';
    if ResherchBARFourRdioBtn.Checked then
    begin
      DataModuleF.Bona_comTable.DisableControls;
      DataModuleF.Bona_comTable.Active:=False;
      DataModuleF.Bona_comTable.SQL.Clear;
      DataModuleF.Bona_comTable.SQL.Text:= BCFSQL +' WHERE code_f IN( '+
        'SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' + SearchValue
        +' OR fix_f LIKE'+ SearchValue
        +' OR mob_f LIKE'+ SearchValue
        +' OR mob2_f LIKE'+ SearchValue
        +' OR fax_f LIKE'+ SearchValue
        +' OR LOWER(adr_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(ville_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(willaya_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(email_f) LIKE LOWER '+ SearchValue
        +' OR LOWER(siteweb_f) LIKE LOWER '+ SearchValue +')';
      DataModuleF.Bona_comTable.Active:=True;
      DataModuleF.Bona_comTable.EnableControls;
    end;
    if ResherchBARNumBRdioBtn.Checked then
    begin
      DataModuleF.Bona_comTable.DisableControls;
      DataModuleF.Bona_comTable.Active:=False;
      DataModuleF.Bona_comTable.SQL.Clear;
      DataModuleF.Bona_comTable.SQL.Text:= BCFSQL+' WHERE LOWER(num_bacom) LIKE LOWER' +'('''+'%'+(ResearchBAComEdt.Text)+'%'+''')' ;
      DataModuleF.Bona_comTable.Active:=True;
      DataModuleF.Bona_comTable.EnableControls;
    end;
  end else
   begin
      DataModuleF.Bona_comTable.DisableControls;
      DataModuleF.Bona_comTable.Active:=False;
      DataModuleF.Bona_comTable.SQL.Clear;
      DataModuleF.Bona_comTable.SQL.Text:= BCFSQL+' WHERE bon_or_no_bacom = true ' ;
      DataModuleF.Bona_comTable.Active:=True;
      DataModuleF.Bona_comTable.EnableControls;
     end;
end;

procedure TBonComAF.ResearchBAComEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     DataModuleF.Bona_comTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     DataModuleF.Bona_comTable.Prior;
  end;
end;

procedure TBonComAF.ResearchBAComEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBAComEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;


    //----------- Searching in databese-------------------//

    if ResearchBAComEdt.Text<>'' then
    begin

          if ResherchBARFourRdioBtn.Checked then
          begin
          DataModuleF.Bona_comTable.DisableControls;
          DataModuleF.Bona_comTable.Active:=False;
          DataModuleF.Bona_comTable.SQL.Clear;
          DataModuleF.Bona_comTable.SQL.Text:= BCFSQL+' WHERE code_f IN( SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+(ResearchBAComEdt.Text+'%')+''')' +')';
          DataModuleF.Bona_comTable.Active:=True;
          DataModuleF.Bona_comTable.EnableControls;

          end;

          if ResherchBARNumBRdioBtn.Checked then
          begin
          DataModuleF.Bona_comTable.DisableControls;
          DataModuleF.Bona_comTable.Active:=False;
          DataModuleF.Bona_comTable.SQL.Clear;
          DataModuleF.Bona_comTable.SQL.Text:= BCFSQL+' WHERE LOWER(num_bacom) LIKE LOWER' +'('''+(ResearchBAComEdt.Text+'%')+''')' ;
          DataModuleF.Bona_comTable.Active:=True;
          DataModuleF.Bona_comTable.EnableControls;
          end;


    end else
     begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

          DataModuleF.Bona_comTable.DisableControls;
          DataModuleF.Bona_comTable.Active:=False;
          DataModuleF.Bona_comTable.SQL.Clear;
          DataModuleF.Bona_comTable.SQL.Text:= BCFSQL+' WHERE bon_or_no_bacom = true ' ;
          DataModuleF.Bona_comTable.Active:=True;
          DataModuleF.Bona_comTable.EnableControls;

     end;

end;

end;

procedure TBonComAF.DateStartBAComDChange(Sender: TObject);
begin
ClearFilterBVLivPMenuClick(Sender);
DataModuleF.Bona_comTable.DisableControls;
DataModuleF.Bona_comTable.Active:= False;
DataModuleF.Bona_comTable.SQL.clear;
DataModuleF.Bona_comTable.sql.Text:= BCFSQL+' WHERE bon_or_no_bacom = true AND date_bacom BETWEEN '''+(DateToStr(DateStartBAComD.Date))+ ''' AND ''' +(DateToStr(DateEndBAComD.Date))+'''';
DataModuleF.Bona_comTable.Active:= True;
DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.FormShow(Sender: TObject);
Begin
  DataModuleF.Bona_comTable.Active:= True;
  DateStartBAComD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBAComD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBAComDChange(Sender);
end;
procedure TBonComAF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonComAfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBAComD.Date) + ' au ' + DateToStr(DateEndBAComD.Date) ;

    Agent:= BonComAfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;
procedure TBonComAF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonComAF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   DataModuleF.Bona_comTable.Filtered:= False;
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

procedure TBonComAF.SumGirdBAComBtnClick(Sender: TObject);
begin
  if SumGirdBAComBtn.Tag = 0 then
  begin
    ValideFilterBVLivPMenuClick(Sender);
    BAComListDBGridEh.FooterRowCount:=1;
    SumGirdBAComBtn.Tag := 1;
  end else
      begin
        BAComListDBGridEh.FooterRowCount:=0;
        SumGirdBAComBtn.Tag := 0;
      end;
end;

procedure TBonComAF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'Liste des BCF';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BAComListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//DataModuleF.Bona_comTable.DisableControls;
//
//    GettingData;
//
//BonComAfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Liste des BCF';
//BonComAfrxRprt.Export(frxXLSExport1);
//
//DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.AdvToolButton2Click(Sender: TObject);
begin
DataModuleF.Bona_comTable.DisableControls;

    GettingData;

BonComAfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BCF';
BonComAfrxRprt.Export(frxPDFExport1);


DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.AdvToolButton3Click(Sender: TObject);
begin
  DataModuleF.Bona_comTable.DisableControls;

   GettingData;

  BonComAfrxRprt.PrepareReport;
  BonComAfrxRprt.ShowReport;

  DataModuleF.Bona_comTable.EnableControls;
end;

procedure TBonComAF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonComAF.Active = True)  AND  (Assigned(BonComAGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBAComBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBAComBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBAComBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonComAF.Active = True)  AND (BonComAGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBAComBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBAComBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBAComBtnClick(Screen);
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

procedure TBonComAF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   DataModuleF.Bona_comTable.Filtered:= False;
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

procedure TBonComAF.BAComListDBGridEhDblClick(Sender: TObject);
begin
if BAComListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonComAF.EditBAComBtnClick(Sender) ;
end;
end;

procedure TBonComAF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(BAComListDBGridEh,GetCurrentDir +'\bin\gc_bcflst');

 FreeAndNil(BonComAF);
end;

procedure TBonComAF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_bcflst') then
   begin

    MainForm.LoadGridLayout(BAComListDBGridEh,GetCurrentDir +'\bin\gc_bcflst');
   end;
end;

procedure TBonComAF.FormPaint(Sender: TObject);
begin
  MainForm.FournisseurTable.DisableControls;
  MainForm.FournisseurTable.Active:=False;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
  MainForm.FournisseurTable.Active:=True;
  MainForm.FournisseurTable.EnableControls;

  if MainForm.totaux_ur.Checked then
      begin

       SumGirdBAComBtn.Enabled:= True;

      end else
      begin

       SumGirdBAComBtn.Enabled:= False;

      end;

end;

end.
