unit USplashPrintReport;

interface

uses
  Winapi.Windows, DateUtils, Winapi.Messages, System.SysUtils,
   System.Variants, System.Classes, Vcl.Graphics,DBGridEh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, acImage, AdvToolBtn, frxClass, frxDBSet, Data.DB;

type
  TFSplashPrintReport = class(TForm)
    PreviewReportPBtn: TAdvToolButton;
    CancelReportPBtn: TAdvToolButton;
    Image1: TsImage;
    Panel1: TPanel;
    LineP: TPanel;
    RequiredStarAddCompteSLbl: TLabel;
    Label5: TLabel;
    NameReportPCbx: TComboBox;
    NameClientGErrorP: TPanel;
    RequiredRegCGlbl: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DateStartReportPD: TDateTimePicker;
    DateEndReportPD: TDateTimePicker;
    PrintReportPBtn: TAdvToolButton;
    PrintReportClientfrxRprt: TfrxReport;
    frxPrintReportClientDB: TfrxDBDataset;
    PrintReportClientDS: TDataSource;
    PrintReportFourfrxRprt: TfrxReport;
    frxPrintReportFourDB: TfrxDBDataset;
    PrintReportFourDS: TDataSource;
    ListClientFourGBtn: TAdvToolButton;
    PrintReportProduitfrxRprt: TfrxReport;
    frxPrintReportProduitDB: TfrxDBDataset;
    PrintReportProduitDS: TDataSource;
    PrintReportAllProduitfrxRprt: TfrxReport;
    frxPrintReportAllProduitDB: TfrxDBDataset;
    PrintReportAllProduitDS: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CancelReportPBtnClick(Sender: TObject);
    procedure NameReportPCbxDropDown(Sender: TObject);
    procedure PreviewReportPBtnClick(Sender: TObject);
    procedure NameReportPCbxChange(Sender: TObject);
    procedure PrintReportPBtnClick(Sender: TObject);
    procedure ListClientFourGBtnClick(Sender: TObject);
  private
    procedure GettingDataClientS;
    procedure GettingDataFourS;
    procedure GettingDataProduitS;
    procedure GettingDataAllProduitS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplashPrintReport: TFSplashPrintReport;

implementation

{$R *.dfm}

uses
Contnrs, UMainF, UReglementCList, UDataModule, UFastProduitsList;


var
  gGrayForms: TComponentList;

procedure GrayFormsPrintReport;
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

procedure NormalFormsPrintReport;
begin
  FreeAndNil(gGrayForms);
end;



