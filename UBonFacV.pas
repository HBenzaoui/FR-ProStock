unit UBonFacV;

interface

uses
  Winapi.Windows,
  DateUtils,
  MMSystem,
   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, acImage, Vcl.Menus;

type
  TBonFacVF = class(TForm)
    BVFacListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBVFacBtn: TAdvToolButton;
    DeleteBVFacBtn: TAdvToolButton;
    AddBVFacBtn: TAdvToolButton;
    ResearchBARecLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchBVFacEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVFacD: TDateTimePicker;
    DateStartBVFacD: TDateTimePicker;
    Panel3: TPanel;
    ResherchBFVClientRdioBtn: TRadioButton;
    ResherchBFVNumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    BonFacVfrxRprt: TfrxReport;
    frxBonFacVDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    FisrtBVFacbtn: TsSpeedButton;
    PreviosBVFacbtn: TsSpeedButton;
    NextBVFacbtn: TsSpeedButton;
    LastBVFacbtn: TsSpeedButton;
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
    procedure AddBVFacBtnClick(Sender: TObject);
    procedure DateStartBVFacDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FisrtBVFacbtnClick(Sender: TObject);
    procedure PreviosBVFacbtnClick(Sender: TObject);
    procedure NextBVFacbtnClick(Sender: TObject);
    procedure LastBVFacbtnClick(Sender: TObject);
    procedure ResearchBVFacEdtChange(Sender: TObject);
    procedure EditBVFacBtnClick(Sender: TObject);
    procedure DeleteBVFacBtnClick(Sender: TObject);
    procedure BVFacListDBGridEhDblClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
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
  end;

var
  BonFacVF: TBonFacVF;

implementation

uses
  UMainF, UBonFacVGestion, USplashVersement, USplashAddUnite, UClientGestion,Threading,
  USplash;

{$R *.dfm}


//-------------Filtring procedures-----------------//

procedure TBonFacVF.Select_ALL;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Valid;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = true AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_NOT_Valid;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = false AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Escpace;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE code_mdpai = 1 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Cheque;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE code_mdpai = 2 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_ATerme;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE code_mdpai = 3 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Virment;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE code_mdpai = 4 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Valid_Escpace;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = true AND code_mdpai = 1 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Valid_Cheque;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = true AND code_mdpai = 2 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Valid_ATerme;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = true AND code_mdpai = 3 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Valid_Virment;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = true AND code_mdpai = 4 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_NOT_Valid_Escpace;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = false AND code_mdpai = 1';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_NOT_Valid_Cheque;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = false AND code_mdpai = 2 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_NOT_Valid_ATerme;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = false AND code_mdpai = 3 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_NOT_Valid_Virment;
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE valider_bvfac = false AND code_mdpai = 4 AND date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.Select_Regle;
begin
  MainForm.Bonv_facTable.Filtered := False;
  MainForm.Bonv_facTable.Filter:='MontantRes <= 0 ';
  MainForm.Bonv_facTable.Filtered:=True;
end;

procedure TBonFacVF.Select_NOT_Regle;
begin
  MainForm.Bonv_facTable.Filtered := False;
  MainForm.Bonv_facTable.Filter:='MontantRes > 0 ';
  MainForm.Bonv_facTable.Filtered:=True;
end;

procedure TBonFacVF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonFacVF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;



procedure TBonFacVF.AddBVFacBtnClick(Sender: TObject);
var
  codeFV : integer;

begin

 ClearFilterBVLivPMenuClick(Sender);

