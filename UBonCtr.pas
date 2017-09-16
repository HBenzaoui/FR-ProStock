unit UBonCtr;

interface

uses
  Winapi.Windows,MMSystem,  Winapi.Messages,DBGridEhImpExp,ShellAPI,
   System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons,
  sSpeedButton, AdvToolBtn, Vcl.ExtCtrls,
  System.DateUtils, frxExportPDF, frxClass, frxExportXLS, frxDBSet, acImage,
  Vcl.Menus, sStatusBar, Vcl.AppEvnts;

type
  TBonCtrF = class(TForm)
    BVCtrListDBGridEh: TDBGridEh;
    Panel3: TPanel;
    TopP: TPanel;
    EditBVCtrBtn: TAdvToolButton;
    DeleteBVCtrBtn: TAdvToolButton;
    AddBVCtrBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LineP: TPanel;
    S02: TPanel;
    ResearchBVCtrEdt: TSearchBox;
    Panel2: TPanel;
    DateEndBVCtrD: TDateTimePicker;
    DateStartBVCtrD: TDateTimePicker;
    ResherchBVCTNumBRdioBtn: TRadioButton;
    ResherchBVCTClientRdioBtn: TRadioButton;
    Panel4: TPanel;
    BonCtrfrxRprt: TfrxReport;
    frxBonCtrDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    FisrtBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    LastBARecbtn: TsSpeedButton;
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
    SumGirdBVCtrBtn: TAdvToolButton;
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
    procedure AddBVCtrBtnClick(Sender: TObject);
    procedure EditBVCtrBtnClick(Sender: TObject);
    procedure DeleteBVCtrBtnClick(Sender: TObject);
    procedure DateStartBVCtrDChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure ResearchBVCtrEdtChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BVCtrListDBGridEhDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BVCtrListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure BVCtrListDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BVCtrListDBGridEhKeyPress(Sender: TObject; var Key: Char);
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
    procedure SumGirdBVCtrBtnClick(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure ResearchBVCtrEdtKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResearchBVCtrEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey; var Handled: Boolean);
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
  BonCtrF: TBonCtrF;

implementation

uses
  UMainF, USplashVersement, UComptoir, USplashAddUnite, USplash,Threading,
  UClientGestion, UProduitsList;

{$R *.dfm}

 //-------------Filtring procedures-----------------//

procedure TBonCtrF.Select_ALL;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Valid;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = true AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_NOT_Valid;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = false AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Escpace;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE code_mdpai = 1 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Cheque;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE code_mdpai = 2 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_ATerme;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE code_mdpai = 3 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Virment;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE code_mdpai = 4 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Valid_Escpace;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = true AND code_mdpai = 1 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Valid_Cheque;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = true AND code_mdpai = 2 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Valid_ATerme;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = true AND code_mdpai = 3 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Valid_Virment;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = true AND code_mdpai = 4 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_NOT_Valid_Escpace;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = false AND code_mdpai = 1';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_NOT_Valid_Cheque;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = false AND code_mdpai = 2 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_NOT_Valid_ATerme;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = false AND code_mdpai = 3 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_NOT_Valid_Virment;
begin
MainForm.Bonv_ctrTable.DisableControls;
MainForm.Bonv_ctrTable.Active:= False;
MainForm.Bonv_ctrTable.SQL.clear;
mainform.Bonv_ctrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE valider_bvctr = false AND code_mdpai = 4 AND date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_ctrTable.Active:= True;
MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.Select_Regle;
begin
  MainForm.Bonv_ctrTable.Filtered := False;
  MainForm.Bonv_ctrTable.Filter:='MontantRen >= 0 ';
  MainForm.Bonv_ctrTable.Filtered:=True;
  MainForm.Bonv_ctrTable.First;
end;