procedure TFSplashPrintReport.CancelReportPBtnClick(Sender: TObject);
begin

    AnimateWindow(FSplashPrintReport.Handle, 175, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
    FSplashPrintReport.Release;
end;

procedure TFSplashPrintReport.NameReportPCbxChange(Sender: TObject);
begin
 if NameReportPCbx.Text <> '' then
 begin

  PreviewReportPBtn.Enabled := True;
  PrintReportPBtn.Enabled:= True;


 end else
     begin
        PreviewReportPBtn.Enabled := False;
        PrintReportPBtn.Enabled:= False;
     end;
end;

procedure TFSplashPrintReport.NameReportPCbxDropDown(Sender: TObject);
var
I : Integer;
  begin

  //This tag = 0 is four showing client
   if Tag = 0 then
   begin
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_c,nom_c FROM client ORDER by code_c'  ;
      MainForm.SQLQuery.Active:=True;

       MainForm.SQLQuery.Refresh;
       NameReportPCbx.Items.Clear;
       MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_c').IsNull = False then
     begin
          NameReportPCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_c').AsString);
       MainForm.SQLQuery.Next;
      end;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;

   end;

   //This tag = 1 is four showing four list
   if Tag = 1 then
   begin
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_f,nom_f FROM fournisseur ORDER BY code_f'  ;
      MainForm.SQLQuery.Active:=True;

       MainForm.SQLQuery.Refresh;
       NameReportPCbx.Items.Clear;
       MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_f').IsNull = False then
     begin
          NameReportPCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_f').AsString);
       MainForm.SQLQuery.Next;
      end;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;

   end;

   //This tag = 2 is four showing produit list
   if Tag = 2 then
   begin
      MainForm.SQLQuery.Active:=false;
      MainForm.SQLQuery.SQL.Clear;
      MainForm.SQLQuery.SQL.Text:='Select code_p,nom_p FROM produit '  ;
      MainForm.SQLQuery.Active:=True;

       MainForm.SQLQuery.Refresh;
       NameReportPCbx.Items.Clear;
       MainForm.SQLQuery.first;

     for I := 0 to MainForm.SQLQuery.RecordCount - 1 do
     if MainForm.SQLQuery.FieldByName('nom_p').IsNull = False then
     begin
          NameReportPCbx.Items.Add(MainForm.SQLQuery.FieldByName('nom_p').AsString);
       MainForm.SQLQuery.Next;
      end;
          MainForm.SQLQuery.Active:=false;
          MainForm.SQLQuery.SQL.Clear;

   end;

end;

procedure TFSplashPrintReport.GettingDataClientS;
var
  PreiodRX,Agent,CreditRX,NomCRX,AdrCRX,TelCRX,OldCreditCRX: TfrxMemoView;
  CodeC : Integer;
  Credit,OldCredit: Double;
  NomC,AdrC,TelC,TelC2 : string;
begin

  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;
  mainform.SQLQuery.sql.Text:='SELECT code_c,nom_c,adr_c, mob_c,mob2_c, credit_c,oldcredit_c FROM client WHERE nom_c LIKE '+ QuotedStr(NameReportPCbx.Text);
  MainForm.SQLQuery.Active:= True;

 if (MainForm.SQLQuery.IsEmpty = False) AND (MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 1)
 AND (MainForm.SQLQuery.FieldByName('code_c').AsInteger <> 0) then
 begin
  CodeC:=  MainForm.SQLQuery.FieldByName('code_c').AsInteger;
  Credit:= MainForm.SQLQuery.FieldByName('credit_c').AsCurrency;
  OldCredit:= MainForm.SQLQuery.FieldByName('oldcredit_c').AsCurrency;
  NomC:=   MainForm.SQLQuery.FieldByName('nom_c').AsString;
  AdrC:=   MainForm.SQLQuery.FieldByName('adr_c').AsString;
  TelC:=   MainForm.SQLQuery.FieldByName('mob_c').AsString;
  TelC2:=  MainForm.SQLQuery.FieldByName('mob2_c').AsString;

 end;


    DataModuleF.ClientSituationQR.Close();
    DataModuleF.ClientSituationQR.ParamByName('CodeC').AsInteger := CodeC;
    DataModuleF.ClientSituationQR.ParamByName('DateStartC').AsDate := DateStartReportPD.Date;
    DataModuleF.ClientSituationQR.ParamByName('DateEndC').AsDate := DateEndReportPD.Date;
    DataModuleF.ClientSituationQR.Open();



  PreiodRX:= PrintReportClientfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartReportPD.Date) + ' au ' + DateToStr(DateEndReportPD.Date) ;
  Agent:= PrintReportClientfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

  CreditRX:= PrintReportClientfrxRprt.FindObject('CreditRX') as TfrxMemoView;
  CreditRX.Text:= FloatToStrF(Credit,ffNumber,14,2) ;

  OldCreditCRX:= PrintReportClientfrxRprt.FindObject('OldCreditCRX') as TfrxMemoView;
  OldCreditCRX.Text:= FloatToStrF(OldCredit,ffNumber,14,2) ;

  NomCRX:= PrintReportClientfrxRprt.FindObject('NomCRX') as TfrxMemoView;
  NomCRX.Text:= NomC;

  AdrCRX:= PrintReportClientfrxRprt.FindObject('AdrCRX') as TfrxMemoView;
  AdrCRX.Text:= AdrC ;

  TelCRX:= PrintReportClientfrxRprt.FindObject('TelCRX') as TfrxMemoView;
  TelCRX.Text:= TelC +' / '+TelC2 ;


  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;


  end;



procedure TFSplashPrintReport.GettingDataFourS;
var
  PreiodRX,Agent,CreditRX,NomFRX,AdrFRX,TelFRX,OldCreditFRX: TfrxMemoView;
  CodeF : Integer;
  Credit,OldCredit: Double;
  NomF,AdrF,TelF,TelF2 : string;
begin

  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;
  mainform.SQLQuery.sql.Text:='SELECT code_f,nom_f,adr_f, mob_f,mob2_f, credit_f,oldcredit_f FROM fournisseur WHERE nom_f LIKE '+ QuotedStr(NameReportPCbx.Text);
  MainForm.SQLQuery.Active:= True;

 if (MainForm.SQLQuery.IsEmpty = False) AND (MainForm.SQLQuery.FieldByName('code_f').AsInteger <> 0) then
 begin
  CodeF:=  MainForm.SQLQuery.FieldByName('code_f').AsInteger;
  Credit:= MainForm.SQLQuery.FieldByName('credit_f').AsCurrency;
  OldCredit:= MainForm.SQLQuery.FieldByName('oldcredit_f').AsCurrency;
  NomF:=   MainForm.SQLQuery.FieldByName('nom_f').AsString;
  AdrF:=   MainForm.SQLQuery.FieldByName('adr_f').AsString;
  TelF:=   MainForm.SQLQuery.FieldByName('mob_f').AsString;
  TelF2:=  MainForm.SQLQuery.FieldByName('mob2_f').AsString;

 end;


    DataModuleF.FourSituationQR.Close();
    DataModuleF.FourSituationQR.ParamByName('CodeF').AsInteger := CodeF;
    DataModuleF.FourSituationQR.ParamByName('DateStartF').AsDate := DateStartReportPD.Date;
    DataModuleF.FourSituationQR.ParamByName('DateEndF').AsDate := DateEndReportPD.Date;
    DataModuleF.FourSituationQR.Open();



  PreiodRX:= PrintReportFourfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartReportPD.Date) + ' au ' + DateToStr(DateEndReportPD.Date) ;
  Agent:= PrintReportFourfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

  CreditRX:= PrintReportFourfrxRprt.FindObject('CreditRX') as TfrxMemoView;
  CreditRX.Text:= FloatToStrF(Credit,ffNumber,14,2) ;

  OldCreditFRX:= PrintReportFourfrxRprt.FindObject('OldCreditFRX') as TfrxMemoView;
  OldCreditFRX.Text:= FloatToStrF(OldCredit,ffNumber,14,2) ;

  NomFRX:= PrintReportFourfrxRprt.FindObject('NomFRX') as TfrxMemoView;
  NomFRX.Text:= NomF;

  AdrFRX:= PrintReportFourfrxRprt.FindObject('AdrFRX') as TfrxMemoView;
  AdrFRX.Text:= AdrF ;

  TelFRX:= PrintReportFourfrxRprt.FindObject('TelFRX') as TfrxMemoView;
  TelFRX.Text:= TelF +' / '+TelF2 ;


  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;



