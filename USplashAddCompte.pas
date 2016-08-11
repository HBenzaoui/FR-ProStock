unit USplashAddCompte;

interface

uses
  Winapi.Windows, Winapi.Messages,MMSystem, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.StdCtrls, Vcl.ExtCtrls, acImage, AdvToolBtn;

type
  TFSplashAddCompte = class(TForm)
    NameAddCompteSLbl: TLabel;
    OKAddCompteSBtn: TAdvToolButton;
    CancelAddCompteSBtn: TAdvToolButton;
    RequiredAddCompteSlbl: TLabel;
    RequiredStarAddCompteSLbl: TLabel;
    Image1: TsImage;
    CompteAddCompteSLbl: TLabel;
    NameAddCompteSErrorP: TPanel;
    Panel1: TPanel;
    FormCaptionAddUniteSLbl: TLabel;
    LineP: TPanel;
    NameAddCompteSEdt: TEdit;
    NatureAddCompteSCbx: TComboBox;
    NumAddCompteSEdt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SoldeAddCompteSCbx: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CancelAddCompteSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKAddCompteSBtnClick(Sender: TObject);
    procedure NameAddCompteSEdtChange(Sender: TObject);
    procedure SoldeAddCompteSCbxKeyPress(Sender: TObject; var Key: Char);
    procedure NumAddCompteSEdtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SoldeAddCompteSCbxExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplashAddCompte: TFSplashAddCompte;

implementation

uses
  UMainF, UClientGestion, USplashAddUnite, UBonRecGestion, UBonLivGestion,
  UBonFacVGestion, UBonFacAGestion, UReglementCGestion, UReglementFGestion;

{$R *.dfm}

