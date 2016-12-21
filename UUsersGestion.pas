unit UUsersGestion;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, acPNG,
  AdvToolBtn, sPanel, acSlider;

type
  TUsersGestionF = class(TForm)
    TopP: TPanel;
    InfoP: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    NameUserGEdt: TEdit;
    PassUserGEdt: TEdit;
    PassChkUserGEdt: TEdit;
    Image1: TImage;
    TypeUserGCbx: TComboBox;
    ParaP: TPanel;
    ParaL: TLabel;
    BottomP: TPanel;
    OKUserGEdt: TAdvToolButton;
    VentesSdr: TsSlider;
    L01: TLabel;
    L02: TLabel;
    BLSdr: TsSlider;
    FCVSdr: TsSlider;
    L03: TLabel;
    L05: TLabel;
    AchatsSdr: TsSlider;
    BRSdr: TsSlider;
    L06: TLabel;
    L07: TLabel;
    FCASdr: TsSlider;
    L08: TLabel;
    RGFSdr: TsSlider;
    L04: TLabel;
    RGCSdr: TsSlider;
    L10: TLabel;
    CaisseSdr: TsSlider;
    BankSdr: TsSlider;
    L11: TLabel;
    ClientSdr: TsSlider;
    L12: TLabel;
    L13: TLabel;
    FourSdr: TsSlider;
    TreSdr: TsSlider;
    L09: TLabel;
    UserEroorGLbl: TLabel;
    UserNameGErrorP: TPanel;
    PassEroorGLbl: TLabel;
    PassNameGErrorP: TPanel;
    PassCheckGErrorP: TPanel;
    PassCheckEroorGLbl: TLabel;
    CtrSdr: TsSlider;
    L14: TLabel;
    ProduitSdr: TsSlider;
    L15: TLabel;
    ListesSdr: TsSlider;
    L16: TLabel;
    FamPSdr: TsSlider;
    L17: TLabel;
    L18: TLabel;
    SFamPSdr: TsSlider;
    L19: TLabel;
    MPSdr: TsSlider;
    ComptesSdr: TsSlider;
    L20: TLabel;
    L21: TLabel;
    UnitSdr: TsSlider;
    L22: TLabel;
    LocalSdr: TsSlider;
    procedure OKUserGEdtClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NameUserGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure PassUserGEdtKeyPress(Sender: TObject; var Key: Char);
    procedure VentesSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure AchatsSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure TreSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure BLSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListesSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure FCVSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure RGCSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure CtrSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure CaisseSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure BankSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure BRSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure FCASdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure RGFSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure ClientSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure FourSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure ProduitSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure FamPSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure SFamPSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure MPSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure ComptesSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure UnitSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure LocalSdrChanging(Sender: TObject; var CanChange: Boolean);
    procedure TypeUserGCbxClick(Sender: TObject);
  private
    procedure EnablePar;
    procedure DisablePar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersGestionF: TUsersGestionF;

implementation

uses  Winapi.MMSystem,Contnrs,
  UClientGestion, UMainF, UDataModule;

{$R *.dfm}


var
  gGrayForms: TComponentList;

procedure GrayFormsAddUser;
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
               UForm.Position := poOwnerFormCenter;
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

procedure NormalFormsAddUser;
begin
  FreeAndNil(gGrayForms);
end;


procedure TUsersGestionF.EnablePar;
begin

 ParaL.Enabled:= True;
 L01.Enabled:= True;
// L02.Enabled:= True;
// L03.Enabled:= True;
// L04.Enabled:= True;
 L05.Enabled:= True;
// L06.Enabled:= True;
// L07.Enabled:= True;
// L08.Enabled:= True;
 L09.Enabled:= True;
// L10.Enabled:= True;
// L11.Enabled:= True;
// L12.Enabled:= True;
// L13.Enabled:= True;
// L14.Enabled:= True;
// L15.Enabled:= True;
 L16.Enabled:= True;