end;



procedure TFSplashPrintReport.GettingDataProduitS;
var
  PreiodRX,Agent,NomPRX,RefPRX,QutActuelPRX,QutIniPRX,LastPrixAPRX,LastPrixVDPRX,LastPrixVRPRX,
  LastPrixVGPRX,LastPrixVA1PRX,LastPrixVA2PRX: TfrxMemoView;
  AllInsPRX, AllOutsPRX, QutInPRX, QutOutPRX, MontantTotalInPRX, MontantTotalOutPRX,
  NQutMovedPRX,AllPTOutsPRX,QutPTOutPRX,MontantTotalPTOutPRX : TfrxMemoView;
  CodeP : Integer;
  QutActuel,QutIni,LastPrixA,LastPrixVD,LastPrixVR,LastPrixVG,LastPrixVA1,LastPrixVA2: Double;
  AllIns, AllOuts,AllPTOuts : Integer;
  QutIn, QutOut, MontantTotalIn, MontantTotalOut,NQutMoved,QutPTOut,MontantTotalPTOut  : Double;
  NomP,RefP,TelF,TelF2 : string;
  tempSQL,tempSQL2 : WideString;
begin

  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;
  mainform.SQLQuery.sql.Text:='SELECT code_p, refer_p, nom_p, qut_p, prixht_p, prixvd_p, prixvr_p, prixvg_p, prixva_p, prixva2_p, qutini_p '
                              +' FROM produit WHERE nom_p LIKE '+ QuotedStr(NameReportPCbx.Text);
  MainForm.SQLQuery.Active:= True;

 if (MainForm.SQLQuery.IsEmpty = False) AND (MainForm.SQLQuery.FieldByName('code_p').AsInteger <> 0) then
 begin
  CodeP:=  MainForm.SQLQuery.FieldByName('code_p').AsInteger;
  NomP:=   MainForm.SQLQuery.FieldByName('nom_p').AsString;
  RefP:=   MainForm.SQLQuery.FieldByName('refer_p').AsString;
  QutActuel:=   (MainForm.SQLQuery.FieldByName('qut_p').AsFloat + MainForm.SQLQuery.FieldByName('qutini_p').AsFloat);
  QutIni:=      MainForm.SQLQuery.FieldByName('qutini_p').AsFloat;
  LastPrixA:= MainForm.SQLQuery.FieldByName('prixht_p').AsCurrency;
  LastPrixVD:= MainForm.SQLQuery.FieldByName('prixvd_p').AsCurrency;
  LastPrixVR:= MainForm.SQLQuery.FieldByName('prixvr_p').AsCurrency;
  LastPrixVG:= MainForm.SQLQuery.FieldByName('prixvg_p').AsCurrency;
  LastPrixVA1:= MainForm.SQLQuery.FieldByName('prixva_p').AsCurrency;
  LastPrixVA2:= MainForm.SQLQuery.FieldByName('prixva2_p').AsCurrency;

 end;

    DataModuleF.ProduitMovementQR.Close();
    DataModuleF.ProduitMovementQR.ParamByName('CodeP').AsInteger := CodeP;
    DataModuleF.ProduitMovementQR.ParamByName('DateStartP').AsDate := DateStartReportPD.Date;
    DataModuleF.ProduitMovementQR.ParamByName('DateEndP').AsDate := DateEndReportPD.Date;
    DataModuleF.ProduitMovementQR.Open();

    tempSQL:= DataModuleF.ProduitMovementQR.SQL.Text;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Text:=' SELECT '
    +' COUNT(Qut) FILTER (WHERE Qut > 0 AND Source <> ''PT'')   AS AllIns, '
    +' COUNT(Qut) FILTER (WHERE Qut < 0 AND Source <> ''PT'')   AS AllOuts, '
    +' SUM(Qut) FILTER (WHERE Qut > 0 AND Source <> ''PT'')     AS QutIn, '
    +' SUM(Qut) FILTER (WHERE Qut < 0 AND Source <> ''PT'')     AS QutOut, '
    +' SUM(Montant) FILTER (WHERE Qut > 0 AND Source <> ''PT'') AS MontantTotalIn, '
    +' SUM(Montant) FILTER (WHERE Qut < 0 AND Source <> ''PT'') AS MontantTotalOut, '
    +' COUNT(Qut) FILTER (WHERE Qut < 0 AND Source = ''PT'')    AS AllPTOuts, '
    +' SUM(Qut) FILTER (WHERE Qut < 0 AND Source = ''PT'')      AS QutPTOut, '
    +' SUM(Montant) FILTER (WHERE Qut < 0 AND Source = ''PT'')  AS MontantTotalPTOut '
    +' FROM ( '
    + tempSQL
    +' ) as MVP '
    ;
    MainForm.SQLQuery3.ParamByName('CodeP').AsInteger := CodeP;
    MainForm.SQLQuery3.ParamByName('DateStartP').AsDate := DateStartReportPD.Date;
    MainForm.SQLQuery3.ParamByName('DateEndP').AsDate := DateEndReportPD.Date;
    MainForm.SQLQuery3.Active:= True;

    AllIns:=            MainForm.SQLQuery3.FieldByName('AllIns').AsInteger;
    AllOuts:=           MainForm.SQLQuery3.FieldByName('AllOuts').AsInteger;
    QutIn:=             MainForm.SQLQuery3.FieldByName('QutIn').AsCurrency;
    QutOut:=            MainForm.SQLQuery3.FieldByName('QutOut').AsCurrency;
    MontantTotalIn:=    MainForm.SQLQuery3.FieldByName('MontantTotalIn').AsCurrency;
    MontantTotalOut:=   MainForm.SQLQuery3.FieldByName('MontantTotalOut').AsCurrency;
    AllPTOuts:=         MainForm.SQLQuery3.FieldByName('AllPTOuts').AsInteger;
    QutPTOut:=          MainForm.SQLQuery3.FieldByName('QutPTOut').AsCurrency;
    MontantTotalPTOut:= MainForm.SQLQuery3.FieldByName('MontantTotalPTOut').AsCurrency;

    tempSQL2:= MainForm.SQLQuery3.SQL.Text;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Text:=' SELECT '
    +' SUM( QutIn   + (QutOut*-1) ) As NQutMoved '
    +' FROM ( '
    + tempSQL2
    +') AS QUTALLT '
    ;
    MainForm.SQLQuery3.Active:= True;

    NQutMoved:= MainForm.SQLQuery3.FieldByName('NQutMoved').AsCurrency;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Clear;


  PreiodRX:= PrintReportProduitfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartReportPD.Date) + ' au ' + DateToStr(DateEndReportPD.Date) ;
  Agent:= PrintReportProduitfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

  NomPRX:= PrintReportProduitfrxRprt.FindObject('NomPRX') as TfrxMemoView;
  NomPRX.Text:= NomP;

  RefPRX:= PrintReportProduitfrxRprt.FindObject('RefPRX') as TfrxMemoView;
  RefPRX.Text:= RefP ;

  QutActuelPRX:= PrintReportProduitfrxRprt.FindObject('QutActuelPRX') as TfrxMemoView;
  QutActuelPRX.Text:= FloatToStrF(QutActuel,ffNumber,14,2);

  QutIniPRX:= PrintReportProduitfrxRprt.FindObject('QutIniPRX') as TfrxMemoView;
  QutIniPRX.Text:= FloatToStrF(QutIni,ffNumber,14,2);

  LastPrixAPRX:= PrintReportProduitfrxRprt.FindObject('LastPrixAPRX') as TfrxMemoView;
  LastPrixAPRX.Text:= FloatToStrF(LastPrixA,ffNumber,14,2);

  LastPrixVDPRX:= PrintReportProduitfrxRprt.FindObject('LastPrixVDPRX') as TfrxMemoView;
  LastPrixVDPRX.Text:= FloatToStrF(LastPrixVD,ffNumber,14,2);

  LastPrixVRPRX:= PrintReportProduitfrxRprt.FindObject('LastPrixVRPRX') as TfrxMemoView;
  LastPrixVRPRX.Text:= FloatToStrF(LastPrixVR,ffNumber,14,2);

  LastPrixVGPRX:= PrintReportProduitfrxRprt.FindObject('LastPrixVGPRX') as TfrxMemoView;
  LastPrixVGPRX.Text:= FloatToStrF(LastPrixVG,ffNumber,14,2);

  LastPrixVA1PRX:= PrintReportProduitfrxRprt.FindObject('LastPrixVA1PRX') as TfrxMemoView;
  LastPrixVA1PRX.Text:= FloatToStrF(LastPrixVA1,ffNumber,14,2);

  LastPrixVA2PRX:= PrintReportProduitfrxRprt.FindObject('LastPrixVA2PRX') as TfrxMemoView;
  LastPrixVA2PRX.Text:= FloatToStrF(LastPrixVA2,ffNumber,14,2);

  //--------------------

  AllInsPRX:= PrintReportProduitfrxRprt.FindObject('AllInsPRX') as TfrxMemoView;
  AllInsPRX.Text:= IntToStr(AllIns);

  AllOutsPRX:= PrintReportProduitfrxRprt.FindObject('AllOutsPRX') as TfrxMemoView;
  AllOutsPRX.Text:= IntToStr(AllOuts);

  QutInPRX:= PrintReportProduitfrxRprt.FindObject('QutInPRX') as TfrxMemoView;
  QutInPRX.Text:= FloatToStrF(QutIn,ffNumber,14,2);

  QutOutPRX:= PrintReportProduitfrxRprt.FindObject('QutOutPRX') as TfrxMemoView;
  QutOutPRX.Text:= FloatToStrF(QutOut,ffNumber,14,2);

  MontantTotalInPRX:= PrintReportProduitfrxRprt.FindObject('MontantTotalInPRX') as TfrxMemoView;
  MontantTotalInPRX.Text:= FloatToStrF(MontantTotalIn,ffNumber,14,2);

  MontantTotalOutPRX:= PrintReportProduitfrxRprt.FindObject('MontantTotalOutPRX') as TfrxMemoView;
  MontantTotalOutPRX.Text:= FloatToStrF(MontantTotalOut,ffNumber,14,2);

  NQutMovedPRX:= PrintReportProduitfrxRprt.FindObject('NQutMovedPRX') as TfrxMemoView;
  NQutMovedPRX.Text:= FloatToStrF(NQutMoved,ffNumber,14,2);


  AllPTOutsPRX:= PrintReportProduitfrxRprt.FindObject('AllPTOutsPRX') as TfrxMemoView;
  AllPTOutsPRX.Text:= IntToStr(AllPTOuts);

  QutPTOutPRX:= PrintReportProduitfrxRprt.FindObject('QutPTOutPRX') as TfrxMemoView;
  QutPTOutPRX.Text:= FloatToStrF(QutPTOut,ffNumber,14,2);

  MontantTotalPTOutPRX:= PrintReportProduitfrxRprt.FindObject('MontantTotalPTOutPRX') as TfrxMemoView;
  MontantTotalPTOutPRX.Text:= FloatToStrF(MontantTotalPTOut,ffNumber,14,2);


  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;