procedure TBonCtrF.Select_NOT_Regle;
begin
  MainForm.Bonv_ctrTable.Filtered := False;
  MainForm.Bonv_ctrTable.Filter:='MontantRen < 0 ';
  MainForm.Bonv_ctrTable.Filtered:=True;
  MainForm.Bonv_ctrTable.First;
end;

procedure TBonCtrF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBonCtrF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;

 
procedure TBonCtrF.AddBVCtrBtnClick(Sender: TObject);
var
  codeCT : integer;

  begin

  if Assigned(BonCtrF) then 
  begin
  ClearFilterBVLivPMenuClick(Sender);
  end;

   if Assigned(ProduitsListF) then
 begin
  MainForm.ProduitTable.Filtered:= False;
  ProduitsListF.ResearchProduitsEdt.Text:='';
  end;

   MainForm.Bonv_ctr_listTable.Active:=False;
   MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
   MainForm.Bonv_CtrTable.DisableControls;
   MainForm.Bonv_CtrTable.Active:= False;
   MainForm.Bonv_CtrTable.SQL.clear;
   mainform.Bonv_CtrTable.sql.Text:='SELECT * FROM bonv_ctr ';
   MainForm.Bonv_CtrTable.Active:= True;
//MainForm.Bonv_CtrTable.EnableControls;

//MainForm.ProduitTable.DisableControls;

codeCT:= 0;

//      if NOT Assigned(BonCtrF) then
//      begin
//      BonCtrF := TBonCtrF.Create(Self);
//      end;

  //    MainForm.Bonv_ctr_listTable.Active := True;
      BonCtrGestionF := TBonCtrGestionF.Create(Application);
     // try

       if MainForm.Bonv_ctrTable.RecordCount <= 0 then
        begin

          MainForm.Bonv_ctrTable.Insert;
          MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:=1;
          MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:= 'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5, 1]);
          MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
          MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:=TimeOf(Now);
          MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
          MainForm.Bonv_ctrTable.Post;
          codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
        end else
            begin
              MainForm.Bonv_ctrTable.Last;

              codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
              MainForm.Bonv_ctr_listTable.Active:=False;
              MainForm.Bonv_ctr_listTable.SQL.Clear;
              MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(codeCT));
              MainForm.Bonv_ctr_listTable.Active:=True;

             if MainForm.Bonv_ctr_listTable.RecordCount <= 0 then
             begin
          //   MainForm.Bonv_ctrTable.Last;
             codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];

               MainForm.Bonv_ctrTable.Edit;
               MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
               MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:= TimeOf(Now);
               MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
               MainForm.Bonv_ctrTable.Post;
             end else
             begin
          //   MainForm.Bonv_ctrTable.Last;
            // codeCT := MainForm.Bonv_ctrTable.FieldValues['code_bvliv'];
               MainForm.Bonv_ctrTable.Insert;
               MainForm.Bonv_ctrTable.FieldValues['code_bvctr']:= codeCT + 1;
               MainForm.Bonv_ctrTable.FieldValues['num_bvctr']:=  'CT'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,(codeCT + 1)]);
               MainForm.Bonv_ctrTable.FieldValues['date_bvctr']:= DateOf(Today);
               MainForm.Bonv_ctrTable.FieldValues['time_bvctr']:= TimeOf(Now);
               MainForm.Bonv_ctrTable.FieldValues['code_ur']:= StrToInt(MainForm.UserIDLbl.Caption);
               MainForm.Bonv_ctrTable.Post;


             end;
//              BonCtrGestionF.ProduitsListDBGridEh.DataSource.DataSet.EnableControls;
            end;

   {    MainForm.Bonv_ctr_listTable.Active:=False;
        MainForm.Bonv_ctr_listTable.SQL.Clear;
        MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list';
        MainForm.Bonv_ctr_listTable.Active:=True;
   }

     MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

  //MainForm.Bonv_ctr_listTable.Refresh;
         BonCtrGestionF.Tag:= 0;



BonCtrGestionF.Show;

 //     finally
      //  BonCtrGestionF.Free;
  //    end;
