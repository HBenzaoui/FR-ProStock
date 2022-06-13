unit USNumberGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, AdvToolBtn, Vcl.ComCtrls;

type
  TSNumberGestionF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CancelBtn: TAdvToolButton;
    OKBtn: TAdvToolButton;
    label1: TLabel;
    RefNSeriesLbl: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    NameNSeriesLbl: TLabel;
    NSeriesDispoLsBox: TListBox;
    NSeriesNewMem: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure NSeriesDispoLsBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure NSeriesDispoLsBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SNumberGestionF: TSNumberGestionF;

implementation

{$R *.dfm}

uses UMainF, UBonRecGestion, UBonLivGestion, UComptoir, UBonRetAGestion,
  UBonRetVGestion;

procedure TSNumberGestionF.CancelBtnClick(Sender: TObject);
begin
    AnimateWindow(SNumberGestionF.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    SNumberGestionF.Release;
end;

procedure TSNumberGestionF.FormCreate(Sender: TObject);
begin
GrayForms  ;
end;

procedure TSNumberGestionF.FormDestroy(Sender: TObject);
begin
  NormalForms  ;
end;

procedure TSNumberGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

   OKBtnClick(Sender);
 end;

  if (NSeriesNewMem.Focused = False) and (key = #13) then
 begin
   key := #0;

//  ProduitsListDBGridEhKeyPress(Sender, key);

 end;
end;

procedure TSNumberGestionF.NSeriesDispoLsBoxClick(Sender: TObject);
var i : integer;
begin

for i := NSeriesDispoLsBox.Items.Count - 1 downto 0 do
  if NSeriesDispoLsBox.Selected[i] then begin
    NSeriesNewMem.Lines.Add(NSeriesDispoLsBox.Items[i]);
    NSeriesDispoLsBox.Items.Delete(i);
  end;
//  ListBox2.Sorted := true;
//  NSeriesProduitGLsBox.Sorted := true;

end;

procedure TSNumberGestionF.NSeriesDispoLsBoxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);

begin

   with (Control as TListBox).Canvas do
  begin
    if odSelected in State then
    begin
      Brush.Color := $00EAEAEA;
      font.Color:= font.color;
    end;

    FillRect(Rect);
    TextOut(Rect.Left, Rect.Top, (Control as TListBox).Items[Index]);
    if odFocused In State then begin
      DrawFocusRect(Rect);
    end;
  end;

end;



procedure TSNumberGestionF.OKBtnClick(Sender: TObject);
begin
//
end;

end.
