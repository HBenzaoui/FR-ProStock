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

end.
