unit UUnitesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, AdvToolBtn;

type
  TUnitesListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel1: TPanel;
    BottomP: TPanel;
    OKAddCompteSBtn: TAdvToolButton;
    ResearchUniteEdt: TSearchBox;
    CompteDBGridEh: TDBGridEh;
    UniteListDataS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ResearchUniteEdtChange(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitesListF: TUnitesListF;

implementation

uses   Winapi.MMSystem,
  UMainF, USplash, USplashAddUnite;

{$R *.dfm}

procedure TUnitesListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
end;

procedure TUnitesListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;
end;

procedure TUnitesListF.OKAddCompteSBtnClick(Sender: TObject);
begin
Close;
end;

procedure TUnitesListF.FormShow(Sender: TObject);
begin
GrayForms;
ResearchUniteEdt.SetFocus;
end;

procedure TUnitesListF.ResearchUniteEdtChange(Sender: TObject);
begin
  if (ResearchUniteEdt.text <> '') then
      begin
      MainForm.UniteTable.Filtered:=false;
      MainForm.UniteTable.Filter := '[nom_u] LIKE ' + quotedstr(  '%'+  ResearchUniteEdt.Text +'%');
      MainForm.UniteTable.Filtered :=True;
    end  else
      begin
        MainForm.UniteTable.Filtered := False;
       end;
end;

procedure TUnitesListF.AdvToolButton3Click(Sender: TObject);
begin
  if NOT (MainForm.UniteTable.IsEmpty) then
     begin
     MainForm.UniteTable.Delete;

          FSplash := TFSplash.Create(UnitesListF);
          try
            FSplash.Left := Screen.Width div 2 - (FSplash.Width div 2);
            FSplash.Top := 0;

            FSplash.Label1.Caption:='  Suppression avec succ�s';
            FSplash.Color:= $004735F9;
            AnimateWindow(FSplash.Handle, 150, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE);
            sleep(250);
            AnimateWindow(FSplash.Handle, 150, AW_VER_NEGATIVE OR
              AW_SLIDE OR AW_HIDE);
          finally
            FSplash.free;

          end;
      sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
   end;
end;

procedure TUnitesListF.AdvToolButton1Click(Sender: TObject);
begin
//-------- Show the splash screan for the produit Unite  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(UnitesListF);
  FSplashAddUnite.Panel1.Color:= $0028CAFE;
  FSplashAddUnite.LineP.Color:= $0028CAFE;
  FSplashAddUnite.Left:=  (UnitesListF.Left + UnitesListF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=6;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 2 ;
end;

procedure TUnitesListF.AdvToolButton2Click(Sender: TObject);
begin
if NOT (MainForm.UniteTable.IsEmpty) then
begin
  //-------- Show the splash screan for the produit Unite  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(UnitesListF);
  FSplashAddUnite.Panel1.Color:= $0028CAFE;
  FSplashAddUnite.LineP.Color:= $0028CAFE;
  FSplashAddUnite.Left:=  (UnitesListF.Left + UnitesListF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=6;

  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:= 'Modifier Unite';

  FSplashAddUnite.NameAddUniteSEdt.Text:= MainForm.UniteTable.FieldByName('nom_u').AsString;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 2 ;
  FSplashAddUnite.Image1.Tag:= 1;
end;
end;

end.
