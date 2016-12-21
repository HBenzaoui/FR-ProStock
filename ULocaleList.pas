unit ULocaleList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, AdvToolBtn;

type
  TLocaleListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel1: TPanel;
    BottomP: TPanel;
    OKAddCompteSBtn: TAdvToolButton;
    ResearchLocaleEdt: TSearchBox;
    CompteDBGridEh: TDBGridEh;
    LocaleListDataS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ResearchLocaleEdtChange(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure CompteDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure CompteDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CompteDBGridEhDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LocaleListF: TLocaleListF;

implementation

uses Winapi.MMSystem,Threading,
  UMainF, USplash, USplashAddUnite;

{$R *.dfm}

procedure TLocaleListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
end;

procedure TLocaleListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;

  if key = #13 then
  begin
   key := #0;
   OKAddCompteSBtnClick(Sender);
  end;
end;

procedure TLocaleListF.OKAddCompteSBtnClick(Sender: TObject);
begin
Close;
end;

procedure TLocaleListF.FormShow(Sender: TObject);
begin
GrayForms;
ResearchLocaleEdt.SetFocus;
end;

procedure TLocaleListF.ResearchLocaleEdtChange(Sender: TObject);
begin
  if (ResearchLocaleEdt.text <> '') then
      begin
      MainForm.LocalisationTable.Filtered:=false;
      MainForm.LocalisationTable.Filter := '[nom_l] LIKE ' + quotedstr(  '%'+  ResearchLocaleEdt.Text +'%');
      MainForm.LocalisationTable.Filtered :=True;
    end  else
      begin
        MainForm.LocalisationTable.Filtered := False;
       end;
end;

procedure TLocaleListF.AdvToolButton3Click(Sender: TObject);
begin

  if NOT (MainForm.LocalisationTable.IsEmpty) then
     begin

     MainForm.SQLQuery.Active:= False;
     MainForm.SQLQuery.SQL.Clear;
     MainForm.SQLQuery.SQL.Text:= 'SELECT code_l FROM produit WHERE code_l = '
     +IntToStr(MainForm.LocalisationTable.FieldByName('code_l').AsInteger);
     MainForm.SQLQuery.Active:= True;

      if  (MainForm.SQLQuery.IsEmpty)  then
     begin

       MainForm.LocalisationTable.Delete;

//        TTask.Run ( procedure
//        begin
          FSplash := TFSplash.Create(LocaleListF);
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
//             TTask.Run ( procedure
//             begin
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
//             end);
           end;
   end;

        //--dicconet when finish the quiry ---
      MainForm.SQLQuery.Active:= False;
end;

procedure TLocaleListF.CompteDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if CompteDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  AdvToolButton2Click(Sender) ;
end;
end;

procedure TLocaleListF.CompteDBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  AdvToolButton3Click(Sender) ;
  end else exit
end;

procedure TLocaleListF.CompteDBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['n','N'] then
    AdvToolButton1Click(Sender);
  if Key in ['r','R'] then
    ResearchLocaleEdt.SetFocus;
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
  if Key in ['s','S'] then
  AdvToolButton3Click(Sender) ;
    if Key in ['m','M'] then
      AdvToolButton2Click(Sender);
  end  else   Exit;
end;

procedure TLocaleListF.AdvToolButton1Click(Sender: TObject);
begin
ResearchLocaleEdt.Text:='';
//-------- Show the splash screan for the produit Localisation to add new one---------//

  FSplashAddUnite:=TFSplashAddUnite.Create(LocaleListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 3 ;
  FSplashAddUnite.Image1.Tag:= 0 ;

  FSplashAddUnite.Width:= 355;
  FSplashAddUnite.Panel1.Color:= $000098FF;
  FSplashAddUnite.LineP.Color:= $000098FF;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 20 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 20;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Localisation:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer Localisation' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Localisation';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  FSplashAddUnite.Left:=  (LocaleListF.Left + LocaleListF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=8;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );

  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  ;
end;

procedure TLocaleListF.AdvToolButton2Click(Sender: TObject);
begin
//-------- Show the splash screan for the produit Localisation to add new one---------//
 if NOT (MainForm.LocalisationTable.IsEmpty) then
 begin
  FSplashAddUnite:=TFSplashAddUnite.Create(LocaleListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 3 ;
  FSplashAddUnite.Image1.Tag:= 1 ;

  FSplashAddUnite.Width:= 355;
  FSplashAddUnite.Panel1.Color:= $000098FF;
  FSplashAddUnite.LineP.Color:= $000098FF;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 20 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 20;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='Localisation:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer Localisation' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Modifier Localisation';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  FSplashAddUnite.Left:=  (LocaleListF.Left + LocaleListF.Width div 2) - (FSplashAddUnite.Width div 2);
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=8;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  FSplashAddUnite.NameAddUniteSEdt.Text:= MainForm.LocalisationTable.FieldByName('nom_l').AsString;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );

  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;



 end;
end;

end.
