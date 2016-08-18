unit UDashboard;

interface

uses
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
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Selecting_Only_Valide_Bons;
    procedure Selecting_All_Bons;
    procedure MonthsData;


  public
    procedure GettingData;
  end;

var
DashboardF:   TDashboardF;

implementation

uses
  UMainF, UDataModule;

{$R *.dfm}


procedure TDashboardF.Selecting_Only_Valide_Bons;
begin
      MainForm.Bonv_livTable.DisableControls;
      MainForm.Bonv_livTable.Active:=False;
      MainForm.Bonv_livTable.SQL.Clear;
      MainForm.Bonv_livTable.SQL.Text:='SELECT * from bonv_liv where valider_bvliv = true ' ;
      MainForm.Bonv_livTable.Active:=True;

      MainForm.Bonv_ctrTable.DisableControls;
      MainForm.Bonv_ctrTable.Active:=False;
      MainForm.Bonv_ctrTable.SQL.Clear;
      MainForm.Bonv_ctrTable.SQL.Text:='SELECT * from bonv_ctr where valider_bvctr = true ' ;
      MainForm.Bonv_ctrTable.Active:=True;

      MainForm.Bonv_facTable.DisableControls;
      MainForm.Bonv_facTable.Active:=False;
      MainForm.Bonv_facTable.SQL.Clear;
      MainForm.Bonv_facTable.SQL.Text:='SELECT * from bonv_fac where valider_bvfac = true ' ;
      MainForm.Bonv_facTable.Active:=True;

      MainForm.Bona_recTable.DisableControls;
      MainForm.Bona_recTable.Active:=False;
      MainForm.Bona_recTable.SQL.Clear;
      MainForm.Bona_recTable.SQL.Text:='SELECT * from bona_rec where valider_barec = true ' ;
      MainForm.Bona_recTable.Active:=True;

      MainForm.Bona_facTable.DisableControls;
      MainForm.Bona_facTable.Active:=False;
      MainForm.Bona_facTable.SQL.Clear;
      MainForm.Bona_facTable.SQL.Text:='SELECT * from bona_fac where valider_bafac = true ' ;
      MainForm.Bona_facTable.Active:=True;


end;

procedure TDashboardF.Selecting_All_Bons;
begin

      MainForm.Bonv_livTable.Active:=False;
      MainForm.Bonv_livTable.SQL.Clear;
      MainForm.Bonv_livTable.SQL.Text:='SELECT * from bonv_liv ' ;
      MainForm.Bonv_livTable.Active:=True;
      MainForm.Bonv_livTable.EnableControls;


      MainForm.Bonv_ctrTable.Active:=False;
      MainForm.Bonv_ctrTable.SQL.Clear;
      MainForm.Bonv_ctrTable.SQL.Text:='SELECT * from bonv_ctr ' ;
      MainForm.Bonv_ctrTable.Active:=True;
      MainForm.Bonv_ctrTable.EnableControls;


      MainForm.Bonv_facTable.Active:=False;
      MainForm.Bonv_facTable.SQL.Clear;
      MainForm.Bonv_facTable.SQL.Text:='SELECT * from bonv_fac  ' ;
      MainForm.Bonv_facTable.Active:=True;
      MainForm.Bonv_facTable.EnableControls;


      MainForm.Bona_recTable.Active:=False;
      MainForm.Bona_recTable.SQL.Clear;
      MainForm.Bona_recTable.SQL.Text:='SELECT * from bona_rec ' ;
      MainForm.Bona_recTable.Active:=True;
      MainForm.Bona_recTable.EnableControls;


      MainForm.Bona_facTable.Active:=False;
      MainForm.Bona_facTable.SQL.Clear;
      MainForm.Bona_facTable.SQL.Text:='SELECT * from bona_fac ' ;
      MainForm.Bona_facTable.Active:=True;
      MainForm.Bona_facTable.EnableControls;

end;



procedure TDashboardF.GettingData ;
var i,MyMax, TopbonLivC,TopbonCtrC,TopbonFacC ,TopbonLivVerC,TopbonCtrVerC,TopbonFacVerC,
             TopbonRecF,TopbonFacF ,TopbonRecVerF,TopbonFacVerF  : Integer;
    a : TArray<Integer>;
