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
    procedure CodeBarresDBGridEhDblClick(Sender: TObject);
    procedure CodeBarresDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeBarresDBGridEhKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersListF: TUsersListF;

implementation

uses    Winapi.MMSystem,Threading,
  UMainF, UClientGestion, UUsersGestion, USplash, UDataModule;

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

  if key = #13 then

  begin
   key := #0;
   OKAddUniteSBtnClick(Sender);

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

        UsersGestionF.NameUserGEdt.Text:= DataModuleF.UsersTable.FieldByName('nom_ur').AsString;
        UsersGestionF.PassUserGEdt.Text:= DataModuleF.UsersTable.FieldByName('password_ur').AsString;
        UsersGestionF.PassChkUserGEdt.Text:= DataModuleF.UsersTable.FieldByName('password_ur').AsString;
        UsersGestionF.TypeUserGCbx.ItemIndex:=  DataModuleF.UsersTable.FieldByName('type_ur').AsInteger;

        UsersGestionF.TypeUserGCbxClick(Sender);

        UsersGestionF.BLSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['bl_ur'];
        UsersGestionF.FCVSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['fcv_ur'];
        UsersGestionF.RGCSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['rgc_ur'];
        UsersGestionF.BRSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['br_ur'];
        UsersGestionF.FCASdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['fca_ur'];
        UsersGestionF.RGFSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['rgf_ur'];
        UsersGestionF.CaisseSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['caisse_ur'];
        UsersGestionF.BankSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['bank_ur'];
        UsersGestionF.ClientSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['client_ur'];
        UsersGestionF.FourSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['four_ur'];
        UsersGestionF.CtrSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['ctr_ur'];
        UsersGestionF.ProduitSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['produit_ur'];
        UsersGestionF.FamPSdr.SliderOn  :=  DataModuleF.UsersTable.FieldValues['famp_ur'];
        UsersGestionF.SFamPSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['sfamp_ur'];
        UsersGestionF.MPSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['mdpai_ur'];
        UsersGestionF.ComptesSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['cmpt_ur'];
        UsersGestionF.UnitSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['unit_ur'];
        UsersGestionF.LocalSdr.SliderOn:=  DataModuleF.UsersTable.FieldValues['local_ur'];

        if DataModuleF.UsersTable.FieldByName('code_ur').AsInteger = 1 then
        begin  UsersGestionF.TypeUserGCbx.Enabled:= False  end;

        UsersGestionF.Tag := 1;
        UsersGestionF.ShowModal;


end;

procedure TUsersListF.AdvToolButton3Click(Sender: TObject);
begin
  if NOT (DataModuleF.UsersTable.FieldByName('code_ur').AsInteger = 1) then
  begin
  if NOT (DataModuleF.UsersTable.IsEmpty) then
     begin
     DataModuleF.UsersTable.Delete;

//        TTask.Run ( procedure
//        begin
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
//          end);

      sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

   end;

  end else
      begin
        sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
//         TTask.Run ( procedure
//         begin
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
//         end);
      end;
end;

procedure TUsersListF.CodeBarresDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if CodeBarresDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  AdvToolButton2Click(Sender) ;
end;
end;

procedure TUsersListF.CodeBarresDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not CodeBarresDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  AdvToolButton3Click(Sender) ;
  end
  else
    exit
end;

procedure TUsersListF.CodeBarresDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['n','N'] then
    AdvToolButton1Click(Sender);
  if Key in ['r','R'] then
    ResearchUsersEdt.SetFocus;
  if not CodeBarresDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  AdvToolButton3Click(Sender) ;
    if Key in ['m','M'] then
      AdvToolButton2Click(Sender);
  end  else   Exit;
end;

procedure TUsersListF.ResearchUsersEdtChange(Sender: TObject);
begin
  if (ResearchUsersEdt.text <> '') then
      begin
      DataModuleF.UsersTable.Filtered:=false;
      DataModuleF.UsersTable.Filter := '[nom_ur] LIKE ' + quotedstr(  '%'+  ResearchUsersEdt.Text +'%');
      DataModuleF.UsersTable.Filtered :=True;
    end  else
      begin
        DataModuleF.UsersTable.Filtered := False;
       end;
end;

end.
