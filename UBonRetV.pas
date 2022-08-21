unit UBonRetV;

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
  TBonRetVF = class(TForm)
    BVRetListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBVRetBtn: TAdvToolButton;
    DeleteBVRetBtn: TAdvToolButton;
    AddBVRetBtn: TAdvToolButton;
    ResearchBVRetLbl: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBVRetEdt: TSearchBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DateEndBVRetD: TDateTimePicker;
    DateStartBVRetD: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ResherchBVRClientRdioBtn: TRadioButton;
    ResherchBVRNumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxBonRetVDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonRetVfrxRprt: TfrxReport;
    PreviosBVRetbtn: TsSpeedButton;
    NextBVRetbtn: TsSpeedButton;
    LastBVRetbtn: TsSpeedButton;
    FisrtBVRetbtn: TsSpeedButton;
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
    SumGirdBVRetBtn: TAdvToolButton;
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
    procedure AddBVRetBtnClick(Sender: TObject);
    procedure FisrtBVRetbtnClick(Sender: TObject);
    procedure LastBVRetbtnClick(Sender: TObject);
    procedure PreviosBVRetbtnClick(Sender: TObject);
    procedure NextBVRetbtnClick(Sender: TObject);
    procedure BVRetListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure EditBVRetBtnClick(Sender: TObject);
    procedure DeleteBVRetBtnClick(Sender: TObject);
    procedure ResearchBVRetEdtChange(Sender: TObject);
    procedure DateStartBVRetDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BVRetListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVRetListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVRetListDBGridEhKeyPress(Sender: TObject; var Key: Char);
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
    procedure SumGirdBVRetBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBVRetEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchBVRetEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BVRetListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure BVRetListDBGridEhSortMarkingChanged(Sender: TObject);

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
    const BRVSQL = 'SELECT *, '
+'   ((montttc_bvret)-(montht_bvret - remise_bvret)) AS MontantTVA, '
+'   (montttc_bvret - montver_bvret) AS MontantRes, '
+'  CASE '
+'     WHEN remise_bvret <> ''0'' AND montht_bvret <> ''0'' THEN  ROUND( CAST (((remise_bvret / montht_bvret) * 100) as NUMERIC),2) '
+'     ELSE ''0'' '
+'  END AS RemisePerc,  '
+'   (montht_bvret - remise_bvret) AS NeTHT '
+' FROM bonv_ret ';
  end;


var
  BonRetVF: TBonRetVF;

implementation

uses UMainF, UBonRetVGestion, USplashVersement, USplashAddUnite, USplash,Threading,
  UClientGestion, UProduitsList, UDataModule;

{$R *.dfm}


procedure TBonRetVF.Select_ALL;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Valid;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = true AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_NOT_Valid;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = false AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Escpace;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE code_mdpai = 1 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Cheque;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE code_mdpai = 2 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_ATerme;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE code_mdpai = 3 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Virment;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE code_mdpai = 4 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Valid_Escpace;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = true AND code_mdpai = 1 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Valid_Cheque;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = true AND code_mdpai = 2 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Valid_ATerme;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = true AND code_mdpai = 3 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Valid_Virment;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = true AND code_mdpai = 4 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_NOT_Valid_Escpace;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = false AND code_mdpai = 1';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_NOT_Valid_Cheque;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = false AND code_mdpai = 2 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_NOT_Valid_ATerme;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = false AND code_mdpai = 3 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_NOT_Valid_Virment;
begin
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE valider_bvret = false AND code_mdpai = 4 AND date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.Select_Regle;
begin
  DataModuleF.Bonv_retTable.Filtered := False;
  DataModuleF.Bonv_retTable.Filter:='MontantRes <= 0 ';
  DataModuleF.Bonv_retTable.Filtered:=True;
  DataModuleF.Bonv_retTable.First;
end;

procedure TBonRetVF.Select_NOT_Regle;
begin
  DataModuleF.Bonv_retTable.Filtered := False;
  DataModuleF.Bonv_retTable.Filter:='MontantRes > 0 ';
  DataModuleF.Bonv_retTable.Filtered:=True;
  DataModuleF.Bonv_retTable.First;
