unit UBankList;

interface

uses
  Winapi.Windows,DateUtils,EhLibFireDAC, DBGridEhImpExp,ShellAPI,

   Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, sSpeedButton, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, frxClass, frxExportPDF, frxExportXLS, frxDBSet, AdvToolBtn, acImage,
  Vcl.Menus, sStatusBar, frxExportBaseDialog;

type
  TBankListF = class(TForm)
    TopP: TPanel;
    PeriodBankListLbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LineP: TPanel;
    Panel2: TPanel;
    DateEndBankListD: TDateTimePicker;
    DateStartBankListD: TDateTimePicker;
    DaysBankListCbx: TComboBox;
    BankListCbx: TComboBox;
    Panel3: TPanel;
    BankListDataS: TDataSource;
    CaisseListDBGridEh: TDBGridEh;
    Panel4: TPanel;
    Shape1: TShape;
    SoldIniBankListLbl: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label5: TLabel;
    SoldPeriodeBankListLbl: TLabel;
    SoldTotalBankListLbl: TLabel;
    Label6: TLabel;
    frxBankListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    BAnkListfrxRprt: TfrxReport;
    FisrtBankbtn: TsSpeedButton;
    PreviosBankbtn: TsSpeedButton;
    NextBankbtn: TsSpeedButton;
    LastBBankbtn: TsSpeedButton;
    FilterBVLivBtn: TAdvToolButton;
    sImage1: TsImage;
    sImage2: TsImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
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
    ChequeMPFilterBVLivPMenu: TMenuItem;
    EspeceMPFilterBVLivPMenu: TMenuItem;
    N3: TMenuItem;
    ClearMPFilterBVLivPMenu: TMenuItem;
    FilterparlesFactures1: TMenuItem;
    BondeLivration1: TMenuItem;
    BondeReception1: TMenuItem;
    V1: TMenuItem;
    N6: TMenuItem;
    ClearBRFilterPMenu: TMenuItem;
    FilterparlePrixDeVente1: TMenuItem;
    T2: TMenuItem;
    N0TVA1: TMenuItem;
    N4: TMenuItem;
    ClearTVAFilterPMenu: TMenuItem;
    N5: TMenuItem;
    ClearFilterBVLivPMenu: TMenuItem;
    StatuBar: TsStatusBar;
    PaidOnlyCaisseBtn: TAdvToolButton;
    RefreshGirdBtn: TAdvToolButton;
    Panel8: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Panel9: TPanel;
    ProduitListSaveDg: TSaveDialog;
    CommandeClient1: TMenuItem;
    B1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BankListCbxDropDown(Sender: TObject);
    procedure DaysBankListCbxChange(Sender: TObject);
    procedure BankListCbxChange(Sender: TObject);
    procedure DateEndBankListDChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CaisseListDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FisrtBankbtnClick(Sender: TObject);
    procedure PreviosBankbtnClick(Sender: TObject);
    procedure NextBankbtnClick(Sender: TObject);
    procedure LastBBankbtnClick(Sender: TObject);
    procedure ValideFilterBVLivPMenuClick(Sender: TObject);
    procedure NotValideFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearValideFilterBVLivPMenuClick(Sender: TObject);
    procedure RegleFilterBVLivPMenuClick(Sender: TObject);
    procedure NoTRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ChequeMPFilterBVLivPMenuClick(Sender: TObject);
    procedure EspeceMPFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearMPFilterBVLivPMenuClick(Sender: TObject);
    procedure BondeLivration1Click(Sender: TObject);
    procedure BondeReception1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure ClearBRFilterPMenuClick(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure N0TVA1Click(Sender: TObject);
    procedure ClearFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearRegleFilterBVLivPMenuClick(Sender: TObject);
    procedure ClearTVAFilterPMenuClick(Sender: TObject);
    procedure BankListCbxExit(Sender: TObject);
    procedure RefreshGirdBtnClick(Sender: TObject);
    procedure PaidOnlyCaisseBtnClick(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CaisseListDBGridEhSortMarkingChanged(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure CommandeClient1Click(Sender: TObject);
  private
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
    procedure Select_MP_Virement;
    procedure Select_MP_Cheque;
    procedure Select_RegC;
    procedure Select_RegF;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BankListF: TBankListF;

implementation

uses
  UMainF;

{$R *.dfm}


//-------------Filtring procedures-----------------//

procedure TBankListF.Select_ALL;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;


procedure TBankListF.Select_Deca;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND decaiss_ocb <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;


procedure TBankListF.Select_Enca;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND encaiss_ocb <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.Select_MP_Cheque;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:= 'SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_mdpai = 2 ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;


procedure TBankListF.Select_MP_Virement;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:=  'SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_mdpai = 4 ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.Select_BCV;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_bvcom <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.Select_BL;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_bvliv <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;


procedure TBankListF.Select_CTR;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_bvctr <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;



procedure TBankListF.Select_FacV;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_bvfac <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.Select_BCA;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_bacom <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.Select_BR;
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_barec <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;


procedure TBankListF.Select_FacA;              
begin

MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_bafac <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;

end;

procedure TBankListF.Select_RegC;
begin

MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_rc <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;

end;

procedure TBankListF.Select_RegF;
begin

MainForm.Opt_cas_bnk_BankTable.DisableControls;
MainForm.Opt_cas_bnk_BankTable.Active:= False;
MainForm.Opt_cas_bnk_BankTable.SQL.clear;
mainform.Opt_cas_bnk_BankTable.sql.Text:='SELECT * FROM opt_cas_bnk WHERE nature_ocb = true AND code_rf <> ''0'' ';
MainForm.Opt_cas_bnk_BankTable.Active:= True;
MainForm.Opt_cas_bnk_BankTable.EnableControls;

end;


procedure TBankListF.FilteredColor;
begin
 FilterBVLivBtn.Color:= $0077D90E; 
 FilterBVLivBtn.ColorHot:=  $0080FF00;
 FilterBVLivBtn.BorderHotColor:= $00EFE9E8;
end;

procedure TBankListF.NOT_FilteredColor;
begin
 FilterBVLivBtn.Color:= $00EFE9E8;
 FilterBVLivBtn.ColorHot:= $00EFE9E8; 
 FilterBVLivBtn.BorderHotColor:= $004735F9;
end;



procedure TBankListF.FormShow(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Double;
begin
 if (DaysBankListCbx.ItemIndex = 2) AND (BankListCbx.ItemIndex = 0) then
 begin
  DateStartBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

         MainForm.Opt_cas_bnk_BankTable.DisableControls;
         MainForm.Opt_cas_bnk_BankTable.Active:=False;
         MainForm.Opt_cas_bnk_BankTable.SQL.Clear;
         MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartBankListD.Date))+ ''' AND ''' +(DateToStr(DateEndBankListD.Date))+'''';
         MainForm.Opt_cas_bnk_BankTable.Active:=True;


        MainForm.Opt_cas_bnk_BankTable.First;

        while not MainForm.Opt_cas_bnk_BankTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_BankTable.Next;
        end;

               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = true group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


  SoldIniBankListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
  SoldPeriodeBankListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];
          MainForm.SQLQuery.Next;
        end;

  SoldTotalBankListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;
        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_BankTable.EnableControls;
           MainForm.CompteTable.EnableControls;
 end else
     begin
       DaysBankListCbxChange(Sender);
       BankListCbxChange(Sender);

     end;

     // --- this is to show the paied only -------------

//     MainForm.Opt_cas_bnk_BankTable.Filtered:= True;

end;

procedure TBankListF.BankListCbxDropDown(Sender: TObject);
Var I: Integer;
begin
      MainForm.CompteTable.Active:=False;
      MainForm.CompteTable.SQL.Clear;
      MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte WHERE nature_cmpt = true ';
      MainForm.CompteTable.Active := True;

      MainForm.CompteTable.Refresh;
      BankListCbx.Items.Clear;

      MainForm.CompteTable.first;
     begin

       for I := 0 to MainForm.CompteTable.RecordCount - 1 do
       if ( MainForm.CompteTable.FieldByName('nom_cmpt').IsNull = False )  then
       begin
         BankListCbx.Items.Add(MainForm.CompteTable.FieldByName('nom_cmpt').AsString);
         MainForm.CompteTable.Next;
        end;
     end;
     BankListCbx.Items.Add('Tous');
end;

procedure TBankListF.BankListCbxExit(Sender: TObject);
begin
  if BankListCbx.ItemIndex = -1 then
   BankListCbx.ItemIndex := BankListCbx.Items.Count -1;
end;

procedure TBankListF.BondeLivration1Click(Sender: TObject);
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

procedure TBankListF.BondeReception1Click(Sender: TObject);
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

procedure TBankListF.CaisseListDBGridEhDrawColumnCell(Sender: TObject;
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
 if  (MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'] <= 0)
 AND (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] <= 0) then
 begin
 CaisseListDBGridEh.Canvas.Font.Color:=$004735F9;
 CaisseListDBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;
end;

procedure TBankListF.CaisseListDBGridEhSortMarkingChanged(Sender: TObject);
begin
CaisseListDBGridEh.DefaultApplySorting;
end;

procedure TBankListF.ChequeMPFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBankListF.ClearBRFilterPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
end;

procedure TBankListF.ClearFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBankListF.ClearMPFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
end;

procedure TBankListF.ClearRegleFilterBVLivPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
  ClearRegleFilterBVLivPMenu.Checked:= True;
end;

procedure TBankListF.ClearTVAFilterPMenuClick(Sender: TObject);
begin
//  ClearValideFilterBVLivPMenuClick(Sender);
  sImage1.Visible:= False;
  sImage2.Visible:= False;
  FilterBVLivBtn.ImageIndex:=49;
  NOT_FilteredColor;
  Select_ALL;
end;

procedure TBankListF.ClearValideFilterBVLivPMenuClick(Sender: TObject);
begin
  MainForm.Opt_cas_bnk_CaisseTable.Filtered:=False;
  Select_ALL;
  sImage1.Visible:= False;
  NOT_FilteredColor;
  FilterBVLivBtn.ImageIndex:=49;
end;

procedure TBankListF.CommandeClient1Click(Sender: TObject);
begin
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

procedure TBankListF.DaysBankListCbxChange(Sender: TObject);
begin
     if DaysBankListCbx.Text = 'Aujourd''hui' then
    begin
      DateStartBankListD.Enabled:=True;
      DateEndBankListD.Enabled:=True;

      DateStartBankListD.Date:=Now;  // EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
      DateEndBankListD.Date:=Now; //EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysBankListCbx.Text = 'Hier' then
    begin
      DateStartBankListD.Enabled:=True;
      DateEndBankListD.Enabled:=True;

      DateStartBankListD.Date:=Yesterday; // EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Yesterday));
      DateEndBankListD.Date:=Yesterday; //EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Yesterday));
    end;
      if DaysBankListCbx.Text = 'Mois en cours' then
    begin
      DateStartBankListD.Enabled:=True;
      DateEndBankListD.Enabled:=True;

      DateStartBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
      DateEndBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
    end;
      if DaysBankListCbx.Text = 'Cette Année' then
    begin
      DateStartBankListD.Date:=EncodeDate (YearOf(Now),01,01);
      DateEndBankListD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

    end;
      if DaysBankListCbx.Text = 'Toutes' then
    begin
      DateStartBankListD.Enabled:=False;
      DateEndBankListD.Enabled:=False;

    end;

     BankListCbxChange(Sender);
end;

procedure TBankListF.EspeceMPFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBankListF.AdvToolButton1Click(Sender: TObject);
begin
 ProduitListSaveDg.FileName:= 'Relevé des Comptes';
if ProduitListSaveDg.Execute then
 begin

  ExportDBGridEhToXlsx(CaisseListDBGridEh,ProduitListSaveDg.FileName+'.xlsx',[]);
//  GetDir(0,Path);
  ShellExecute(Handle, nil, PChar(ProduitListSaveDg.FileName + '.xlsx'), nil, nil, SW_SHOWNORMAL);

  end;

//MainForm.Opt_cas_bnk_BankTable.DisableControls;
//
//    GettingData;
//
//BankListfrxRprt.PrepareReport;
//frxXLSExport1.FileName := 'Relevé des Comptes';
//BankListfrxRprt.Export(frxXLSExport1);
//
//MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.AdvToolButton2Click(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.DisableControls;

    GettingData;

BankListfrxRprt.PrepareReport;
frxPDFExport1.FileName := 'Relevé des Comptes';
BankListfrxRprt.Export(frxPDFExport1);


MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.AdvToolButton3Click(Sender: TObject);
begin
  MainForm.Opt_cas_bnk_BankTable.DisableControls;

   GettingData;

  BankListfrxRprt.PrepareReport;
  BankListfrxRprt.ShowReport;

  MainForm.Opt_cas_bnk_BankTable.EnableControls;
end;

procedure TBankListF.B1Click(Sender: TObject);
begin
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

procedure TBankListF.BankListCbxChange(Sender: TObject);
Var TotalEncaiss,TotalDecaiss,cmptsum,TotalSoldComptEnc,TotalSoldComptDic : Double;
CodeC : Integer;
begin
if BankListCbx.Text <> 'Tous' then
  begin

               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select code_cmpt,nom_cmpt FROM compte where LOWER(nom_cmpt) LIKE LOWER('''+BankListCbx.Text+''')'+ ' group by code_cmpt';
               MainForm.CompteTable.Active:=True;
               CodeC:=MainForm.CompteTable.FieldByName('code_cmpt').AsInteger;

         MainForm.Opt_cas_bnk_BankTable.DisableControls;
         MainForm.Opt_cas_bnk_BankTable.Active:=False;
         MainForm.Opt_cas_bnk_BankTable.SQL.Clear;

         if DaysBankListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true and code_cmpt ='+ IntToStr(CodeC)
                                                   + ' and date_ocb BETWEEN'''+(DateToStr(DateStartBankListD.Date))+ ''' AND ''' +(DateToStr(DateEndBankListD.Date))+'''';

         end else
             begin
                 MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true and code_cmpt ='+ IntToStr(CodeC);
               end;

         MainForm.Opt_cas_bnk_BankTable.Active:=True;

        MainForm.Opt_cas_bnk_BankTable.First;

        while not MainForm.Opt_cas_bnk_BankTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_BankTable.Next;
        end;


               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = true and code_cmpt ='+IntToStr(CodeC) +' group by code_cmpt';
               MainForm.CompteTable.Active:=True;

               MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


         SoldIniBankListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);
         SoldPeriodeBankListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;



               MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true and code_cmpt ='+ IntToStr(CodeC);
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       SoldTotalBankListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;


           MainForm.Opt_cas_bnk_BankTable.EnableControls;
           MainForm.CompteTable.EnableControls;

  end else
      begin


        MainForm.Opt_cas_bnk_BankTable.DisableControls;

         MainForm.Opt_cas_bnk_BankTable.Active:=False;
         MainForm.Opt_cas_bnk_BankTable.SQL.Clear;
         if DaysBankListCbx.Text<>'Toutes' then
         begin
         MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true '
                                                     + ' and date_ocb BETWEEN'''+(DateToStr(DateStartBankListD.Date))+ ''' AND ''' +(DateToStr(DateEndBankListD.Date))+'''';

         end else
             begin
             MainForm.Opt_cas_bnk_BankTable.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true ';
             end;
         MainForm.Opt_cas_bnk_BankTable.Active:=True;

        MainForm.Opt_cas_bnk_BankTable.First;

        while not MainForm.Opt_cas_bnk_BankTable.Eof do
        begin
          TotalEncaiss:= TotalEncaiss + (MainForm.Opt_cas_bnk_BankTable.FieldValues['encaiss_ocb'] );
          TotalDecaiss:= TotalDecaiss + MainForm.Opt_cas_bnk_BankTable.FieldValues['decaiss_ocb'];

          MainForm.Opt_cas_bnk_BankTable.Next;
        end;


               MainForm.CompteTable.DisableControls;
               MainForm.CompteTable.Active:=False;
               MainForm.CompteTable.SQL.Clear;
               MainForm.CompteTable.SQL.Text:='select *, sum(oldcredit_cmpt) as totsum from compte where nature_cmpt = true group by code_cmpt';
               MainForm.CompteTable.Active:=True;

              MainForm.CompteTable.First;
              while not MainForm.CompteTable.Eof do
              begin
                cmptsum:= cmptsum + (MainForm.CompteTable.FieldValues['totsum'] );

                MainForm.CompteTable.Next;
              end;


            SoldIniBankListLbl.Caption :=       FloatToStrF(cmptsum,ffNumber,14,2);

            SoldPeriodeBankListLbl.Caption :=       FloatToStrF((TotalEncaiss - TotalDecaiss ),ffNumber,14,2) ;


                MainForm.SQLQuery.Active:=False;
               MainForm.SQLQuery.SQL.Clear;
               MainForm.SQLQuery.SQL.Text:='SELECT * FROM opt_cas_bnk where nature_ocb = true ';
               MainForm.SQLQuery.Active:=True;

               MainForm.SQLQuery.First;

        while not MainForm.SQLQuery.Eof do
        begin
          TotalSoldComptEnc:= TotalSoldComptEnc + (MainForm.SQLQuery.FieldValues['encaiss_ocb'] );
          TotalSoldComptDic:= TotalSoldComptDic + MainForm.SQLQuery.FieldValues['decaiss_ocb'];

          MainForm.SQLQuery.Next;
        end;

       SoldTotalBankListLbl.Caption :=
       FloatToStrF(((TotalSoldComptEnc - TotalSoldComptDic) +(cmptsum)),ffNumber,14,2) ;

        MainForm.SQLQuery.Active:=False;
        MainForm.SQLQuery.SQL.Clear;

           MainForm.Opt_cas_bnk_BankTable.EnableControls;
           MainForm.CompteTable.EnableControls;


      end;
end;

procedure TBankListF.DateEndBankListDChange(Sender: TObject);
begin
BankListCbxChange(Sender);
end;

  procedure TBankListF.GettingData;
var
  PreiodRX,Agent,Caisse,SoldeINI,SoldePre,SoldeTotal : TfrxMemoView;
begin
  PreiodRX:= BankListfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartBankListD.Date) + ' au ' + DateToStr(DateEndBankListD.Date) ;

    Agent:= BankListfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

    Caisse:= BankListfrxRprt.FindObject('Caisse') as TfrxMemoView;
  Caisse.Text:= 'Compte : ' + BankListCbx.Text;

    SoldeINI:= BankListfrxRprt.FindObject('SoldeINI') as TfrxMemoView;
  SoldeINI.Text:=   SoldIniBankListLbl.Caption;

    SoldePre:= BankListfrxRprt.FindObject('SoldePre') as TfrxMemoView;
  SoldePre.Text:=   SoldPeriodeBankListLbl.Caption;

    SoldeTotal:= BankListfrxRprt.FindObject('SoldeTotal') as TfrxMemoView;
  SoldeTotal.Text:= SoldTotalBankListLbl.Caption;

end;

procedure TBankListF.LastBBankbtnClick(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.Last;
end;

procedure TBankListF.N0TVA1Click(Sender: TObject);
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

procedure TBankListF.NextBankbtnClick(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.Next;
end;

procedure TBankListF.NoTRegleFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearMPFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);

ClearValideFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked := True;
  
  sImage1.ImageIndex:=8;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Virement;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TBankListF.NotValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBankListF.PaidOnlyCaisseBtnClick(Sender: TObject);
begin
  if PaidOnlyCaisseBtn.Tag = 0 then
  begin

    MainForm.Opt_cas_bnk_BankTable.DisableControls;
    MainForm.Opt_cas_bnk_BankTable.Filtered:= False;
    mainform.Opt_cas_bnk_BankTable.Filter := 'decaiss_ocb <> 0 OR encaiss_ocb <> 0';// + quotedstr('%' + ResearchProduitsEdt.Text + '%')  + ' OR [code_p] = '+ IntToStr(CodeCB) ;
    MainForm.Opt_cas_bnk_BankTable.Filtered:= True;
    MainForm.Opt_cas_bnk_BankTable.EnableControls;

    PaidOnlyCaisseBtn.Tag := 1;
    PaidOnlyCaisseBtn.ImageIndex:=25;
    PaidOnlyCaisseBtn.Hint:='Tout';
  end else
      begin

        MainForm.Opt_cas_bnk_BankTable.DisableControls;
        MainForm.Opt_cas_bnk_BankTable.Filtered := false;
        MainForm.Opt_cas_bnk_BankTable.EnableControls;

        PaidOnlyCaisseBtn.Tag := 0;
        PaidOnlyCaisseBtn.ImageIndex:=28;
        PaidOnlyCaisseBtn.Hint:='Payé seulement';
      end;
end;

procedure TBankListF.PreviosBankbtnClick(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.Prior;
end;

procedure TBankListF.RefreshGirdBtnClick(Sender: TObject);
begin
MainForm.Opt_cas_bnk_BankTable.Close;
MainForm.Opt_cas_bnk_BankTable.Open;
end;

procedure TBankListF.RegleFilterBVLivPMenuClick(Sender: TObject);
begin
  ClearValideFilterBVLivPMenuClick(Sender);
  ClearMPFilterBVLivPMenuClick(Sender);
  ClearTVAFilterPMenuClick(Sender);
  ClearBRFilterPMenuClick(Sender);
                                             
ClearValideFilterBVLivPMenu.Checked:= True;
ClearMPFilterBVLivPMenu.Checked:= True;
ClearTVAFilterPMenu.Checked:= True;
ClearBRFilterPMenu.Checked := True;
  
  sImage1.ImageIndex:=6;
  sImage1.Visible:= True;
  FilterBVLivBtn.ImageIndex:=50;
  FilteredColor;
  Select_MP_Cheque;
  ClearFilterBVLivPMenu.Checked:= False;
end;

procedure TBankListF.T2Click(Sender: TObject);
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

procedure TBankListF.V1Click(Sender: TObject);
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

procedure TBankListF.ValideFilterBVLivPMenuClick(Sender: TObject);
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

procedure TBankListF.FisrtBankbtnClick(Sender: TObject);
begin
 MainForm.Opt_cas_bnk_BankTable.First;
end;

procedure TBankListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   MainForm.SaveGridLayout(CaisseListDBGridEh,GetCurrentDir +'\bin\gc_bnklst');

 MainForm.Opt_cas_bnk_BankTable.Filtered := false;
 FreeAndNil(BankListF);
end;

procedure TBankListF.FormCreate(Sender: TObject);
begin
     if FileExists(GetCurrentDir +'\bin\gc_bnklst') then
   begin

    MainForm.LoadGridLayout(CaisseListDBGridEh,GetCurrentDir +'\bin\gc_bnklst');
   end;
end;

end.