begin

  NClientDashBLbl.Caption:=   IntToStr(MainForm.ClientTable.RecordCount);
  NFourDashBLbl.Caption:=     IntToStr(MainForm.FournisseurTable.RecordCount);
  NProduitDashBLbl.Caption:=  IntToStr(MainForm.ProduitTable.RecordCount);

  Selecting_Only_Valide_Bons;

  NBLDashBLbl.Caption:=       IntToStr(MainForm.Bonv_livTable.RecordCount);
  NFVDashBLbl.Caption:=       IntToStr(MainForm.Bonv_facTable.RecordCount);
  NCTRDashBLbl.Caption:=      IntToStr(MainForm.Bonv_ctrTable.RecordCount);
  NBRDashBLbl.Caption:=       IntToStr(MainForm.Bona_recTable.RecordCount);
  NFADashBLbl.Caption:=       IntToStr(MainForm.Bona_facTable.RecordCount);

  Selecting_All_Bons;


  NProduitTotalDashBLbl.Caption:= (DataModuleF.TotalProduit.FieldValues['totat']);


   //---- this is the show the best seller client-------------------------
   begin

     DataModuleF.TopClient.Active:=False;
     DataModuleF.TopClient.SQL.Clear;
     DataModuleF.TopClient.SQL.Text:=
      'SELECT code_c, COUNT(code_c) AS best_client FROM  bonv_liv GROUP BY code_c ORDER BY best_client DESC  LIMIT    1;' ;
     DataModuleF.TopClient.Active:=True;

     TopbonLivC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;


//     DataModuleF.TopClient.Active:=False;
//     DataModuleF.TopClient.SQL.Clear;
//     DataModuleF.TopClient.SQL.Text:=
//      'SELECT code_c, COUNT(code_c) AS best_client FROM  bonv_ctr GROUP BY code_c ORDER BY best_client DESC  LIMIT    1;' ;
//     DataModuleF.TopClient.Active:=True;
//
//     TopbonCtrC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;


     DataModuleF.TopClient.Active:=False;
     DataModuleF.TopClient.SQL.Clear;
     DataModuleF.TopClient.SQL.Text:=
      'SELECT code_c, COUNT(code_c) AS best_client FROM  bonv_fac GROUP BY code_c ORDER BY best_client DESC  LIMIT    1;' ;
     DataModuleF.TopClient.Active:=True;

     TopbonFacC:=  DataModuleF.TopClient.FieldByName('code_c').AsInteger;


       a := TArray<Integer>.Create(TopbonLivC//,TopbonCtrC
                                              ,TopbonFacC);

       for I := 0 to 1 do   // change it to 2 when adding CTR bons
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
      'SELECT code_c, MAX(montver_bvliv) FROM bonv_liv GROUP BY code_c ORDER BY MAX(montver_bvliv) DESC LIMIT 1;' ;
     DataModuleF.TopVerClient.Active:=True;

     TopbonLivVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;


