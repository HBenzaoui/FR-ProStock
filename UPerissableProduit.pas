unit UPerissableProduit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, AdvToolBtn;

type
  TPerissableProduitF = class(TForm)
    OKAddUniteSBtn: TAdvToolButton;
    NumberCBAddCodeBarreSLbl: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    PerissableProduisDataS: TDataSource;
    ProduitsListDBGridEh: TDBGridEh;
    procedure OKAddUniteSBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ProduitsListDBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure ProduitsListDBGridEhDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PerissableProduitF: TPerissableProduitF;

implementation

{$R *.dfm}

uses UDataModule,System.Contnrs, UBonLivGestion, UMainF, UBonFacVGestion, MMSystem,
  UComptoir;


var
  gGrayForms: TComponentList;

procedure GrayFormsAddPerisable;
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

procedure NormalFormsAddPerisable;
begin
  FreeAndNil(gGrayForms);
end;

procedure TPerissableProduitF.FormCreate(Sender: TObject);
begin

//if Assigned(BonCtrGestionF) AND (Tag = 2)  then
//begin
//  SetWindowPos(BonCtrGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
//end;
//
//
GrayFormsAddPerisable;
end;

procedure TPerissableProduitF.FormDestroy(Sender: TObject);
begin

 if Assigned(BonCtrGestionF) then
 begin
   SetWindowPos(BonCtrGestionF.Handle,HWND_TOPMOST,0,0,0,0,SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
 end;

NormalFormsAddPerisable;
end;

procedure TPerissableProduitF.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

   OKAddUniteSBtnClick(Sender);
 end;

  if key = #13 then
 begin
   key := #0;

  ProduitsListDBGridEhKeyPress(Sender, key);

 end;
end;

procedure TPerissableProduitF.FormShow(Sender: TObject);
begin
if Assigned(BonCtrGestionF) AND (Tag = 2)  then
begin
  SetWindowPos(BonCtrGestionF.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
end;


//GrayFormsAddPerisable;
end;

procedure TPerissableProduitF.OKAddUniteSBtnClick(Sender: TObject);
begin
    AnimateWindow(PerissableProduitF.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    PerissableProduitF.Release;
end;

procedure TPerissableProduitF.ProduitsListDBGridEhDblClick(Sender: TObject);
var key : char  ;
begin

     if ProduitsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
     begin

         key := #13;
         ProduitsListDBGridEhKeyPress(Sender, key);

     end;
end;

procedure TPerissableProduitF.ProduitsListDBGridEhKeyPress(Sender: TObject;
  var Key: Char);
  var CodeP,CodeBR : Integer;
begin
     if ProduitsListDBGridEh.ScreenToClient(Mouse.CursorPos).Y>25 then
        begin
 //---------this tag is for adding persable produit in bon livration---------------------
       if Tag = 0 then
       begin

             MainForm.SQLQuery.Active:= False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p FROM produit WHERE code_p ='
             +IntToStr(DataModuleF.PerissBona_recTable.FieldByName('code_p').AsInteger) ;
             MainForm.SQLQuery.Active:= True;

            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;


             if BonLivGestionF.ClientBonLivGCbx.Text<> '' then
           begin
              MainForm.FDQuery2.Active:=false;
              MainForm.FDQuery2.SQL.Clear;
              MainForm.FDQuery2.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonLivGestionF.ClientBonLivGCbx.Text )+')'  ;
              MainForm.FDQuery2.Active:=True;

           end;



          MainForm.Bonv_liv_listTable.DisableControls;
          MainForm.Bonv_liv_listTable.IndexFieldNames:='';
          MainForm.Bonv_liv_listTable.Active:=False;
          MainForm.Bonv_liv_listTable.SQL.Clear;
          MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list ORDER by code_bvlivl' ;
          MainForm.Bonv_liv_listTable.Active:=True;
          MainForm.Bonv_liv_listTable.Last;
           if  MainForm.Bonv_liv_listTable.IsEmpty then
           begin
             MainForm.Bonv_liv_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_liv_listTable.Last;
                CodeBR:= MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl'] + 1 ;
               end;
             MainForm.Bonv_liv_listTable.Last;
             MainForm.Bonv_liv_listTable.Append;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvlivl']:= CodeBR ;
             MainForm.Bonv_liv_listTable.FieldValues['code_bvliv']:= MainForm.Bonv_livTable.FieldValues['code_bvliv'];
             MainForm.Bonv_liv_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bonv_liv_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_liv_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_liv_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bonv_liv_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];

           if  NOT (MainForm.FDQuery2.IsEmpty) AND (BonLivGestionF.ClientBonLivGCbx.Text<> '' ) then
           begin
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_liv_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_liv_listTable.Post ;

           MainForm.Bonv_liv_listTable.IndexFieldNames:='code_bvliv';
           MainForm.Bonv_liv_listTable.Last;
           MainForm.Bonv_liv_listTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_liv_listTable.Active:=False;
           MainForm.Bonv_liv_listTable.SQL.Clear;
           MainForm.Bonv_liv_listTable.SQL.Text:= 'SELECT * FROM bonv_liv_list WHERE code_bvliv = ' + QuotedStr(IntToStr(MainForm.Bonv_livTable.FieldValues['code_bvliv']));
           MainForm.Bonv_liv_listTable.Active:=True;

          MainForm.FDQuery2.Active:=false;
          MainForm.FDQuery2.SQL.Clear;

          OKAddUniteSBtnClick(Sender);

          BonLivGestionF.ProduitsListDBGridEhExit(Sender);
          BonLivGestionF.ProduitBonLivGCbx.Text:='';
          BonLivGestionF.ProduitsListDBGridEh.SetFocus;

          BonLivGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
          BonLivGestionF.ProduitsListDBGridEh.EditorMode:=True;

           sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

         end;

     //------------- this tag is for adding perisable to facturaction
        if Tag = 1  then
        begin

             MainForm.SQLQuery.Active:= False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p FROM produit WHERE code_p ='
             +IntToStr(DataModuleF.PerissBona_facTable.FieldByName('code_p').AsInteger) ;
             MainForm.SQLQuery.Active:= True;

            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;


             if BonFacVGestionF.ClientBonFacVGCbx.Text<> '' then
           begin
              MainForm.FDQuery2.Active:=false;
              MainForm.FDQuery2.SQL.Clear;
              MainForm.FDQuery2.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonFacVGestionF.ClientBonFacVGCbx.Text )+')'  ;
              MainForm.FDQuery2.Active:=True;

           end;



          MainForm.Bonv_fac_listTable.DisableControls;
          MainForm.Bonv_fac_listTable.IndexFieldNames:='';
          MainForm.Bonv_fac_listTable.Active:=False;
          MainForm.Bonv_fac_listTable.SQL.Clear;
          MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list ORDER by code_bvfacl' ;
          MainForm.Bonv_fac_listTable.Active:=True;
          MainForm.Bonv_fac_listTable.Last;
           if  MainForm.Bonv_fac_listTable.IsEmpty then
           begin
             MainForm.Bonv_fac_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_fac_listTable.Last;
                CodeBR:= MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl'] + 1 ;
               end;
             MainForm.Bonv_fac_listTable.Last;
             MainForm.Bonv_fac_listTable.Append;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfacl']:= CodeBR ;
             MainForm.Bonv_fac_listTable.FieldValues['code_bvfac']:= MainForm.Bonv_facTable.FieldValues['code_bvfac'];
             MainForm.Bonv_fac_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bonv_fac_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_fac_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_fac_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bonv_fac_listTable.FieldValues['code_bafac']:= DataModuleF.PerissBona_facTable.FieldValues['code_bafac'];

           if  NOT (MainForm.FDQuery2.IsEmpty) AND (BonFacVGestionF.ClientBonFacVGCbx.Text<> '' ) then
           begin
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_fac_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_fac_listTable.Post ;

           MainForm.Bonv_fac_listTable.IndexFieldNames:='code_bvfac';
           MainForm.Bonv_fac_listTable.Last;
           MainForm.Bonv_fac_listTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_fac_listTable.Active:=False;
           MainForm.Bonv_fac_listTable.SQL.Clear;
           MainForm.Bonv_fac_listTable.SQL.Text:= 'SELECT * FROM bonv_fac_list WHERE code_bvfac = ' + QuotedStr(IntToStr(MainForm.Bonv_facTable.FieldValues['code_bvfac']));
           MainForm.Bonv_fac_listTable.Active:=True;

          MainForm.FDQuery2.Active:=false;
          MainForm.FDQuery2.SQL.Clear;

          OKAddUniteSBtnClick(Sender);

          BonFacVGestionF.ProduitsListDBGridEhExit(Sender);
          BonFacVGestionF.ProduitBonFacVGCbx.Text:='';
          BonFacVGestionF.ProduitsListDBGridEh.SetFocus;

          BonFacVGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
          BonFacVGestionF.ProduitsListDBGridEh.EditorMode:=True;

           sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);

        end;

        //---------this tag is for adding persable produit in bon comptoir---------------------
       if Tag = 2 then
       begin

             MainForm.SQLQuery.Active:= False;
             MainForm.SQLQuery.SQL.Clear;
             MainForm.SQLQuery.SQL.Text:= 'SELECT code_p,tva_p,prixvd_p,prixvr_p,prixvg_p,prixva_p,prixva2_p FROM produit WHERE code_p ='
             +IntToStr(DataModuleF.PerissBona_recTable.FieldByName('code_p').AsInteger) ;
             MainForm.SQLQuery.Active:= True;

            CodeP:= MainForm.SQLQuery.FieldByName('code_p').AsInteger ;


             if BonCtrGestionF.ClientBonCtrGCbx.Text<> '' then
           begin
              MainForm.FDQuery2.Active:=false;
              MainForm.FDQuery2.SQL.Clear;
              MainForm.FDQuery2.SQL.Text:='Select * FROM client WHERE LOWER(nom_c) LIKE LOWER('+ QuotedStr( BonCtrGestionF.ClientBonCtrGCbx.Text )+')'  ;
              MainForm.FDQuery2.Active:=True;

           end;



          MainForm.Bonv_ctr_listTable.DisableControls;
          MainForm.Bonv_ctr_listTable.IndexFieldNames:='';
          MainForm.Bonv_ctr_listTable.Active:=False;
          MainForm.Bonv_ctr_listTable.SQL.Clear;
          MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list ORDER by code_bvctrl' ;
          MainForm.Bonv_ctr_listTable.Active:=True;
          MainForm.Bonv_ctr_listTable.Last;
           if  MainForm.Bonv_ctr_listTable.IsEmpty then
           begin
             MainForm.Bonv_ctr_listTable.Last;
             CodeBR := 1;
           end else
               begin
                MainForm.Bonv_ctr_listTable.Last;
                CodeBR:= MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl'] + 1 ;
               end;
             MainForm.Bonv_ctr_listTable.Last;
             MainForm.Bonv_ctr_listTable.Append;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctrl']:= CodeBR ;
             MainForm.Bonv_ctr_listTable.FieldValues['code_bvctr']:= MainForm.Bonv_ctrTable.FieldValues['code_bvctr'];
             MainForm.Bonv_ctr_listTable.FieldValues['code_p']:=  MainForm.SQLQuery.FieldValues['code_p'] ;
             MainForm.Bonv_ctr_listTable.FieldValues['qut_p'] :=  01;
             MainForm.Bonv_ctr_listTable.FieldValues['cond_p']:= 01;
             MainForm.Bonv_ctr_listTable.FieldValues['tva_p']:= MainForm.SQLQuery.FieldValues['tva_p'];
             MainForm.Bonv_ctr_listTable.FieldValues['code_barec']:= DataModuleF.PerissBona_recTable.FieldValues['code_barec'];

           if  NOT (MainForm.FDQuery2.IsEmpty) AND (BonCtrGestionF.ClientBonCtrGCbx.Text<> '' ) then
           begin
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 0 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 1 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvr_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 2 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvg_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 3 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva_p'];
             end;
             if MainForm.FDQuery2.FieldByName('tarification_c').AsInteger = 4 then
             begin
             MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixva2_p'];
             end;
             end else
                 begin
                  MainForm.Bonv_ctr_listTable.FieldValues['prixvd_p']:= MainForm.SQLQuery.FieldValues['prixvd_p'];
                 end;

             MainForm.Bonv_ctr_listTable.Post ;

           MainForm.Bonv_ctr_listTable.IndexFieldNames:='code_bvctr';
           MainForm.Bonv_ctr_listTable.Last;
           MainForm.Bonv_ctr_listTable.EnableControls;
           MainForm.SQLQuery.Active:=False;
           MainForm.SQLQuery.SQL.Clear;
           MainForm.Bonv_ctr_listTable.Active:=False;
           MainForm.Bonv_ctr_listTable.SQL.Clear;
           MainForm.Bonv_ctr_listTable.SQL.Text:= 'SELECT * FROM bonv_ctr_list WHERE code_bvctr = ' + QuotedStr(IntToStr(MainForm.Bonv_ctrTable.FieldValues['code_bvctr']));
           MainForm.Bonv_ctr_listTable.Active:=True;

          MainForm.FDQuery2.Active:=false;
          MainForm.FDQuery2.SQL.Clear;

          OKAddUniteSBtnClick(Sender);

          BonCtrGestionF.ProduitsListDBGridEhExit(Sender);
          BonCtrGestionF.ProduitBonCtrGCbx.Text:='';
          BonCtrGestionF.ProduitBonCtrGCbx.SetFocus;

//          BonCtrGestionF.ProduitsListDBGridEh.SelectedIndex:=2;
          BonCtrGestionF.ProduitsListDBGridEh.EditorMode:=True;

           sndPlaySound('C:\Windows\Media\speech on.wav', SND_NODEFAULT Or SND_ASYNC Or SND_RING);
         end;



     end;
end;

end.
