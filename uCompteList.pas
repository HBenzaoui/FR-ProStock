unit uCompteList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvToolBtn;

type
  TCompteListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel1: TPanel;
    BottomP: TPanel;
    OKAddCompteSBtn: TAdvToolButton;
    ResearchCompteEdt: TSearchBox;
    CompteListDataS: TDataSource;
    CompteDBGridEh: TDBGridEh;
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CompteListF: TCompteListF;

implementation

{$R *.dfm}


uses UMainF,USplashAddCompte, USplash,Winapi.MMSystem,Threading;

procedure TCompteListF.OKAddCompteSBtnClick(Sender: TObject);
begin
Close;
end;

procedure TCompteListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
end;

procedure TCompteListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;
end;

procedure TCompteListF.FormShow(Sender: TObject);
begin
GrayForms;
ResearchCompteEdt.SetFocus;
end;

procedure TCompteListF.AdvToolButton1Click(Sender: TObject);
begin
    FSplashAddCompte:=TFSplashAddCompte.Create(CompteListF);
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 7 ;
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;

end;

procedure TCompteListF.AdvToolButton2Click(Sender: TObject);
begin
 if NOT (MainForm.CompteTable.IsEmpty) then
  begin
    FSplashAddCompte:=TFSplashAddCompte.Create(CompteListF);
    FSplashAddCompte.OKAddCompteSBtn.Tag:= 8 ;
    FSplashAddCompte.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddCompte.Width div 2);
    FSplashAddCompte.Top:=  MainForm.Top + 5 ;
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );

    FSplashAddCompte.NumAddCompteSEdt.Text:= MainForm.CompteTable.FieldByName('refer_cmpt').AsString;
    FSplashAddCompte.NameAddCompteSEdt.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;
    If  MainForm.CompteTable.FieldByName('nature_cmpt').AsBoolean = False Then
   begin  FSplashAddCompte.NatureAddCompteSCbx.ItemIndex:= 0 end else
                                                           begin
                                                            FSplashAddCompte.NatureAddCompteSCbx.ItemIndex:= 1;
                                                           end;
    FSplashAddCompte.SoldeAddCompteSCbx.Text:= MainForm.CompteTable.FieldByName('oldcredit_cmpt').AsString;

    FSplashAddCompte.Show;
    FSplashAddCompte.NameAddCompteSEdt.SetFocus;

    end;

end;



procedure TCompteListF.AdvToolButton3Click(Sender: TObject);
begin
  if  (MainForm.CompteTable.FieldByName('code_cmpt').AsInteger  <> 1) AND
      (MainForm.CompteTable.FieldByName('code_cmpt').AsInteger  <> 2) then
  begin
  if NOT (MainForm.CompteTable.IsEmpty) then
     begin

     MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
     MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
     MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:=
     'SELECT * FROM opt_cas_bnk where code_cmpt = '+ IntToStr(MainForm.CompteTable.FieldByName('code_cmpt').AsInteger) ;
     MainForm.Opt_cas_bnk_CaisseTable.Active:= True;

    if  MainForm.Opt_cas_bnk_CaisseTable.IsEmpty then
    begin
      MainForm.CompteTable.Delete;

        TTask.Run ( procedure
        begin
          FSplash := TFSplash.Create(CompteListF);
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

     MainForm.Opt_cas_bnk_CaisseTable.Active:= False;
     MainForm.Opt_cas_bnk_CaisseTable.SQL.clear;
     MainForm.Opt_cas_bnk_CaisseTable.SQL.Text:= 'SELECT * FROM opt_cas_bnk where nature_ocb = false ';
     MainForm.Opt_cas_bnk_CaisseTable.Active:= True;
    end else
        begin
           sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
        end;
   end;
  end else
      begin
        sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
      end;
end;

end.
