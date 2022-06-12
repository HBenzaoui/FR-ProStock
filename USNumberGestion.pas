unit USNumberGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, AdvToolBtn;

type
  TSNumberGestionF = class(TForm)
    OKAddUniteSBtn: TAdvToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SNumberGestionF: TSNumberGestionF;

implementation

{$R *.dfm}

procedure TSNumberGestionF.FormCreate(Sender: TObject);
begin
GrayForms  ;
end;

procedure TSNumberGestionF.FormDestroy(Sender: TObject);
begin
  if Assigned(BonRecGestionF) OR Assigned(BonLivGestionF) then
 begin
   SetWindowPos(BonCtrGestionF.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
 end;
  NormalForms  ;
end;

end.