MainForm.Bonv_fac_listTable.Active:= False;
MainForm.Bonv_fac_listTable.IndexFieldNames:='';
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac ';
MainForm.Bonv_facTable.Active:= True;
//MainForm.Bonv_facTable.EnableControls;

  if Assigned(BonFacVF) then
  begin
  ResearchBVFacEdt.Text:='';
  end;


  codeFV:= 0;

      BonFacVGestionF := TBonFacVGestionF.Create(nil);
      try

     if MainForm.Bonv_facTable.RecordCount <= 0 then
      begin

        MainForm.Bonv_facTable.Append;
        MainForm.Bonv_facTable.FieldValues['code_bvfac']:=1;
        MainForm.Bonv_facTable.FieldValues['num_bvfac']:= 'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonv_facTable.FieldValues['date_bvfac']:= DateOf(Today);
        MainForm.Bonv_facTable.FieldValues['time_bvfac']:=TimeOf(Now);
        MainForm.Bonv_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bonv_facTable.Post;
        codeFV := MainForm.Bonv_facTable.FieldValues['code_bvfac'];
      end else
          begin
            MainForm.Bonv_facTable.Last;
            codeFV := MainForm.Bonv_facTable.FieldValues['code_bvfac'];
            MainForm.Bonv_fac_listTable.Active:=False;
            MainForm.Bonv_fac_listTable.SQL.Clear;
            MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(codeFV));
            MainForm.Bonv_fac_listTable.Active:=True;

           if MainForm.Bonv_fac_listTable.RecordCount <= 0 then
           begin

           codeFV := MainForm.Bonv_facTable.FieldValues['code_bvfac'];
           end else
           begin

           MainForm.Bonv_facTable.Append;
           MainForm.Bonv_facTable.FieldValues['code_bvfac']:= codeFV + 1;
           MainForm.Bonv_facTable.FieldValues['num_bvfac']:=  'FV'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFV + 1)]);
           MainForm.Bonv_facTable.FieldValues['date_bvfac']:= DateOf(Today);
           MainForm.Bonv_facTable.FieldValues['time_bvfac']:= TimeOf(Now);
           MainForm.Bonv_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
           MainForm.Bonv_facTable.Post;


           end;
            BonFacVGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;




      MainForm.Bonv_fac_listTable.Active:=False;
      MainForm.Bonv_fac_listTable.SQL.Clear;
      MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list';
      MainForm.Bonv_fac_listTable.Active:=True;

       MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

       BonFacVGestionF.Tag:= 0;
       BonFacVGestionF.ShowModal;

      finally
        BonFacVGestionF.Free;
      end;
     //    MainForm.Bonv_facTable.Refresh;
       //  MainForm.Bonv_fac_listTable.Refresh;


//         MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;

end;

procedure TBonFacVF.DateStartBVFacDChange(Sender: TObject);
begin
MainForm.Bonv_facTable.DisableControls;
MainForm.Bonv_facTable.Active:= False;
MainForm.Bonv_facTable.SQL.clear;
mainform.Bonv_facTable.sql.Text:='SELECT * FROM bonv_fac WHERE date_bvfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonv_facTable.Active:= True;
MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.FormShow(Sender: TObject);
begin
  DateStartBVFacD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVFAcD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVFacDChange(Sender);
end;

procedure TBonFacVF.FisrtBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonv_facTable.First;
end;

procedure TBonFacVF.PreviosBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonv_facTable.Prior;
end;

procedure TBonFacVF.NextBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonv_facTable.Next;
end;

procedure TBonFacVF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
MainForm.Bonv_facTable.Filtered:= False;
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

procedure TBonFacVF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonFacVF.LastBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonv_facTable.Last;
end;

procedure TBonFacVF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 MainForm.Bonv_facTable.Filtered:= False;
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

