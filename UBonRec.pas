unit UBonRec;

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
  TBonRecF = class(TForm)
    BARecListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBARecLbl: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBARecEdt: TSearchBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DateEndBARecD: TDateTimePicker;
    DateStartBARecD: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ResherchBARFourRdioBtn: TRadioButton;
    ResherchBARNumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    frxBonRecDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BonRecfrxRprt: TfrxReport;
    PreviosBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    LastBARecbtn: TsSpeedButton;
    FisrtBARecbtn: TsSpeedButton;
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
    SumGirdBARecBtn: TAdvToolButton;
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
    procedure AddBARecBtnClick(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure BARecListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure EditBARecBtnClick(Sender: TObject);
    procedure DeleteBARecBtnClick(Sender: TObject);
    procedure ResearchBARecEdtChange(Sender: TObject);
    procedure DateStartBARecDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BARecListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BARecListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BARecListDBGridEhKeyPress(Sender: TObject; var Key: Char);
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
    procedure SumGirdBARecBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBARecEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchBARecEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure BARecListDBGridEhTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure BARecListDBGridEhSortMarkingChanged(Sender: TObject);

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
    const BRSQL = 'SELECT *, '
+'   ((montttc_barec)-(montht_barec - remise_barec)) AS MontantTVA, '
+'   (montttc_barec - montver_barec) AS MontantRes, '
+'  CASE '
+'     WHEN remise_barec <> ''0'' AND montht_barec <> ''0'' THEN  ROUND( CAST (((remise_barec / montht_barec) * 100) as NUMERIC),2) '
+'     ELSE ''0'' '
+'  END AS RemisePerc,  '
+'   (montht_barec - remise_barec) AS NeTHT '
+' FROM bona_rec ';
  end;


var
  BonRecF: TBonRecF;

implementation

uses UMainF, UBonRecGestion, USplashVersement, USplashAddUnite, USplash,Threading,
  UClientGestion, UProduitsList;

{$R *.dfm}


procedure TBonRecF.Select_ALL;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Valid;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_NOT_Valid;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = false AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Escpace;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE code_mdpai = 1 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Cheque;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE code_mdpai = 2 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_ATerme;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE code_mdpai = 3 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Virment;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE code_mdpai = 4 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Valid_Escpace;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = true AND code_mdpai = 1 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Valid_Cheque;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = true AND code_mdpai = 2 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Valid_ATerme;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = true AND code_mdpai = 3 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Valid_Virment;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = true AND code_mdpai = 4 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_NOT_Valid_Escpace;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = false AND code_mdpai = 1';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_NOT_Valid_Cheque;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = false AND code_mdpai = 2 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_NOT_Valid_ATerme;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = false AND code_mdpai = 3 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_NOT_Valid_Virment;
begin
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE valider_barec = false AND code_mdpai = 4 AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.Select_Regle;
begin
  MainForm.Bona_recTable.Filtered := False;
  MainForm.Bona_recTable.Filter:='MontantRes <= 0 ';
  MainForm.Bona_recTable.Filtered:=True;
  MainForm.Bona_recTable.First;
end;

procedure TBonRecF.Select_NOT_Regle;
begin
  MainForm.Bona_recTable.Filtered := False;
  MainForm.Bona_recTable.Filter:='MontantRes > 0 ';
  MainForm.Bona_recTable.Filtered:=True;
  MainForm.Bona_recTable.First;
end;

procedure TBonRecF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonRecF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;




procedure TBonRecF.AddBARecBtnClick(Sender: TObject);
var
  codeBR : integer;

//  MyForm :TBonRecGestionF;
begin
ClearFilterBVLivPMenuClick(Sender);

 if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;

  MainForm.Bona_recPlistTable.Active:=False;
  MainForm.Bona_recPlistTable.IndexFieldNames:='';
  MainForm.Bona_recTable.DisableControls;
  MainForm.Bona_recTable.Active:= False;
  MainForm.Bona_recTable.SQL.clear;
  mainform.Bona_recTable.sql.Text:= BRSQL+' ORDER By code_barec';
  MainForm.Bona_recTable.Active:= True;

 codeBR:= 0;

 BonRecGestionF := TBonRecGestionF.Create(nil);
 try

  if Assigned(BonRecF) then
  begin
  ResearchBARecEdt.Text:='';
  end;

     if MainForm.Bona_recTable.RecordCount <= 0 then
      begin

        MainForm.Bona_recTable.Insert;
        MainForm.Bona_recTable.FieldByName('code_barec').AsInteger:=1;
        MainForm.Bona_recTable.FieldByName('num_barec').AsString:= 'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime:= DateOf(Today);
        MainForm.Bona_recTable.FieldByName('time_barec').AsDateTime:=TimeOf(Now);
        MainForm.Bona_recTable.FieldByName('code_f').AsInteger:=0;
        MainForm.Bona_recTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bona_recTable.Post;
        codeBR := MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
      end else
          begin
            MainForm.Bona_recTable.Last;
            codeBR := MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.Text:= 'SELECT * FROM bona_rec_list WHERE code_barec = ' + QuotedStr(IntToStr(codeBR));
            MainForm.SQLQuery.Active:=True;

           if MainForm.SQLQuery.RecordCount <= 0 then
           begin
        //   MainForm.Bona_recTable.Last;
           codeBR := MainForm.Bona_recTable.FieldByName('code_barec').AsInteger;
             MainForm.Bona_recTable.Edit;
             MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime:= DateOf(Today);
             MainForm.Bona_recTable.FieldByName('time_barec').AsDateTime:= TimeOf(Now);
             MainForm.Bona_recTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
             MainForm.Bona_recTable.Post;

           end else
                 begin
              //   MainForm.Bona_recTable.Last;
                // codeBR := MainForm.Bona_recTable.FieldByName('code_barec'];
                 MainForm.Bona_recTable.Insert;
                 MainForm.Bona_recTable.FieldByName('code_barec').AsInteger:= codeBR + 1;
                 MainForm.Bona_recTable.FieldByName('num_barec').AsString:=  'BR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeBR + 1)]);
                 MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime:= DateOf(Today);
                 MainForm.Bona_recTable.FieldByName('time_barec').AsDateTime:= TimeOf(Now);
                 MainForm.Bona_recTable.FieldByName('code_f').AsInteger:=0;
                 MainForm.Bona_recTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
                 MainForm.Bona_recTable.Post;
                 end;
     //    BonRecGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;

   MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

           BonRecGestionF.Tag:= 0;
      BonRecGestionF.ShowModal;

 finally
//    BonRecGestionF.Free

         FreeAndNil(BonRecGestionF);

 end;

//      MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE bon_or_no_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.Last;
MainForm.Bona_recTable.EnableControls;

            MainForm.SQLQuery.Active:=False;
            MainForm.SQLQuery.SQL.Clear;

end;

procedure TBonRecF.FisrtBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.First;
end;

procedure TBonRecF.LastBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.Last;
end;

procedure TBonRecF.PreviosBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.Prior;
end;

procedure TBonRecF.NextBARecbtnClick(Sender: TObject);
begin
BARecListDBGridEh.DataSource.DataSet.Next;
end;

procedure TBonRecF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
MainForm.Bona_recTable.Filtered:= False;
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

procedure TBonRecF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonRecF.BARecListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

 if gdSelected in State then
begin
   BARecListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.Bona_recTable.FieldValues['MontantRes'] > 0)    then
 begin
 BARecListDBGridEh.Canvas.Font.Color:=$004735F9;
 BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
  if  (MainForm.Bona_recTable.FieldValues['MontantRes'] < 0)    then
 begin
 BARecListDBGridEh.Canvas.Font.Color:=$00519509;
 BARecListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

 HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBARecEdt.Text,State);
