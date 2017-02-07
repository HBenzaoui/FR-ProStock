unit UBonFacP;

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
  frxDBSet, acImage, Vcl.Menus, sStatusBar;

type
  TBonFacPF = class(TForm)
    BVFacListDBGridEh: TDBGridEh;
    TopP: TPanel;
    EditBVFacBtn: TAdvToolButton;
    DeleteBVFacBtn: TAdvToolButton;
    AddBVFacBtn: TAdvToolButton;
    ResearchBARecLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBVFacEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVFacD: TDateTimePicker;
    DateStartBVFacD: TDateTimePicker;
    Panel3: TPanel;
    ResherchBFVClientRdioBtn: TRadioButton;
    ResherchBFVNumBRdioBtn: TRadioButton;
    Panel4: TPanel;
    BonFacPfrxRprt: TfrxReport;
    frxBonFacPDB: TfrxDBDataset;
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
    StatuBar: TsStatusBar;
    SumGirdBBVFacBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel5: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel6: TPanel;
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
    procedure SumGirdBBVFacBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBVFacEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
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
  BonFacPF: TBonFacPF;

implementation

uses
  UMainF,  USplashVersement, USplashAddUnite, UClientGestion,Threading,
  USplash, UBonFacPGestion;

{$R *.dfm}


//-------------Filtring procedures-----------------//

procedure TBonFacPF.Select_ALL;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Valid;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = true AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_NOT_Valid;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = false AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Escpace;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE code_mdpai = 1 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Cheque;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE code_mdpai = 2 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_ATerme;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE code_mdpai = 3 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Virment;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE code_mdpai = 4 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Valid_Escpace;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = true AND code_mdpai = 1 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Valid_Cheque;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = true AND code_mdpai = 2 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Valid_ATerme;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = true AND code_mdpai = 3 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Valid_Virment;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = true AND code_mdpai = 4 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_NOT_Valid_Escpace;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = false AND code_mdpai = 1';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_NOT_Valid_Cheque;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = false AND code_mdpai = 2 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_NOT_Valid_ATerme;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = false AND code_mdpai = 3 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_NOT_Valid_Virment;
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE valider_bpfac = false AND code_mdpai = 4 AND date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.Select_Regle;
begin
  MainForm.Bonp_facTable.Filtered := False;
  MainForm.Bonp_facTable.Filter:='MontantRes <= 0 ';
  MainForm.Bonp_facTable.Filtered:=True;
end;

procedure TBonFacPF.Select_NOT_Regle;
begin
  MainForm.Bonp_facTable.Filtered := False;
  MainForm.Bonp_facTable.Filter:='MontantRes > 0 ';
  MainForm.Bonp_facTable.Filtered:=True;
end;

procedure TBonFacPF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonFacPF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;



procedure TBonFacPF.AddBVFacBtnClick(Sender: TObject);
var
  codeFV : integer;

begin

 ClearFilterBVLivPMenuClick(Sender);

MainForm.bonp_fac_listTable.Active:= False;
MainForm.bonp_fac_listTable.IndexFieldNames:='';
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac ';
MainForm.Bonp_facTable.Active:= True;
//MainForm.Bonp_facTable.EnableControls;

  if Assigned(BonFacPF) then
  begin
  ResearchBVFacEdt.Text:='';
  end;


  codeFV:= 0;

      BonFacPGestionF := TBonFacPGestionF.Create(nil);
      try

     if MainForm.Bonp_facTable.RecordCount <= 0 then
      begin

        MainForm.Bonp_facTable.Append;
        MainForm.Bonp_facTable.FieldValues['code_bpfac']:=1;
        MainForm.Bonp_facTable.FieldValues['num_bpfac']:= 'FP'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
        MainForm.Bonp_facTable.FieldValues['date_bpfac']:= DateOf(Today);
        MainForm.Bonp_facTable.FieldValues['time_bpfac']:=TimeOf(Now);