end;


procedure TFSplashPrintReport.GettingDataAllProduitS();
var
  PreiodRX,Agent,TotalQutActuelPRX,TotalQutIniPRX,ValueStockPRX,AllInsPRX, AllOutsPRX, QutInPRX, QutOutPRX, MontantTotalInPRX, MontantTotalOutPRX,
  NQutMovedPRX,AllPTOutsPRX,QutPTOutPRX,MontantTotalPTOutPRX : TfrxMemoView;
  AllIns, AllOuts,AllPTOuts : Integer;
  TotalQutActuel,TotalQutIni,ValueStock, QutIn, QutOut, MontantTotalIn, MontantTotalOut,NQutMoved,QutPTOut,MontantTotalPTOut  : Double;
  tempSQL,tempSQL2 : WideString;
begin

    DataModuleF.AllProduitMovementQR.Close();
    DataModuleF.AllProduitMovementQR.ParamByName('DateStartP').AsDate := DateStartReportPD.Date;
    DataModuleF.AllProduitMovementQR.ParamByName('DateEndP').AsDate := DateEndReportPD.Date;
    DataModuleF.AllProduitMovementQR.Open();

    tempSQL:= DataModuleF.AllProduitMovementQR.SQL.Text;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Text:=' SELECT '
    +' COUNT(Qut) FILTER (WHERE Qut > 0 AND Source <> ''PT'')   AS AllIns, '
    +' COUNT(Qut) FILTER (WHERE Qut < 0 AND Source <> ''PT'')   AS AllOuts, '
    +' SUM(Qut) FILTER (WHERE Qut > 0 AND Source <> ''PT'')     AS QutIn, '
    +' SUM(Qut) FILTER (WHERE Qut < 0 AND Source <> ''PT'')     AS QutOut, '
    +' SUM(Montant) FILTER (WHERE Qut > 0 AND Source <> ''PT'') AS MontantTotalIn, '
    +' SUM(Montant) FILTER (WHERE Qut < 0 AND Source <> ''PT'') AS MontantTotalOut, '
    +' COUNT(Qut) FILTER (WHERE Qut < 0 AND Source = ''PT'')    AS AllPTOuts, '
    +' SUM(Qut) FILTER (WHERE Qut < 0 AND Source = ''PT'')      AS QutPTOut, '
    +' SUM(Montant) FILTER (WHERE Qut < 0 AND Source = ''PT'')  AS MontantTotalPTOut '
    +' FROM ( '
    + tempSQL
    +' ) as MVP '
    ;
    MainForm.SQLQuery3.ParamByName('DateStartP').AsDate := DateStartReportPD.Date;
    MainForm.SQLQuery3.ParamByName('DateEndP').AsDate := DateEndReportPD.Date;
    MainForm.SQLQuery3.Active:= True;

    AllIns:=            MainForm.SQLQuery3.FieldByName('AllIns').AsInteger;
    AllOuts:=           MainForm.SQLQuery3.FieldByName('AllOuts').AsInteger;
    QutIn:=             MainForm.SQLQuery3.FieldByName('QutIn').AsCurrency;
    QutOut:=            MainForm.SQLQuery3.FieldByName('QutOut').AsCurrency;
    MontantTotalIn:=    MainForm.SQLQuery3.FieldByName('MontantTotalIn').AsCurrency;
    MontantTotalOut:=   MainForm.SQLQuery3.FieldByName('MontantTotalOut').AsCurrency;
    AllPTOuts:=         MainForm.SQLQuery3.FieldByName('AllPTOuts').AsInteger;
    QutPTOut:=          MainForm.SQLQuery3.FieldByName('QutPTOut').AsCurrency;
    MontantTotalPTOut:= MainForm.SQLQuery3.FieldByName('MontantTotalPTOut').AsCurrency;

    tempSQL2:= MainForm.SQLQuery3.SQL.Text;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Text:=' SELECT '
    +' SUM( QutIn   + (QutOut*-1) ) As NQutMoved '
    +' FROM ( '
    + tempSQL2
    +') AS QUTALLT '
    ;
    MainForm.SQLQuery3.Active:= True;

    NQutMoved:= MainForm.SQLQuery3.FieldByName('NQutMoved').AsCurrency;


    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Text:=
    ' SELECT SUM(qutini_p) as qutini_p,SUM(qutini_p + qut_p) as qut, SUM((qutini_p + qut_p) * prixht_p) as valuestock '
    +' FROM produit WHERE  (qutini_p + qut_p) > 0 ';
    MainForm.SQLQuery3.Active:= True;

    TotalQutIni   := MainForm.SQLQuery3.FieldByName('qutini_p').AsFloat;
    TotalQutActuel:= MainForm.SQLQuery3.FieldByName('qut').AsFloat;
    ValueStock    := MainForm.SQLQuery3.FieldByName('valuestock').AsFloat;

    MainForm.SQLQuery3.Active:= False;
    MainForm.SQLQuery3.SQL.Clear;


  PreiodRX:= PrintReportAllProduitfrxRprt.FindObject('PreiodRX') as TfrxMemoView;
  PreiodRX.Text:= 'Période du : ' + DateToStr(DateStartReportPD.Date) + ' au ' + DateToStr(DateEndReportPD.Date) ;
  Agent:= PrintReportAllProduitfrxRprt.FindObject('Agent') as TfrxMemoView;
  Agent.Text:= MainForm.UserNameLbl.Caption ;

    //--------------------

  AllInsPRX:= PrintReportAllProduitfrxRprt.FindObject('AllInsPRX') as TfrxMemoView;
  AllInsPRX.Text:= IntToStr(AllIns);

  AllOutsPRX:= PrintReportAllProduitfrxRprt.FindObject('AllOutsPRX') as TfrxMemoView;
  AllOutsPRX.Text:= IntToStr(AllOuts);

  QutInPRX:= PrintReportAllProduitfrxRprt.FindObject('QutInPRX') as TfrxMemoView;
  QutInPRX.Text:= FloatToStrF(QutIn,ffNumber,14,2);

  QutOutPRX:= PrintReportAllProduitfrxRprt.FindObject('QutOutPRX') as TfrxMemoView;
  QutOutPRX.Text:= FloatToStrF(QutOut,ffNumber,14,2);

  MontantTotalInPRX:= PrintReportAllProduitfrxRprt.FindObject('MontantTotalInPRX') as TfrxMemoView;
  MontantTotalInPRX.Text:= FloatToStrF(MontantTotalIn,ffNumber,14,2);

  MontantTotalOutPRX:= PrintReportAllProduitfrxRprt.FindObject('MontantTotalOutPRX') as TfrxMemoView;
  MontantTotalOutPRX.Text:= FloatToStrF(MontantTotalOut,ffNumber,14,2);

  NQutMovedPRX:= PrintReportAllProduitfrxRprt.FindObject('NQutMovedPRX') as TfrxMemoView;
  NQutMovedPRX.Text:= FloatToStrF(NQutMoved,ffNumber,14,2);

  AllPTOutsPRX:= PrintReportAllProduitfrxRprt.FindObject('AllPTOutsPRX') as TfrxMemoView;
  AllPTOutsPRX.Text:= IntToStr(AllPTOuts);

  QutPTOutPRX:= PrintReportAllProduitfrxRprt.FindObject('QutPTOutPRX') as TfrxMemoView;
  QutPTOutPRX.Text:= FloatToStrF(QutPTOut,ffNumber,14,2);

  MontantTotalPTOutPRX:= PrintReportAllProduitfrxRprt.FindObject('MontantTotalPTOutPRX') as TfrxMemoView;
  MontantTotalPTOutPRX.Text:= FloatToStrF(MontantTotalPTOut,ffNumber,14,2);

  TotalQutIniPRX:= PrintReportAllProduitfrxRprt.FindObject('TotalQutIniPRX') as TfrxMemoView;
  TotalQutIniPRX.Text:= FloatToStrF(TotalQutIni,ffNumber,14,2);

  TotalQutActuelPRX:= PrintReportAllProduitfrxRprt.FindObject('TotalQutActuelPRX') as TfrxMemoView;
  TotalQutActuelPRX.Text:= FloatToStrF(TotalQutActuel,ffNumber,14,2);

  ValueStockPRX:= PrintReportAllProduitfrxRprt.FindObject('ValueStockPRX') as TfrxMemoView;
  ValueStockPRX.Text:= FloatToStrF(ValueStock,ffNumber,14,2);



  MainForm.SQLQuery.Active:= False;
  MainForm.SQLQuery.SQL.clear;