end;

procedure TBonRecF.BARecListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BARecListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBARecBtnClick(Sender) ;
  end else exit
end;

procedure TBonRecF.BARecListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBARecBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBARecEdt.SetFocus;
  if not BARecListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBARecBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBARecBtnClick(Sender);
  end else Exit;
end;

procedure TBonRecF.BARecListDBGridEhSortMarkingChanged(Sender: TObject);
begin
  BARecListDBGridEh.DefaultApplySorting;
end;

procedure TBonRecF.BARecListDBGridEhTitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
    MainForm.Bona_recTable.IndexesActive:= False;
end;

procedure TBonRecF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bona_recTable.Filtered:= False;
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

procedure TBonRecF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
MainForm.Bona_recTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonRecF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     MainForm.Bona_recTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bona_recTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonRecF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 MainForm.Bona_recTable.Filtered:=False;
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
  MainForm.Bona_recTable.Filtered := false;
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

procedure TBonRecF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonRecF.EditBARecBtnClick(Sender: TObject);
var
 CodeF : Integer;

 begin
    if NOT (MainForm.Bona_recTable.IsEmpty) Then
   begin
     if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;

    MainForm.Bona_recPlistTable.Active:=True;
    if  NOT (MainForm.Bona_recPlistTable.IsEmpty) then
   begin

    MainForm.Bona_recPlistTable.Active:=False;


      MainForm.Bona_recPlistTable.IndexFieldNames:='code_barec';

      BonRecGestionF := TBonRecGestionF.Create(nil);
      try


         BonRecGestionF.NumBonRecGEdt.Caption := MainForm.Bona_recTable.FieldByName('num_barec').AsString;
         BonRecGestionF.DateBonRecGD.Date:= MainForm.Bona_recTable.FieldByName('date_barec').AsDateTime;
         BonRecGestionF.ObserBonRecGMem.Lines.Text := MainForm.Bona_recTable.FieldByName('obser_barec').AsString;
         if (MainForm.Bona_recTable.FieldByName('code_f').AsInteger<> null) and (MainForm.Bona_recTable.FieldByName('code_f').AsInteger<> 0) then
         begin
         CodeF:=MainForm.Bona_recTable.FieldByName('code_f').AsInteger;
         BonRecGestionF.FournisseurBonRecGCbx.Text:= MainForm.Bona_recTable.FieldByName('fourbarec').AsWideString;
          end;

         if (MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger<> null ) AND (MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger<> 0) then
         begin
         CodeF:=MainForm.Bona_recTable.FieldByName('code_mdpai').AsInteger;
           MainForm.Mode_paiementTable.Active:=false;
           MainForm.Mode_paiementTable.SQL.Clear;
           MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeF ) ) ;
           MainForm.Mode_paiementTable.Active:=True;
           BonRecGestionF.ModePaieBonRecGCbx.Text:= MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString;
           MainForm.Mode_paiementTable.Active:=false;
           MainForm.Mode_paiementTable.SQL.Clear;
           MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
           MainForm.Mode_paiementTable.Active:=True;

         end;
         if (MainForm.Bona_recTable.FieldByName('code_cmpt').AsInteger<> null) AND (MainForm.Bona_recTable.FieldByName('code_cmpt').AsInteger<> 0) then
         begin
         CodeF:=MainForm.Bona_recTable.FieldByName('code_cmpt').AsInteger;
           MainForm.CompteTable.Active:=false;
           MainForm.CompteTable.SQL.Clear;
           MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeF ) ) ;
           MainForm.CompteTable.Active:=True;
           BonRecGestionF.CompteBonRecGCbx.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;
           MainForm.CompteTable.Active:=false;
           MainForm.CompteTable.SQL.Clear;
           MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
           MainForm.CompteTable.Active:=True;
         end;
         if MainForm.Bona_recTable.FieldByName('num_cheque_barec').AsString <> null then
         begin
          BonRecGestionF.NChequeBonRecGCbx.Text:= MainForm.Bona_recTable.FieldByName('num_cheque_barec').AsString;
         end;



     if (MainForm.Bona_recTable.FieldByName('RemisePerc').AsFloat<> null) AND (MainForm.Bona_recTable.FieldByName('remise_barec').AsFloat<> 0) then
     begin
      BonRecGestionF.RemisePerctageBonRecGEdt.Text :=     FloatToStrF(MainForm.Bona_recTable.FieldByName('RemisePerc').AsFloat, ffNumber, 14, 2);
      BonRecGestionF.RemiseBonRecGEdt.Text :=     FloatToStrF(MainForm.Bona_recTable.FieldByName('remise_barec').AsFloat, ffNumber, 14, 2);
     end;

       if (MainForm.Bona_recTable.FieldByName('montht_barec').AsFloat <> null) then
       begin
      BonRecGestionF.BonRecTotalHTLbl.Caption :=    FloatToStrF(MainForm.Bona_recTable.FieldByName('montht_barec').AsFloat, ffNumber, 14, 2);
       end;
      if (MainForm.Bona_recTable.FieldByName('MontantTVA').AsFloat <> null) then
       begin
      BonRecGestionF.BonRecTotalTVALbl.Caption :=   FloatToStrF(MainForm.Bona_recTable.FieldByName('MontantTVA').AsFloat, ffNumber, 14, 2);
       end;
       if (MainForm.Bona_recTable.FieldByName('montttc_barec').AsFloat <> null) then
       begin
      BonRecGestionF.BonRecTotalTTCLbl.Caption :=   FloatToStrF(MainForm.Bona_recTable.FieldByName('montttc_barec').AsFloat, ffNumber, 14, 2);
       end;
       if (MainForm.Bona_recTable.FieldByName('montver_barec').AsFloat <> null) then
       begin
      BonRecGestionF.BonRecRegleLbl.Caption :=      FloatToStrF(MainForm.Bona_recTable.FieldByName('montver_barec').AsFloat, ffNumber, 14, 2);
       end;
       if (MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat <> null) then
       begin
      BonRecGestionF.BonRecResteLbl.Caption :=      FloatToStrF(MainForm.Bona_recTable.FieldByName('MontantRes').AsFloat, ffNumber, 14, 2);
       end;



       if MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean = True then
       begin
        FSplashVersement.DisableBonRec;
       end else
           begin
            BonRecGestionF.EnableBonRec;
            BonRecGestionF.ProduitBonRecGCbx.TabOrder:=0;
           end;
      BonRecGestionF.Tag:= 1;
      MainForm.Bona_recPlistTable.Refresh;
      BonRecGestionF.ShowModal;



      finally
       FreeAndNil(BonRecGestionF);
      end;


     end else
       begin
         AddBARecBtnClick(Sender);
       end;

  end;
 end;

