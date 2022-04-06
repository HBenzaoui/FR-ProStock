unit UFamPList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, AdvToolBtn;

type
  TFamPListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel1: TPanel;
    BottomP: TPanel;
    OKAddCompteSBtn: TAdvToolButton;
    ResearchFamPEdt: TSearchBox;
    CompteDBGridEh: TDBGridEh;
    FamPListDataS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure ResearchFamPEdtChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  FamPListF: TFamPListF;

implementation

uses  Winapi.MMSystem, Threading,
  UMainF, USplashAddUnite, USplash;

{$R *.dfm}

procedure TFamPListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.FamproduitTable.Filtered := False;
NormalForms;
end;

procedure TFamPListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;
      MainForm.FamproduitTable.Filtered := False;
      Close;

     end;

  if key = #13 then
  begin
   key := #0;
   OKAddCompteSBtnClick(Sender);
  end;
  
end;

procedure TFamPListF.OKAddCompteSBtnClick(Sender: TObject);
begin
MainForm.FamproduitTable.Filtered := False;
Close;
end;

procedure TFamPListF.FormShow(Sender: TObject);
begin

ResearchFamPEdt.SetFocus;
end;

procedure TFamPListF.AdvToolButton1Click(Sender: TObject);
begin
ResearchFamPEdt.Text:='';
//-------- Show the splash screan for the produit familly to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(FamPListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 0 ;
  FSplashAddUnite.Image1.Tag:= 0 ;

  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00B0279C;
  FSplashAddUnite.LineP.Color:= $00B0279C;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Famille:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer une Famille' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Famille';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (FamPListF.Left + FamPListF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=7;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

//      TTask.Run ( procedure
//       begin
          AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
//       end);

  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;

end;

procedure TFamPListF.AdvToolButton2Click(Sender: TObject);
begin
//-------- Show the splash screan for the produit familly to add new one---------//
  if NOT (MainForm.FamproduitTable.IsEmpty) then
begin
  FSplashAddUnite:=TFSplashAddUnite.Create(FamPListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 0 ;
  FSplashAddUnite.Image1.Tag:= 1 ;

  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00B0279C;
  FSplashAddUnite.LineP.Color:= $00B0279C;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Famille:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer une Famille' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Modifier Famille';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (FamPListF.Left + FamPListF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=7;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  FSplashAddUnite.NameAddUniteSEdt.Text:= MainForm.FamproduitTable.FieldByName('nom_famp').AsString;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;


 end;
end;

procedure TFamPListF.AdvToolButton3Click(Sender: TObject);
begin

  if NOT (MainForm.FamproduitTable.IsEmpty) then
     begin

     MainForm.SQLQuery.Active:= False;
     MainForm.SQLQuery.SQL.Clear;
     MainForm.SQLQuery.SQL.Text:= 'SELECT code_famp FROM produit WHERE code_famp = '
     +IntToStr(MainForm.FamproduitTable.FieldByName('code_famp').AsInteger);
     MainForm.SQLQuery.Active:= True;

    if  (MainForm.SQLQuery.IsEmpty)  then
     begin
        MainForm.FamproduitTable.Delete;

//        TTask.Run ( procedure
//            begin
            FSplash := TFSplash.Create(FamPListF);
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

procedure TFamPListF.CompteDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if CompteDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  AdvToolButton2Click(Sender) ;
end;
end;

procedure TFamPListF.CompteDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  AdvToolButton3Click(Sender) ;
  end else exit
end;

procedure TFamPListF.CompteDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AdvToolButton1Click(Sender);
  if Key in ['r','R'] then
    ResearchFamPEdt.SetFocus;
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  AdvToolButton3Click(Sender) ;
    if Key in ['m','M'] then
      AdvToolButton2Click(Sender);
  end  else   Exit;
end;

procedure TFamPListF.ResearchFamPEdtChange(Sender: TObject);
begin
  if (ResearchFamPEdt.text <> '') then
      begin
      MainForm.FamproduitTable.Filtered:=false;
      MainForm.FamproduitTable.Filter := '[nom_famp] LIKE ' + quotedstr(  '%'+  ResearchFamPEdt.Text +'%');
      MainForm.FamproduitTable.Filtered :=True;
    end  else
      begin
        MainForm.FamproduitTable.Filtered := False;
       end;
end;

procedure TFamPListF.FormCreate(Sender: TObject);
begin
GrayForms;
end;

end.