// L17.Enabled:= True;
// L18.Enabled:= True;
// L19.Enabled:= True;
// L20.Enabled:= True;
// L21.Enabled:= True;
// L22.Enabled:= True;


 VentesSdr.SliderOn := False;
 BLSdr.SliderOn :=     False;
 FCVSdr.SliderOn :=    False;
 RGCSdr.SliderOn :=    False;
 AchatsSdr.SliderOn := False;
 BRSdr.SliderOn :=     False;
 FCASdr.SliderOn :=    False;
 RGFSdr.SliderOn :=    False;
 TreSdr.SliderOn :=    False;
 CaisseSdr.SliderOn := False;
 BankSdr.SliderOn :=   False;
 ClientSdr.SliderOn := False;
 FourSdr.SliderOn :=   False;
 CtrSdr.SliderOn :=    False;
 ProduitSdr.SliderOn:= False;
 ListesSdr.SliderOn:=  False;
 FamPSdr.SliderOn:=    False;
 SFamPSdr.SliderOn:=   False;
 MPSdr.SliderOn:=      False;
 ComptesSdr.SliderOn:= False;
 UnitSdr.SliderOn:=    False;
 LocalSdr.SliderOn:=   False;

 ParaP.Enabled:= True;

 VentesSdr.Enabled:=  True;
 BLSdr.Enabled:=      True;
 FCVSdr.Enabled:=     True;
 RGCSdr.Enabled:=     True;
 AchatsSdr.Enabled:=  True;
 BRSdr.Enabled:=      True;
 FCASdr.Enabled:=     True;
 RGFSdr.Enabled:=     True;
 TreSdr.Enabled:=     True;
 CaisseSdr.Enabled:=  True;
 BankSdr.Enabled:=    True;
 ClientSdr.Enabled:=  True;
 FourSdr.Enabled:=    True;
 CtrSdr.Enabled:=     True;
 ProduitSdr.Enabled:= True;
 ListesSdr.Enabled:=  True;
 FamPSdr.Enabled:=    True;
 SFamPSdr.Enabled:=   True;
 MPSdr.Enabled:=      True;
 ComptesSdr.Enabled:= True;
 UnitSdr.Enabled:=    True;
 LocalSdr.Enabled:=   True;

end;

procedure TUsersGestionF.DisablePar;
begin


 ParaL.Enabled:= False;
 L01.Enabled:= False;
 L02.Enabled:= False;
 L03.Enabled:= False;
 L04.Enabled:= False;
 L05.Enabled:= False;
 L06.Enabled:= False;
 L07.Enabled:= False;
 L08.Enabled:= False;
 L09.Enabled:= False;
 L10.Enabled:= False;
 L11.Enabled:= False;
 L12.Enabled:= False;
 L13.Enabled:= False;
 L14.Enabled:= False;
 L15.Enabled:= False;
 L16.Enabled:= False;
 L17.Enabled:= False;
 L18.Enabled:= False;
 L19.Enabled:= False;
 L20.Enabled:= False;
 L21.Enabled:= False;
 L22.Enabled:= False;

 VentesSdr.SliderOn := True;
 BLSdr.SliderOn :=     True;
 FCVSdr.SliderOn :=    True;
 RGCSdr.SliderOn :=    True;
 AchatsSdr.SliderOn := True;
 BRSdr.SliderOn :=     True;
 FCASdr.SliderOn :=    True;
 RGFSdr.SliderOn :=    True;
 TreSdr.SliderOn :=    True;
 CaisseSdr.SliderOn := True;
 BankSdr.SliderOn :=   True;
 ClientSdr.SliderOn := True;
 FourSdr.SliderOn :=   True;
 CtrSdr.SliderOn :=    True;
 ProduitSdr.SliderOn:= True;
 ListesSdr.SliderOn:=  True;
 FamPSdr.SliderOn:=    True;
 SFamPSdr.SliderOn:=   True;
 MPSdr.SliderOn:=      True;
 ComptesSdr.SliderOn:= True;
 UnitSdr.SliderOn:=    True;
 LocalSdr.SliderOn:=   True;

   ParaP.Enabled:= False;



 VentesSdr.Enabled:=   False;
 BLSdr.Enabled:=       False;
 FCVSdr.Enabled:=      False;
 RGCSdr.Enabled:=      False;
 AchatsSdr.Enabled:=   False;
 BRSdr.Enabled:=       False;
 FCASdr.Enabled:=      False;
 RGFSdr.Enabled:=      False;
 TreSdr.Enabled:=      False;
 CaisseSdr.Enabled:=   False;
 BankSdr.Enabled:=     False;
 ClientSdr.Enabled:=   False;
 FourSdr.Enabled:=     False;
 CtrSdr.Enabled:=      False;
 ProduitSdr.Enabled:=  False;
 ListesSdr.Enabled:=   False;
 FamPSdr.Enabled:=     False;
 SFamPSdr.Enabled:=    False;
 MPSdr.Enabled:=       False;
 ComptesSdr.Enabled:=  False;
 UnitSdr.Enabled:=     False;
 LocalSdr.Enabled:=    False;


