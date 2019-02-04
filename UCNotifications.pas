unit UCNotifications;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, sPageControl, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TCNotificationsF = class(TForm)
    ProduitGPgControl: TsPageControl;
    PZeroQTB: TsTabSheet;
    PCloseZeroQTB: TsTabSheet;
    PMoreMaxQTB: TsTabSheet;
    PCloseDiedTB: TsTabSheet;
    PDiedTB: TsTabSheet;
    LineP: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ProduitsListDBGridEh: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure PDiedTBShow(Sender: TObject);
    procedure PZeroQTBShow(Sender: TObject);
    procedure PCloseZeroQTBShow(Sender: TObject);
    procedure PMoreMaxQTBShow(Sender: TObject);
    procedure PCloseDiedTBShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNotificationsF: TCNotificationsF;

implementation

{$R *.dfm}

uses UDataModule;

procedure TCNotificationsF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(CNotificationsF);
end;

procedure TCNotificationsF.FormPaint(Sender: TObject);
begin
  DataModuleF.PZeroQCnotif.Refresh;
  DataModuleF.PCloseZeroQCnotif.Refresh;
  DataModuleF.PMoreMaxQCnotif.Refresh;
  DataModuleF.PCloseDiedCnotif.Refresh;
  DataModuleF.PDiedCnotif.Refresh;
end;

procedure TCNotificationsF.PZeroQTBShow(Sender: TObject);
begin
  DataModuleF.PZeroQCnotif.Refresh;
end;

procedure TCNotificationsF.PCloseZeroQTBShow(Sender: TObject);
begin
  DataModuleF.PCloseZeroQCnotif.Refresh;
end;

procedure TCNotificationsF.PMoreMaxQTBShow(Sender: TObject);
begin
  DataModuleF.PMoreMaxQCnotif.Refresh;
end;

procedure TCNotificationsF.PCloseDiedTBShow(Sender: TObject);
begin
  DataModuleF.PCloseDiedCnotif.Refresh;
end;


procedure TCNotificationsF.PDiedTBShow(Sender: TObject);
begin
DataModuleF.PDiedCnotif.Refresh;
end;

end.