end;

procedure TBonRetVF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E;
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonRetVF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8;
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;




procedure TBonRetVF.AddBVRetBtnClick(Sender: TObject);
var
  codeBR : integer;

//  MyForm :TBonRetVGestionF;
begin
ClearFilterBVLivPMenuClick(Sender);

 if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;

  DataModuleF.Bonv_ret_listTable.Active:=False;
  DataModuleF.Bonv_ret_listTable.IndexFieldNames:='';
  DataModuleF.Bonv_retTable.DisableControls;
  DataModuleF.Bonv_retTable.Active:= False;
  DataModuleF.Bonv_retTable.SQL.clear;
  DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' ORDER By code_bvret';
  DataModuleF.Bonv_retTable.Active:= True;

 codeBR:= 0;

 BonRetVGestionF := TBonRetVGestionF.Create(nil);
 try

  if Assigned(BonRetVF) then
  begin
  ResearchBVRetEdt.Text:='';
  end;

     if DataModuleF.Bonv_retTable.RecordCount <= 0 then
      begin

        DataModuleF.Bonv_retTable.Insert;
        DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger:=1;
        DataModuleF.Bonv_retTable.FieldByName('num_bvret').AsString:= 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime:= DateOf(Today);
        DataModuleF.Bonv_retTable.FieldByName('time_bvret').AsDateTime:=TimeOf(Now);
        DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger:=0;
        DataModuleF.Bonv_retTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
        DataModuleF.Bonv_retTable.Post;
        codeBR := DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;
      end else
          begin
            DataModuleF.Bonv_retTable.Last;
            codeBR := DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bonv_ret_list WHERE code_bvret = ' + QuotedStr(IntToStr(codeBR));
            MainForm.SQLQuery.Active:=True;

           if MainForm.SQLQuery.RecordCount <= 0 then
           begin
        //   DataModuleF.Bonv_retTable.Last;
           codeBR := DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger;
             DataModuleF.Bonv_retTable.Edit;
             DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime:= DateOf(Today);
             DataModuleF.Bonv_retTable.FieldByName('time_bvret').AsDateTime:= TimeOf(Now);
             DataModuleF.Bonv_retTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
             DataModuleF.Bonv_retTable.Post;

           end else
                 begin
              //   DataModuleF.Bonv_retTable.Last;
                // codeBR := DataModuleF.Bonv_retTable.FieldByName('code_bvret'];
                 DataModuleF.Bonv_retTable.Insert;
                 DataModuleF.Bonv_retTable.FieldByName('code_bvret').AsInteger:= codeBR + 1;
                 DataModuleF.Bonv_retTable.FieldByName('num_bvret').AsString:=  'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBR + 1)]);
                 DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime:= DateOf(Today);
                 DataModuleF.Bonv_retTable.FieldByName('time_bvret').AsDateTime:= TimeOf(Now);
                 DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger:=0;
                 DataModuleF.Bonv_retTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                 DataModuleF.Bonv_retTable.Post;
                 end;
     //    BonRetVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

   DataModuleF.Bonv_ret_listTable.IndexFieldNames:='code_bvret';

           BonRetVGestionF.Tag:= 0;
      BonRetVGestionF.ShowModal;

 finally
//    BonRetVGestionF.Free

         FreeAndNil(BonRetVGestionF);

 end;

//      DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.Last;
DataModuleF.Bonv_retTable.EnableControls;

            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;

end;

procedure TBonRetVF.FisrtBVRetbtnClick(Sender: TObject);
begin
BVRetListDBGridEh.DataSource.DataSet.First;
end;

procedure TBonRetVF.LastBVRetbtnClick(Sender: TObject);
begin
BVRetListDBGridEh.DataSource.DataSet.Last;
end;

procedure TBonRetVF.PreviosBVRetbtnClick(Sender: TObject);
begin
BVRetListDBGridEh.DataSource.DataSet.Prior;
end;

procedure TBonRetVF.NextBVRetbtnClick(Sender: TObject);
begin
BVRetListDBGridEh.DataSource.DataSet.Next;
end;