end;


procedure TFSplashPrintReport.ListClientFourGBtnClick(Sender: TObject);
Var I:Integer;
begin
  //-------- use this code to start creating th form-----//
  FastProduitsListF := TFastProduitsListF.Create(FSplashPrintReport);

  //This tag = 0 id four showing client list in FastproduitF
  if Tag = 0 then
  begin

    MainForm.FDQuery2.Active:=False;
    MainForm.FDQuery2.SQL.Clear;
    MainForm.FDQuery2.SQL.TExt:= 'SELECT code_c,nom_c,activite_c,fix_c,mob_c,adr_c,credit_c FROM client';
    MainForm.FDQuery2.IndexFieldNames:='code_c';
    MainForm.FDQuery2.Active:=True;

    for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
    begin
      FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
    end;
    
    //Change the dataSet
    FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N°';
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

    FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Client';
    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

    FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activité';
    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='fix_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='Téléphone';
    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='mob_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Téléphone';
    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 130;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='adr_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Adresse';
    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 150;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[6].FieldName:='credit_c';
    FastProduitsListF.ProduitsListDBGridEh.Columns[6].Title.Caption:='Crédit';
    FastProduitsListF.ProduitsListDBGridEh.Columns[6].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[6].Width:= 130;;
  
  
    FastProduitsListF.ProduitsListDBGridEh.Refresh;

  //-------- Show the splash screan for the produit familly to add new one---------//
    FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
    FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

    FastProduitsListF.Caption:= 'Liste des Clients';
    FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
    FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
    FastProduitsListF.ProduitsListDBGridEh.Options:=
    FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
    FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
    FastProduitsListF.ResearchProduitsEdt.Width:= 431;

    FastProduitsListF.Tag := 5;
    FastProduitsListF.Show;
    FastProduitsListF.ResearchProduitsEdt.SetFocus;
  
  
  end;

  //This tag = 1 id four showing Fours list in FastproduitF
  if Tag = 1 then
  begin

    MainForm.FDQuery2.Active:=False;
    MainForm.FDQuery2.SQL.Clear;
    MainForm.FDQuery2.SQL.TExt:= 'SELECT code_f,nom_f,fix_f,mob_f,adr_f,credit_f FROM fournisseur';
    MainForm.FDQuery2.IndexFieldNames:='code_f';
    MainForm.FDQuery2.Active:=True;

    for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
    begin
      FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
    end;
    
    //Change the dataSet
    FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_f';
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N°';
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;

    FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_f';
    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Fournisseur';
    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;

  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activité';
  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='fix_f';
    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Téléphone';
    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='mob_f';
    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='Téléphone';
    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='adr_f';
    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Adresse';
    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 150;;

    FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='credit_f';
    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Crédit';
    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 130;;
  
  
    FastProduitsListF.ProduitsListDBGridEh.Refresh;

  //-------- Show the splash screan for the produit familly to add new one---------//
    FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
    FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

    FastProduitsListF.Caption:= 'Liste des Fournisseurs';
    FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
    FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
    FastProduitsListF.ProduitsListDBGridEh.Options:=
    FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
    FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
    FastProduitsListF.ResearchProduitsEdt.Width:= 431;

    FastProduitsListF.Tag := 3;
    FastProduitsListF.Show;
    FastProduitsListF.ResearchProduitsEdt.SetFocus;
  
  
    
  end;


  //This tag = 2 id four showing produit list in FastproduitF
  if Tag = 2 then
  begin

