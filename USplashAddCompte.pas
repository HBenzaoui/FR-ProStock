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
  UMainF,Contnrs, UClientGestion, USplashAddUnite, UBonRecGestion, UBonLivGestion,
  UBonFacVGestion, UBonFacAGestion, UReglementCGestion, UReglementFGestion,
  UChargesGestion, UTransferComptesGestion, UBonComAGestion, UBonComVGestion,
  UDataModule;

{$R *.dfm}


var
  gGrayForms: TComponentList;

procedure GrayFormsAddCompte;
var
   loop : integer;
   uScrnFrm : TForm;
   UForm : TForm;
//   uPoint : TPoint;
   uScreens : TList;

begin
   if not assigned(gGrayForms) then
   begin
      gGrayForms := TComponentList.Create;
      gGrayForms.OwnsObjects := true;

      uScreens := TList.create;
      try
         for loop := 0 to 0 do
            uScreens.Add(Screen.Forms[loop]);

         for loop := 0 to 0 do

         begin
            uScrnFrm := uScreens[loop];

            if uScrnFrm.Visible then
            begin
               UForm := TForm.Create(uScrnFrm);
               UForm.WindowState:= wsMaximized;
               gGrayForms.Add(UForm);
               UForm.Position := MainForm.Position;
               UForm.AlphaBlend := true;
               UForm.AlphaBlendValue := 80;
               UForm.Color := clBlack;
               UForm.BorderStyle := bsNone;
               UForm.StyleElements:= [];
               UForm.Enabled := false;
               UForm.BoundsRect := uScrnFrm.BoundsRect;
               SetWindowLong(UForm.Handle, GWL_HWNDPARENT, uScrnFrm.Handle);
               SetWindowPos(UForm.handle, uScrnFrm.handle, 0,0,0,0, SWP_NOSIZE or SWP_NOMOVE);
               UForm.Visible := true;
            end;
         end;
      finally
         uScreens.free;
      end;
   end;
end;

procedure NormalFormsAddCompte;
begin
  FreeAndNil(gGrayForms);
end;



