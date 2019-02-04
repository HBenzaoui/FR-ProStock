unit UDashboard;

interface

uses   FireDAC.Comp.Client,
  Winapi.Windows,ComCtrls, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, acImage,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, VclTee.TeeGDIPlus, VCLTee.Series,
  VCLTee.TeEngine, VCLTee.TeeAnimations, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.TeeTools;

type
  TDashboardF = class(TForm)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    CompanyP: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    NameCompanyDashBLbl: TLabel;
    TelCompanyDashBLbl: TLabel;
    MobileCompanyDashBLbl: TLabel;
    AdrCompanyDashBLbl: TLabel;
    NClient: TLabel;
    NClientDashBLbl: TLabel;
    Label12: TLabel;
    TopAchatClientDashBLbl: TLabel;
    Label14: TLabel;
    TopMoneyClientDashBLbl: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    NFourDashBLbl: TLabel;
    TopAchatFourDashBLbl: TLabel;
    TopMoneyFourDashBLbl: TLabel;
    Panel1: TPanel;
    Image1: TsImage;
    Panel2: TPanel;
    ProduitP: TPanel;
    Label22: TLabel;
    NProduitDashBLbl: TLabel;
    Label24: TLabel;
    NProduitTotalDashBLbl: TLabel;
    Label26: TLabel;
    Panel3: TPanel;
    sImage1: TsImage;
    Panel4: TPanel;
    sImage2: TsImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel25: TPanel;
    Panel24: TPanel;
    Panel21: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    NBLDashBLbl: TLabel;
    Panel28: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    NFVDashBLbl: TLabel;
    Label9: TLabel;
    NCTRDashBLbl: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    NBRDashBLbl: TLabel;
    NFADashBLbl: TLabel;
    Label20: TLabel;
    Panel29: TPanel;
    CtrTop10PRODUITDBGridEh: TDBGridEh;
    DashBTop5produit: TDataSource;
    DBChart1: TDBChart;
    PieSeries1: TPieSeries;
    TeeAnimationTool1: TTeeAnimationTool;
    TeeAnimationTool2: TTeeAnimationTool;
    DBChart2: TDBChart;
    Series1: TBarSeries;
    ChartAnimation1: TSeriesAnimationTool;
    ChartAnimation2: TTeeAnimationTool;
    Series2: TBarSeries;
    Label1: TLabel;
    NClientHaveCreditsDashBLbl: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
  private
    procedure Selecting_Only_Valide_Bons;
    procedure MonthsData;


  public
    procedure GettingData;
  end;

var
DashboardF:   TDashboardF;
QurLiv : TFDQuery;

implementation

uses
  UMainF, UDataModule,System.Threading;

{$R *.dfm}


procedure TDashboardF.Selecting_Only_Valide_Bons;

begin
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT code_bvliv FROM bonv_liv where valider_bvliv = true ' ;
      MainForm.SQLQuery.Active:=True;
      NBLDashBLbl.Caption:=       IntToStr(MainForm.SQLQuery.RecordCount);


      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT code_bvctr from bonv_ctr where valider_bvctr = true ' ;
      MainForm.SQLQuery.Active:=True;
      NCTRDashBLbl.Caption:=      IntToStr(MainForm.SQLQuery.RecordCount); 
      
       
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT code_bvfac from bonv_fac where valider_bvfac = true ' ;
      MainForm.SQLQuery.Active:=True;
      NFVDashBLbl.Caption:=       IntToStr(MainForm.SQLQuery.RecordCount);
      
      
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT code_barec from bona_rec where valider_barec = true ' ;
      MainForm.SQLQuery.Active:=True;
      NBRDashBLbl.Caption:=       IntToStr(MainForm.SQLQuery.RecordCount);

      
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT code_bafac from bona_fac where valider_bafac = true ' ;
      MainForm.SQLQuery.Active:=True;
      NFADashBLbl.Caption:=       IntToStr(MainForm.SQLQuery.RecordCount);

      
      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;      

end;




procedure TDashboardF.GettingData ;
var i,MyMax, TopbonLivC,TopbonCtrC,TopbonFacC ,TopbonLivVerC,TopbonCtrVerC,TopbonFacVerC,
             TopbonRecF,TopbonFacF ,TopbonRecVerF,TopbonFacVerF  : Integer;
    a : TArray<Integer>;