//    MainForm.FDQuery2.Active:=False;
//    MainForm.FDQuery2.SQL.Clear;
//    MainForm.FDQuery2.SQL.TExt:= 'SELECT code_f,nom_f,fix_f,mob_f,adr_f,credit_f FROM fournisseur';
//    MainForm.FDQuery2.IndexFieldNames:='code_f';
//    MainForm.FDQuery2.Active:=True;
//
//    for I := 0 to FastProduitsListF.ProduitsListDBGridEh.Columns.Count -1 do
//    begin
//      FastProduitsListF.ProduitsListDBGridEh.Columns[I].Visible:= False;
//    end;

    //Change the dataSet
//    FastProduitsListF.ProduitListDataS.DataSet:= MainForm.FDQuery2;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[0].FieldName:='code_f';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Title.Caption:='N°';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Visible:= True;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[0].Width:= 70;
//
//    FastProduitsListF.ProduitsListDBGridEh.Columns[1].FieldName:='nom_f';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Title.Caption:='Nom du Fournisseur';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Visible:= True;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[1].Width:= 300;
//
//  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='activite_c';
//  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Activité';
//  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
//  //  FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;
//
//    FastProduitsListF.ProduitsListDBGridEh.Columns[2].FieldName:='fix_f';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Title.Caption:='Téléphone';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Visible:= True;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[2].Width:= 130;;
//
//    FastProduitsListF.ProduitsListDBGridEh.Columns[3].FieldName:='mob_f';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Title.Caption:='Téléphone';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Visible:= True;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[3].Width:= 130;;
//
//    FastProduitsListF.ProduitsListDBGridEh.Columns[4].FieldName:='adr_f';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Title.Caption:='Adresse';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Visible:= True;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[4].Width:= 150;;
//
//    FastProduitsListF.ProduitsListDBGridEh.Columns[5].FieldName:='credit_f';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Title.Caption:='Crédit';
//    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Visible:= True;
//    FastProduitsListF.ProduitsListDBGridEh.Columns[5].Width:= 130;;
//
//
//    FastProduitsListF.ProduitsListDBGridEh.Refresh;

  //-------- Show the splash screan for the produit familly to add new one---------//
    FastProduitsListF.Left := (Screen.Width div 2) - (FastProduitsListF.Width div 2);
    FastProduitsListF.Top := (Screen.Height div 2) - (FastProduitsListF.Height div 2);