procedure TBonRetVF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
DataModuleF.Bonv_retTable.Filtered:= False;
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

procedure TBonRetVF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonRetVF.BVRetListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

 if gdSelected in State then
begin
   BVRetListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BVRetListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (DataModuleF.Bonv_retTable.FieldValues['MontantRes'] > 0)    then
 begin
 BVRetListDBGridEh.Canvas.Font.Color:=$004735F9;
 BVRetListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (DataModuleF.Bonv_retTable.FieldValues['MontantRes'] < 0)    then
 begin
 BVRetListDBGridEh.Canvas.Font.Color:=$00519509;
 BVRetListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

 HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBVRetEdt.Text,State);
end;

procedure TBonRetVF.BVRetListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVRetListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVRetBtnClick(Sender) ;
  end else exit
end;

procedure TBonRetVF.BVRetListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBVRetBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBVRetEdt.SetFocus;
  if not BVRetListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBVRetBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBVRetBtnClick(Sender);
  end else Exit;
end;

procedure TBonRetVF.BVRetListDBGridEhSortMarkingChanged(Sender: TObject);
begin
  BVRetListDBGridEh.DefaultApplySorting;
end;

procedure TBonRetVF.BVRetListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
    DataModuleF.Bonv_retTable.IndexesActive:= False;
end;

procedure TBonRetVF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   DataModuleF.Bonv_retTable.Filtered:= False;
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

procedure TBonRetVF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
DataModuleF.Bonv_retTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonRetVF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     DataModuleF.Bonv_retTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;
     FilterBVLivBtn.ImageIndex:=49;
     DataModuleF.Bonv_retTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonRetVF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 DataModuleF.Bonv_retTable.Filtered:=False;
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
  DataModuleF.Bonv_retTable.Filtered := false;
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