//MainForm.ProduitTable.EnableControls;
 MainForm.Bonv_CtrTable.EnableControls;

//MainForm.Bonv_CtrTable.DisableControls;
//MainForm.Bonv_CtrTable.Active:= False;
//MainForm.Bonv_CtrTable.SQL.clear;
//mainform.Bonv_CtrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
//MainForm.Bonv_CtrTable.Active:= True;
//MainForm.Bonv_CtrTable.EnableControls;

{if BonCtrF <> nil then
 begin
BonCtrF.ResearchBVCtrEdt.Clear;
 end; }
end;

procedure TBonCtrF.EditBVCtrBtnClick(Sender: TObject);
var
 CodeC : Integer;

begin
 if NOT (MainForm.Bonv_ctrTable.IsEmpty) Then
 begin
      if Assigned(ProduitsListF) then
     begin
      MainForm.ProduitTable.Filtered:= False;
      ProduitsListF.ResearchProduitsEdt.Text:='';
      end;


  MainForm.Bonv_ctr_listTable.Active:=True;
   if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) Then
  begin
  MainForm.Bonv_ctr_listTable.Active:=False;
  BonCtrGestionF := TBonCtrGestionF.Create(Application);
 // MainForm.Bonv_ctrTable.Refresh;

     MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';

//       MainForm.Bonv_ctrTable.Refresh;
       BonCtrGestionF.NumBonCtrGEdt.Caption := MainForm.Bonv_ctrTable.FieldValues['num_bvctr'];
       BonCtrGestionF.DateBonCtrGD.Date:= MainForm.Bonv_ctrTable.FieldValues['date_bvctr'];
       BonCtrGestionF.HourBonCtrGD.Caption:= MainForm.Bonv_ctrTable.FieldValues['time_bvctr'];
       if (MainForm.Bonv_ctrTable.FieldValues['code_c']<> null) and (MainForm.Bonv_ctrTable.FieldValues['code_c']<> 0) then
       begin
       CodeC:=MainForm.Bonv_ctrTable.FieldValues['code_c'];
       BonCtrGestionF.ClientBonCtrGCbx.Text:= MainForm.Bonv_ctrTable.FieldValues['clientbvctr'];
        end;

     if (MainForm.Bonv_ctrTable.FieldValues['RemisePerc']<> null) AND (MainForm.Bonv_ctrTable.FieldByName('remise_bvctr').AsCurrency <> 0) then
     begin
     BonCtrGestionF.RemisePerctageBonCtrGEdt.Text :=     CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['RemisePerc'], ffNumber, 2);
     BonCtrGestionF.RemiseBonCtrGEdt.Text :=     CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['remise_bvctr'], ffNumber, 2);
     end;

//    BonCtrGestionF.BonCtrTotalTVALbl.Caption :=   CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['MontantTVA'], ffNumber, 2);
    if (MainForm.Bonv_ctrTable.FieldValues['montttc_bvctr']<> null) then
    begin
    BonCtrGestionF.BonCtrTotalTTCLbl.Caption :=   CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['montttc_bvctr'], ffNumber, 2);
    end;
    if (MainForm.Bonv_ctrTable.FieldValues['montver_bvctr']<> null) then
    begin
    BonCtrGestionF.BonCtrRegleLbl.Caption :=      CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['montver_bvctr'], ffNumber, 2);
    end;
    if (MainForm.Bonv_ctrTable.FieldValues['MontantRen']<> null) then
    begin
    BonCtrGestionF.BonCtrRenduLbl.Caption :=      CurrToStrF(MainForm.Bonv_ctrTable.FieldValues['MontantRen'], ffNumber, 2);
    end;



       if MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean = True then
       begin
        FSplashVersement.DisableBonCtr;
       end else
           begin
            BonCtrGestionF.EnableBonCtr;
            BonCtrGestionF.ProduitBonCtrGCbx.TabOrder:=0;
           end;


    BonCtrGestionF.Tag:=1;

       MainForm.Bonv_ctr_listTable.Refresh;

      BonCtrGestionF.Show;

  end else
      begin
        AddBVCtrBtnClick(Sender);
      end;

 end;