procedure TFSplashAddCompte.FormCreate(Sender: TObject);
begin

 GrayFormsAddCompte  ;

 if Assigned(FSplashAddUnite) then
 begin
  SetWindowPos(FSplashAddUnite.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
 end;


end;

procedure TFSplashAddCompte.FormDestroy(Sender: TObject);
begin
    if Assigned(FSplashAddUnite) then
    begin
    SetWindowPos(FSplashAddUnite.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
    end;
    NormalFormsAddCompte;
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
   key := #0;

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

 if OKAddCompteSBtn.Tag <> 8  then
 begin
    MainForm.CompteTable.Active:= False;
    MainForm.CompteTable.sql.Clear;
    MainForm.CompteTable.SQL.Text:='SELECT * FROM compte';
    MainForm.CompteTable.Active:= True;;


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

end;

procedure TFSplashAddCompte.OKAddCompteSBtnClick(Sender: TObject);
var CodeCompte : Integer;
begin

    DataModuleF.SQLQuery3.Active:=False;
    DataModuleF.SQLQuery3.SQL.Clear;
    DataModuleF.SQLQuery3.SQL.Text:= 'SELECT * FROM compte ORDER BY code_cmpt DESC LIMIT 1';
    DataModuleF.SQLQuery3.Active:=True;



//----- use this tag for adding from the add paiment add copmte uicons------//
 if OKAddCompteSBtn.Tag = 0 then
  begin
   if NameAddCompteSEdt.Text <> '' then
     begin
            with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
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
      with DataModuleF.SQLQuery3 do  begin
         if NOT (DataModuleF.SQLQuery3.IsEmpty) then
        begin
        DataModuleF.SQLQuery3.Last;
        CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
        end else
            begin
             CodeCompte:= 1;
            end;
        Append;
        fieldbyname('code_cmpt').AsInteger:= CodeCompte;
        fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
        fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
        if NatureAddCompteSCbx.ItemIndex = 0 then
           fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
        if SoldeAddCompteSCbx.Text<>'' then
        begin
        FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
        begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
        fieldbyname('date_cmpt').Value := Now;
        post;
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
        with DataModuleF.SQLQuery3 do  begin
          if NOT (DataModuleF.SQLQuery3.IsEmpty) then
            begin
            DataModuleF.SQLQuery3.Last;
            CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
            end else
                begin
                 CodeCompte:= 1;
                end;
            Append;
            fieldbyname('code_cmpt').AsInteger:= CodeCompte;
            fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
            fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
            if NatureAddCompteSCbx.ItemIndex = 0 then
               fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
            if SoldeAddCompteSCbx.Text<>'' then
            begin
            FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
            begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
            fieldbyname('date_cmpt').Value := Now;
            post;
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
         with DataModuleF.SQLQuery3 do  begin
           if NOT (DataModuleF.SQLQuery3.IsEmpty) then
          begin
          DataModuleF.SQLQuery3.Last;
          CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
          end else
              begin
               CodeCompte:= 1;
              end;
          Append;
          fieldbyname('code_cmpt').AsInteger:= CodeCompte;
          fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
          fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
          if NatureAddCompteSCbx.ItemIndex = 0 then
             fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
          if SoldeAddCompteSCbx.Text<>'' then
          begin
          FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
          begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
          fieldbyname('date_cmpt').Value := Now;
          post;
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
             with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
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
        with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
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
                 with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
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


   //----- use this tag for adding from the compte list form------//
 if OKAddCompteSBtn.Tag = 7 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
        with DataModuleF.SQLQuery3 do  begin
           if NOT (DataModuleF.SQLQuery3.IsEmpty) then
          begin
          DataModuleF.SQLQuery3.Last;
          CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
          end else
              begin
               CodeCompte:= 1;
              end;
          Append;
          fieldbyname('code_cmpt').AsInteger:= CodeCompte;
          fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
          fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
          if NatureAddCompteSCbx.ItemIndex = 0 then
             fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
          if SoldeAddCompteSCbx.Text<>'' then
          begin
          FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
          begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
          fieldbyname('date_cmpt').Value := Now;
          post;
           end;

          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

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



   //----- use this tag for editing from the compte list form------//
 if OKAddCompteSBtn.Tag = 8 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
        with DataModuleF.SQLQuery3 do  begin

          Edit;
          fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
          fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
          if NatureAddCompteSCbx.ItemIndex = 0 then
             fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
          if SoldeAddCompteSCbx.Text<>'' then
          begin
          FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
          begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
          fieldbyname('date_cmpt').Value := Now;
          post;
           end;

          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);

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



          //----- use this tag for adding from the charge------//
 if OKAddCompteSBtn.Tag = 9 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
             with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
               end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         ChargesGestionF.CompteChargeGCbx.Text:= NameAddCompteSEdt.Text;
         ChargesGestionF.CompteChargeGCbx.SetFocus;
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



  //----- use this tag for adding from the transfer enter les comptes ///Compte source//------//
 if OKAddCompteSBtn.Tag = 10 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
             with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
               end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         TransferComptesGestionF.CompteSourceTransfeGCbx.Text:= NameAddCompteSEdt.Text;
         TransferComptesGestionF.CompteSourceTransfeGCbx.SetFocus;
         TransferComptesGestionF.CompteSourceTransfeGCbxChange(Sender);
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


    //----- use this tag for adding from the transfer enter les comptes ///Compte distinations//------//
 if OKAddCompteSBtn.Tag = 11 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
             with DataModuleF.SQLQuery3 do  begin
               if NOT (DataModuleF.SQLQuery3.IsEmpty) then
              begin
              DataModuleF.SQLQuery3.Last;
              CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
              end else
                  begin
                   CodeCompte:= 1;
                  end;
              Append;
              fieldbyname('code_cmpt').AsInteger:= CodeCompte;
              fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
              fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
              if NatureAddCompteSCbx.ItemIndex = 0 then
                 fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
              if SoldeAddCompteSCbx.Text<>'' then
              begin
              FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
              begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
              fieldbyname('date_cmpt').Value := Now;
              post;
               end;
          NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         TransferComptesGestionF.CompteDisTransfeGCbx.Text:= NameAddCompteSEdt.Text;
         TransferComptesGestionF.CompteDisTransfeGCbx.SetFocus;
         TransferComptesGestionF.CompteDisTransfeGCbxChange(Sender);
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

  //----- use this tag for adding from the Bon de Commande add copmte  icons------//
 if OKAddCompteSBtn.Tag = 12 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      with DataModuleF.SQLQuery3 do  begin
         if NOT (DataModuleF.SQLQuery3.IsEmpty) then
        begin
        DataModuleF.SQLQuery3.Last;
        CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
        end else
            begin
             CodeCompte:= 1;
            end;
        Append;
        fieldbyname('code_cmpt').AsInteger:= CodeCompte;
        fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
        fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
        if NatureAddCompteSCbx.ItemIndex = 0 then
           fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
        if SoldeAddCompteSCbx.Text<>'' then
        begin
        FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
        begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
        fieldbyname('date_cmpt').Value := Now;
        post;
         end;

         NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         BonComAGestionF.CompteBonComGCbx.Text:= NameAddCompteSEdt.Text;
         BonComAGestionF.CompteBonComGCbx.SetFocus;
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

    //----- use this tag for adding from the Commande Client add copmte  icons------//
 if OKAddCompteSBtn.Tag = 13 then
  begin
   if NameAddCompteSEdt.Text <> '' then
    begin
      with DataModuleF.SQLQuery3 do  begin
         if NOT (DataModuleF.SQLQuery3.IsEmpty) then
        begin
        DataModuleF.SQLQuery3.Last;
        CodeCompte:= DataModuleF.SQLQuery3.FieldByName('code_cmpt').AsInteger + 1;
        end else
            begin
             CodeCompte:= 1;
            end;
        Append;
        fieldbyname('code_cmpt').AsInteger:= CodeCompte;
        fieldbyname('nom_cmpt').AsString := NameAddCompteSEdt.Text;
        fieldbyname('refer_cmpt').AsString := NumAddCompteSEdt.Text;
        if NatureAddCompteSCbx.ItemIndex = 0 then
           fieldbyname('nature_cmpt').AsBoolean:= False else begin fieldbyname('nature_cmpt').AsBoolean:= True end;
        if SoldeAddCompteSCbx.Text<>'' then
        begin
        FieldValues['oldcredit_cmpt']:=Trim(SoldeAddCompteSCbx.Text) end else
        begin FieldValues['oldcredit_cmpt']:=StrToInt('0')end;
        fieldbyname('date_cmpt').Value := Now;
        post;
         end;

         NameAddCompteSErrorP.Visible:=False;
         RequiredAddCompteSlbl.Visible:=False;
         AnimateWindow(FSplashAddCompte.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
         FSplashAddCompte.Release;
         BonComVGestionF.CompteBonComGCbx.Text:= NameAddCompteSEdt.Text;
         BonComVGestionF.CompteBonComGCbx.SetFocus;
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


  DataModuleF.SQLQuery3.Active:=False;
  DataModuleF.SQLQuery3.SQL.Clear;


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
   F = ['.'];
begin
  if not(Key in N) then
  begin
     key := #0;
  end;

   if (Key in F) then
  begin
    key :=  #44;
  end;
  if (Key = ',') AND (Pos(Key, (SoldeAddCompteSCbx.Text)) > 0) Then
  begin
      Key := #0;
  end;
end;

procedure TFSplashAddCompte.SoldeAddCompteSCbxExit(Sender: TObject);
var
SoldeCompte: Double;
begin
  if SoldeAddCompteSCbx.Text<>'' then
  begin
  SoldeCompte:=StrToFloat(StringReplace(SoldeAddCompteSCbx.Text, #32, '', [rfReplaceAll]));
  SoldeAddCompteSCbx.Text := FloatToStrF(SoldeCompte,ffNumber,14,2);
  end;
end;

end.