begin

  DataModuleF.Top5produit.Refresh;

  NClientDashBLbl.Caption:=   IntToStr(MainForm.ClientTable.RecordCount - 1);   // -1 is to not calculate the Comptoir
  NFourDashBLbl.Caption:=     IntToStr(MainForm.FournisseurTable.RecordCount);
  NProduitDashBLbl.Caption:=  IntToStr(MainForm.ProduitTable.RecordCount);

  Selecting_Only_Valide_Bons;


  DataModuleF.TotalProduit.Refresh;
  if NOT (MainForm.ProduitTable.IsEmpty) then
  begin
   NProduitTotalDashBLbl.Caption:= (DataModuleF.TotalProduit.FieldValues['totat']);
  end else
      begin
       NProduitTotalDashBLbl.Caption:='0';
      end;




      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='SELECT * FROM client WHERE code_c <> 1 AND (oldcredit_c + credit_c) > ''0'' ';
      MainForm.SQLQuery.Active:=True;

      NClientHaveCreditsDashBLbl.Caption:= IntToStr( MainForm.SQLQuery.RecordCount);

      MainForm.SQLQuery.Active:=False;
      MainForm.SQLQuery.SQL.Clear;
      
   //---- this is the show the best seller client-------------------------
   begin
   
     MyMax:=0;
     
     DataModuleF.TopClient.Active:=False;
     DataModuleF.TopClient.SQL.Clear;
     DataModuleF.TopClient.SQL.Text:=
      'SELECT code_c, COUNT(code_c) AS best_client FROM bonv_liv WHERE valider_bvliv = true GROUP BY code_c ORDER BY best_client DESC  LIMIT 2;' ;
     DataModuleF.TopClient.Active:=True;

//     TopbonLivC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;

//---this is to avoid Comptoir From the calculation----------------
     if DataModuleF.TopClient.FieldByName('code_c').AsInteger <> 1 then
     begin
     TopbonLivC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;
     end else
         begin
           if DataModuleF.TopClient.RecordCount > 1 then
            begin
             DataModuleF.TopClient.Next;
             TopbonLivC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;
            end else
                begin
                  TopbonLivC:=0;
                end;
           end;

     DataModuleF.TopClient.Active:=False;
     DataModuleF.TopClient.SQL.Clear;
     DataModuleF.TopClient.SQL.Text:=
      'SELECT code_c, COUNT(code_c) AS best_client FROM bonv_ctr WHERE valider_bvctr = true GROUP BY code_c ORDER BY best_client DESC  LIMIT 2;' ;
     DataModuleF.TopClient.Active:=True;

//     TopbonCtrC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;

//---this is to avoid Comptoir From the calculation----------------
     if DataModuleF.TopClient.FieldByName('code_c').AsInteger <> 1 then
     begin
     TopbonCtrC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;
     end else
         begin
           if DataModuleF.TopClient.RecordCount > 1 then
            begin
             DataModuleF.TopClient.Next;
             TopbonCtrC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;
            end else
                begin
                  TopbonCtrC:=0;
                end;
           end;

     DataModuleF.TopClient.Active:=False;
     DataModuleF.TopClient.SQL.Clear;
     DataModuleF.TopClient.SQL.Text:=
      'SELECT code_c, COUNT(code_c) AS best_client FROM  bonv_fac WHERE valider_bvfac = true GROUP BY code_c ORDER BY best_client DESC  LIMIT 2;' ;
     DataModuleF.TopClient.Active:=True;

