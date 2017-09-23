program ProStock;



uses
  Vcl.Forms,
  Windows,
  SysUtils,
  UMainF in 'UMainF.pas' {MainForm},
  UClientsList in 'UClientsList.pas' {ClientListF},
  Vcl.Themes,
  Vcl.Styles,
  UClientGestion in 'UClientGestion.pas' {ClientGestionF},
  USplash in 'USplash.pas' {FSplash},
  UFournisseurList in 'UFournisseurList.pas' {FournisseurListF},
  UFournisseurGestion in 'UFournisseurGestion.pas' {FournisseurGestionF},
  UProduitsList in 'UProduitsList.pas' {ProduitsListF},
  UProduitGestion in 'UProduitGestion.pas' {ProduitGestionF},
  USplashAddUnite in 'USplashAddUnite.pas' {FSplashAddUnite},
  USplashAddCodeBarre in 'USplashAddCodeBarre.pas' {FSplashAddCodeBarre},
  UBonRec in 'UBonRec.pas' {BonRecF},
  UBonRecGestion in 'UBonRecGestion.pas' {BonRecGestionF},
  UBonLivGestion in 'UBonLivGestion.pas' {BonLivGestionF},
  UBonLiv in 'UBonLiv.pas' {BonLivF},
  UComptoir in 'UComptoir.pas' {BonCtrGestionF},
  UFastProduitsList in 'UFastProduitsList.pas' {FastProduitsListF},
  UModePaieList in 'UModePaieList.pas' {ModePaieListF},
  USplashAddCompte in 'USplashAddCompte.pas' {FSplashAddCompte},
  USplashVersement in 'USplashVersement.pas' {FSplashVersement},
  UBonFacV in 'UBonFacV.pas' {BonFacVF},
  UBonFacVGestion in 'UBonFacVGestion.pas' {BonFacVGestionF},
  UBonFacA in 'UBonFacA.pas' {BonFacAF},
  UBonFacAGestion in 'UBonFacAGestion.pas' {BonFacAGestionF},
  UBonCtr in 'UBonCtr.pas' {BonCtrF},
  UCaisseList in 'UCaisseList.pas' {CaisseListF},
  UBankList in 'UBankList.pas' {BankListF},
  UUsersList in 'UUsersList.pas' {UsersListF},
  UUsersGestion in 'UUsersGestion.pas' {UsersGestionF},
  UReglementFList in 'UReglementFList.pas' {ReglementFListF},
  UReglementCGestion in 'UReglementCGestion.pas' {ReglementCGestionF},
  UReglementCList in 'UReglementCList.pas' {ReglementCListF},
  UReglementFGestion in 'UReglementFGestion.pas' {ReglementFGestionF},
  StringTool in 'StringTool.pas',
  USplashPrinting in 'USplashPrinting.pas' {FSplashPrinting},
  UOptions in 'UOptions.pas' {FOptions},
  UDashboard in 'UDashboard.pas' {DashboardF},
  UDataModule in 'UDataModule.pas' {DataModuleF: TDataModule},
  UHomeF in 'UHomeF.pas' {HomeF},
  uCompteList in 'uCompteList.pas' {CompteListF},
  UFamPList in 'UFamPList.pas' {FamPListF},
  USFamPList in 'USFamPList.pas' {SFamPListF},
  ULocaleList in 'ULocaleList.pas' {LocaleListF},
  UUnitesList in 'UUnitesList.pas' {UnitesListF},
  UWorkingSplash in 'UWorkingSplash.pas' {FWorkingSplash},
  ULogoSplashForm in 'ULogoSplashForm.pas' {LogoSplashF},
  ULoginUser in 'ULoginUser.pas' {LoginUserF},
  ULogin in 'ULogin.pas' {LoginF},
  UCNotifications in 'UCNotifications.pas' {CNotificationsF},
  UChargesFList in 'UChargesFList.pas' {ChargesFListF},
  UPertesFList in 'UPertesFList.pas' {PertesFListF},
  UChargesGestion in 'UChargesGestion.pas' {ChargesGestionF},
  UPertesGestion in 'UPertesGestion.pas' {PertesGestionF},
  UTypeChargeList in 'UTypeChargeList.pas' {TypeChargeListF},
  USTypeChargeList in 'USTypeChargeList.pas' {STypeChargeListF},
  UTypePerteList in 'UTypePerteList.pas' {TypePerteListF},
  UBonFacPGestion in 'UBonFacPGestion.pas' {BonFacPGestionF},
  UBonFacP in 'UBonFacP.pas' {BonFacPF},
  UTransferComptesGestion in 'UTransferComptesGestion.pas' {TransferComptesGestionF},
  UTransferListGestion in 'UTransferListGestion.pas' {TransferListGestionF},
  UPerissableProduit in 'UPerissableProduit.pas' {PerissableProduitF},
  UAbout in 'UAbout.pas' {AboutF},
  UCamera in 'UCamera.pas' {CameraF};

{$R *.res}

procedure RestoreWindow(MainForm : string);
var
   Wnd,
   App : HWND;

begin
     Wnd := FindWindow(PChar(MainForm), nil);
     if (Wnd <> 0)
        then begin // Set Window to foreground
             App := GetWindowLong(Wnd, GWL_HWNDPARENT);
             if IsIconic(App)
                then ShowWindow(App, SW_RESTORE);

             SetForegroundwindow(App);
             end;
end;

var
   Semafor     : THandle;

begin
     // Don't start twice ... if already running bring this instance to front
     Semafor := CreateSemaphore(nil, 0, 1, 'MY_APPLICATION_IS_RUNNING');
     if ((Semafor <> 0) and // application is already running
         (GetLastError = ERROR_ALREADY_EXISTS))
        then begin
             RestoreWindow('ApplicationDC');
             CloseHandle(Semafor);
             Halt;
             end;

//ReportMemoryLeaksOnShutdown:=True;
  Application.Initialize;
  Application.ShowMainForm:=False; 
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFOptions, FOptions);
  Application.CreateForm(THomeF, HomeF);
  Application.CreateForm(TFWorkingSplash, FWorkingSplash);
  Application.CreateForm(TLoginF, LoginF);
  Application.Run;
end.