end;


procedure TUsersGestionF.OKUserGEdtClick(Sender: TObject);
Var CodeUR : Integer;
lookupResultNomUR : Variant;
begin
  if NameUserGEdt.Text <> '' then
   begin
    if PassUserGEdt.Text <> '' then
    begin
       if PassChkUserGEdt.Text <> '' then
       begin
            if PassUserGEdt.Text = PassChkUserGEdt.Text then
             begin
               if Tag = 0 then
                begin

                  lookupResultNomUR := DataModuleF.UsersTable.Lookup('LOWER(nom_ur)',(LowerCase(NameUserGEdt.Text)),'nom_ur');
                 if  VarIsnull( lookupResultNomUR) then
                  begin

                  if NOT (DataModuleF.UsersTable.IsEmpty) then
                  begin
                  DataModuleF.UsersTable.Last;
                  CodeUR:= DataModuleF.UsersTable.FieldValues['code_ur'] + 1;
                  end else
                      begin
                       CodeUR:= 1;
                      end;
                  DataModuleF.UsersTable.Append;
                  DataModuleF.UsersTable.FieldValues['code_ur']:= CodeUR;
                  DataModuleF.UsersTable.FieldValues['nom_ur']:= NameUserGEdt.Text;
                  DataModuleF.UsersTable.FieldValues['password_ur']:= PassUserGEdt.Text;
                  DataModuleF.UsersTable.FieldValues['type_ur']:= TypeUserGCbx.ItemIndex;
                  DataModuleF.UsersTable.FieldValues['bl_ur']:=BLSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['fcv_ur']:=FCVSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['rgc_ur']:=RGCSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['br_ur']:=BRSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['fca_ur']:=FCASdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['rgf_ur']:=RGFSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['caisse_ur']:=CaisseSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['bank_ur']:=BankSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['client_ur']:=ClientSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['four_ur']:=FourSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['ctr_ur']:=CtrSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['produit_ur']:=ProduitSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['famp_ur']:=FamPSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['sfamp_ur']:=SFamPSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['mdpai_ur']:=MPSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['cmpt_ur']:=ComptesSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['unit_ur']:=UnitSdr.SliderOn;
                  DataModuleF.UsersTable.FieldValues['local_ur']:=LocalSdr.SliderOn;
                  DataModuleF.UsersTable.Post;


                DataModuleF.UsersTable.Refresh;
                sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
                Close;
                 end else
                     begin
                      NameUserGEdt.BorderStyle := bsNone;
                      NameUserGEdt.StyleElements := [];
                      UserNameGErrorP.Visible:= True;
                      UserEroorGlbl.Caption:= 'Nom d''utilisateur Existe Déja !!';
                      UserEroorGlbl.Visible:= True;
                      sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                      NameUserGEdt.SetFocus;

                     end;

                end else
                    begin
                      DataModuleF.UsersTable.Edit;
                      DataModuleF.UsersTable.FieldValues['nom_ur']:= NameUserGEdt.Text;
                      DataModuleF.UsersTable.FieldValues['password_ur']:= PassUserGEdt.Text;
                      DataModuleF.UsersTable.FieldValues['type_ur']:= TypeUserGCbx.ItemIndex;
                      DataModuleF.UsersTable.FieldValues['bl_ur']:=BLSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['fcv_ur']:=FCVSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['rgc_ur']:=RGCSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['br_ur']:=BRSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['fca_ur']:=FCASdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['rgf_ur']:=RGFSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['caisse_ur']:=CaisseSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['bank_ur']:=BankSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['client_ur']:=ClientSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['four_ur']:=FourSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['ctr_ur']:=CtrSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['produit_ur']:=ProduitSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['famp_ur']:=FamPSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['sfamp_ur']:=SFamPSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['mdpai_ur']:=MPSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['cmpt_ur']:=ComptesSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['unit_ur']:=UnitSdr.SliderOn;
                      DataModuleF.UsersTable.FieldValues['local_ur']:=LocalSdr.SliderOn;

                      DataModuleF.UsersTable.Post;


                DataModuleF.UsersTable.Refresh;
                sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or  SND_RING);
                Close;
                    end;


             end else
                 begin
                    PassUserGEdt.Clear;
                    PassChkUserGEdt.Clear;
                    PassUserGEdt.BorderStyle := bsNone;
                    PassUserGEdt.StyleElements := [];

                    PassChkUserGEdt.BorderStyle := bsNone;
                    PassChkUserGEdt.StyleElements := [];

                    PassCheckGErrorP.Visible:= True;
                    PassNameGErrorP.Visible:= True;
                    PassEroorGlbl.Visible:= True;
                    PassEroorGLbl.Caption:= 'Retapez-le!' ;
                    PassCheckEroorGLbl.Caption:= 'Confirmation de mot de passe non Valide !' ;
                    PassCheckEroorGLbl.Visible:= True;
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    PassUserGEdt.SetFocus;
                 end;
       end else
           begin
                    PassChkUserGEdt.BorderStyle := bsNone;
                    PassChkUserGEdt.StyleElements := [];

                    PassCheckGErrorP.Visible:= True;
                    PassCheckEroorGLbl.Caption:= 'S''il vous plaît entrer la confirmation de mot de passe' ;
                    PassCheckEroorGLbl.Visible:= True;
                    sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
                    PassChkUserGEdt.SetFocus;
           end;
    end else
        begin
              PassUserGEdt.BorderStyle := bsNone;
              PassUserGEdt.StyleElements := [];
              PassNameGErrorP.Visible:= True;
              PassEroorGlbl.Visible:= True;
              PassEroorGLbl.Caption:= 'S''il vous plaît entrer un mot de passe' ;
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              PassUserGEdt.SetFocus;

              PassChkUserGEdt.BorderStyle := bsSingle;
              PassChkUserGEdt.StyleElements :=[seFont,seClient,seBorder];
              PassCheckGErrorP.Visible:= False;
              PassCheckEroorGLbl.Visible:= False;
        end;
   end else
       begin
              NameUserGEdt.BorderStyle := bsNone;
              NameUserGEdt.StyleElements := [];
              UserNameGErrorP.Visible:= True;
              UserEroorGlbl.Caption:= 'S''il vous plaît entrer un Nom';
              UserEroorGlbl.Visible:= True;
              sndPlaySound('C:\Windows\Media\Windows Hardware Fail.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
              NameUserGEdt.SetFocus;
       end;




end;

procedure TUsersGestionF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
     begin
     key := #0;

      Close;

     end;


     if (key = #13)  then
     begin
     key := #0;

      OKUserGEdtClick(Sender);

     end;
end;

procedure TUsersGestionF.NameUserGEdtKeyPress(Sender: TObject; var Key: Char);
begin
      NameUserGEdt.BorderStyle := bsSingle;
      NameUserGEdt.StyleElements :=[seFont,seClient,seBorder];
      UserNameGErrorP.Visible:= False;
      UserEroorGlbl.Visible:= False;
end;

procedure TUsersGestionF.PassUserGEdtKeyPress(Sender: TObject; var Key: Char);
begin
      PassUserGEdt.BorderStyle := bsSingle;
      PassUserGEdt.StyleElements :=[seFont,seClient,seBorder];
      PassNameGErrorP.Visible:= False;
      PassEroorGLbl.Visible:= False;


      PassChkUserGEdt.BorderStyle := bsSingle;
      PassChkUserGEdt.StyleElements :=[seFont,seClient,seBorder];
      PassCheckGErrorP.Visible:= False;
      PassCheckEroorGLbl.Visible:= False;
end;

procedure TUsersGestionF.VentesSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if VentesSdr.SliderOn = True then
 begin
 BLSdr.SliderOn := False;
 FCVSdr.SliderOn := False;
 RGCSdr.SliderOn := False;
 CtrSdr.SliderOn := False;

//  BLSdr.Enabled:= False;
//  FCVSdr.Enabled:= False;
//  RGCSdr.Enabled:= False;
//  CtrSdr.Enabled:= False;

 L02.Enabled:= False;
 L03.Enabled:= False;
 L04.Enabled:= False;
 L14.Enabled:= False;
 end else
     begin
       BLSdr.SliderOn := True;
       FCVSdr.SliderOn := True;
       RGCSdr.SliderOn := True;
       CtrSdr.SliderOn := True;

//        BLSdr.Enabled:= True;
//        FCVSdr.Enabled:= True;
//        RGCSdr.Enabled:= True;
//        CtrSdr.Enabled:= True;

       L02.Enabled:= True;
       L03.Enabled:= True;
       L04.Enabled:= True;
       L14.Enabled:= True;
     end;

end;

procedure TUsersGestionF.AchatsSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if AchatsSdr.SliderOn = True then
 begin
 BRSdr.SliderOn := False;
 FCASdr.SliderOn := False;
 RGFSdr.SliderOn := False;

//  BRSdr.Enabled:= False;
//  FCASdr.Enabled:= False;
//  RGFSdr.Enabled:= False;

 L06.Enabled:= False;
 L07.Enabled:= False;
 L08.Enabled:= False;
 end else
     begin
       BRSdr.SliderOn := True;
       FCASdr.SliderOn := True;
       RGFSdr.SliderOn := True;

//        BRSdr.Enabled:= True;
//        FCASdr.Enabled:= True;
//        RGFSdr.Enabled:= True;

       L06.Enabled:= True;
       L07.Enabled:= True;
       L08.Enabled:= True;
     end;
end;

procedure TUsersGestionF.TreSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if TreSdr.SliderOn = True then
 begin
 CaisseSdr.SliderOn := False;
 BankSdr.SliderOn := False;

//  CaisseSdr.Enabled:= False;
//  BankSdr.Enabled:= False;

 L10.Enabled:= False;
 L11.Enabled:= False;
 end else
     begin
       CaisseSdr.SliderOn := True;
       BankSdr.SliderOn := True;

//        CaisseSdr.Enabled:= True;
//        BankSdr.Enabled:= True;

       L10.Enabled:= True;
       L11.Enabled:= True;
     end;
end;

procedure TUsersGestionF.BLSdrChanging(Sender: TObject; var CanChange: Boolean);
begin
 if BLSdr.SliderOn = True then
 begin
 L02.Enabled:= False;
 end else
     begin
       L02.Enabled:= True;
     end;
end;

procedure TUsersGestionF.FormCreate(Sender: TObject);
begin
GrayFormsAddUser
end;

procedure TUsersGestionF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NormalFormsAddUser;
end;

procedure TUsersGestionF.ListesSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if ListesSdr.SliderOn = True then
 begin
   ClientSdr.SliderOn :=   False;
   FourSdr.SliderOn :=     False;
   ProduitSdr.SliderOn :=  False;
   FamPSdr.SliderOn:=      False;
   SFamPSdr.SliderOn:=     False;
   MPSdr.SliderOn:=        False;
   ComptesSdr.SliderOn:=   False;
   UnitSdr.SliderOn:=      False;
   LocalSdr.SliderOn:=     False;


   L12.Enabled:= False;
   L13.Enabled:= False;
   L15.Enabled:= False;
   L17.Enabled:= False;
   L18.Enabled:= False;
   L19.Enabled:= False;
   L20.Enabled:= False;
   L21.Enabled:= False;
   L22.Enabled:= False;
 end else
     begin
       ClientSdr.SliderOn :=   True;
       FourSdr.SliderOn :=     True;
       ProduitSdr.SliderOn :=  True;
       FamPSdr.SliderOn:=      True;
       SFamPSdr.SliderOn:=     True;
       MPSdr.SliderOn:=        True;
       ComptesSdr.SliderOn:=   True;
       UnitSdr.SliderOn:=      True;
       LocalSdr.SliderOn:=     True;


       L12.Enabled:= True;
       L13.Enabled:= True;
       L15.Enabled:= True;
       L17.Enabled:= True;
       L18.Enabled:= True;
       L19.Enabled:= True;
       L20.Enabled:= True;
       L21.Enabled:= True;
       L22.Enabled:= True;
     end;
end;

procedure TUsersGestionF.FCVSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if FCVSdr.SliderOn = True then
 begin
 L03.Enabled:= False;
 end else
     begin
       L03.Enabled:= True;
     end;
end;

procedure TUsersGestionF.RGCSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if RGCSdr.SliderOn = True then
 begin
 L04.Enabled:= False;
 end else
     begin
       L04.Enabled:= True;
     end;
end;

procedure TUsersGestionF.CtrSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if CtrSdr.SliderOn = True then
 begin
 L14.Enabled:= False;
 end else
     begin
       L14.Enabled:= True;
     end;
end;

procedure TUsersGestionF.CaisseSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if CaisseSdr.SliderOn = True then
 begin
 L10.Enabled:= False;
 end else
     begin
       L10.Enabled:= True;
     end;
end;

procedure TUsersGestionF.BankSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if BankSdr.SliderOn = True then
 begin
 L11.Enabled:= False;
 end else
     begin
       L11.Enabled:= True;
     end;
end;

procedure TUsersGestionF.BRSdrChanging(Sender: TObject; var CanChange: Boolean);
begin
 if BRSdr.SliderOn = True then
 begin
 L06.Enabled:= False;
 end else
     begin
       L06.Enabled:= True;
     end;
end;

procedure TUsersGestionF.FCASdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if FCASdr.SliderOn = True then
 begin
 L07.Enabled:= False;
 end else
     begin
       L07.Enabled:= True;
     end;
end;

procedure TUsersGestionF.RGFSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if RGFSdr.SliderOn = True then
 begin
 L08.Enabled:= False;
 end else
     begin
       L08.Enabled:= True;
     end;
end;

procedure TUsersGestionF.ClientSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if ClientSdr.SliderOn = True then
 begin
 L12.Enabled:= False;
 end else
     begin
       L12.Enabled:= True;
     end;
end;

procedure TUsersGestionF.FourSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if FourSdr.SliderOn = True then
 begin
 L13.Enabled:= False;
 end else
     begin
       L13.Enabled:= True;
     end;
end;

procedure TUsersGestionF.ProduitSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if ProduitSdr.SliderOn = True then
 begin
 L15.Enabled:= False;
 end else
     begin
       L15.Enabled:= True;
     end;
end;

procedure TUsersGestionF.FamPSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if   FamPSdr.SliderOn = True then
 begin
 L17.Enabled:= False;
 end else
     begin
       L17.Enabled:= True;
     end;
end;


procedure TUsersGestionF.SFamPSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if   SFamPSdr.SliderOn = True then
 begin
 L18.Enabled:= False;
 end else
     begin
       L18.Enabled:= True;
     end;
end;

procedure TUsersGestionF.MPSdrChanging(Sender: TObject; var CanChange: Boolean);
begin
 if   MPSdr.SliderOn = True then
 begin
 L19.Enabled:= False;
 end else
     begin
       L19.Enabled:= True;
     end;
end;

procedure TUsersGestionF.ComptesSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if   ComptesSdr.SliderOn = True then
 begin
 L20.Enabled:= False;
 end else
     begin
       L20.Enabled:= True;
     end;
end;

procedure TUsersGestionF.UnitSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if   UnitSdr.SliderOn = True then
 begin
 L21.Enabled:= False;
 end else
     begin
       L21.Enabled:= True;
     end;
end;

procedure TUsersGestionF.LocalSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
 if   LocalSdr.SliderOn = True then
 begin
 L22.Enabled:= False;
 end else
     begin
       L22.Enabled:= True;
     end;
end;

procedure TUsersGestionF.TypeUserGCbxClick(Sender: TObject);
begin
if TypeUserGCbx.ItemIndex = 0 then
  begin
     DisablePar;
  end;
if TypeUserGCbx.ItemIndex = 1 then
  begin
    EnablePar;
  end;
end;

end.