//    FastProduitsListF.Caption:= 'Liste des Fournisseurs';
//    FastProduitsListF.ResherchPARDesProduitsRdioBtn.Visible:= False;
//    FastProduitsListF.ResherchPARDCodProduitsRdioBtn.Visible:= False;
    FastProduitsListF.ProduitsListDBGridEh.Options:=
    FastProduitsListF.ProduitsListDBGridEh.Options -[dgMultiSelect] ; //flip + and -  for A
    FastProduitsListF.ProduitsListDBGridEh.IndicatorOptions:=[];
//    FastProduitsListF.ResearchProduitsEdt.Width:= 431;

    FastProduitsListF.Tag := 9;
    FastProduitsListF.Show;
    FastProduitsListF.ResearchProduitsEdt.SetFocus;



  end;


end;

procedure TFSplashPrintReport.PreviewReportPBtnClick(Sender: TObject);
begin

 if NameReportPCbx.Text <> '' then
 begin
  //This tag = 0 is four showing client list
  if Tag = 0 then
  begin

     GettingDataClientS;

    PrintReportClientfrxRprt.PrepareReport;
    PrintReportClientfrxRprt.ShowReport;

  end;

  //This tag = 1 is four showing four list
  if Tag = 1 then
  begin

     GettingDataFourS;

    PrintReportFourfrxRprt.PrepareReport;
    PrintReportFourfrxRprt.ShowReport;

  end;

  //This tag = 2 is four showing produit list
  if Tag = 2 then
  begin

     GettingDataProduitS;

    PrintReportProduitfrxRprt.PrepareReport;
    PrintReportProduitfrxRprt.ShowReport;

  end;

 end;


   //This tag = 3 is four showing All produit list
  if Tag = 3 then
  begin

     GettingDataAllProduitS;

    PrintReportAllProduitfrxRprt.PrepareReport;
    PrintReportAllProduitfrxRprt.ShowReport;

  end;


 end;