procedure TBonRecF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  MainForm.Bona_recTable.Filtered:= False;
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

procedure TBonRecF.DeleteBARecBtnClick(Sender: TObject);
begin

if NOT (MainForm.Bona_recTable.IsEmpty) then
 begin
    if  (MainForm.Bona_recTable.FieldByName('valider_barec').AsBoolean <> True ) then
    begin
     MainForm.Bona_recPlistTable.Active:=True;

      if NOT (MainForm.Bona_recPlistTable.IsEmpty) then
       begin

             FSplashAddUnite:=TFSplashAddUnite.Create(BonRecF);
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
          FSplashAddUnite.OKAddUniteSBtn.Tag:= 8 ;
         end
          else
          begin
                  MainForm.Bona_recTable.Delete ;
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

//     MainForm.Bona_recTable.Active:= False;
//    MainForm.Bona_recTable.SQL.clear;
//    mainform.Bona_recTable.sql.Text:='SELECT * FROM bona_rec WHERE bon_or_no_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
//    MainForm.Bona_recTable.Active:= True;
//    MainForm.Bona_recTable.EnableControls;
end;


procedure IncArray;
var i : integer;
    data : array of integer;
 // PData = ^TData;

begin
  for i := Low(data) to High(data) do
    data[i] := data[i] + 5;