//     TopbonFacC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;

     //---this is to avoid Comptoir From the calculation----------------
     if DataModuleF.TopClient.FieldByName('code_c').AsInteger <> 1 then
     begin
     TopbonFacC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;
     end else
         begin
           if DataModuleF.TopClient.RecordCount > 1 then
            begin
             DataModuleF.TopClient.Next;
             TopbonFacC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;
            end else
                begin
                  TopbonFacC:=0;
                end;
           end;


       a := TArray<Integer>.Create(TopbonLivC,TopbonCtrC,TopbonFacC);

       for I := 0 to 2 do   // change it to 2 when adding CTR bons OR 1 if we dont want CTR
        begin
            if a[i] >= MyMax then
            MyMax := a[i];
        end;

      MainForm.ClientTable.DisableControls;
      MainForm.ClientTable.Active:=False;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='SELECT * from client where code_c = '+ IntToStr(MyMax) ;
      MainForm.ClientTable.Active:=True;

     TopAchatClientDashBLbl.Caption:=    MainForm.ClientTable.FieldByName('nom_c').AsString;
     MyMax:=0;

   end;

  //---- this is the show the best versment client-------------------------
   begin

     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_c, MAX(montver_bvliv) FROM bonv_liv WHERE valider_bvliv = true GROUP BY code_c ORDER BY MAX(montver_bvliv) DESC LIMIT 2;' ;
     DataModuleF.TopVerClient.Active:=True;

//   TopbonLivVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger

//---this is to avoid Comptoir From the calculation----------------
     if DataModuleF.TopVerClient.FieldByName('code_c').AsInteger <> 1 then
     begin
     TopbonLivVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;
     end else
         begin
           if DataModuleF.TopVerClient.RecordCount > 1 then
            begin
             DataModuleF.TopVerClient.Next;
             TopbonLivVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;
            end else
                begin
                  TopbonLivVerC:=0;
                end;
           end;


     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_c, MAX(montver_bvctr) FROM bonv_ctr WHERE valider_bvctr = true GROUP BY code_c ORDER BY MAX(montver_bvctr) DESC LIMIT 2;' ;
     DataModuleF.TopVerClient.Active:=True;

//     TopbonCtrVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;

//---this is to avoid Comptoir From the calculation----------------
          if DataModuleF.TopVerClient.FieldByName('code_c').AsInteger <> 1 then
     begin
     TopbonCtrVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;
     end else
         begin
           if DataModuleF.TopVerClient.RecordCount > 1 then
            begin
             DataModuleF.TopVerClient.Next;
             TopbonCtrVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;
            end else
                begin
                  TopbonCtrVerC:=0;
                end;
           end;


     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_c, MAX(montver_bvfac) FROM bonv_fac WHERE valider_bvfac = true GROUP BY code_c ORDER BY MAX(montver_bvfac) DESC LIMIT 2;' ;
     DataModuleF.TopVerClient.Active:=True;

//     TopbonFacVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;

//---this is to avoid Comptoir From the calculation----------------
     if DataModuleF.TopVerClient.FieldByName('code_c').AsInteger <> 1 then
     begin
     TopbonFacVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;
     end else
         begin
           if DataModuleF.TopVerClient.RecordCount > 1 then
            begin
             DataModuleF.TopVerClient.Next;
             TopbonFacVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;
            end else
                begin
                  TopbonFacVerC:=0;
                end;
           end;

       a := TArray<Integer>.Create(TopbonLivVerC,TopbonCtrVerC
                                    ,TopbonFacVerC);

       for I := 0 to 2 do   // change it to 2 when adding CTR bons OR 1 if we dont want CTR
        begin
            if a[i] >= MyMax then
            MyMax := a[i];
        end;

      MainForm.ClientTable.Active:=False;
      MainForm.ClientTable.SQL.Clear;
      MainForm.ClientTable.SQL.Text:='SELECT * from client where code_c = '+ IntToStr(MyMax) ;
      MainForm.ClientTable.Active:=True;

      TopMoneyClientDashBLbl.Caption:=    MainForm.ClientTable.FieldByName('nom_c').AsString;
       MyMax:=0;
   end;
