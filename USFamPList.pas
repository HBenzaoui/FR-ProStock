unit USFamPList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls, AdvToolBtn;

type
  TSFamPListF = class(TForm)
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    Label1: TLabel;
    Panel1: TPanel;
    BottomP: TPanel;
    OKAddCompteSBtn: TAdvToolButton;
    ResearchSFamPEdt: TSearchBox;
    CompteDBGridEh: TDBGridEh;
    SFamPListDataS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ResearchSFamPEdtChange(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SFamPListF: TSFamPListF;

implementation

uses  Winapi.MMSystem,
  UMainF, USplash, USplashAddUnite;

{$R *.dfm}

procedure TSFamPListF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalForms;
end;

procedure TSFamPListF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;
end;

procedure TSFamPListF.OKAddCompteSBtnClick(Sender: TObject);
begin
Close;
end;

procedure TSFamPListF.FormShow(Sender: TObject);
begin
GrayForms;
ResearchSFamPEdt.SetFocus;
end;

procedure TSFamPListF.ResearchSFamPEdtChange(Sender: TObject);
begin
  if (ResearchSFamPEdt.text <> '') then
      begin
      MainForm.SfamproduitTable.Filtered:=false;
      MainForm.SfamproduitTable.Filter := '[nom_sfamp] LIKE ' + quotedstr(  '%'+  ResearchSFamPEdt.Text +'%');
      MainForm.SfamproduitTable.Filtered :=True;
    end  else
      begin
        MainForm.SfamproduitTable.Filtered := False;
       end;
end;

procedure TSFamPListF.AdvToolButton3Click(Sender: TObject);
begin
  if NOT (MainForm.SfamproduitTable.IsEmpty) then
     begin
     MainForm.SfamproduitTable.Delete;

          FSplash := TFSplash.Create(SFamPListF);
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

procedure TSFamPListF.AdvToolButton1Click(Sender: TObject);
begin
//-------- Show the splash screan for the produit Sous familly to add new one---------//

    FSplashAddUnite:=TFSplashAddUnite.Create(SFamPListF);
    FSplashAddUnite.Width:= 355;
    FSplashAddUnite.Panel1.Color:= $00F8CA90;
    FSplashAddUnite.LineP.Color:= $00F8CA90;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 20 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 20;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Sous Famille:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer une Sous Famille' ;
    FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Ajouter Sous Famille';
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  //  FSplashAddUnite.NameAddUniteSLbl.Left:=8;
    FSplashAddUnite.Left:=  (SFamPListF.Left + SFamPListF.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.Image1.Visible:= True;
    FSplashAddUnite.Image1.ImageIndex:=7;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 1 ;
end;

procedure TSFamPListF.AdvToolButton2Click(Sender: TObject);
begin
//-------- Show the splash screan for the produit familly to add new one---------//
  if NOT (MainForm.SFamproduitTable.IsEmpty) then
begin
      FSplashAddUnite:=TFSplashAddUnite.Create(SFamPListF);
    FSplashAddUnite.Width:= 355;
    FSplashAddUnite.Panel1.Color:= $00F8CA90;
    FSplashAddUnite.LineP.Color:= $00F8CA90;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Font.Color:= $0040332D;
    FSplashAddUnite.OKAddUniteSBtn.Left:=(FSplashAddUnite.Width div 4) - (FSplashAddUnite.OKAddUniteSBtn.Width div 2) + 20 ;
    FSplashAddUnite.CancelAddUniteSBtn.Left:= ((FSplashAddUnite.Width div 2 )+((FSplashAddUnite.Width div 2)div 2 ) ) - (FSplashAddUnite.CancelAddUniteSBtn.Width div 2) - 20;
    FSplashAddUnite.NameAddUniteSLbl.Caption:='Sous Famille:';
    FSplashAddUnite.RequiredAddUniteSlbl.Caption:='S''il vous plaît entrer une Sous Famille' ;
    FSplashAddUnite.RequiredAddUniteSlbl.Left:= FSplashAddUnite.NameAddUniteSEdt.Left;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Caption:='Modifier Sous Famille';
    FSplashAddUnite.RequiredStarAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left )+( FSplashAddUnite.NameAddUniteSEdt.Width) + 3 ;
    FSplashAddUnite.FormCaptionAddUniteSLbl.Left:=( FSplashAddUnite.Width div 2) - ( FSplashAddUnite.FormCaptionAddUniteSLbl.Width div 2);
    FSplashAddUnite.NameAddUniteSLbl.Font.Height:=16;
  //  FSplashAddUnite.NameAddUniteSLbl.Left:=8;
    FSplashAddUnite.Left:=  (SFamPListF.Left + SFamPListF.Width div 2) - (FSplashAddUnite.Width div 2);
    FSplashAddUnite.Top:=   MainForm.Top + 5;
    FSplashAddUnite.NameAddUniteSLbl.Left:= (FSplashAddUnite.NameAddUniteSedt.Left )- (FSplashAddUnite.NameAddUniteSLbl.Width) - 5 ;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;
    FSplashAddUnite.Image1.Visible:= True;
    FSplashAddUnite.Image1.ImageIndex:=7;
    FSplashAddUnite.NameAddUniteSErrorP.Left:= (FSplashAddUnite.NameAddUniteSEdt.Left) - 1;

  FSplashAddUnite.NameAddUniteSEdt.Text:= MainForm.SFamproduitTable.FieldByName('nom_sfamp').AsString;

    AnimateWindow(FSplashAddUnite.Handle, 175, AW_VER_POSITIVE OR AW_SLIDE OR AW_ACTIVATE );
    FSplashAddUnite.Show;
    FSplashAddUnite.NameAddUniteSEdt.SetFocus;
    FSplashAddUnite.OKAddUniteSBtn.Tag:= 1 ;
    FSplashAddUnite.Image1.Tag:= 1 ;

 end;
end;

end.