//        MainForm.Bonp_facTable.FieldByName('code_ur').AsInteger:= StrToInt(MainForm.UserIDLbl.Caption);
        MainForm.Bonp_facTable.Post;
        codeFV := MainForm.Bonp_facTable.FieldValues['code_bpfac'];
      end else
          begin
            MainForm.Bonp_facTable.Last;
            codeFV := MainForm.Bonp_facTable.FieldValues['code_bpfac'];
            MainForm.bonp_fac_listTable.Active:=False;
            MainForm.bonp_fac_listTable.SQL.Clear;
            MainForm.bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list WHERE code_bpfac = ' + QuotedStr(IntToStr(codeFV));
            MainForm.bonp_fac_listTable.Active:=True;

           if MainForm.bonp_fac_listTable.RecordCount <= 0 then
           begin

           codeFV := MainForm.Bonp_facTable.FieldValues['code_bpfac'];
           end else
           begin

           MainForm.Bonp_facTable.Append;
           MainForm.Bonp_facTable.FieldValues['code_bpfac']:= codeFV + 1;
           MainForm.Bonp_facTable.FieldValues['num_bpfac']:=  'FP'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeFV + 1)]);
           MainForm.Bonp_facTable.FieldValues['date_bpfac']:= DateOf(Today);
           MainForm.Bonp_facTable.FieldValues['time_bpfac']:= TimeOf(Now);
           MainForm.Bonp_facTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
           MainForm.Bonp_facTable.Post;


           end;
            BonFacPGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
          end;




      MainForm.bonp_fac_listTable.Active:=False;
      MainForm.bonp_fac_listTable.SQL.Clear;
      MainForm.bonp_fac_listTable.SQL.Text:= 'SELECT * FROM bonp_fac_list';
      MainForm.bonp_fac_listTable.Active:=True;

       MainForm.bonp_fac_listTable.IndexFieldNames:='code_bpfac';

       BonFacPGestionF.Tag:= 0;
       BonFacPGestionF.ShowModal;

      finally
        BonFacPGestionF.Free;
      end;
     //    MainForm.Bonp_facTable.Refresh;
       //  MainForm.bonp_fac_listTable.Refresh;


//         MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;

end;

