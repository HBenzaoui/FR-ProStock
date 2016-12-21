unit UPertesFList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Buttons, sSpeedButton, AdvToolBtn,
  Vcl.ExtCtrls;

type
  TPertesFListF = class(TForm)
    TopP: TPanel;
    EditBARecBtn: TAdvToolButton;
    DeleteBARecBtn: TAdvToolButton;
    AddBARecBtn: TAdvToolButton;
    ResearchBACtrLbl: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    FisrtBARecbtn: TsSpeedButton;
    PreviosBARecbtn: TsSpeedButton;
    NextBARecbtn: TsSpeedButton;
    LastBARecbtn: TsSpeedButton;
    PeriodCaiseeListLbl: TLabel;
    LineP: TPanel;
    Panel1: TPanel;
    S01: TPanel;
    S02: TPanel;
    ResearchPerteEdt: TSearchBox;
    Panel2: TPanel;
    DateEndPerteD: TDateTimePicker;
    DateStartPerteD: TDateTimePicker;
    ResherchPerteNumBRdioBtn: TRadioButton;
    ResherchPerteRdioBtn: TRadioButton;
    Panel4: TPanel;
    TypePerteListCbx: TComboBox;
    Panel3: TPanel;
    PertesListDBGridEh: TDBGridEh;
    PerteListDataS: TDataSource;
    ChargeListfrxRprt: TfrxReport;
    frxChargeListDB: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DateStartPerteDChange(Sender: TObject);
    procedure FisrtBARecbtnClick(Sender: TObject);
    procedure PreviosBARecbtnClick(Sender: TObject);
    procedure NextBARecbtnClick(Sender: TObject);
    procedure LastBARecbtnClick(Sender: TObject);
    procedure TypePerteListCbxDropDown(Sender: TObject);
    procedure AddBARecBtnClick(Sender: TObject);
    procedure ResearchPerteEdtChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PertesFListF: TPertesFListF;

implementation

{$R *.dfm}

uses System.DateUtils,UDataModule, UPertesGestion;

procedure TPertesFListF.AddBARecBtnClick(Sender: TObject);
begin
  //-------- Show the splash screan for the produit familly to add new one---------//

   PertesGestionF := TPertesGestionF.Create(nil);
  try

      DataModuleF.PertesTable.DisableControls;
      DataModuleF.PertesTable.Last;
      PertesGestionF.NumPerteGEdt.Caption:=
      'PR'+IntToStr(YearOf(Today)) + '/' + Format('%.*d', [5,((DataModuleF.PertesTable.FieldByName('code_pr').AsInteger) + 1)]);
      DataModuleF.PertesTable.EnableControls;

     //       ClientGestionF.BringToFront;
            PertesGestionF.Left:=  (Screen.Width div 2 ) - (PertesGestionF.Width div 2)    ;
            PertesGestionF.Top:=   (Screen.Height div 2) - (PertesGestionF.Height div 2)    ;
        //    MainForm.Align:= alClient;
         //   AnimateWindow(ClientGestionF.Handle, 250, AW_VER_NEGATIVE OR AW_BLEND OR AW_ACTIVATE );
            PertesGestionF.OKPerteGBtn.Tag:= 0 ;
            PertesGestionF.ShowModal;
  finally
       FreeAndNil(PertesGestionF);
  end;
end;

procedure TPertesFListF.DateStartPerteDChange(Sender: TObject);
begin
DataModuleF.PertesTable.DisableControls;
DataModuleF.PertesTable.Active:= False;
DataModuleF.PertesTable.SQL.clear;
DataModuleF.PertesTable.sql.Text:='SELECT * FROM pertes WHERE date_pr BETWEEN '''+(DateToStr(DateStartPerteD.Date))+ ''' AND ''' +(DateToStr(DateEndPerteD.Date))+'''';
DataModuleF.PertesTable.Active:= True;
DataModuleF.PertesTable.EnableControls;
end;

procedure TPertesFListF.FisrtBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.First;
end;

procedure TPertesFListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(PertesFListF);
end;

procedure TPertesFListF.FormShow(Sender: TObject);
begin
  DataModuleF.PertesTable.Active:= True;
  DateStartPerteD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndPerteD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));
  DateStartPerteDChange(Sender);
end;

procedure TPertesFListF.LastBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Last;
end;

procedure TPertesFListF.NextBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Next;
end;

procedure TPertesFListF.PreviosBARecbtnClick(Sender: TObject);
begin
DataModuleF.PertesTable.Prior;
end;

procedure TPertesFListF.ResearchPerteEdtChange(Sender: TObject);
begin
//
end;

procedure TPertesFListF.TypePerteListCbxDropDown(Sender: TObject);

var
I : Integer;
  begin
     DataModuleF.Perte_typeTable.Refresh;
     TypePerteListCbx.Items.Clear;
     DataModuleF.Perte_typeTable.Active := False;
     DataModuleF.Perte_typeTable.sql.Clear;
     DataModuleF.Perte_typeTable.SQL.Text:= 'SELECT * FROM perte_type ' ;
     DataModuleF.Perte_typeTable.Active := True;
     DataModuleF.Perte_typeTable.first;

     for I := 0 to DataModuleF.Perte_typeTable.RecordCount - 1 do
     if DataModuleF.Perte_typeTable.FieldByName('nom_prt').IsNull = False then
     begin
       TypePerteListCbx.Items.Add(DataModuleF.Perte_typeTable.FieldByName('nom_prt').AsString);
       DataModuleF.Perte_typeTable.Next;
      end;

      TypePerteListCbx.Items.Add('Tous');
end;

end.