end;

procedure TBonCtrF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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
  MainForm.Bonv_ctrTable.Filtered:= False;
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

procedure TBonCtrF.DeleteBVCtrBtnClick(Sender: TObject);
begin
if NOT (MainForm.Bonv_ctrTable.IsEmpty) then
 begin
     if  (MainForm.Bonv_ctrTable.FieldByName('valider_bvctr').AsBoolean <> True ) then
    begin
    MainForm.Bonv_ctr_listTable.Active:= True;

  if NOT (MainForm.Bonv_ctr_listTable.IsEmpty) then
   begin

         FSplashAddUnite:=TFSplashAddUnite.Create(BonCtrF);
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
      FSplashAddUnite.OKAddUniteSBtn.Tag:= 21 ;
      FSplashAddUnite.Show;
      FSplashAddUnite.OKAddUniteSBtn.Enabled:=True;

     end
      else
      begin
              MainForm.Bonv_ctrTable.Delete ;
        GrayForms;
        FSplash := TFSplash.Create(BonCtrF);
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
//          TTask.Run ( procedure
//          begin
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
//          end);
        end;
end;
end;

procedure TBonCtrF.DateStartBVCtrDChange(Sender: TObject);
begin
ClearFilterBVLivPMenuClick(Sender);

MainForm.Bonv_CtrTable.DisableControls;
MainForm.Bonv_CtrTable.Active:= False;
MainForm.Bonv_CtrTable.SQL.clear;
mainform.Bonv_CtrTable.sql.Text:='SELECT * FROM bonv_ctr WHERE date_bvctr BETWEEN '''+(DateToStr(DateStartBVCtrD.Date))+ ''' AND ''' +(DateToStr(DateEndBVCtrD.Date))+'''';
MainForm.Bonv_CtrTable.Active:= True;
MainForm.Bonv_CtrTable.EnableControls;
end;

procedure TBonCtrF.FisrtBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.First;
end;

procedure TBonCtrF.PreviosBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Prior;
end;

procedure TBonCtrF.NextBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Next;
end;

procedure TBonCtrF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
FilterBVLivBtn.ImageIndex:=50;
MainForm.Bonv_ctrTable.Filtered := False;
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

procedure TBonCtrF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonCtrF.LastBARecbtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Last;
end;

procedure TBonCtrF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Bonv_ctrTable.Close;
MainForm.Bonv_ctrTable.Open;
end;

procedure TBonCtrF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
 FilterBVLivBtn.ImageIndex:=50;
 MainForm.Bonv_ctrTable.Filtered := False;
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

procedure TBonCtrF.ResearchBVCtrEdtChange(Sender: TObject);
begin
 //----------- Searching in databese-------------------//

    if ResearchBVCtrEdt.Text<>'' then
    begin

          if ResherchBVCTClientRdioBtn.Checked then
          begin
          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+'%'+(ResearchBVCtrEdt.Text)+'%'+''')' +')';
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;
          end;

          if ResherchBVCTNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr WHERE LOWER(num_bvctr) LIKE LOWER' +'('''+'%'+(ResearchBVCtrEdt.Text)+'%'+''')' ;
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;
          end;

    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr ' ;
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;

     end;
end;

procedure TBonCtrF.ResearchBVCtrEdtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_DOWN then
  begin
//   key := #0;
     MainForm.Bonv_ctrTable.Next;
  end;


    if key = VK_UP then
  begin
//   key := #0;
     MainForm.Bonv_ctrTable.Prior;
  end;
end;

procedure TBonCtrF.ResearchBVCtrEdtKeyPress(Sender: TObject; var Key: Char);
var  CodeCB : Integer;
const
  N =[Char(VK_ESCAPE)];
