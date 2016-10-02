unit UUsersList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, Vcl.StdCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, AdvToolBtn, Vcl.WinXCtrls, Data.DB;

type
  TUsersListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel: TPanel;
    BottomP: TPanel;
    CodeBarresDBGridEh: TDBGridEh;
    ResearchUsersEdt: TSearchBox;
    UsersListDataS: TDataSource;
    OKAddUniteSBtn: TAdvToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKAddUniteSBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure ResearchUsersEdtChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersListF: TUsersListF;

implementation

uses    Winapi.MMSystem,Threading,
  UMainF, UClientGestion, UUsersGestion, USplash;

{$R *.dfm}

procedure TUsersListF.FormCreate(Sender: TObject);
begin
  GrayForms;
end;

procedure TUsersListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
end;

procedure TUsersListF.OKAddUniteSBtnClick(Sender: TObject);
begin
Close;
end;

procedure TUsersListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

  Close;

 end;
end;

procedure TUsersListF.AdvToolButton1Click(Sender: TObject);
begin
          ResearchUsersEdt.Text:='';

            UsersGestionF:=TUsersGestionF.Create(UsersListF);
//            UsersGestionF.TypeUserGCbxChange(Sender);
            UsersGestionF.Left:=  (Screen.Width div 2 ) - (UsersGestionF.Width div 2)    ;
            UsersGestionF.Top:=   (Screen.Height div 2) - (UsersGestionF.Height div 2)    ;
            UsersGestionF.ShowModal;
end;

procedure TUsersListF.AdvToolButton2Click(Sender: TObject);
begin
        UsersGestionF:=TUsersGestionF.Create(UsersListF);

        UsersGestionF.Left:=  (Screen.Width div 2 ) - (UsersGestionF.Width div 2);
        UsersGestionF.Top:=   (Screen.Height div 2) - (UsersGestionF.Height div 2);

        UsersGestionF.NameUserGEdt.Text:= MainForm.UsersTable.FieldValues['nom_ur'] ;
        UsersGestionF.PassUserGEdt.Text:= MainForm.UsersTable.FieldValues['password_ur'];
        UsersGestionF.PassChkUserGEdt.Text:= MainForm.UsersTable.FieldValues['password_ur'];
        UsersGestionF.TypeUserGCbx.ItemIndex:=  MainForm.UsersTable.FieldValues['type_ur'];

        UsersGestionF.TypeUserGCbxClick(Sender);

        UsersGestionF.BLSdr.SliderOn:=  MainForm.UsersTable.FieldValues['bl_ur'];
        UsersGestionF.FCVSdr.SliderOn:=  MainForm.UsersTable.FieldValues['fcv_ur'];
        UsersGestionF.RGCSdr.SliderOn:=  MainForm.UsersTable.FieldValues['rgc_ur'];
        UsersGestionF.BRSdr.SliderOn:=  MainForm.UsersTable.FieldValues['br_ur'];
        UsersGestionF.FCASdr.SliderOn:=  MainForm.UsersTable.FieldValues['fca_ur'];
        UsersGestionF.RGFSdr.SliderOn:=  MainForm.UsersTable.FieldValues['rgf_ur'];
        UsersGestionF.CaisseSdr.SliderOn:=  MainForm.UsersTable.FieldValues['caisse_ur'];
        UsersGestionF.BankSdr.SliderOn:=  MainForm.UsersTable.FieldValues['bank_ur'];
        UsersGestionF.ClientSdr.SliderOn:=  MainForm.UsersTable.FieldValues['client_ur'];
        UsersGestionF.FourSdr.SliderOn:=  MainForm.UsersTable.FieldValues['four_ur'];
        UsersGestionF.CtrSdr.SliderOn:=  MainForm.UsersTable.FieldValues['ctr_ur'];
        UsersGestionF.ProduitSdr.SliderOn:=  MainForm.UsersTable.FieldValues['produit_ur'];
        UsersGestionF.FamPSdr.SliderOn  :=  MainForm.UsersTable.FieldValues['famp_ur'];
        UsersGestionF.SFamPSdr.SliderOn:=  MainForm.UsersTable.FieldValues['sfamp_ur'];
        UsersGestionF.MPSdr.SliderOn:=  MainForm.UsersTable.FieldValues['mdpai_ur'];
        UsersGestionF.ComptesSdr.SliderOn:=  MainForm.UsersTable.FieldValues['cmpt_ur'];
        UsersGestionF.UnitSdr.SliderOn:=  MainForm.UsersTable.FieldValues['unit_ur'];
        UsersGestionF.LocalSdr.SliderOn:=  MainForm.UsersTable.FieldValues['local_ur'];

        UsersGestionF.Tag := 1;
        UsersGestionF.ShowModal;


end;

procedure TUsersListF.AdvToolButton3Click(Sender: TObject);
begin
  if NOT (MainForm.UsersTable.FieldByName('code_ur').AsInteger = 1) then
  begin
  if NOT (MainForm.UsersTable.IsEmpty) then
     begin
     MainForm.UsersTable.Delete;

        TTask.Run ( procedure
        begin
          FSplash := TFSplash.Create(UsersListF);
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
          end);

      sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

   end;

  end else
      begin
        sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
      end;
end;

procedure TUsersListF.ResearchUsersEdtChange(Sender: TObject);
begin
  if (ResearchUsersEdt.text <> '') then
      begin
      MainForm.UsersTable.Filtered:=false;
      MainForm.UsersTable.Filter := '[nom_ur] LIKE ' + quotedstr(  '%'+  ResearchUsersEdt.Text +'%');
      MainForm.UsersTable.Filtered :=True;
    end  else
      begin
        MainForm.UsersTable.Filtered := False;
       end;
end;

end.
