unit UModePaieList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, System.ImageList, Vcl.ImgList, acAlphaImageList, AdvToolBtn,
  Vcl.ExtCtrls, Vcl.WinXCtrls, Data.DB;

type
  TModePaieListF = class(TForm)
    CodeBarresDBGridEh: TDBGridEh;
    Panel1: TPanel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    BottomP: TPanel;
    ResearchModePaiEdt: TSearchBox;
    ModePaieListDataS: TDataSource;
    OKAddUniteSBtn: TAdvToolButton;
    procedure AdvToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure ResearchModePaiEdtChange(Sender: TObject);
    procedure OKAddUniteSBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModePaieListF: TModePaieListF;

implementation

uses  Winapi.MMSystem,
  UMainF, USplashAddUnite, UClientGestion,USplash;

{$R *.dfm}

procedure TModePaieListF.AdvToolButton1Click(Sender: TObject);
begin
   //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(Application);
    FSplashAddUnite.Width:=330;
    FSplashAddUnite.Height:=185;
    FSplashAddUnite.NameAddUniteSLbl.Left:= 11;
    FSplashAddUnite.NameAddUniteSEdt.Left:=FSplashAddUnite.CompteAddUniteSCbx.Left;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width+ 2;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
    FSplashAddUnite.CompteAddUniteSLbl.Visible:=True;
    FSplashAddUnite.CompteAddUniteSCbx.Visible:=True;
    FSplashAddUnite.CompteAddUniteSBtn.Visible:=True;
    FSplashAddUnite.Panel1.Color:= $0040332D ;
    FSplashAddUnite.LineP.Color:= $0040332D  ;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Designation:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 28 ;

//    FSplashAddUnite.RequiredStarAddUniteSLbl.Tag := 1;
end;

procedure TModePaieListF.FormShow(Sender: TObject);
begin
GrayForms;
 ResearchModePaiEdt.SetFocus;
//MainForm.Mode_paiementTable.IndexesActive:= False;

end;

procedure TModePaieListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
//MainForm.Mode_paiementTable.IndexesActive:= True;
end;

procedure TModePaieListF.AdvToolButton2Click(Sender: TObject);
begin
           //-------- Show the splash screan for the mode de paiement ---------//
    FSplashAddUnite:=TFSplashAddUnite.Create(Application);
    FSplashAddUnite.Width:=330;
    FSplashAddUnite.Height:=185;
    FSplashAddUnite.NameAddUniteSLbl.Left:= 11;
    FSplashAddUnite.NameAddUniteSEdt.Left:=FSplashAddUnite.CompteAddUniteSCbx.Left;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width+ 2;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 18 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 18;
    FSplashAddUnite.CompteAddUniteSLbl.Visible:=True;
    FSplashAddUnite.CompteAddUniteSCbx.Visible:=True;


    FSplashAddUnite.NameAddUniteSEdt.Text:=   MainForm.Mode_paiementTable.FieldByName('nom_mdpai').AsString;

    MainForm.CompteTable.Active:= False;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte WHERE code_cmpt = '+ IntToStr(MainForm.Mode_paiementTable.FieldByName('code_cmpt').AsInteger);
    MainForm.CompteTable.Active:= True;

    FSplashAddUnite.CompteAddUniteSCbx.Text:= MainForm.CompteTable.FieldByName('nom_cmpt').AsString;

    MainForm.CompteTable.Active:= False;
    MainForm.CompteTable.SQL.Clear;
    MainForm.CompteTable.SQL.Text:= 'SELECT * FROM compte ';
    MainForm.CompteTable.Active:= True;

    FSplashAddUnite.CompteAddUniteSBtn.Visible:=True;
    FSplashAddUnite.Panel1.Color:= $0040332D ;
    FSplashAddUnite.LineP.Color:= $0040332D  ;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Designation:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer le Designation' ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Modifier Mode de Paiement';
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $00EFE9E8;
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left + FSplashAddUnite.NameAddUniteSEdt.Width + 5;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) -  ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.Left:=  (MainForm.Left + MainForm.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 29 ;

//    FSplashAddUnite.RequiredStarAddUniteSLbl.Tag := 1;


end;

procedure TModePaieListF.AdvToolButton3Click(Sender: TObject);
begin
  if  (MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger  <> 1) AND
      (MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger  <> 2) AND
      (MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger  <> 3) AND
      (MainForm.Mode_paiementTable.FieldByName('code_mdpai').AsInteger  <> 4) then
  begin
  if NOT (MainForm.Mode_paiementTable.IsEmpty) then
     begin
     MainForm.Mode_paiementTable.Delete;

          FSplash := TFSplash.Create(ModePaieListF);
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
      sndPlaySound('C:\Windows\Media\speech off.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

   end;

  end;
end;

procedure TModePaieListF.ResearchModePaiEdtChange(Sender: TObject);
begin
  if (ResearchModePaiEdt.text <> '') then
      begin
      MainForm.Mode_paiementTable.Filtered:=false;
      MainForm.Mode_paiementTable.Filter := '[nom_mdpai] LIKE ' + quotedstr(  '%'+  ResearchModePaiEdt.Text +'%');
      MainForm.Mode_paiementTable.Filtered :=True;
    end  else
      begin
        MainForm.Mode_paiementTable.Filtered := False;
       end;
end;

procedure TModePaieListF.OKAddUniteSBtnClick(Sender: TObject);
begin
Close;
end;

procedure TModePaieListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;

end;

end.