begin

  if (Key in N) then
  begin
    key := #0;
    ResearchBVCtrEdt.Text := '';

  end;

    if key = #13 then
  begin
   key := #0;


 //----------- Searching in databese-------------------//

    if ResearchBVCtrEdt.Text<>'' then
    begin

          if ResherchBVCTClientRdioBtn.Checked then
          begin
          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr WHERE code_c IN( SELECT code_c FROM client WHERE LOWER(nom_c) LIKE LOWER' +'('''+(ResearchBVCtrEdt.Text+'%')+''')' +')';
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;
          end;

          if ResherchBVCTNumBRdioBtn.Checked then
          begin
          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr WHERE LOWER(num_bvctr) LIKE LOWER' +'('''+(ResearchBVCtrEdt.Text+'%')+''')' ;
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;
          end;

    end else
     begin
          MainForm.ClientTable.DisableControls;
          MainForm.ClientTable.Active:=False;
          MainForm.ClientTable.SQL.Clear;
          MainForm.ClientTable.SQL.Text:='SELECT * FROM client ' ;
          MainForm.ClientTable.Active:=True;
          MainForm.ClientTable.EnableControls;

          MainForm.Bonv_ctrTable.DisableControls;
          MainForm.Bonv_ctrTable.Active:=False;
          MainForm.Bonv_ctrTable.SQL.Clear;
          MainForm.Bonv_ctrTable.SQL.Text:='SELECT * FROM bonv_ctr ' ;
          MainForm.Bonv_ctrTable.Active:=True;
          MainForm.Bonv_ctrTable.EnableControls;

     end;

end;

end;

procedure TBonCtrF.FormShow(Sender: TObject);
begin
  DateStartBVCtrD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBVCtrD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartBVCtrDChange(Sender);
end;

procedure TBonCtrF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'Listing Comptoir de vente';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(BVCtrListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.Bonv_ctrTable.DisableControls;
//
//    GettingData;
//
//BonCtrfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Listing Comptoir de vente';
//BonCtrfrxRprt.Export(frxXLSExport1);
//
//MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Bonv_ctrTable.DisableControls;

    GettingData;

BonCtrfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Listing Comptoir de vente';
BonCtrfrxRprt.Export(frxPDFExport1);


MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Bonv_ctrTable.DisableControls;

   GettingData;

  BonCtrfrxRprt.PrepareReport;
  BonCtrfrxRprt.ShowReport;

  MainForm.Bonv_ctrTable.EnableControls;
end;

procedure TBonCtrF.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 if (BonCtrF.Active = True)  AND  (Assigned(BonCtrGestionF) = False)  then
 begin
  if  (GetKeyState(VK_F4) < 0)  then
  begin
      AddBVCtrBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F5) < 0)  then
  begin
      EditBVCtrBtnClick(Screen);
    Handled := true;
  end;
  if  (GetKeyState(VK_F6) < 0)  then
  begin
      DeleteBVCtrBtnClick(Screen);
    Handled := true;
  end;
     if  (GetKeyState(VK_F12) < 0)  then
  begin
    AdvToolButton3Click(Screen) ;
    Handled := true;
  end;
 end else
     begin
      if  (BonCtrF.Active = True)  AND (BonCtrGestionF.Showing = False)   then
       begin
          if  (GetKeyState(VK_F4) < 0)  then
          begin
              AddBVCtrBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F5) < 0)  then
          begin
              EditBVCtrBtnClick(Screen);
            Handled := true;
          end;
          if  (GetKeyState(VK_F6) < 0)  then
          begin
              DeleteBVCtrBtnClick(Screen);
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

procedure TBonCtrF.ATermeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_ctrTable.Filtered:= False;
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

procedure TBonCtrF.BVCtrListDBGridEhDblClick(Sender: TObject);
begin
if BvCtrListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  BonCtrF.EditBVCtrBtnClick(Sender) ;
end;
end;