procedure TBonRetVF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonRetVF.EditBVRetBtnClick(Sender: TObject);
var
 CodeF : Integer;

 begin
    if NOT (DataModuleF.Bonv_retTable.IsEmpty) Then
   begin
     if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;

    DataModuleF.Bonv_ret_listTable.Active:=True;
    if  NOT (DataModuleF.Bonv_ret_listTable.IsEmpty) then
   begin

    DataModuleF.Bonv_ret_listTable.Active:=False;


      DataModuleF.Bonv_ret_listTable.IndexFieldNames:='code_bvret';

      BonRetVGestionF := TBonRetVGestionF.Create(nil);
      try


         BonRetVGestionF.NumBonRetVGEdt.Caption := DataModuleF.Bonv_retTable.FieldByName('num_bvret').AsString;
         BonRetVGestionF.DateBonRetVGD.Date:= DataModuleF.Bonv_retTable.FieldByName('date_bvret').AsDateTime;
         BonRetVGestionF.ObserBonRetVGMem.Lines.Text := DataModuleF.Bonv_retTable.FieldByName('obser_bvret').AsString;
         if (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger<> null) and (DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger<> 0) then
         begin
         CodeF:=DataModuleF.Bonv_retTable.FieldByName('code_c').AsInteger;
         BonRetVGestionF.ClientBonRetVGCbx.Text:= DataModuleF.Bonv_retTable.FieldByName('clientbvret').AsWideString;
          end;

         if (DataModuleF.Bonv_retTable.FieldByName('code_mdpai').AsInteger<> null ) AND (DataModuleF.Bonv_retTable.FieldByName('code_mdpai').AsInteger<> 0) then
         begin
         CodeF:=DataModuleF.Bonv_retTable.FieldByName('code_mdpai').AsInteger;
           MainForm.Mode_paiementTable.Active:=false;
           MainForm.Mode_paiementTable.SQL.Clear;
           MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
           MainForm.Mode_paiementTable.Active:=True;
           BonRetVGestionF.ModePaieBonRetVGCbx.Text:= MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString;
           MainForm.Mode_paiementTable.Active:=false;
           MainForm.Mode_paiementTable.SQL.Clear;
           MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
           MainForm.Mode_paiementTable.Active:=True;

         end;
         if (DataModuleF.Bonv_retTable.FieldByName('code_cmpt').AsInteger<> null) AND (DataModuleF.Bonv_retTable.FieldByName('code_cmpt').AsInteger<> 0) then
         begin
         CodeF:=DataModuleF.Bonv_retTable.FieldByName('code_cmpt').AsInteger;
           MainForm.CompteTable.Active:=false;
           MainForm.CompteTable.SQL.Clear;
           MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
           MainForm.CompteTable.Active:=True;
           BonRetVGestionF.CompteBonRetVGCbx.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;
           MainForm.CompteTable.Active:=false;
           MainForm.CompteTable.SQL.Clear;
           MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
           MainForm.CompteTable.Active:=True;
         end;
         if DataModuleF.Bonv_retTable.FieldByName('num_cheque_bvret').AsString<> null then
         begin
          BonRetVGestionF.NChequeBonRetVGCbx.Text:= DataModuleF.Bonv_retTable.FieldByName('num_cheque_bvret').AsString;
         end;



     if (DataModuleF.Bonv_retTable.FieldByName('RemisePerc').AsFloat<> null) AND (DataModuleF.Bonv_retTable.FieldByName('remise_bvret').AsFloat<> 0) then
     begin
      BonRetVGestionF.RemisePerctageBonRetVGEdt.Text :=     CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('RemisePerc').AsFloat, ffNumber, 2);
      BonRetVGestionF.RemiseBonRetVGEdt.Text :=     CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('remise_bvret').AsFloat, ffNumber, 2);
     end;

       if (DataModuleF.Bonv_retTable.FieldByName('montht_bvret').AsFloat<> null) then
       begin
      BonRetVGestionF.BonRetTotalHTLbl.Caption :=    CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('montht_bvret').AsFloat, ffNumber, 2);
       end;
      if (DataModuleF.Bonv_retTable.FieldByName('MontantTVA').AsFloat<> null) then
       begin
      BonRetVGestionF.BonRetTotalTVALbl.Caption :=   CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('MontantTVA').AsFloat, ffNumber, 2);
       end;
       if (DataModuleF.Bonv_retTable.FieldByName('montttc_bvret').AsFloat<> null) then
       begin
      BonRetVGestionF.BonRetTotalTTCLbl.Caption :=   CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('montttc_bvret').AsFloat, ffNumber, 2);
       end;
       if (DataModuleF.Bonv_retTable.FieldByName('montver_bvret').AsFloat<> null) then
       begin
      BonRetVGestionF.BonRetRegleLbl.Caption :=      CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('montver_bvret').AsFloat, ffNumber, 2);
       end;
       if (DataModuleF.Bonv_retTable.FieldByName('MontantRes').AsFloat<> null) then
       begin
      BonRetVGestionF.BonRetResteLbl.Caption :=      CurrToStrF(DataModuleF.Bonv_retTable.FieldByName('MontantRes').AsFloat, ffNumber, 2);
       end;



       if DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean = True then
       begin
        FSplashVersement.DisableBonRetV;
       end else
           begin
            BonRetVGestionF.EnableBonRetV;
            BonRetVGestionF.ProduitBonRetGCbx.TabOrder:=0;
           end;
      BonRetVGestionF.Tag:= 1;
      DataModuleF.Bonv_ret_listTable.Refresh;
      BonRetVGestionF.ShowModal;



      finally
       FreeAndNil(BonRetVGestionF);
      end;


     end else
       begin
         AddBVRetBtnClick(Sender);
       end;

  end;
 end;

procedure TBonRetVF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  DataModuleF.Bonv_retTable.Filtered:= False;
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

procedure TBonRetVF.DeleteBVRetBtnClick(Sender: TObject);
begin

if NOT (DataModuleF.Bonv_retTable.IsEmpty) then
 begin
    if  (DataModuleF.Bonv_retTable.FieldByName('valider_bvret').AsBoolean <> True ) then
    begin
     DataModuleF.Bonv_ret_listTable.Active:=True;

      if NOT (DataModuleF.Bonv_ret_listTable.IsEmpty) then
       begin

             FSplashAddUnite:=TFSplashAddUnite.Create(BonRetVF);
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
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 50 ;
         end
          else
          begin
                  DataModuleF.Bonv_retTable.Delete ;
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