procedure TBonFacPF.DateStartBVFacDChange(Sender: TObject);
begin
MainForm.Bonp_facTable.DisableControls;
MainForm.Bonp_facTable.Active:= False;
MainForm.Bonp_facTable.SQL.clear;
mainform.Bonp_facTable.sql.Text:='SELECT * FROM bonp_fac WHERE date_bpfac BETWEEN '''+(DateToStr(DateStartBVFacD.Date))+ ''' AND ''' +(DateToStr(DateEndBVFacD.Date))+'''';
MainForm.Bonp_facTable.Active:= True;
MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.FormShow(Sender: TObject);
begin
  DateStartBVFacD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVFAcD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVFacDChange(Sender);
end;

procedure TBonFacPF.FisrtBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonp_facTable.First;
end;

procedure TBonFacPF.PreviosBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonp_facTable.Prior;
end;

procedure TBonFacPF.NextBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonp_facTable.Next;
end;

procedure TBonFacPF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
MainForm.Bonp_facTable.Filtered:= False;
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

procedure TBonFacPF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonFacPF.LastBVFacbtnClick(Sender: TObject);
begin
MainForm.Bonp_facTable.Last;
end;

procedure TBonFacPF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Bonp_facTable.Close;
MainForm.Bonp_facTable.Open;
end;

procedure TBonFacPF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 MainForm.Bonp_facTable.Filtered:= False;
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

procedure TBonFacPF.ResearchBVFacEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVFacEdt.Text<>'' then
    begin

          if ResherchBFVClientRdioBtn.Checked then
          begin
          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Active:=False;
          MainForm.Bonp_facTable.SQL.Clear;
          MainForm.Bonp_facTable.SQL.Text:='SELECT * FROM bonp_fac WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVFacEdt.Text)+'%'+''')' +')';
          MainForm.Bonp_facTable.Active:=True;
          MainForm.Bonp_facTable.EnableControls;

          end;

          if ResherchBFVNumBRdioBtn.Checked then
          begin
          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Active:=False;
          MainForm.Bonp_facTable.SQL.Clear;
          MainForm.Bonp_facTable.SQL.Text:='SELECT * FROM bonp_fac WHERE LOWER(num_bpfac) LIKE LOWER' +'('''+'%'+(ResearchBVFacEdt.Text)+'%'+''')' ;
          MainForm.Bonp_facTable.Active:=True;
          MainForm.Bonp_facTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Active:=False;
          MainForm.Bonp_facTable.SQL.Clear;
          MainForm.Bonp_facTable.SQL.Text:='SELECT * FROM bonp_fac ' ;
          MainForm.Bonp_facTable.Active:=True;
          MainForm.Bonp_facTable.EnableControls;

     end;
end;

procedure TBonFacPF.ResearchBVFacEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBVFacEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;


 //----------- Searching in databese-------------------//

    if ResearchBVFacEdt.Text<>'' then
    begin

          if ResherchBFVClientRdioBtn.Checked then
          begin
          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Active:=False;
          MainForm.Bonp_facTable.SQL.Clear;
          MainForm.Bonp_facTable.SQL.Text:='SELECT * FROM bonp_fac WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+(ResearchBVFacEdt.Text+'%')+''')' +')';
          MainForm.Bonp_facTable.Active:=True;
          MainForm.Bonp_facTable.EnableControls;

          end;

          if ResherchBFVNumBRdioBtn.Checked then
          begin
          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Active:=False;
          MainForm.Bonp_facTable.SQL.Clear;
          MainForm.Bonp_facTable.SQL.Text:='SELECT * FROM bonp_fac WHERE LOWER(num_bpfac) LIKE LOWER' +'('''+(ResearchBVFacEdt.Text+'%')+''')' ;
          MainForm.Bonp_facTable.Active:=True;
          MainForm.Bonp_facTable.EnableControls;
          end;


    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonp_facTable.DisableControls;
          MainForm.Bonp_facTable.Active:=False;
          MainForm.Bonp_facTable.SQL.Clear;
          MainForm.Bonp_facTable.SQL.Text:='SELECT * FROM bonp_fac ' ;
          MainForm.Bonp_facTable.Active:=True;
          MainForm.Bonp_facTable.EnableControls;

     end;

end;

end;

procedure TBonFacPF.EditBVFacBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (MainForm.Bonp_facTable.IsEmpty) Then
 begin
    MainForm.bonp_fac_listTable.Active:=True;

  if NOT (MainForm.bonp_fac_listTable.IsEmpty) then
    begin
//  MainForm.Bonp_facTable.Refresh;
     MainForm.bonp_fac_listTable.Active:=False;
     MainForm.bonp_fac_listTable.IndexFieldNames:='code_bpfac';

      BonFacPGestionF := TBonFacPGestionF.Create(nil);
   try
//       MainForm.Bonp_facTable.Refresh;
       BonFacPGestionF.NumBonFacVGEdt.Caption := MainForm.Bonp_facTable.FieldValues['num_bpfac'];
       BonFacPGestionF.DateBonFacVGD.Date:= MainForm.Bonp_facTable.FieldValues['date_bpfac'];
       if (MainForm.Bonp_facTable.FieldValues['code_c']<> null) and (MainForm.Bonp_facTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=MainForm.Bonp_facTable.FieldValues['code_c'];
       BonFacPGestionF.ClientBonFacVGCbx.Text:= MainForm.Bonp_facTable.FieldValues['clientbvfac'];
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client WHERE code_c ='+(IntToStr( CodeC ) ) ;
         MainForm.ClientTable.Active:=True;
         BonFacPGestionF.BonFacVGClientOLDCredit.Caption:= CurrToStrF(MainForm.ClientTable.FieldValues['oldcredit_c'],ffNumber,2);
         MainForm.ClientTable.Active:=false;
         MainForm.ClientTable.SQL.Clear;
         MainForm.ClientTable.SQL.Text:='Select * FROM client ' ;
         MainForm.ClientTable.Active:=True;
        end;


//       if (MainForm.Bonp_facTable.FieldValues['code_mdpai']<> null ) AND (MainForm.Bonp_facTable.FieldValues['code_mdpai']<> 0) then
//       begin
//       CodeC:=MainForm.Bonp_facTable.FieldValues['code_mdpai'];
//         MainForm.Mode_paiementTable.Active:=false;
//         MainForm.Mode_paiementTable.SQL.Clear;
//         MainForm.Mode_paiementTable.SQL.Text:='Select * FROM mode_paiement WHERE code_mdpai ='+(IntToStr( CodeC ) ) ;
//         MainForm.Mode_paiementTable.Active:=True;
//         BonFacPGestionF.ModePaieBonFacVGCbx.Text:= MainForm.Mode_paiementTable.FieldValues['nom_mdpai'];
//         if  MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger = 1 then
//         begin
//         BonFacPGestionF.TimberBonFacVGlbl.Visible:= True;
//         BonFacPGestionF.TimberPerctageBonFacVGLbl.Visible:= True;
//         BonFacPGestionF.TimberPerctageBonFacVGEdt.Visible:= True;
//         BonFacPGestionF.TimberBonFacVGEdt.Visible:= True;
//         BonFacPGestionF.TimberBonFacVGEdt.Text :=     CurrToStrF(MainForm.Bonp_facTable.FieldValues['timber_bvfac'], ffNumber, 2);
//         end;
//         MainForm.Mode_paiementTable.Active:=false;
//         MainForm.Mode_paiementTable.SQL.Clear;
//         MainForm.Mode_paiementTable.SQL.Text:='SELECT * FROM mode_paiement ' ;
//         MainForm.Mode_paiementTable.Active:=True;
//
//       end;
//       if (MainForm.Bonp_facTable.FieldValues['code_cmpt']<> null) AND (MainForm.Bonp_facTable.FieldValues['code_cmpt']<> 0) then
//       begin
//       CodeC:=MainForm.Bonp_facTable.FieldValues['code_cmpt'];
//         MainForm.CompteTable.Active:=false;
//         MainForm.CompteTable.SQL.Clear;
//         MainForm.CompteTable.SQL.Text:='Select * FROM compte WHERE code_cmpt ='+(IntToStr( CodeC ) ) ;
//         MainForm.CompteTable.Active:=True;
//         BonFacPGestionF.CompteBonFacVGCbx.Text:= MainForm.CompteTable.FieldValues['nom_cmpt'];
//         MainForm.CompteTable.Active:=false;
//         MainForm.CompteTable.SQL.Clear;
//         MainForm.CompteTable.SQL.Text:='SELECT * FROM compte ' ;
//         MainForm.CompteTable.Active:=True;
//       end;
//       if MainForm.Bonp_facTable.FieldValues['num_cheque_bvfac']<> null then
//       begin
//        BonFacPGestionF.NChequeBonFacVGCbx.Text:= MainForm.Bonp_facTable.FieldValues['num_cheque_bvfac'];
//       end;



     if (MainForm.Bonp_facTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bonp_facTable.FieldValues['remise_bpfac']<> 0)   then
     begin
     BonFacPGestionF.RemisePerctageBonFacVGEdt.Text :=     CurrToStrF(MainForm.Bonp_facTable.FieldValues['RemisePerc'], ffNumber, 2);
     BonFacPGestionF.RemiseBonFacVGEdt.Text :=       CurrToStrF(MainForm.Bonp_facTable.FieldValues['remise_bpfac'], ffNumber, 2);
     end else
         begin
         BonFacPGestionF.RemisePerctageBonFacVGEdt.Text :='';
          BonFacPGestionF.RemiseBonFacVGEdt.Text :=  '';
         end;

    BonFacPGestionF.BonFacVTotalHTLbl.Caption :=    CurrToStrF(MainForm.Bonp_facTable.FieldValues['montht_bpfac'], ffNumber, 2);

    BonFacPGestionF.BonFacVTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bonp_facTable.FieldValues['MontantTVA'], ffNumber, 2);
    BonFacPGestionF.BonFacVTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonp_facTable.FieldValues['montttc_bpfac'], ffNumber, 2);
    BonFacPGestionF.BonFacVRegleLbl.Caption :=      CurrToStrF(MainForm.Bonp_facTable.FieldValues['montver_bpfac'], ffNumber, 2);
    BonFacPGestionF.BonFacVResteLbl.Caption :=      CurrToStrF(MainForm.Bonp_facTable.FieldValues['MontantRes'], ffNumber, 2);

       if MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean = True then
       begin
        FSplashVersement.DisableBonFacP;
       end else
           begin
            BonFacPGestionF.EnableBonFacP;
           end;
      BonFacPGestionF.Tag:= 1;
       MainForm.bonp_fac_listTable.Refresh;
      BonFacPGestionF.ShowModal;

      finally
        BonFacPGestionF.Free;
      end;

 end else
     begin

     AddBVFacBtnClick(Sender);

     end;

 end;
end;

procedure TBonFacPF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  MainForm.Bonp_facTable.Filtered:= False;
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

procedure TBonFacPF.DeleteBVFacBtnClick(Sender: TObject);
begin
 if NOT (MainForm.Bonp_facTable.IsEmpty) then
 begin
   if  (MainForm.Bonp_facTable.FieldByName('valider_bpfac').AsBoolean <> True ) then
    begin
     MainForm.bonp_fac_listTable.Active:=True;

  if NOT (MainForm.bonp_fac_listTable.IsEmpty) then
   begin
      FSplashAddUnite:=TFSplashAddUnite.Create(BonFacPF);
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
      FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Suppression de Facture Proforma';
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 35 ;
     end else  begin
        MainForm.Bonp_facTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(BonFacPF);
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

procedure TBonFacPF.AdvToolButton1Click(Sender: TObject);
begin
MainForm.Bonp_facTable.DisableControls;

    GettingData;

BonFacPfrxRprt.PrepareReport;
frxXLSExport1.FileName := 'liste des FP';
BonFacPfrxRprt.Export(frxXLSExport1);

MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Bonp_facTable.DisableControls;

    GettingData;

BonFacPfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'liste des FP';
BonFacPfrxRprt.Export(frxPDFExport1);


MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Bonp_facTable.DisableControls;

   GettingData;

  BonFacPfrxRprt.PrepareReport;
  BonFacPfrxRprt.ShowReport;

  MainForm.Bonp_facTable.EnableControls;
end;

procedure TBonFacPF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonp_facTable.Filtered:= False;
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

procedure TBonFacPF.BVFacListDBGridEhDblClick(Sender: TObject);
begin
if BVFacListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonFacPF.EditBVFacBtnClick(Sender) ;
end;
end;

procedure TBonFacPF.BVFacListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVFacBtnClick(Sender) ;
  end else exit
end;

procedure TBonFacPF.BVFacListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBVFacBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBVFacEdt.SetFocus;
  if not BVFacListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBVFacBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBVFacBtnClick(Sender);
  end else Exit;
end;

procedure TBonFacPF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonp_facTable.Filtered:= False;
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

procedure TBonFacPF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
MainForm.Bonp_facTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonFacPF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     MainForm.Bonp_facTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bonp_facTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonFacPF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 MainForm.Bonp_facTable.Filtered:= False;
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
  MainForm.Bonp_facTable.Filtered := false;
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

procedure TBonFacPF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonFacPF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonFacPfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVFacD.Date) + ' au ' + DateToStr(DateEndBVFacD.Date) ;

        Agent:= BonFacPfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;


procedure TBonFacPF.SumGirdBBVFacBtnClick(Sender: TObject);
begin
  if SumGirdBBVFacBtn.Tag = 0 then
  begin
    BVFacListDBGridEh.FooterRowCount:=1;
    SumGirdBBVFacBtn.Tag := 1;
  end else
      begin
        BVFacListDBGridEh.FooterRowCount:=0;
        SumGirdBBVFacBtn.Tag := 0;
      end;
end;

procedure TBonFacPF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonFacPF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonp_facTable.Filtered:= False;
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

procedure TBonFacPF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(BonFacPF);
end;

end.