procedure TBonFacVF.ResearchBVFacEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVFacEdt.Text<>'' then
    begin

          if ResherchBFVClientRdioBtn.Checked then
          begin
          MainForm.Bonv_FacTable.DisableControls;
          MainForm.Bonv_FacTable.Active:=False;
          MainForm.Bonv_FacTable.SQL.Clear;
          MainForm.Bonv_FacTable.SQL.Text:='SELECT * FROM bonv_fac WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVFacEdt.Text)+'%'+''')' +')';
          MainForm.Bonv_FacTable.Active:=True;
          MainForm.Bonv_FacTable.EnableControls;

          end;

          if ResherchBFVNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_FacTable.DisableControls;
          MainForm.Bonv_FacTable.Active:=False;
          MainForm.Bonv_FacTable.SQL.Clear;
          MainForm.Bonv_FacTable.SQL.Text:='SELECT * FROM bonv_fac WHERE LOWER(num_bvfac) LIKE LOWER' +'('''+'%'+(ResearchBVFacEdt.Text)+'%'+''')' ;
          MainForm.Bonv_FacTable.Active:=True;
          MainForm.Bonv_FacTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_FacTable.DisableControls;
          MainForm.Bonv_FacTable.Active:=False;
          MainForm.Bonv_FacTable.SQL.Clear;
          MainForm.Bonv_FacTable.SQL.Text:='SELECT * FROM bonv_fac ' ;
          MainForm.Bonv_FacTable.Active:=True;
          MainForm.Bonv_FacTable.EnableControls;

     end;
end;

procedure TBonFacVF.EditBVFacBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (MainForm.Bonv_facTable.IsEmpty) Then
 begin
    MainForm.Bonv_fac_listTable.Active:=True;

  if NOT (MainForm.Bonv_fac_listTable.IsEmpty) then
    begin
//  MainForm.Bonv_facTable.Refresh;
     MainForm.Bonv_fac_listTable.Active:=False;
     MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';

      BonFAcVGestionF := TBonFacVGestionF.Create(nil);
   try
//       MainForm.Bonv_facTable.Refresh;
       BonFacVGestionF.NumBonFacVGEdt.Caption := MainForm.Bonv_facTable.FieldValues['num_bvfac'];
       BonFacVGestionF.DateBonFacVGD.Date:= MainForm.Bonv_facTable.FieldValues['date_bvfac'];
       if (MainForm.Bonv_facTable.FieldValues['code_c']<> null) and (MainForm.Bonv_facTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=MainForm.Bonv_facTable.FieldValues['code_c'];
       BonFacVGestionF.ClientBonFacVGCbx.Text:= MainForm.Bonv_facTable.FieldValues['clientbvfac'];
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE code_c ='+(IntToStr( CodeC ) ) ;
         MainForm.ClientTable.Active:=True;
         BonFacVGestionF.BonFacVGClientOLDCredit.Caption:= CurrToStrF(MainForm.ClientTable.FieldValues['oldcredit_c'],ffNumber,2);
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client ' ;
         MainForm.ClientTable.Active:=True;
        end;


       if (MainForm.Bonv_facTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bonv_facTable.FieldValues['code_mdpai']<> 0) then
       begin
       CodeC:=MainForm.Bonv_facTable.FieldValues['code_mdpai'];
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeC ) ) ;
         MainForm.Mode_paiementTable.Active:=True;
         BonFacVGestionF.ModePaieBonFacVGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
         if  MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger = 1 then
         begin
         BonFacVGestionF.TimberBonFacVGlbl.Visible:= True;
         BonFacVGestionF.TimberPerctageBonFacVGLbl.Visible:= True;
         BonFacVGestionF.TimberPerctageBonFacVGEdt.Visible:= True;
         BonFacVGestionF.TimberBonFacVGEdt.Visible:= True;
         BonFacVGestionF.TimberBonFacVGEdt.Text :=     CurrToStrF(MainForm.Bonv_facTable.FieldValues['timber_bvfac'], ffNumber, 2);
         end;
         MainForm.Mode_paiementTable.Active:=false;
         MainForm.Mode_paiementTable.SQL.Clear;
         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
         MainForm.Mode_paiementTable.Active:=True;

       end;
       if (MainForm.Bonv_facTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bonv_facTable.FieldValues['code_cmpt']<> 0) then
       begin
       CodeC:=MainForm.Bonv_facTable.FieldValues['code_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeC ) ) ;
         MainForm.CompteTable.Active:=True;
         BonFacVGestionF.CompteBonFacVGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
         MainForm.CompteTable.Active:=false;
         MainForm.CompteTable.SQL.Clear;
         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
         MainForm.CompteTable.Active:=True;
       end;
       if MainForm.Bonv_facTable.FieldValues['num_cheque_bvfac']<> null then
       begin
        BonFacVGestionF.NChequeBonFacVGCbx.Text:= MainForm.Bonv_facTable.FieldValues['num_cheque_bvfac'];
       end;



     if (MainForm.Bonv_facTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bonv_facTable.FieldValues['remise_bvfac']<> 0)   then
     begin
     BonFacVGestionF.RemisePerctageBonFacVGEdt.Text :=     CurrToStrF(MainForm.Bonv_facTable.FieldValues['RemisePerc'], ffNumber, 2);
     BonFacVGestionF.RemiseBonFacVGEdt.Text :=       CurrToStrF(MainForm.Bonv_facTable.FieldValues['remise_bvfac'], ffNumber, 2);
     end else
         begin
         BonFacVGestionF.RemisePerctageBonFacVGEdt.Text :='';
          BonFacVGestionF.RemiseBonFacVGEdt.Text :=  '';
         end;

    BonFacVGestionF.BonFacVTotalHTLbl.Caption :=    CurrToStrF(MainForm.Bonv_facTable.FieldValues['montht_bvfac'], ffNumber, 2);

    BonFacVGestionF.BonFacVTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bonv_facTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonFacVGestionF.BonFacVTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonv_facTable.FieldValues['montttc_bvfac'], ffNumber, 2);
    BonFacVGestionF.BonFacVRegleLbl.Caption :=      CurrToStrF(MainForm.Bonv_facTable.FieldValues['montver_bvfac'], ffNumber, 2);
    BonFacVGestionF.BonFacVResteLbl.Caption :=      CurrToStrF(MainForm.Bonv_facTable.FieldValues['MontantRes'], ffNumber, 2);

       if MainForm.Bonv_facTable.FieldByName('valider_bvfac').AsBoolean = True then
       begin
        FSplashVersement.DisableBonFacV;
       end else
           begin
            BonFacVGestionF.EnableBonFacV;
           end;
      BonFacVGestionF.Tag:= 1;
       MainForm.Bonv_fac_listTable.Refresh;
      BonFacVGestionF.ShowModal;

      finally
        BonFacVGestionF.Free;
      end;

 end else
     begin

     AddBVFacBtnClick(Sender);

     end;

 end;
end;

procedure TBonFacVF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  MainForm.Bonv_facTable.Filtered:= False;
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

procedure TBonFacVF.DeleteBVFacBtnClick(Sender: TObject);
begin
 if NOT (MainForm.Bonv_facTable.IsEmpty) then
 begin
   if  (MainForm.Bonv_facTable.FieldByName('valider_bvfac').AsBoolean <> True ) then
    begin
     MainForm.Bonv_fac_listTable.Active:=True;

  if NOT (MainForm.Bonv_fac_listTable.IsEmpty) then
   begin
      FSplashAddUnite:=TFSplashAddUnite.Create(BonFacVF);
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
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Facture de Vente';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 13 ;
     end else  begin
        MainForm.Bonv_facTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(BonFacVF);
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
      end

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

procedure TBonFacVF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_facTable.Filtered:= False;
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

procedure TBonFacVF.BVFacListDBGridEhDblClick(Sender: TObject);
begin
if BVFacListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonFacVF.EditBVFacBtnClick(Sender) ;
end;
end;

procedure TBonFacVF.BVFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVFacBtnClick(Sender) ;
  end else exit
end;

procedure TBonFacVF.BVFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n'] then
    AddBVFacBtnClick(Sender);
  if Key in ['r'] then
    ResearchBVFacEdt.SetFocus;
  if not BVFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s' ] then
  DeleteBVFacBtnClick(Sender) ;
    if Key in ['m'] then
      EditBVFacBtnClick(Sender);
  end else Exit;
end;

procedure TBonFacVF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_facTable.Filtered:= False;
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

procedure TBonFacVF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
MainForm.Bonv_facTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonFacVF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     MainForm.Bonv_facTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bonv_facTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonFacVF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 MainForm.Bonv_facTable.Filtered:= False;
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
  MainForm.Bonv_facTable.Filtered := false;
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

procedure TBonFacVF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonFacVF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonFacVfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVFacD.Date) + ' au ' + DateToStr(DateEndBVFacD.Date) ;

        Agent:= BonFacVfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;


procedure TBonFacVF.sSpeedButton2Click(Sender: TObject);
begin
  MainForm.Bonv_facTable.DisableControls;

   GettingData;

  BonFacVfrxRprt.PrepareReport;
  BonFacVfrxRprt.ShowReport;

  MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.sSpeedButton1Click(Sender: TObject);
begin
MainForm.Bonv_facTable.DisableControls;

    GettingData;

BonFacVfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'liste des FV';
BonFacVfrxRprt.Export(frxXLSExport1);

MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.sSpeedButton3Click(Sender: TObject);
begin
MainForm.Bonv_facTable.DisableControls;

    GettingData;

BonFacVfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des FV';
BonFacVfrxRprt.Export(frxPDFExport1);


MainForm.Bonv_facTable.EnableControls;
end;

procedure TBonFacVF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonFacVF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_facTable.Filtered:= False;
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

procedure TBonFacVF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(BonFacVF);
end;

end.
