unit UTransferComptesGestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, AdvToolBtn;

type
  TTransferComptesGestionF = class(TForm)
    Label2: TLabel;
    ObserRegFGLbl: TLabel;
    RequiredFourGlbl: TLabel;
    AddCompte1TransfeGBtn: TAdvToolButton;
    Label5: TLabel;
    Shape4: TShape;
    RegFGErrorP: TPanel;
    DateTransferGD: TDateTimePicker;
    ObserTransferGMem: TMemo;
    NameFourGErrorP: TPanel;
    CompteSourceTransfeGCbx: TComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    AddCompte2TransfeGBtn: TAdvToolButton;
    CompteDisTransfeGCbx: TComboBox;
    OKTransferGBtn: TAdvToolButton;
    CancelTransferGBtn: TAdvToolButton;
    Panel1: TPanel;
    label12: TLabel;
    CompteTranferTransferLblEdt: TEdit;
    label13: TLabel;
    Label7: TLabel;
    CompteSOLDTransferLbl: TLabel;
    CompteRestTransferLblEdt: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKTransferGBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferComptesGestionF: TTransferComptesGestionF;

implementation

{$R *.dfm}

uses UMainF;

procedure TTransferComptesGestionF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
NormalForms;
FreeAndNil(TransferComptesGestionF);
end;

procedure TTransferComptesGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;

  if key = #13 then
  begin
   key := #0;
   OKTransferGBtnClick(Sender);
  end;
end;

procedure TTransferComptesGestionF.FormShow(Sender: TObject);
begin
GrayForms;
end;

procedure TTransferComptesGestionF.OKTransferGBtnClick(Sender: TObject);
begin
//
end;

end.