//     DataModuleF.TopVerClient.Active:=False;
//     DataModuleF.TopVerClient.SQL.Clear;
//     DataModuleF.TopVerClient.SQL.Text:=
//      'SELECT code_c, MAX(montver_bvctr) FROM bonv_ctr GROUP BY code_c ORDER BY MAX(montver_bvctr) DESC LIMIT 1;;' ;
//     DataModuleF.TopVerClient.Active:=True;
//
//     TopbonCtrVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;


     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_c, MAX(montver_bvfac) FROM bonv_fac GROUP BY code_c ORDER BY MAX(montver_bvfac) DESC LIMIT 1;' ;
     DataModuleF.TopVerClient.Active:=True;

     TopbonFacVerC:=  DataModuleF.TopVerClient.FieldByName('code_c').AsInteger;


       a := TArray<Integer>.Create(TopbonLivVerC//,TopbonCtrVerC
                                    ,TopbonFacVerC);

       for I := 0 to 1 do   // change it to 2 when adding CTR bons
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
      'SELECT code_f, COUNT(code_f) AS best_four FROM  bona_rec GROUP BY code_f ORDER BY best_four DESC  LIMIT    1;' ;
     DataModuleF.TopFour.Active:=True;

     TopbonRecF:=  DataModuleF.TopFour.FieldByName('code_f').AsInteger;


     DataModuleF.TopFour.Active:=False;
     DataModuleF.TopFour.SQL.Clear;
     DataModuleF.TopFour.SQL.Text:=
      'SELECT code_f, COUNT(code_f) AS best_four FROM  bona_fac GROUP BY code_f ORDER BY best_four DESC  LIMIT    1;' ;
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
      'SELECT code_f, MAX(montver_barec) FROM bona_rec GROUP BY code_f ORDER BY MAX(montver_barec) DESC LIMIT 1;' ;
     DataModuleF.TopVerClient.Active:=True;

     TopbonRecVerF:=  DataModuleF.TopVerClient.FieldByName('code_f').AsInteger;


     DataModuleF.TopVerClient.Active:=False;
     DataModuleF.TopVerClient.SQL.Clear;
     DataModuleF.TopVerClient.SQL.Text:=
      'SELECT code_f, MAX(montver_bafac) FROM bona_fac GROUP BY code_f ORDER BY MAX(montver_bafac) DESC LIMIT 1;' ;
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

      begin

          with DataModuleF.ToatalVerMonthAREC do
        begin
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

          with DataModuleF.ToatalVerMonthAFAC do
         begin
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


    with Series1 do
    begin
      Clear;
      Add(  b[0],   'Jan' , $004444FF ) ;
      Add(  b[1],   'Fev',  $004444FF ) ;
      Add(  b[2],   'Mar',  $004444FF ) ;
      Add(  b[3],   'Avr',  $004444FF ) ;
      Add(  b[4],   'Mai',  $004444FF ) ;
      Add(  b[5],   'Jui' , $004444FF ) ;
      Add(  b[6],   'Jul',  $004444FF ) ;
      Add(  b[7],   'Aou',  $004444FF ) ;
      Add(  b[8],   'Sep',  $004444FF ) ;
      Add(  b[9],   'Oct',  $004444FF ) ;
      Add(  b[10],  'Nov',  $004444FF ) ;
      Add(  b[11],  'Dec',  $004444FF ) ;

    end;

  //----------- calculte the VENTES--------------------
       b[0] := 0; b[1] := 0; b[2] := 0; b[3] := 0; b[4] := 0;
       b[5] := 0; b[6] := 0; b[7] := 0; b[8] := 0; b[9] := 0;
       b[10] := 0; b[11] := 0;

      begin

          with DataModuleF.ToatalVerMonthVLIV do
        begin
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


    with Series2 do
    begin
      Clear;
      Add(  b[0],   'Jan' , $00E5B533 ) ;
      Add(  b[1],   'Fev',  $00E5B533 ) ;
      Add(  b[2],   'Mar',  $00E5B533 ) ;
      Add(  b[3],   'Avr',  $00E5B533 ) ;
      Add(  b[4],   'Mai',  $00E5B533 ) ;
      Add(  b[5],   'Jui' , $00E5B533 ) ;
      Add(  b[6],   'Jul',  $00E5B533 ) ;
      Add(  b[7],   'Aou',  $00E5B533 ) ;
      Add(  b[8],   'Sep',  $00E5B533 ) ;
      Add(  b[9],   'Oct',  $00E5B533 ) ;
      Add(  b[10],  'Nov',  $00E5B533 ) ;
      Add(  b[11],  'Dec',  $00E5B533 ) ;

    end;





end;

procedure TDashboardF.FormShow(Sender: TObject);
begin
MonthsData;


    with PieSeries1 do
    begin
      Clear;
      Add(  StrToInt(NBLDashBLbl.Caption), 'BL' ,  $00E5B533 ) ;
      Add(  StrToInt(NFVDashBLbl.Caption), 'FCV',  $00CC66AA ) ;
      Add(  StrToInt(NCTRDashBLbl.Caption), 'BCTR', $0000CC99 ) ;
      Add(  StrToInt(NBRDashBLbl.Caption), 'BR',   $0033BBFF ) ;
      Add(  StrToInt(NFADashBLbl.Caption), 'FCA',  $004444FF ) ;
    end;


    ChartAnimation1.Play;

    TeeAnimationTool1.Play;
    TeeAnimationTool2.play;

end;

procedure TDashboardF.FormCreate(Sender: TObject);
begin
GettingData;
end;

end.
