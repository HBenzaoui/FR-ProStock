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
    procedure CompteDBGridEhDblClick(Sender: TObject);
    procedure CompteDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CompteDBGridEhKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitesListF: TUnitesListF;

implementation

uses   Winapi.MMSystem,Threading,
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

     MainForm.SQLQuery.Active:= False;
     MainForm.SQLQuery.SQL.Clear;
     MainForm.SQLQuery.SQL.Text:= 'SELECT code_u FROM produit WHERE code_u = '
     +IntToStr(MainForm.UniteTable.FieldByName('code_u').AsInteger);
     MainForm.SQLQuery.Active:= True;

      if  (MainForm.SQLQuery.IsEmpty)  then
     begin
       MainForm.UniteTable.Delete;

//        TTask.Run ( procedure
//        begin
          FSplash := TFSplash.Create(UnitesListF);
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
      end else
          begin
            sndPlaySound('C:\Windows\Media\chord.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
//            TTask.Run ( procedure
//            begin
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
//            end);
          end;
   end;

        //--dicconet when finish the quiry ---
      MainForm.SQLQuery.Active:= False;
end;

procedure TUnitesListF.CompteDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if CompteDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  AdvToolButton2Click(Sender) ;
end;
end;

procedure TUnitesListF.CompteDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then

  AdvToolButton3Click(Sender) ;

  end
  else
    exit
end;

procedure TUnitesListF.CompteDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n'] then
    AdvToolButton1Click(Sender);
  if Key in ['r'] then
    ResearchUniteEdt.SetFocus;
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s' ] then
  AdvToolButton3Click(Sender) ;
    if Key in ['m'] then
      AdvToolButton2Click(Sender);
  end  else   Exit;
end;

procedure TUnitesListF.AdvToolButton1Click(Sender: TObject);
begin
ResearchUniteEdt.Text:='';

//-------- Show the splash screan for the produit Unite  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(UnitesListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 2 ;
  FSplashAddUnite.Image1.Tag:= 0 ;

  FSplashAddUnite.Panel1.Color:= $0028CAFE;
  FSplashAddUnite.LineP.Color:= $0028CAFE;
  FSplashAddUnite.Left:=  (UnitesListF.Left + UnitesListF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=6;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );

  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;

end;

procedure TUnitesListF.AdvToolButton2Click(Sender: TObject);
begin
if NOT (MainForm.UniteTable.IsEmpty) then
begin
  //-------- Show the splash screan for the produit Unite  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(UnitesListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 2 ;
  FSplashAddUnite.Image1.Tag:= 1;

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

end;
end;

end.