procedure TFSplashAddCompte.FormCreate(Sender: TObject);
begin
 if Assigned(FSplashAddUnite) then
 begin
  SetWindowPos(FSplashAddUnite.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
 end;
 GrayForms  ;

end;

procedure TFSplashAddCompte.FormDestroy(Sender: TObject);
begin
    if Assigned(FSplashAddUnite) then
    begin
    SetWindowPos(FSplashAddUnite.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
    end;
    NormalForms;
 end;

procedure TFSplashAddCompte.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

    CancelAddCompteSBtnClick(Sender);

 end;

  if key = #13 then
 begin

   OKAddCompteSBtnClick(Sender);

 end;
end;

procedure TFSplashAddCompte.CancelAddCompteSBtnClick(Sender: TObject);
begin
    AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashAddCompte.Release;
end;

procedure TFSplashAddCompte.FormShow(Sender: TObject);
var CodeCB : Integer;
begin
 //   SetWindowPos(FSplashAddUnite.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
 if NOT(MainForm.CompteTable.IsEmpty) then
 begin
 MainForm.CompteTable.Last;
 CodeCB:= MainForm.CompteTable.FieldValues['code_cmpt'] + 1  ;
 NumAddCompteSEdt.Text :=  Format('%.*d', [5, CodeCB]);
 end else
 begin
   CodeCB:= 1;
    NumAddCompteSEdt.Text :=  Format('%.*d', [5, CodeCB]);
 end;
end;

procedure TFSplashAddCompte.OKAddCompteSBtnClick(Sender: TObject);
var CodeCompte : Integer;
begin

//----- use this tag for adding from the add paiment add copmte uicons------//
 if OKAddCompteSBtn.Tag = 0 then
  begin
   if NameAddCompteSEdt.Text <> '' then
     begin
         if MainForm.CompteTable.IsEmpty then
          begin
            with MainForm.CompteTable do  begin
              Append;
              fieldbyname('code_cmpt').AsInteger:= 1;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cpmt').Value := Now;
              post;
               end;
          end else
          begin
            with MainForm.CompteTable do  begin
              Last;
              CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cpmt').Value := Now;
              post;
             end;
             end;
        NameAddCompteSErrorP.Visible:=False;
       RequiredAddCompteSlbl.Visible:=False;
       AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
       FSplashAddCompte.Release;
       FSplashAddUnite.CompteAddUniteSCbx.Text:= NameAddCompteSEdt.Text;
       FSplashAddUnite.CompteAddUniteSCbx.SetFocus;

       MainForm.CompteTable.Refresh;
       MainForm.Mode_paiementTable.Refresh;


    end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;


  //----- use this tag for adding from the bon de recpention add copmte  icons------//
 if OKAddCompteSBtn.Tag = 1 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      if MainForm.CompteTable.IsEmpty then
        begin
         with MainForm.CompteTable do  begin
            Append;
            fieldbyname('code_cmpt').AsInteger:= 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
             end;
        end else
        begin
          with MainForm.CompteTable do  begin
            Last;
            CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
           end;
           end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         BonRecGestionF.CompteBonRecGCbx.Text:= NameAddCompteSEdt.Text;
         BonRecGestionF.CompteBonRecGCbx.SetFocus;
         MainForm.CompteTable.Refresh;
         MainForm.Mode_paiementTable.Refresh;
     end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;


    //----- use this tag for adding from the bon de livration add copmte  icons------//
 if OKAddCompteSBtn.Tag = 2 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      if MainForm.CompteTable.IsEmpty then
        begin
         with MainForm.CompteTable do  begin
            Append;
            fieldbyname('code_cmpt').AsInteger:= 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
             end;
        end else
        begin
          with MainForm.CompteTable do  begin
            Last;
            CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
           end;
           end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         BonLivGestionF.CompteBonLivGCbx.Text:= NameAddCompteSEdt.Text;
         BonLivGestionF.CompteBonLivGCbx.SetFocus;
         MainForm.CompteTable.Refresh;
         MainForm.Mode_paiementTable.Refresh;
     end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;


      //----- use this tag for adding from the FACTURE DE VENTE add copmte  icons------//
 if OKAddCompteSBtn.Tag = 3 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      if MainForm.CompteTable.IsEmpty then
        begin
         with MainForm.CompteTable do  begin
            Append;
            fieldbyname('code_cmpt').AsInteger:= 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
             end;
        end else
        begin
          with MainForm.CompteTable do  begin
            Last;
            CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
           end;
           end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         BonFacVGestionF.CompteBonFacVGCbx.Text:= NameAddCompteSEdt.Text;
         BonFacVGestionF.CompteBonFacVGCbx.SetFocus;
         MainForm.CompteTable.Refresh;
         MainForm.Mode_paiementTable.Refresh;
     end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;


        //----- use this tag for adding from the facture d''achat add copmte  icons------//
 if OKAddCompteSBtn.Tag = 4 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      if MainForm.CompteTable.IsEmpty then
        begin
         with MainForm.CompteTable do  begin
            Append;
            fieldbyname('code_cmpt').AsInteger:= 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
             end;
        end else
        begin
          with MainForm.CompteTable do  begin
            Last;
            CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
           end;
           end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         BonFacAGestionF.CompteBonFacAGCbx.Text:= NameAddCompteSEdt.Text;
         BonFacAGestionF.CompteBonFacAGCbx.SetFocus;
         MainForm.CompteTable.Refresh;
         MainForm.Mode_paiementTable.Refresh;
     end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;

          //----- use this tag for adding from the regelemnt fournisseur------//
 if OKAddCompteSBtn.Tag = 5 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      if MainForm.CompteTable.IsEmpty then
        begin
         with MainForm.CompteTable do  begin
            Append;
            fieldbyname('code_cmpt').AsInteger:= 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
             end;
        end else
        begin
          with MainForm.CompteTable do  begin
            Last;
            CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
           end;
           end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         ReglementFGestionF.CompteRegFGCbx.Text:= NameAddCompteSEdt.Text;
         ReglementFGestionF.CompteRegFGCbx.SetFocus;
         MainForm.CompteTable.Refresh;
         MainForm.Mode_paiementTable.Refresh;
     end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;

          //----- use this tag for adding from the regelement client------//
 if OKAddCompteSBtn.Tag = 6 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      if MainForm.CompteTable.IsEmpty then
        begin
         with MainForm.CompteTable do  begin
            Append;
            fieldbyname('code_cmpt').AsInteger:= 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
             end;
        end else
        begin
          with MainForm.CompteTable do  begin
            Last;
            CodeCompte:= (MainForm.CompteTable.FieldValues['code_cmpt']) ;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte + 1;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cpmt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cpmt').AsBoolean:= False else begin fieldbyname('nature_cpmt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cpmt').Value := Now;
            post;
           end;
           end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         ReglementCGestionF.CompteRegCGCbx.Text:= NameAddCompteSEdt.Text;
         ReglementCGestionF.CompteRegCGCbx.SetFocus;
         MainForm.CompteTable.Refresh;
         MainForm.Mode_paiementTable.Refresh;
     end
        else
       try
       NameAddCompteSEdt.BorderStyle:= bsNone;
      NameAddCompteSEdt.StyleElements:= [];
      RequiredAddCompteSlbl.Visible:= True;
      NameAddCompteSErrorP.Visible:= True;
      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
     OKAddCompteSBtn.Enabled := False;
     OKAddCompteSBtn.ImageIndex := 18;
      finally
      NameAddCompteSEdt.SetFocus;
    end;
  end;

end;

procedure TFSplashAddCompte.NameAddCompteSEdtChange(Sender: TObject);
begin
  OKAddCompteSBtn.Enabled := true;
  OKAddCompteSBtn.ImageIndex := 17;
  NameAddCompteSEdt.BorderStyle:= bsSingle;
  NameAddCompteSEdt.StyleElements:= [seClient,seBorder];
  RequiredAddCompteSlbl.Visible:= False;
  NameAddCompteSErrorP.Visible:= False;

end;

procedure TFSplashAddCompte.SoldeAddCompteSCbxKeyPress(Sender: TObject;
  var Key: Char);
const
  N = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',',','.', Char(VK_back)];
begin

  if not(Key in N) then
  begin
     key := #0;
  end;
end;

procedure TFSplashAddCompte.NumAddCompteSEdtKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_RETURN then
SelectNext(ActiveControl as TWinControl, True,True );
end;

procedure TFSplashAddCompte.SoldeAddCompteSCbxExit(Sender: TObject);
var
SoldeCompte: Currency;
begin
  if SoldeAddCompteSCbx.Text<>'' then
  begin
  SoldeCompte:=StrToFloat(StringReplace(SoldeAddCompteSCbx.Text, #32, '', [rfReplaceAll]));
  SoldeAddCompteSCbx.Text := FloatToStrF(SoldeCompte,ffNumber,14,2);
  end;
end;

end.