//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
   //---- this is the show the best achter fournisseur-------------------------
   begin
   
     DataModuleF.TopFour.Active:=False;
     DataModuleF.TopFour.SQL.Clear;
     DataModuleF.TopFour.SQL.Text:=
      'SELECT code_f, COUNT(code_f) AS best_four FROM bona_rec WHERE valider_barec = true GROUP BY code_f ORDER BY best_four DESC LIMIT 1;' ;
     DataModuleF.TopFour.Active:=True;

     TopbonRecF:=  DataModuleF.TopFour.FieldByName('code_f').AsInteger;

     DataModuleF.TopFour.Active:=False;
     DataModuleF.TopFour.SQL.Clear;
     DataModuleF.TopFour.SQL.Text:=
      'SELECT code_f, COUNT(code_f) AS best_four FROM bona_fac WHERE valider_bafac = true GROUP BY code_f ORDER BY best_four DESC LIMIT 1;' ;
     DataModuleF.TopFour.Active:=True;

     TopbonFacF:=  DataModuleF.TopFour.FieldByName('code_f').AsInteger;

       a := TArray<Integer>.Create(TopbonRecF ,TopbonFacF);

       for I := 0 to 1 do
        begin
            if a[i] >= MyMax then
            MyMax := a[i];
        end;

      MainForm.FournisseurTable.DisableControls;
      MainForm.FournisseurTable.Active:=False;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='SELECT * from fournisseur where code_f = '+ IntToStr(MyMax) ;
      MainForm.FournisseurTable.Active:=True;

     TopAchatFourDashBLbl.Caption:=    MainForm.FournisseurTable.FieldByName('nom_f').AsString;
     MyMax:=0;
   end;

  //---- this is the show the best versment fournisseur-------------------------
   begin

     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_f, MAX(montver_barec) FROM bona_rec WHERE valider_barec = true GROUP BY code_f ORDER BY MAX(montver_barec) DESC LIMIT 1;' ;
     DataModuleF.TopVerClient.Active:=True;

     TopbonRecVerF:=  DataModuleF.TopVerClient.FieldByName('code_f').AsInteger;

     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_f, MAX(montver_bafac) FROM bona_fac WHERE valider_bafac = true GROUP BY code_f ORDER BY MAX(montver_bafac) DESC LIMIT 1;' ;
     DataModuleF.TopVerClient.Active:=True;

     TopbonFacVerF:=  DataModuleF.TopVerClient.FieldByName('code_f').AsInteger;

       a := TArray<Integer>.Create(TopbonRecVerF ,TopbonFacVerF);

       for I := 0 to 1 do
        begin
            if a[i] >= MyMax then
            MyMax := a[i];
        end;

      MainForm.FournisseurTable.Active:=False;
      MainForm.FournisseurTable.SQL.Clear;
      MainForm.FournisseurTable.SQL.Text:='SELECT * from fournisseur where code_f = '+ IntToStr(MyMax) ;
      MainForm.FournisseurTable.Active:=True;


      TopMoneyFourDashBLbl.Caption:=    MainForm.FournisseurTable.FieldByName('nom_f').AsString;
      MyMax:=0;
   end;

  NameCompanyDashBLbl.Caption:=   MainForm.CompanyTable.FieldByName('nom_comp').AsString;
  TelCompanyDashBLbl.Caption:=    MainForm.CompanyTable.FieldByName('fix_comp').AsString;
  MobileCompanyDashBLbl.Caption:= MainForm.CompanyTable.FieldByName('mob_comp').AsString;
  AdrCompanyDashBLbl.Caption:=    MainForm.CompanyTable.FieldByName('adr_comp').AsString;

  MainForm.ClientTable.Active:=False;
  MainForm.ClientTable.SQL.Clear;
  MainForm.ClientTable.SQL.Text:='SELECT * from client ' ;
  MainForm.ClientTable.Active:=True;
  MainForm.ClientTable.EnableControls;

  MainForm.FournisseurTable.Active:=False;
  MainForm.FournisseurTable.SQL.Clear;
  MainForm.FournisseurTable.SQL.Text:='SELECT * from fournisseur ' ;
  MainForm.FournisseurTable.Active:=True;
  MainForm.FournisseurTable.EnableControls;

end;