////-----this is to highlight text in dbgrid when shearch---------------
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

procedure TBonCtrF.BVCtrListDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if gdSelected in State then
begin
   BVCtrListDBGridEh.Canvas.Brush.Color:=$00FFE8CD;
   BVCtrListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

 if  (MainForm.Bonv_ctrTable.FieldValues['MontantRen'] < 0)    then
 begin
 BVCtrListDBGridEh.Canvas.Font.Color:=$004735F9;
 BVCtrListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

//  HighlightCellText(TDBGridEh(Sender),Rect, Column,ResearchBVCtrEdt.Text,State);

end;

procedure TBonCtrF.BVCtrListDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not BVCtrListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  DeleteBVCtrBtnClick(Sender) ;
  end else exit
end;

procedure TBonCtrF.BVCtrListDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AddBVCtrBtnClick(Sender);
  if Key in ['r','R'] then
    ResearchBVCtrEdt.SetFocus;
  if not BVCtrListDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  DeleteBVCtrBtnClick(Sender) ;
    if Key in ['m','M'] then
      EditBVCtrBtnClick(Sender);
  end else Exit;
end;

procedure TBonCtrF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_ctrTable.Filtered:= False;
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

procedure TBonCtrF.ClearFilterBVLivPMenuClick(Sender: TObject);
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
MainForm.Bonv_ctrTable.Filtered:= False;
Select_ALL;
 ATermeMPFilterBVLivPMenu.Enabled:= True;
end;

procedure TBonCtrF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
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
     MainForm.Bonv_ctrTable.Filtered := False;
     Select_Valid;
     Select_Regle;
    end;
    if sImage6.ImageIndex = 10 then
    begin
     FilteredColor;    
     FilterBVLivBtn.ImageIndex:=49;
     MainForm.Bonv_ctrTable.Filtered := False;
     Select_Valid;
     Select_NOT_Regle;
    end;
  end;
end;

procedure TBonCtrF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
 MainForm.Bonv_ctrTable.Filtered:=False;
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
  MainForm.Bonv_ctrTable.Filtered := false;
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

procedure TBonCtrF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonCtrF.GettingData;
var
  PreiodRX,Agent : TfrxMemoView;
begin
  PreiodRX:= BonCtrfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBVCtrD.Date) + ' au ' + DateToStr(DateEndBVCtrD.Date) ;

  Agent:= BonCtrfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;
end;

procedure TBonCtrF.SumGirdBVCtrBtnClick(Sender: TObject);
begin
  if SumGirdBVCtrBtn.Tag = 0 then
  begin
    BVCtrListDBGridEh.FooterRowCount:=1;
    SumGirdBVCtrBtn.Tag := 1;
  end else
      begin
        BVCtrListDBGridEh.FooterRowCount:=0;
        SumGirdBVCtrBtn.Tag := 0;
      end;
end;

procedure TBonCtrF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBonCtrF.VirmentMPFilterBVLivPMenuClick(Sender: TObject);
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
   MainForm.Bonv_ctrTable.Filtered:= False;
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

procedure TBonCtrF.FormClose(Sender: TObject; var Action: TCloseAction);
begin


   MainForm.SaveGridLayout(BVCtrListDBGridEh,GetCurrentDir +'\bin\gc_ctrlst');

 FreeAndNil(BonCtrF);
end;

procedure TBonCtrF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_ctrlst') then
   begin

    MainForm.LoadGridLayout(BVCtrListDBGridEh,GetCurrentDir +'\bin\gc_ctrlst');
   end;
end;

procedure TBonCtrF.FormPaint(Sender: TObject);
begin
        MainForm.ClientTable.DisableControls;
        MainForm.ClientTable.Active:=False;
        MainForm.ClientTable.SQL.Clear;
        MainForm.ClientTable.SQL.Text:='SELECT * FROM client ';
        MainForm.ClientTable.Active:=True;
        MainForm.ClientTable.EnableControls;
end;

end.