procedure TFSplashPrintReport.PrintReportPBtnClick(Sender: TObject);
begin
 if NameReportPCbx.Text <> '' then
 begin
  if Tag = 0 then
  begin

     GettingDataClientS;

    PrintReportClientfrxRprt.PrepareReport;
    PrintReportClientfrxRprt.Print;

  end;

  if Tag = 1 then
  begin

     GettingDataFourS;

    PrintReportFourfrxRprt.PrepareReport;
    PrintReportFourfrxRprt.Print;

  end;


   //This tag = 2 is four showing produit list
  if Tag = 2 then
  begin

     GettingDataProduitS;

    PrintReportProduitfrxRprt.PrepareReport;
    PrintReportProduitfrxRprt.Print;

  end;


     //This tag = 3 is four showing All produit list
  if Tag = 3 then
  begin

     GettingDataAllProduitS;

    PrintReportAllProduitfrxRprt.PrepareReport;
    PrintReportAllProduitfrxRprt.Print;

  end;

 end;
end;

procedure TFSplashPrintReport.FormCreate(Sender: TObject);
begin
 GrayFormsPrintReport  ;

 Height:= 211;
 Width:=446;

end;

procedure TFSplashPrintReport.FormDestroy(Sender: TObject);
begin
NormalFormsPrintReport;
end;

procedure TFSplashPrintReport.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

    CancelReportPBtnClick(Sender);

 end;

  if key = #13 then
 begin
   key := #0;

//   OKAddCompteSBtnClick(Sender);

 end;
end;

procedure TFSplashPrintReport.FormShow(Sender: TObject);
begin
  DateStartReportPD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),01);
  DateEndReportPD.Date:=EncodeDate (YearOf(Now),MonthOf(Now),DayOf(Now));

  //This Tga = 3 is for Movment of all produit
  if Tag <> 3 then
  begin
    NameReportPCbxChange(Sender);
  end;
   end;

end.