//     DataModuleF.Bonv_retTable.Active:= False;
//    DataModuleF.Bonv_retTable.SQL.clear;
//    DataModuleF.Bonv_retTable.sql.Text:='SELECT * FROM bonv_ret WHERE date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
//    DataModuleF.Bonv_retTable.Active:= True;
//    DataModuleF.Bonv_retTable.EnableControls;
end;


procedure IncArray;
var i : integer;
    data : array of integer;
 // PData = ^TData;

begin
  for i := Low(data) to High(data) do
    data[i] := data[i] + 5;
end;



procedure TBonRetVF.RefreshGirdBtnClick(Sender: TObject);
begin
DataModuleF.Bonv_retTable.Close;
DataModuleF.Bonv_retTable.Open;
end;

procedure TBonRetVF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 DataModuleF.Bonv_retTable.Filtered:= False;
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

procedure TBonRetVF.ResearchBVRetEdtChange(Sender: TObject);

begin

 //----------- Searching in databese-------------------//

    if ResearchBVRetEdt.Text<>'' then
    begin

          if ResherchBVRClientRdioBtn.Checked then
          begin
          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Active:=False;
          DataModuleF.Bonv_retTable.SQL.Clear;
          DataModuleF.Bonv_retTable.SQL.Text:= BRVSQL+' WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVRetEdt.Text)+'%'+''')' +')';
          DataModuleF.Bonv_retTable.Active:=True;
          DataModuleF.Bonv_retTable.EnableControls;

          end;

          if ResherchBVRNumBRdioBtn.Checked then
          begin
          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Active:=False;
          DataModuleF.Bonv_retTable.SQL.Clear;
          DataModuleF.Bonv_retTable.SQL.Text:= BRVSQL+' WHERE LOWER(num_bvret) LIKE LOWER' +'('''+'%'+(ResearchBVRetEdt.Text)+'%'+''')' ;
          DataModuleF.Bonv_retTable.Active:=True;
          DataModuleF.Bonv_retTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Active:=False;
          DataModuleF.Bonv_retTable.SQL.Clear;
          DataModuleF.Bonv_retTable.SQL.Text:= BRVSQL ;
          DataModuleF.Bonv_retTable.Active:=True;
          DataModuleF.Bonv_retTable.EnableControls;

     end;

end;

procedure TBonRetVF.ResearchBVRetEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     DataModuleF.Bonv_retTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     DataModuleF.Bonv_retTable.Prior;
  end;
end;

procedure TBonRetVF.ResearchBVRetEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBVRetEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;


    //----------- Searching in databese-------------------//

    if ResearchBVRetEdt.Text<>'' then
    begin

          if ResherchBVRClientRdioBtn.Checked then
          begin
          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Active:=False;
          DataModuleF.Bonv_retTable.SQL.Clear;
          DataModuleF.Bonv_retTable.SQL.Text:= BRVSQL+' WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+(ResearchBVRetEdt.Text+'%')+''')' +')';
          DataModuleF.Bonv_retTable.Active:=True;
          DataModuleF.Bonv_retTable.EnableControls;

          end;

          if ResherchBVRNumBRdioBtn.Checked then
          begin
          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Active:=False;
          DataModuleF.Bonv_retTable.SQL.Clear;
          DataModuleF.Bonv_retTable.SQL.Text:= BRVSQL+' WHERE LOWER(num_bvret) LIKE LOWER' +'('''+(ResearchBVRetEdt.Text+'%')+''')' ;
          DataModuleF.Bonv_retTable.Active:=True;
          DataModuleF.Bonv_retTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          DataModuleF.Bonv_retTable.DisableControls;
          DataModuleF.Bonv_retTable.Active:=False;
          DataModuleF.Bonv_retTable.SQL.Clear;
          DataModuleF.Bonv_retTable.SQL.Text:= BRVSQL ;
          DataModuleF.Bonv_retTable.Active:=True;
          DataModuleF.Bonv_retTable.EnableControls;

     end;

end;

end;

procedure TBonRetVF.DateStartBVRetDChange(Sender: TObject);
begin
ClearFilterBVLivPMenuClick(Sender);
DataModuleF.Bonv_retTable.DisableControls;
DataModuleF.Bonv_retTable.Active:= False;
DataModuleF.Bonv_retTable.SQL.clear;
DataModuleF.Bonv_retTable.sql.Text:= BRVSQL+' WHERE date_bvret BETWEEN '''+(DateToStr(DateStartBVRetD.Date))+ ''' AND ''' +(DateToStr(DateEndBVRetD.Date))+'''';
DataModuleF.Bonv_retTable.Active:= True;
DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.FormShow(Sender: TObject);
Begin
  DataModuleF.Bonv_retTable.Active:= True;
  DateStartBVRetD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVRetD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVRetDChange(Sender);
end;
procedure TBonRetVF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonRetVfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVRetD.Date) + ' au ' + DateToStr(DateEndBVRetD.Date) ;

    Agent:= BonRetVfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;
procedure TBonRetVF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonRetVF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   DataModuleF.Bonv_retTable.Filtered:= False;
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

procedure TBonRetVF.SumGirdBVRetBtnClick(Sender: TObject);
begin
  if SumGirdBVRetBtn.Tag = 0 then
  begin
    ValideFilterBVLivPMenuClick(Sender);
    BVRetListDBGridEh.FooterRowCount:=1;
    SumGirdBVRetBtn.Tag := 1;
  end else
      begin
        BVRetListDBGridEh.FooterRowCount:=0;
        SumGirdBVRetBtn.Tag := 0;
      end;
end;

procedure TBonRetVF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'Liste des BR';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BVRetListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//DataModuleF.Bonv_retTable.DisableControls;
//
//    GettingData;
//
//BonRetVfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Liste des BR';
//BonRetVfrxRprt.Export(frxXLSExport1);
//
//DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.AdvToolButton2Click(Sender: TObject);
begin
DataModuleF.Bonv_retTable.DisableControls;

    GettingData;

BonRetVfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BR';
BonRetVfrxRprt.Export(frxPDFExport1);


DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.AdvToolButton3Click(Sender: TObject);
begin
  DataModuleF.Bonv_retTable.DisableControls;

   GettingData;

  BonRetVfrxRprt.PrepareReport;
  BonRetVfrxRprt.ShowReport;

  DataModuleF.Bonv_retTable.EnableControls;
end;

procedure TBonRetVF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonRetVF.Active = True)  AND  (Assigned(BonRetVGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBVRetBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBVRetBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBVRetBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonRetVF.Active = True)  AND (BonRetVGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBVRetBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBVRetBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBVRetBtnClick(Screen);
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

procedure TBonRetVF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   DataModuleF.Bonv_retTable.Filtered:= False;
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

procedure TBonRetVF.BVRetListDBGridEhDblClick(Sender: TObject);
begin
if BVRetListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonRetVF.EditBVRetBtnClick(Sender) ;
end;
end;

procedure TBonRetVF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(BVRetListDBGridEh,GetCurrentDir +'\bin\gc_brlst');

 FreeAndNil(BonRetVF);
end;

procedure TBonRetVF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_brlst') then
   begin

    MainForm.LoadGridLayout(BVRetListDBGridEh,GetCurrentDir +'\bin\gc_brlst');
   end;
end;

procedure TBonRetVF.FormPaint(Sender: TObject);
begin
  MainForm.ClientTable.DisableControls;
  MainForm.ClientTable.Active:=False;
  MainForm.ClientTable.SQL.Clear;
  MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
  MainForm.ClientTable.Active:=True;
  MainForm.ClientTable.EnableControls;

  if MainForm.totaux_ur.Checked then
      begin

       SumGirdBVRetBtn.Enabled:= True;

      end else
      begin

       SumGirdBVRetBtn.Enabled:= False;

      end;

end;

end.
