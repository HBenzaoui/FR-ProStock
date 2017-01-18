unit USTypeChargeList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, AdvToolBtn;

type
  TSTypeChargeListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel1: TPanel;
    BottomP: TPanel;
    OKAddCompteSBtn: TAdvToolButton;
    ResearchFamPEdt: TSearchBox;
    CompteDBGridEh: TDBGridEh;
    STypeChargeListDataS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure CompteDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure CompteDBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CompteDBGridEhDblClick(Sender: TObject);
    procedure ResearchFamPEdtChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  STypeChargeListF: TSTypeChargeListF;

implementation

{$R *.dfm}

uses Winapi.MMSystem,UMainF, UDataModule, USplashAddUnite, USplash;

procedure TSTypeChargeListF.AdvToolButton1Click(Sender: TObject);
begin
//-------- Show the splash screan for the Sous Type de charge  to add new one---------//
  FSplashAddUnite:=TFSplashAddUnite.Create(STypeChargeListF);
  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00BFC86B;
  FSplashAddUnite.LineP.Color:=  $00BFC86B;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='S.Type:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer un S.Type' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Sous Type de Charge';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (STypeChargeListF.Left + STypeChargeListF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=14;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;
  FSplashAddUnite.OKAddUniteSBtn.Tag:= 31 ;//
end;

procedure TSTypeChargeListF.AdvToolButton2Click(Sender: TObject);
begin
//-------- Show the splash screan for the produit familly to add new one---------//
  if NOT (DataModuleF.Charge_s_typeTable.IsEmpty) then
begin
  FSplashAddUnite:=TFSplashAddUnite.Create(STypeChargeListF);

  FSplashAddUnite.OKAddUniteSBtn.Tag:= 31 ;
  FSplashAddUnite.Image1.Tag:= 1 ;

  FSplashAddUnite.Width:= 330;
  FSplashAddUnite.Panel1.Color:= $00BFC86B;
  FSplashAddUnite.LineP.Color:= $00BFC86B;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
  FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
  FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
  FSplashAddUnite.NameAddUniteSLbl.Caption:='S.Type:';
  FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer un S.Type' ;
  FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Modifier Sous Type de Charge';
  FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
  FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
  FSplashAddUnite.Left:= (STypeChargeListF.Left + STypeChargeListF.Width div 2) - (FSplashAddUnite.Width div 2) ;
  FSplashAddUnite.Top:=   MainForm.Top + 5;
  FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
  FSplashAddUnite.Image1.Visible:= True;
  FSplashAddUnite.Image1.ImageIndex:=7;
  FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  FSplashAddUnite.NameAddUniteSEdt.Text:= DataModuleF.Charge_s_typeTable.FieldByName('nom_chst').AsString;

  AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
  FSplashAddUnite.Show;
  FSplashAddUnite.NameAddUniteSEdt.SetFocus;


 end;//
end;

procedure TSTypeChargeListF.AdvToolButton3Click(Sender: TObject);
begin
  if NOT (DataModuleF.Charge_s_typeTable.IsEmpty) then
     begin

     MainForm.SQLQuery.Active:= False;
     MainForm.SQLQuery.SQL.Clear;
     MainForm.SQLQuery.SQL.Text:= 'SELECT code_chst FROM charges WHERE code_chst = '
     +IntToStr(DataModuleF.Charge_s_typeTable.FieldByName('code_chst').AsInteger);
     MainForm.SQLQuery.Active:= True;

    if  (MainForm.SQLQuery.IsEmpty)  then
     begin
        DataModuleF.Charge_s_typeTable.Delete;

//        TTask.Run ( procedure
//            begin
            FSplash := TFSplash.Create(STypeChargeListF);
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

procedure TSTypeChargeListF.CompteDBGridEhDblClick(Sender: TObject);
begin
//------ use this code to make the clock just on the grid not the title -----/
if CompteDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
begin
  AdvToolButton2Click(Sender) ;
end;
end;

procedure TSTypeChargeListF.CompteDBGridEhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not CompteDBGridEh.DataSource.DataSet.IsEmpty then
  begin
    if key = VK_DELETE then
  AdvToolButton3Click(Sender) ;
  end else exit
end;

procedure TSTypeChargeListF.CompteDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TSTypeChargeListF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DataModuleF.Charge_s_typeTable.Filtered := False;
NormalForms;
end;

procedure TSTypeChargeListF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TSTypeChargeListF.FormShow(Sender: TObject);
begin
GrayForms;
end;

procedure TSTypeChargeListF.OKAddCompteSBtnClick(Sender: TObject);
begin
 DataModuleF.Charge_s_typeTable.Filtered := False;
Close;
end;

procedure TSTypeChargeListF.ResearchFamPEdtChange(Sender: TObject);
begin
  if (ResearchFamPEdt.text <> '') then
      begin
      DataModuleF.Charge_s_typeTable.Filtered:=false;
      DataModuleF.Charge_s_typeTable.Filter := '[nom_chst] LIKE ' + quotedstr(  '%'+  ResearchFamPEdt.Text +'%');
      DataModuleF.Charge_s_typeTable.Filtered :=True;
    end  else
      begin
        DataModuleF.Charge_s_typeTable.Filtered := False;
       end;
end;

end.