end;



procedure TBonRecF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Bona_recTable.Close;
MainForm.Bona_recTable.Open;
end;

procedure TBonRecF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 MainForm.Bona_recTable.Filtered:= False;
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

procedure TBonRecF.ResearchBARecEdtChange(Sender: TObject);
var SearchValue : String;
begin
 //----------- Searching in databese-------------------//
  if ResearchBARecEdt.Text<>'' then
  begin
    SearchValue:=   '('''+'%'+(ResearchBARecEdt.Text)+'%'+''')';
    if ResherchBARFourRdioBtn.Checked then
    begin
      MainForm.Bona_recTable.DisableControls;
      MainForm.Bona_recTable.Active:=False;
      MainForm.Bona_recTable.SQL.Clear;
      MainForm.Bona_recTable.SQL.Text:= BRSQL +' WHERE code_f IN( '+
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
      MainForm.Bona_recTable.Active:=True;
      MainForm.Bona_recTable.EnableControls;
    end;
    if ResherchBARNumBRdioBtn.Checked then
    begin
      MainForm.Bona_recTable.DisableControls;
      MainForm.Bona_recTable.Active:=False;
      MainForm.Bona_recTable.SQL.Clear;
      MainForm.Bona_recTable.SQL.Text:= BRSQL+' WHERE LOWER(num_barec) LIKE LOWER' +'('''+'%'+(ResearchBARecEdt.Text)+'%'+''')' ;
      MainForm.Bona_recTable.Active:=True;
      MainForm.Bona_recTable.EnableControls;
    end;
  end else
   begin
      MainForm.Bona_recTable.DisableControls;
      MainForm.Bona_recTable.Active:=False;
      MainForm.Bona_recTable.SQL.Clear;
      MainForm.Bona_recTable.SQL.Text:= BRSQL+' WHERE bon_or_no_barec = true ' ;
      MainForm.Bona_recTable.Active:=True;
      MainForm.Bona_recTable.EnableControls;
   end;

end;

procedure TBonRecF.ResearchBARecEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.Bona_recTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.Bona_recTable.Prior;
  end;
end;

procedure TBonRecF.ResearchBARecEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBARecEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;


    //----------- Searching in databese-------------------//

    if ResearchBARecEdt.Text<>'' then
    begin

          if ResherchBARFourRdioBtn.Checked then
          begin
          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:= BRSQL+' WHERE code_f IN( SELECT code_f FROM fournisseur WHERE LOWER(nom_f) LIKE LOWER' +'('''+(ResearchBARecEdt.Text+'%')+''')' +')';
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;

          end;

          if ResherchBARNumBRdioBtn.Checked then
          begin
          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:= BRSQL+' WHERE LOWER(num_barec) LIKE LOWER' +'('''+(ResearchBARecEdt.Text+'%')+''')' ;
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;
          end;


    end else
     begin
          MainForm.FournisseurTable.DisableControls;
          MainForm.FournisseurTable.Active:=False;
          MainForm.FournisseurTable.SQL.Clear;
          MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ' ;
          MainForm.FournisseurTable.Active:=True;
          MainForm.FournisseurTable.EnableControls;

          MainForm.Bona_recTable.DisableControls;
          MainForm.Bona_recTable.Active:=False;
          MainForm.Bona_recTable.SQL.Clear;
          MainForm.Bona_recTable.SQL.Text:= BRSQL+' WHERE bon_or_no_barec = true ' ;
          MainForm.Bona_recTable.Active:=True;
          MainForm.Bona_recTable.EnableControls;

     end;

end;

end;

procedure TBonRecF.DateStartBARecDChange(Sender: TObject);
begin
ClearFilterBVLivPMenuClick(Sender);
MainForm.Bona_recTable.DisableControls;
MainForm.Bona_recTable.Active:= False;
MainForm.Bona_recTable.SQL.clear;
mainform.Bona_recTable.sql.Text:= BRSQL+' WHERE bon_or_no_barec = true AND date_barec BETWEEN '''+(DateToStr(DateStartBARecD.Date))+ ''' AND ''' +(DateToStr(DateEndBARecD.Date))+'''';
MainForm.Bona_recTable.Active:= True;
MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.FormShow(Sender: TObject);
Begin
  MainForm.Bona_recTable.Active:= True;
  DateStartBARecD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBARecD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBARecDChange(Sender);
end;
procedure TBonRecF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonRecfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBARecD.Date) + ' au ' + DateToStr(DateEndBARecD.Date) ;

    Agent:= BonRecfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;
procedure TBonRecF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonRecF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bona_recTable.Filtered:= False;
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

procedure TBonRecF.SumGirdBARecBtnClick(Sender: TObject);
begin
  if SumGirdBARecBtn.Tag = 0 then
  begin
    ValideFilterBVLivPMenuClick(Sender);
    BARecListDBGridEh.FooterRowCount:=1;
    SumGirdBARecBtn.Tag := 1;
  end else
      begin
        BARecListDBGridEh.FooterRowCount:=0;
        SumGirdBARecBtn.Tag := 0;
      end;
end;

procedure TBonRecF.AdvToolButton1Click(Sender: TObject);
begin

 ProduitListSaveDg.FileName:= 'Liste des BR';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BARecListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.Bona_recTable.DisableControls;
//
//    GettingData;
//
//BonRecfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Liste des BR';
//BonRecfrxRprt.Export(frxXLSExport1);
//
//MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Bona_recTable.DisableControls;

    GettingData;

BonRecfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des BR';
BonRecfrxRprt.Export(frxPDFExport1);


MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Bona_recTable.DisableControls;

   GettingData;

  BonRecfrxRprt.PrepareReport;
  BonRecfrxRprt.ShowReport;

  MainForm.Bona_recTable.EnableControls;
end;

procedure TBonRecF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonRecF.Active = True)  AND  (Assigned(BonRecGestionF) = False)  then
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
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonRecF.Active = True)  AND (BonRecGestionF.Showing = False)   then
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
             if  (GetKeyState(VK_F12) < 0)  then
          begin
            AdvToolButton3Click(Screen) ;
            Handled := true;
          end;
      end;
     end;
end;

procedure TBonRecF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bona_recTable.Filtered:= False;
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

procedure TBonRecF.BARecListDBGridEhDblClick(Sender: TObject);
begin
if BARecListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonRecF.EditBARecBtnClick(Sender) ;
end;
end;

procedure TBonRecF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(BARecListDBGridEh,GetCurrentDir +'\bin\gc_brlst');

 FreeAndNil(BonRecF);
end;

procedure TBonRecF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_brlst') then
   begin

    MainForm.LoadGridLayout(BARecListDBGridEh,GetCurrentDir +'\bin\gc_brlst');
   end;
end;

procedure TBonRecF.FormPaint(Sender: TObject);
begin
  MainForm.FournisseurTable.DisableControls;
  MainForm.FournisseurTable.Active:=False;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text:='SELECT * FROM fournisseur ';
  MainForm.FournisseurTable.Active:=True;
  MainForm.FournisseurTable.EnableControls;

  if MainForm.totaux_ur.Checked then
      begin

       SumGirdBARecBtn.Enabled:= True;

      end else
      begin

       SumGirdBARecBtn.Enabled:= False;

      end;

end;

end.