procedure TDashboardF.MonthsData;
  var
  b: array[0..11] of Currency;
  begin

      //----------- calculte the ACHATS--------------------
       b[0] := 0; b[1] := 0; b[2] := 0; b[3] := 0; b[4] := 0;
       b[5] := 0; b[6] := 0; b[7] := 0; b[8] := 0; b[9] := 0;
       b[10] := 0; b[11] := 0;
        with DataModuleF.ToatalVerMonthAREC do
        begin
        Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := FieldByName('sales').AsCurrency;
      //----------- calculte the ACHATS--------------------
       b[0] := 0; b[1] := 0; b[2] := 0; b[3] := 0; b[4] := 0;
       b[5] := 0; b[6] := 0; b[7] := 0; b[8] := 0; b[9] := 0;
       b[10] := 0; b[11] := 0;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := FieldByName('sales').AsCurrency;
      begin

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := FieldByName('sales').AsCurrency;
          with DataModuleF.ToatalVerMonthAREC do
        begin
        Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := FieldByName('sales').AsCurrency;
           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] := FieldByName('sales').AsCurrency;

        end;

          with DataModuleF.ToatalVerMonthAFAC do
         begin
         Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := b[0] + FieldByName('sales').AsCurrency;
        end;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := b[1]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := b[2]+ FieldByName('sales').AsCurrency;
        begin

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := b[3]+ FieldByName('sales').AsCurrency;
          with DataModuleF.ToatalVerMonthAFAC do
         begin
         Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := b[0] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := b[4] + FieldByName('sales').AsCurrency;
           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := b[1]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := b[5] + FieldByName('sales').AsCurrency;
           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := b[2]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] :=b[6] + FieldByName('sales').AsCurrency;
          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := b[3]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] :=b[7] + FieldByName('sales').AsCurrency;
           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := b[4] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] :=b[8] + FieldByName('sales').AsCurrency;
           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := b[5] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] :=b[9] + FieldByName('sales').AsCurrency;
           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] :=b[6] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] :=b[10] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] :=b[11] + FieldByName('sales').AsCurrency;

         end;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] :=b[7] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] :=b[8] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] :=b[9] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] :=b[10] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] :=b[11] + FieldByName('sales').AsCurrency;

         end;

        end;


    //------ Thise Series1 is for Achats------/
    with Series1 do
    begin
      Clear;
      Add(  b[0],   'Jan' , $00813AE1 ) ;
      Add(  b[1],   'Fev',  $00813AE1 ) ;
      Add(  b[2],   'Mar',  $00813AE1 ) ;
      Add(  b[3],   'Avr',  $00813AE1 ) ;
      Add(  b[4],   'Mai',  $00813AE1 ) ;
      Add(  b[5],   'Jui' , $00813AE1 ) ;
      Add(  b[6],   'Jul',  $00813AE1 ) ;
      Add(  b[7],   'Aou',  $00813AE1 ) ;
      Add(  b[8],   'Sep',  $00813AE1 ) ;
      Add(  b[9],   'Oct',  $00813AE1 ) ;
      Add(  b[10],  'Nov',  $00813AE1 ) ;
      Add(  b[11],  'Dec',  $00813AE1 ) ;  //--- this is thye old colcor $00E5B533

    end;


  //----------- calculte the VENTES--------------------
       b[0] := 0; b[1] := 0; b[2] := 0; b[3] := 0; b[4] := 0;
       b[5] := 0; b[6] := 0; b[7] := 0; b[8] := 0; b[9] := 0;
       b[10] := 0; b[11] := 0;
       with DataModuleF.ToatalVerMonthVLIV do
        begin
        Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] := FieldByName('sales').AsCurrency;

        end;
          with DataModuleF.ToatalVerMonthVFAC do
         begin
         Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := b[0] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := b[1]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := b[2]+ FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := b[3]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := b[4] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := b[5] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] :=b[6] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] :=b[7] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] :=b[8] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] :=b[9] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] :=b[10] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] :=b[11] + FieldByName('sales').AsCurrency;

         end;

          with DataModuleF.ToatalVerMonthVCTR do
         begin
         Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := b[0] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := b[1]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := b[2]+ FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := b[3]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := b[4] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := b[5] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] :=b[6] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] :=b[7] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] :=b[8] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] :=b[9] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] :=b[10] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] :=b[11] + FieldByName('sales').AsCurrency;

         end;



    with Series2 do
  //----------- calculte the VENTES--------------------
       b[0] := 0; b[1] := 0; b[2] := 0; b[3] := 0; b[4] := 0;
       b[5] := 0; b[6] := 0; b[7] := 0; b[8] := 0; b[9] := 0;
       b[10] := 0; b[11] := 0;

      begin

          with DataModuleF.ToatalVerMonthVLIV do
        begin
        Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] := FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] := FieldByName('sales').AsCurrency;

        end;

        end;


        begin

          with DataModuleF.ToatalVerMonthVFAC do
         begin
         Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := b[0] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := b[1]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := b[2]+ FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := b[3]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := b[4] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := b[5] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] :=b[6] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] :=b[7] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] :=b[8] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] :=b[9] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] :=b[10] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] :=b[11] + FieldByName('sales').AsCurrency;

         end;

        end;


          begin

          with DataModuleF.ToatalVerMonthVCTR do
         begin
         Refresh;
          Filtered := False;
          Filter := 'mon = 01';
          Filtered := True;
          b[0] := b[0] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 02';
          Filtered := True;
          b[1] := b[1]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 03';
          Filtered := True ;
          b[2] := b[2]+ FieldByName('sales').AsCurrency;

          Filtered := False;
          Filter := 'mon = 04';
          Filtered := True;
          b[3] := b[3]+ FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 05';
          Filtered := True ;
          b[4] := b[4] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 06';
          Filtered := True;
          b[5] := b[5] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 07';
          Filtered := True;
          b[6] :=b[6] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 08';
          Filtered := True;
          b[7] :=b[7] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 09';
          Filtered := True ;
          b[8] :=b[8] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 10';
          Filtered := True;
          b[9] :=b[9] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 11';
          Filtered := True ;
          b[10] :=b[10] + FieldByName('sales').AsCurrency;

           Filtered := False;
          Filter := 'mon = 12';
          Filtered := True ;
          b[11] :=b[11] + FieldByName('sales').AsCurrency;

         end;

        end;

   //------ Thise Series2 is for ventes------/
    with Series2 do
    begin
      Clear;
      Add(  b[0],   'Jan' , $00CBA016 ) ;
      Add(  b[1],   'Fev',  $00CBA016 ) ;
      Add(  b[2],   'Mar',  $00CBA016 ) ;
      Add(  b[3],   'Avr',  $00CBA016 ) ;
      Add(  b[4],   'Mai',  $00CBA016 ) ;
      Add(  b[5],   'Jui' , $00CBA016 ) ;
      Add(  b[6],   'Jul',  $00CBA016 ) ;
      Add(  b[7],   'Aou',  $00CBA016 ) ;
      Add(  b[8],   'Sep',  $00CBA016 ) ;
      Add(  b[9],   'Oct',  $00CBA016 ) ;
      Add(  b[10],  'Nov',  $00CBA016 ) ;
      Add(  b[11],  'Dec',  $00CBA016 ) ;  //--- this is thye old colcor $00CC3399

    end;


end;

  end;

procedure TDashboardF.FormPaint(Sender: TObject);
begin
 GettingData;
MonthsData;
    with PieSeries1 do
    begin
      Clear;
//      Add(  StrToInt(NBLDashBLbl.Caption),  'BL' ,  $004444FF ) ; 
//      Add(  StrToInt(NFVDashBLbl.Caption),  'FCV',  $00CC66AA ) ;
//      Add(  StrToInt(NCTRDashBLbl.Caption), 'BCTR', $0000CC99 ) ;
//      Add(  StrToInt(NBRDashBLbl.Caption),  'BR',   $00E5B533 ) ;
//      Add(  StrToInt(NFADashBLbl.Caption),  'FCA',  $0033BBFF ) ; 



      Add(  StrToInt(NBLDashBLbl.Caption),  'BL' ,  $00CBA016 ) ; 
      Add(  StrToInt(NFVDashBLbl.Caption),  'FCV',  $00BFC86B ) ;
      Add(  StrToInt(NCTRDashBLbl.Caption), 'BCTR', $0083CAF4 ) ;
      Add(  StrToInt(NBRDashBLbl.Caption),  'BR',   $00813AE1 ) ;
      Add(  StrToInt(NFADashBLbl.Caption),  'FCA',  $00A674EB ) ;       
    end;

//  TTask.Run ( procedure
//            begin
             if NOT Assigned(DashboardF) then
              begin
//              ChartAnimation1.Play;
//              TeeAnimationTool1.Play;
//              TeeAnimationTool2.play;
              end;
//            end);
end;

procedure TDashboardF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(DashboardF);
end;

end.
