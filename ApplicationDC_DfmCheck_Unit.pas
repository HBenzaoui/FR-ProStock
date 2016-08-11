unit ApplicationDC_DfmCheck_Unit;

interface

implementation

uses
  UMainF,
  UClientsList,
  UClientGestion,
  USplash,
  UFournisseurList,
  UFournisseurGestion,
  UProduitsList,
  UProduitGestion,
  USplashAddUnite,
  USplashAddCodeBarre,
  UBonRec,
  UBonRecGestion,
  UBonLivGestion,
  UBonLiv,
  UComptoir,
  UFastProduitsList,
  UModePaieList,
  USplashAddCompte,
  USplashVersement,
  UBonFacV,
  UBonFacVGestion,
  SysUtils;

procedure TestDfmFormConsistency;
begin
{ MainForm: TMainForm }
  with TMainForm(nil) do { UMainF.pas }
  begin
    TopP.ClassName; { TopP: TPanel; }
    AdvToolButton1.ClassName; { AdvToolButton1: TAdvToolButton; }
    AdvToolButton2.ClassName; { AdvToolButton2: TAdvToolButton; }
    AdvToolButton3.ClassName; { AdvToolButton3: TAdvToolButton; }
    AdvToolButton4.ClassName; { AdvToolButton4: TAdvToolButton; }
    AdvToolButton5.ClassName; { AdvToolButton5: TAdvToolButton; }
    AdvToolButton6.ClassName; { AdvToolButton6: TAdvToolButton; }
    AdvToolButton8.ClassName; { AdvToolButton8: TAdvToolButton; }
    AdvToolButton9.ClassName; { AdvToolButton9: TAdvToolButton; }
    AdvToolButton10.ClassName; { AdvToolButton10: TAdvToolButton; }
    AdvToolButton11.ClassName; { AdvToolButton11: TAdvToolButton; }
    Image2.ClassName; { Image2: TImage; }
    AdvToolButton7.ClassName; { AdvToolButton7: TAdvToolButton; }
    AdvToolButton12.ClassName; { AdvToolButton12: TAdvToolButton; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    S03.ClassName; { S03: TPanel; }
    S04.ClassName; { S04: TPanel; }
    S00.ClassName; { S00: TPanel; }
    S07.ClassName; { S07: TPanel; }
    S05.ClassName; { S05: TPanel; }
    S06.ClassName; { S06: TPanel; }
    S08.ClassName; { S08: TPanel; }
    Sbottom.ClassName; { Sbottom: TPanel; }
    STop.ClassName; { STop: TPanel; }
    Button9.ClassName; { Button9: TButton; }
    SplitView1.ClassName; { SplitView1: TSplitView; }
    sFrameBar1.ClassName; { sFrameBar1: TsFrameBar; }
    FaceP.ClassName; { FaceP: TPanel; }
    sPageControl1.ClassName; { sPageControl1: TsPageControl; }
    Button1.ClassName; { Button1: TButton; }
    Button2.ClassName; { Button2: TButton; }
    Button3.ClassName; { Button3: TButton; }
    Button4.ClassName; { Button4: TButton; }
    Button5.ClassName; { Button5: TButton; }
    Button6.ClassName; { Button6: TButton; }
    Button7.ClassName; { Button7: TButton; }
    Button8.ClassName; { Button8: TButton; }
    MainMenu1.ClassName; { MainMenu1: TMainMenu; }
    F1.ClassName; { F1: TMenuItem; }
    C2.ClassName; { C2: TMenuItem; }
    N6.ClassName; { N6: TMenuItem; }
    G1.ClassName; { G1: TMenuItem; }
    N7.ClassName; { N7: TMenuItem; }
    Q1.ClassName; { Q1: TMenuItem; }
    A1.ClassName; { A1: TMenuItem; }
    L1.ClassName; { L1: TMenuItem; }
    C1.ClassName; { C1: TMenuItem; }
    F3.ClassName; { F3: TMenuItem; }
    N1.ClassName; { N1: TMenuItem; }
    A3.ClassName; { A3: TMenuItem; }
    F4.ClassName; { F4: TMenuItem; }
    R1.ClassName; { R1: TMenuItem; }
    N2.ClassName; { N2: TMenuItem; }
    M1.ClassName; { M1: TMenuItem; }
    N3.ClassName; { N3: TMenuItem; }
    T1.ClassName; { T1: TMenuItem; }
    M2.ClassName; { M2: TMenuItem; }
    c4.ClassName; { c4: TMenuItem; }
    N13.ClassName; { N13: TMenuItem; }
    o1.ClassName; { o1: TMenuItem; }
    A2.ClassName; { A2: TMenuItem; }
    B2.ClassName; { B2: TMenuItem; }
    B3.ClassName; { B3: TMenuItem; }
    C3.ClassName; { C3: TMenuItem; }
    N8.ClassName; { N8: TMenuItem; }
    BonDeRception1.ClassName; { BonDeRception1: TMenuItem; }
    F5.ClassName; { F5: TMenuItem; }
    N9.ClassName; { N9: TMenuItem; }
    V1.ClassName; { V1: TMenuItem; }
    V2.ClassName; { V2: TMenuItem; }
    N10.ClassName; { N10: TMenuItem; }
    F6.ClassName; { F6: TMenuItem; }
    B4.ClassName; { B4: TMenuItem; }
    B5.ClassName; { B5: TMenuItem; }
    N11.ClassName; { N11: TMenuItem; }
    F7.ClassName; { F7: TMenuItem; }
    FacturedAvoirAchat1.ClassName; { FacturedAvoirAchat1: TMenuItem; }
    N12.ClassName; { N12: TMenuItem; }
    F2.ClassName; { F2: TMenuItem; }
    statistiques1.ClassName; { statistiques1: TMenuItem; }
    A4.ClassName; { A4: TMenuItem; }
    A6.ClassName; { A6: TMenuItem; }
    N4.ClassName; { N4: TMenuItem; }
    B1.ClassName; { B1: TMenuItem; }
    M3.ClassName; { M3: TMenuItem; }
    N5.ClassName; { N5: TMenuItem; }
    A5.ClassName; { A5: TMenuItem; }
    TopPanelImageListMainForma.ClassName; { TopPanelImageListMainForma: TsAlphaImageList; }
    AlphaSkinmangerMainForm.ClassName; { AlphaSkinmangerMainForm: TsSkinManager; }
    GstockdcConnection.ClassName; { GstockdcConnection: TFDConnection; }
    ClientTable.ClassName; { ClientTable: TFDQuery; }
    FDPhysPgDriverLink1.ClassName; { FDPhysPgDriverLink1: TFDPhysPgDriverLink; }
    FournisseurTable.ClassName; { FournisseurTable: TFDQuery; }
    FDGUIxWaitCursor1.ClassName; { FDGUIxWaitCursor1: TFDGUIxWaitCursor; }
    ProduitTable.ClassName; { ProduitTable: TFDQuery; }
    ProduitTablecode_p.ClassName; { ProduitTablecode_p: TIntegerField; }
    ProduitTablenom_p.ClassName; { ProduitTablenom_p: TWideStringField; }
    ProduitTablerefer_p.ClassName; { ProduitTablerefer_p: TWideStringField; }
    ProduitTablecode_u.ClassName; { ProduitTablecode_u: TSmallintField; }
    ProduitTablecode_famp.ClassName; { ProduitTablecode_famp: TIntegerField; }
    ProduitTablecode_sfamp.ClassName; { ProduitTablecode_sfamp: TIntegerField; }
    ProduitTablealertqut_p.ClassName; { ProduitTablealertqut_p: TIntegerField; }
    ProduitTablecode_f.ClassName; { ProduitTablecode_f: TIntegerField; }
    ProduitTableobser_p.ClassName; { ProduitTableobser_p: TWideMemoField; }
    ProduitTablelogo_p.ClassName; { ProduitTablelogo_p: TBlobField; }
    ProduitTableperissable_p.ClassName; { ProduitTableperissable_p: TBooleanField; }
    ProduitTabledateperiss_p.ClassName; { ProduitTabledateperiss_p: TDateField; }
    ProduitTablealertdays_p.ClassName; { ProduitTablealertdays_p: TSmallintField; }
    ProduitTableprixht_p.ClassName; { ProduitTableprixht_p: TCurrencyField; }
    ProduitTabletva_p.ClassName; { ProduitTabletva_p: TWideStringField; }
    ProduitTableprixvd_p.ClassName; { ProduitTableprixvd_p: TCurrencyField; }
    ProduitTableprixvr_p.ClassName; { ProduitTableprixvr_p: TCurrencyField; }
    ProduitTableprixvg_p.ClassName; { ProduitTableprixvg_p: TCurrencyField; }
    ProduitTableprixva_p.ClassName; { ProduitTableprixva_p: TCurrencyField; }
    ProduitTableprixva2_p.ClassName; { ProduitTableprixva2_p: TCurrencyField; }
    ProduitTablecodebar_p.ClassName; { ProduitTablecodebar_p: TWideStringField; }
    ProduitTablePrixATTC.ClassName; { ProduitTablePrixATTC: TSingleField; }
    ProduitTablePrixTTCDetail.ClassName; { ProduitTablePrixTTCDetail: TSingleField; }
    ProduitTablePrixTTCR.ClassName; { ProduitTablePrixTTCR: TSingleField; }
    ProduitTablePrixTTCG.ClassName; { ProduitTablePrixTTCG: TSingleField; }
    ProduitTablePrixTTCA.ClassName; { ProduitTablePrixTTCA: TSingleField; }
    ProduitTablePrixTTCA2.ClassName; { ProduitTablePrixTTCA2: TSingleField; }
    ProduitTablefamp.ClassName; { ProduitTablefamp: TStringField; }
    ProduitTablesfamp.ClassName; { ProduitTablesfamp: TStringField; }
    ProduitTablefourp.ClassName; { ProduitTablefourp: TStringField; }
    ProduitTablecode_l.ClassName; { ProduitTablecode_l: TIntegerField; }
    ProduitTablelocal.ClassName; { ProduitTablelocal: TStringField; }
    ProduitTableunit.ClassName; { ProduitTableunit: TStringField; }
    ProduitTableQUT.ClassName; { ProduitTableQUT: TIntegerField; }
    ProduitTablecode_barec.ClassName; { ProduitTablecode_barec: TIntegerField; }
    ProduitTablequt_p.ClassName; { ProduitTablequt_p: TFloatField; }
    ProduitTablequtmax_p.ClassName; { ProduitTablequtmax_p: TFloatField; }
    ProduitTablequtmin_p.ClassName; { ProduitTablequtmin_p: TFloatField; }
    ProduitTablequtini_p.ClassName; { ProduitTablequtini_p: TFloatField; }
    UniteTable.ClassName; { UniteTable: TFDQuery; }
    SfamproduitTable.ClassName; { SfamproduitTable: TFDQuery; }
    FamproduitTable.ClassName; { FamproduitTable: TFDQuery; }
    CodebarresTable.ClassName; { CodebarresTable: TFDQuery; }
    FournisseurTablePassif.ClassName; { FournisseurTablePassif: TFDQuery; }
    FournisseurTableActif.ClassName; { FournisseurTableActif: TFDQuery; }
    LocalisationTable.ClassName; { LocalisationTable: TFDQuery; }
    SQLQuery.ClassName; { SQLQuery: TFDQuery; }
    MainMenuImageListMainFormaa.ClassName; { MainMenuImageListMainFormaa: TsAlphaImageList; }
    Bona_recTable.ClassName; { Bona_recTable: TFDQuery; }
    Bona_recTablecode_barec.ClassName; { Bona_recTablecode_barec: TIntegerField; }
    Bona_recTabledate_barec.ClassName; { Bona_recTabledate_barec: TDateField; }
    Bona_recTabletime_barec.ClassName; { Bona_recTabletime_barec: TTimeField; }
    Bona_recTablecode_f.ClassName; { Bona_recTablecode_f: TIntegerField; }
    Bona_recTablemontht_barec.ClassName; { Bona_recTablemontht_barec: TCurrencyField; }
    rr.ClassName; { rr: TCurrencyField; }
    Bona_recTablevalider_barec.ClassName; { Bona_recTablevalider_barec: TBooleanField; }
    Bona_recTablenum_barec.ClassName; { Bona_recTablenum_barec: TWideStringField; }
    Bona_recTablefourbarec.ClassName; { Bona_recTablefourbarec: TStringField; }
    Bona_recTableMontantTVA.ClassName; { Bona_recTableMontantTVA: TCurrencyField; }
    Bona_recTableMontantVer.ClassName; { Bona_recTableMontantVer: TCurrencyField; }
    Bona_recTableobser_barec.ClassName; { Bona_recTableobser_barec: TWideMemoField; }
    Bona_recTablemonttc_barec.ClassName; { Bona_recTablemonttc_barec: TCurrencyField; }
    Bona_recTableremise_barec.ClassName; { Bona_recTableremise_barec: TCurrencyField; }
    Bona_recTablenum_cheque_barec.ClassName; { Bona_recTablenum_cheque_barec: TWideStringField; }
    Bona_recTablecode_mdpai.ClassName; { Bona_recTablecode_mdpai: TSmallintField; }
    Bona_recTablecode_cmpt.ClassName; { Bona_recTablecode_cmpt: TSmallintField; }
    Bona_recTableModePaie.ClassName; { Bona_recTableModePaie: TStringField; }
    Bona_recTableCompte.ClassName; { Bona_recTableCompte: TStringField; }
    Bona_recTableRemisePerc.ClassName; { Bona_recTableRemisePerc: TFloatField; }
    Bona_recTableNEWTTC.ClassName; { Bona_recTableNEWTTC: TCurrencyField; }
    Bona_recPlistTable.ClassName; { Bona_recPlistTable: TFDQuery; }
    Bona_recPlistTablecode_barecl.ClassName; { Bona_recPlistTablecode_barecl: TIntegerField; }
    Bona_recPlistTablecode_barec.ClassName; { Bona_recPlistTablecode_barec: TIntegerField; }
    Bona_recPlistTablequt_p.ClassName; { Bona_recPlistTablequt_p: TIntegerField; }
    Bona_recPlistTableprixht_p.ClassName; { Bona_recPlistTableprixht_p: TCurrencyField; }
    Bona_recPlistTablecond_p.ClassName; { Bona_recPlistTablecond_p: TIntegerField; }
    Bona_recPlistTablePrixATTC.ClassName; { Bona_recPlistTablePrixATTC: TCurrencyField; }
    Bona_recPlistTableMontantHT.ClassName; { Bona_recPlistTableMontantHT: TCurrencyField; }
    Bona_recPlistTableMontantTVA.ClassName; { Bona_recPlistTableMontantTVA: TCurrencyField; }
    Bona_recPlistTableMontantTTC.ClassName; { Bona_recPlistTableMontantTTC: TCurrencyField; }
    Bona_recPlistTablecode_p.ClassName; { Bona_recPlistTablecode_p: TIntegerField; }
    Bona_recPlistTablenomp.ClassName; { Bona_recPlistTablenomp: TStringField; }
    Bona_recPlistTablereferp.ClassName; { Bona_recPlistTablereferp: TStringField; }
    Bona_recPlistTabletvap.ClassName; { Bona_recPlistTabletvap: TIntegerField; }
    Bona_recPlistTableTVA.ClassName; { Bona_recPlistTableTVA: TSingleField; }
    FDQuery2.ClassName; { FDQuery2: TFDQuery; }
    FDScript1.ClassName; { FDScript1: TFDScript; }
    PanelIcons24.ClassName; { PanelIcons24: TsAlphaImageList; }
    Mode_paiementTable.ClassName; { Mode_paiementTable: TFDQuery; }
    Mode_paiementTablecode_mdpai.ClassName; { Mode_paiementTablecode_mdpai: TSmallintField; }
    Mode_paiementTablenom_mdpai.ClassName; { Mode_paiementTablenom_mdpai: TWideStringField; }
    Mode_paiementTablecode_cmpt.ClassName; { Mode_paiementTablecode_cmpt: TIntegerField; }
    CompteTable.ClassName; { CompteTable: TFDQuery; }
    CompteTablecode_cmpt.ClassName; { CompteTablecode_cmpt: TSmallintField; }
    CompteTablenom_cmpt.ClassName; { CompteTablenom_cmpt: TWideStringField; }
    CompteTablerefer_cpmt.ClassName; { CompteTablerefer_cpmt: TWideStringField; }
    CompteTablenature_cpmt.ClassName; { CompteTablenature_cpmt: TBooleanField; }
    CompteTableoldcredit_cmpt.ClassName; { CompteTableoldcredit_cmpt: TCurrencyField; }
    CompteTabledate_cpmt.ClassName; { CompteTabledate_cpmt: TDateField; }
    PanelIcons48.ClassName; { PanelIcons48: TsAlphaImageList; }
    GridIcons13.ClassName; { GridIcons13: TsAlphaImageList; }
    GridIconsMP20.ClassName; { GridIconsMP20: TsAlphaImageList; }
    Bona_recTableCredit.ClassName; { Bona_recTableCredit: TFDQuery; }
    IntegerField1.ClassName; { IntegerField1: TIntegerField; }
    DateField1.ClassName; { DateField1: TDateField; }
    TimeField1.ClassName; { TimeField1: TTimeField; }
    IntegerField2.ClassName; { IntegerField2: TIntegerField; }
    CurrencyField1.ClassName; { CurrencyField1: TCurrencyField; }
    CurrencyField2.ClassName; { CurrencyField2: TCurrencyField; }
    BooleanField1.ClassName; { BooleanField1: TBooleanField; }
    WideStringField1.ClassName; { WideStringField1: TWideStringField; }
    StringField1.ClassName; { StringField1: TStringField; }
    CurrencyField3.ClassName; { CurrencyField3: TCurrencyField; }
    CurrencyField4.ClassName; { CurrencyField4: TCurrencyField; }
    WideMemoField1.ClassName; { WideMemoField1: TWideMemoField; }
    CurrencyField5.ClassName; { CurrencyField5: TCurrencyField; }
    CurrencyField6.ClassName; { CurrencyField6: TCurrencyField; }
    WideStringField2.ClassName; { WideStringField2: TWideStringField; }
    SmallintField1.ClassName; { SmallintField1: TSmallintField; }
    SmallintField2.ClassName; { SmallintField2: TSmallintField; }
    StringField2.ClassName; { StringField2: TStringField; }
    StringField3.ClassName; { StringField3: TStringField; }
    Bonv_livTable.ClassName; { Bonv_livTable: TFDQuery; }
    Bonv_livTablecode_bvliv.ClassName; { Bonv_livTablecode_bvliv: TIntegerField; }
    Bonv_livTabledate_bvliv.ClassName; { Bonv_livTabledate_bvliv: TDateField; }
    Bonv_livTabletime_bvliv.ClassName; { Bonv_livTabletime_bvliv: TTimeField; }
    Bonv_livTablecode_c.ClassName; { Bonv_livTablecode_c: TIntegerField; }
    Bonv_livTablemontht_bvliv.ClassName; { Bonv_livTablemontht_bvliv: TCurrencyField; }
    Bonv_livTablemontver_bvliv.ClassName; { Bonv_livTablemontver_bvliv: TCurrencyField; }
    Bonv_livTablevalider_bvliv.ClassName; { Bonv_livTablevalider_bvliv: TBooleanField; }
    Bonv_livTablenum_bvliv.ClassName; { Bonv_livTablenum_bvliv: TWideStringField; }
    Bonv_livTablefourbarec.ClassName; { Bonv_livTablefourbarec: TStringField; }
    Bonv_livTableMontantTVA.ClassName; { Bonv_livTableMontantTVA: TCurrencyField; }
    Bonv_livTableMontantRes.ClassName; { Bonv_livTableMontantRes: TCurrencyField; }
    Bonv_livTableobser_bvliv.ClassName; { Bonv_livTableobser_bvliv: TWideMemoField; }
    Bonv_livTablemontttc_bvliv.ClassName; { Bonv_livTablemontttc_bvliv: TCurrencyField; }
    Bonv_livTableremise_bvliv.ClassName; { Bonv_livTableremise_bvliv: TCurrencyField; }
    Bonv_livTablenum_cheque_bvliv.ClassName; { Bonv_livTablenum_cheque_bvliv: TWideStringField; }
    Bonv_livTablecode_mdpai.ClassName; { Bonv_livTablecode_mdpai: TSmallintField; }
    Bonv_livTablecode_cmpt.ClassName; { Bonv_livTablecode_cmpt: TSmallintField; }
    Bonv_livTableModePaie.ClassName; { Bonv_livTableModePaie: TStringField; }
    Bonv_livTableCompte.ClassName; { Bonv_livTableCompte: TStringField; }
    Bonv_livTableRemisePerc.ClassName; { Bonv_livTableRemisePerc: TFloatField; }
    Bonv_livTableNEWTTC.ClassName; { Bonv_livTableNEWTTC: TCurrencyField; }
    Bonv_liv_listTable.ClassName; { Bonv_liv_listTable: TFDQuery; }
    Bonv_liv_listTablecode_bvlivl.ClassName; { Bonv_liv_listTablecode_bvlivl: TIntegerField; }
    Bonv_liv_listTablecode_bvliv.ClassName; { Bonv_liv_listTablecode_bvliv: TIntegerField; }
    Bonv_liv_listTablequt_p.ClassName; { Bonv_liv_listTablequt_p: TIntegerField; }
    Bonv_liv_listTableprixvd_p.ClassName; { Bonv_liv_listTableprixvd_p: TCurrencyField; }
    Bonv_liv_listTablecond_p.ClassName; { Bonv_liv_listTablecond_p: TIntegerField; }
    Bonv_liv_listTablePrixVTTCc.ClassName; { Bonv_liv_listTablePrixVTTCc: TCurrencyField; }
    Bonv_liv_listTableMontantHT.ClassName; { Bonv_liv_listTableMontantHT: TCurrencyField; }
    Bonv_liv_listTableMontantTVA.ClassName; { Bonv_liv_listTableMontantTVA: TCurrencyField; }
    Bonv_liv_listTableMontantTTC.ClassName; { Bonv_liv_listTableMontantTTC: TCurrencyField; }
    Bonv_liv_listTablecode_p.ClassName; { Bonv_liv_listTablecode_p: TIntegerField; }
    Bonv_liv_listTablenomp.ClassName; { Bonv_liv_listTablenomp: TStringField; }
    Bonv_liv_listTablereferp.ClassName; { Bonv_liv_listTablereferp: TStringField; }
    Bonv_liv_listTabletvap.ClassName; { Bonv_liv_listTabletvap: TIntegerField; }
    Bonv_liv_listTableTVA.ClassName; { Bonv_liv_listTableTVA: TSingleField; }
    Bona_facTable.ClassName; { Bona_facTable: TFDQuery; }
    Bona_facTablecode_bafac.ClassName; { Bona_facTablecode_bafac: TIntegerField; }
    Bona_facTabledate_bafac.ClassName; { Bona_facTabledate_bafac: TDateField; }
    Bona_facTabletime_bafac.ClassName; { Bona_facTabletime_bafac: TTimeField; }
    Bona_facTablecode_f.ClassName; { Bona_facTablecode_f: TIntegerField; }
    Bona_facTablemontht_bafac.ClassName; { Bona_facTablemontht_bafac: TCurrencyField; }
    Bona_facTablemontver_bafac.ClassName; { Bona_facTablemontver_bafac: TCurrencyField; }
    Bona_facTablevalider_bafac.ClassName; { Bona_facTablevalider_bafac: TBooleanField; }
    Bona_facTablenum_bafac.ClassName; { Bona_facTablenum_bafac: TWideStringField; }
    Bona_facTablefourbarec.ClassName; { Bona_facTablefourbarec: TStringField; }
    Bona_facTableMontantTVA.ClassName; { Bona_facTableMontantTVA: TCurrencyField; }
    Bona_facTableMontantRes.ClassName; { Bona_facTableMontantRes: TCurrencyField; }
    Bona_facTableobser_bafac.ClassName; { Bona_facTableobser_bafac: TWideMemoField; }
    Bona_facTablemontttc_bafac.ClassName; { Bona_facTablemontttc_bafac: TCurrencyField; }
    Bona_facTableremise_bafac.ClassName; { Bona_facTableremise_bafac: TCurrencyField; }
    Bona_facTablenum_cheque_bafac.ClassName; { Bona_facTablenum_cheque_bafac: TWideStringField; }
    Bona_facTablecode_mdpai.ClassName; { Bona_facTablecode_mdpai: TSmallintField; }
    Bona_facTablecode_cmpt.ClassName; { Bona_facTablecode_cmpt: TSmallintField; }
    Bona_facTableNEWTTC.ClassName; { Bona_facTableNEWTTC: TCurrencyField; }
    Bona_facTableRemisePerc.ClassName; { Bona_facTableRemisePerc: TFloatField; }
    Bona_facTableCompte.ClassName; { Bona_facTableCompte: TStringField; }
    Bona_facTableModePaie.ClassName; { Bona_facTableModePaie: TStringField; }
    Bona_fac_listTable.ClassName; { Bona_fac_listTable: TFDQuery; }
    Bona_fac_listTablecode_bafacl.ClassName; { Bona_fac_listTablecode_bafacl: TIntegerField; }
    Bona_fac_listTablecode_bafac.ClassName; { Bona_fac_listTablecode_bafac: TIntegerField; }
    Bona_fac_listTablequt_p.ClassName; { Bona_fac_listTablequt_p: TIntegerField; }
    Bona_fac_listTableprixht_p.ClassName; { Bona_fac_listTableprixht_p: TCurrencyField; }
    Bona_fac_listTablecond_p.ClassName; { Bona_fac_listTablecond_p: TIntegerField; }
    Bona_fac_listTablecode_p.ClassName; { Bona_fac_listTablecode_p: TIntegerField; }
    WilayasTable.ClassName; { WilayasTable: TFDQuery; }
    WilayasTablecode_w.ClassName; { WilayasTablecode_w: TSmallintField; }
    WilayasTablenom_w.ClassName; { WilayasTablenom_w: TWideStringField; }
    CommunesTable.ClassName; { CommunesTable: TFDQuery; }
    CommunesTablecode_cumm.ClassName; { CommunesTablecode_cumm: TSmallintField; }
    CommunesTablecodepostal_cumm.ClassName; { CommunesTablecodepostal_cumm: TIntegerField; }
    CommunesTablenom__cumm.ClassName; { CommunesTablenom__cumm: TWideStringField; }
    CommunesTablecode_w.ClassName; { CommunesTablecode_w: TSmallintField; }
    Bonv_fac_listTable.ClassName; { Bonv_fac_listTable: TFDQuery; }
    Bonv_fac_listTablecode_bvfacl.ClassName; { Bonv_fac_listTablecode_bvfacl: TIntegerField; }
    Bonv_fac_listTablecode_bvfac.ClassName; { Bonv_fac_listTablecode_bvfac: TIntegerField; }
    Bonv_fac_listTablequt_p.ClassName; { Bonv_fac_listTablequt_p: TIntegerField; }
    Bonv_fac_listTableprixht_p.ClassName; { Bonv_fac_listTableprixht_p: TCurrencyField; }
    Bonv_fac_listTablecond_p.ClassName; { Bonv_fac_listTablecond_p: TIntegerField; }
    Bonv_fac_listTablecode_p.ClassName; { Bonv_fac_listTablecode_p: TIntegerField; }
    Bonv_facTable.ClassName; { Bonv_facTable: TFDQuery; }
    Bonv_facTablecode_bvfac.ClassName; { Bonv_facTablecode_bvfac: TIntegerField; }
    Bonv_facTabledate_bvfac.ClassName; { Bonv_facTabledate_bvfac: TDateField; }
    Bonv_facTabletime_bvfac.ClassName; { Bonv_facTabletime_bvfac: TTimeField; }
    Bonv_facTablecode_c.ClassName; { Bonv_facTablecode_c: TIntegerField; }
    Bonv_facTablemontht_bvfac.ClassName; { Bonv_facTablemontht_bvfac: TCurrencyField; }
    Bonv_facTablemontver_bvfac.ClassName; { Bonv_facTablemontver_bvfac: TCurrencyField; }
    Bonv_facTablevalider_bvfac.ClassName; { Bonv_facTablevalider_bvfac: TBooleanField; }
    Bonv_facTablenum_bvfac.ClassName; { Bonv_facTablenum_bvfac: TWideStringField; }
    Bonv_facTablefourbarec.ClassName; { Bonv_facTablefourbarec: TStringField; }
    Bonv_facTableMontantTVA.ClassName; { Bonv_facTableMontantTVA: TCurrencyField; }
    Bonv_facTableMontantRes.ClassName; { Bonv_facTableMontantRes: TCurrencyField; }
    Bonv_facTableobser_bvfac.ClassName; { Bonv_facTableobser_bvfac: TWideMemoField; }
    Bonv_facTablemontttc_bvfac.ClassName; { Bonv_facTablemontttc_bvfac: TCurrencyField; }
    Bonv_facTableremise_bvfac.ClassName; { Bonv_facTableremise_bvfac: TCurrencyField; }
    Bonv_facTablenum_cheque_bvfac.ClassName; { Bonv_facTablenum_cheque_bvfac: TWideStringField; }
    Bonv_facTablecode_mdpai.ClassName; { Bonv_facTablecode_mdpai: TSmallintField; }
    Bonv_facTablecode_cmpt.ClassName; { Bonv_facTablecode_cmpt: TSmallintField; }
    Bonv_facTableModePaie.ClassName; { Bonv_facTableModePaie: TStringField; }
    Bonv_facTableCompte.ClassName; { Bonv_facTableCompte: TStringField; }
    Bonv_facTableRemisePerc.ClassName; { Bonv_facTableRemisePerc: TFloatField; }
    Bonv_facTableNEWTTC.ClassName; { Bonv_facTableNEWTTC: TCurrencyField; }
    WilayasDataS.ClassName; { WilayasDataS: TDataSource; }
    Bonv_livTableCredit.ClassName; { Bonv_livTableCredit: TFDQuery; }
    IntegerField3.ClassName; { IntegerField3: TIntegerField; }
    DateField2.ClassName; { DateField2: TDateField; }
    TimeField2.ClassName; { TimeField2: TTimeField; }
    Bonv_livTableCreditcode_c.ClassName; { Bonv_livTableCreditcode_c: TIntegerField; }
    CurrencyField7.ClassName; { CurrencyField7: TCurrencyField; }
    CurrencyField8.ClassName; { CurrencyField8: TCurrencyField; }
    BooleanField2.ClassName; { BooleanField2: TBooleanField; }
    WideStringField3.ClassName; { WideStringField3: TWideStringField; }
    StringField4.ClassName; { StringField4: TStringField; }
    CurrencyField9.ClassName; { CurrencyField9: TCurrencyField; }
    CurrencyField10.ClassName; { CurrencyField10: TCurrencyField; }
    WideMemoField2.ClassName; { WideMemoField2: TWideMemoField; }
    CurrencyField11.ClassName; { CurrencyField11: TCurrencyField; }
    CurrencyField12.ClassName; { CurrencyField12: TCurrencyField; }
    WideStringField4.ClassName; { WideStringField4: TWideStringField; }
    SmallintField3.ClassName; { SmallintField3: TSmallintField; }
    SmallintField4.ClassName; { SmallintField4: TSmallintField; }
    StringField5.ClassName; { StringField5: TStringField; }
    StringField6.ClassName; { StringField6: TStringField; }
    Bona_facTableCredit.ClassName; { Bona_facTableCredit: TFDQuery; }
    IntegerField5.ClassName; { IntegerField5: TIntegerField; }
    DateField3.ClassName; { DateField3: TDateField; }
    TimeField3.ClassName; { TimeField3: TTimeField; }
    IntegerField6.ClassName; { IntegerField6: TIntegerField; }
    CurrencyField13.ClassName; { CurrencyField13: TCurrencyField; }
    CurrencyField14.ClassName; { CurrencyField14: TCurrencyField; }
    BooleanField3.ClassName; { BooleanField3: TBooleanField; }
    WideStringField5.ClassName; { WideStringField5: TWideStringField; }
    StringField7.ClassName; { StringField7: TStringField; }
    CurrencyField15.ClassName; { CurrencyField15: TCurrencyField; }
    CurrencyField16.ClassName; { CurrencyField16: TCurrencyField; }
    WideMemoField3.ClassName; { WideMemoField3: TWideMemoField; }
    CurrencyField17.ClassName; { CurrencyField17: TCurrencyField; }
    CurrencyField18.ClassName; { CurrencyField18: TCurrencyField; }
    WideStringField6.ClassName; { WideStringField6: TWideStringField; }
    SmallintField5.ClassName; { SmallintField5: TSmallintField; }
    SmallintField6.ClassName; { SmallintField6: TSmallintField; }
    StringField9.ClassName; { StringField9: TStringField; }
    StringField8.ClassName; { StringField8: TStringField; }
    Bonv_facTableCredit.ClassName; { Bonv_facTableCredit: TFDQuery; }
    IntegerField7.ClassName; { IntegerField7: TIntegerField; }
    DateField4.ClassName; { DateField4: TDateField; }
    TimeField4.ClassName; { TimeField4: TTimeField; }
    Bonv_facTableCreditcode_c.ClassName; { Bonv_facTableCreditcode_c: TIntegerField; }
    CurrencyField19.ClassName; { CurrencyField19: TCurrencyField; }
    CurrencyField20.ClassName; { CurrencyField20: TCurrencyField; }
    BooleanField4.ClassName; { BooleanField4: TBooleanField; }
    WideStringField7.ClassName; { WideStringField7: TWideStringField; }
    StringField10.ClassName; { StringField10: TStringField; }
    CurrencyField21.ClassName; { CurrencyField21: TCurrencyField; }
    CurrencyField22.ClassName; { CurrencyField22: TCurrencyField; }
    WideMemoField4.ClassName; { WideMemoField4: TWideMemoField; }
    CurrencyField23.ClassName; { CurrencyField23: TCurrencyField; }
    CurrencyField24.ClassName; { CurrencyField24: TCurrencyField; }
    WideStringField8.ClassName; { WideStringField8: TWideStringField; }
    SmallintField7.ClassName; { SmallintField7: TSmallintField; }
    SmallintField8.ClassName; { SmallintField8: TSmallintField; }
    StringField11.ClassName; { StringField11: TStringField; }
    StringField12.ClassName; { StringField12: TStringField; }
  end;

{ ClientListF: TClientListF }
  with TClientListF(nil) do { UClientsList.pas }
  begin
    ClientsListDBGridEh.ClassName; { ClientsListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    TopP.ClassName; { TopP: TPanel; }
    EditClientsBtn.ClassName; { EditClientsBtn: TAdvToolButton; }
    DeleteClientsBtn.ClassName; { DeleteClientsBtn: TAdvToolButton; }
    AddClientsBtn.ClassName; { AddClientsBtn: TAdvToolButton; }
    ResearchClientsLbl.ClassName; { ResearchClientsLbl: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    toutClientsLbl.ClassName; { toutClientsLbl: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    Label3.ClassName; { Label3: TLabel; }
    PassifClientsLbl.ClassName; { PassifClientsLbl: TLabel; }
    Label5.ClassName; { Label5: TLabel; }
    ActifClientsLbl.ClassName; { ActifClientsLbl: TLabel; }
    ArrowsPnl.ClassName; { ArrowsPnl: TPanel; }
    LastClientbtn.ClassName; { LastClientbtn: TsSpeedButton; }
    NextClientbtn.ClassName; { NextClientbtn: TsSpeedButton; }
    PreviosClientbtn.ClassName; { PreviosClientbtn: TsSpeedButton; }
    FisrtClientbtn.ClassName; { FisrtClientbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchClientsEdt.ClassName; { ResearchClientsEdt: TSearchBox; }
    ActifClientsRdioBtn.ClassName; { ActifClientsRdioBtn: TRadioButton; }
    PassifClientsRdioBtn.ClassName; { PassifClientsRdioBtn: TRadioButton; }
    toutClientsRdioBtn.ClassName; { toutClientsRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    ClientListDataS.ClassName; { ClientListDataS: TDataSource; }
    ClientTableActif.ClassName; { ClientTableActif: TFDQuery; }
    ClientTablePassif.ClassName; { ClientTablePassif: TFDQuery; }
  end;

{ ClientGestionF: TClientGestionF }
  with TClientGestionF(nil) do { UClientGestion.pas }
  begin
    ClientGPgControl.ClassName; { ClientGPgControl: TsPageControl; }
    GeneralClientGTB.ClassName; { GeneralClientGTB: TsTabSheet; }
    GeneralTB.ClassName; { GeneralTB: TPanel; }
    WilayaClientGLbl.ClassName; { WilayaClientGLbl: TLabel; }
    VilleClientGLbl.ClassName; { VilleClientGLbl: TLabel; }
    ActiveClientGLbl.ClassName; { ActiveClientGLbl: TLabel; }
    NameClientGLbl.ClassName; { NameClientGLbl: TLabel; }
    AcitiviteClientGLbl.ClassName; { AcitiviteClientGLbl: TLabel; }
    AdrClientGLbl.ClassName; { AdrClientGLbl: TLabel; }
    FixClientGLbl.ClassName; { FixClientGLbl: TLabel; }
    SiteClientGLbl.ClassName; { SiteClientGLbl: TLabel; }
    EmailClientGLbl.ClassName; { EmailClientGLbl: TLabel; }
    MobileClientGLbl.ClassName; { MobileClientGLbl: TLabel; }
    Mobile2ClientGLbl.ClassName; { Mobile2ClientGLbl: TLabel; }
    FaxClientGLbl.ClassName; { FaxClientGLbl: TLabel; }
    RequiredStarClientGLbl.ClassName; { RequiredStarClientGLbl: TLabel; }
    RequiredClientGlbl.ClassName; { RequiredClientGlbl: TLabel; }
    ActiveClientGOuiOuNon.ClassName; { ActiveClientGOuiOuNon: TLabel; }
    NameClientGErrorP.ClassName; { NameClientGErrorP: TPanel; }
    LineP.ClassName; { LineP: TPanel; }
    AcitiviteClientGEdt.ClassName; { AcitiviteClientGEdt: TEdit; }
    AdrClientGEdt.ClassName; { AdrClientGEdt: TEdit; }
    FixClientGEdt.ClassName; { FixClientGEdt: TEdit; }
    EmailClientGEdt.ClassName; { EmailClientGEdt: TEdit; }
    SiteClientGEdt.ClassName; { SiteClientGEdt: TEdit; }
    MobileClientGEdt.ClassName; { MobileClientGEdt: TEdit; }
    Mobile2ClientGEdt.ClassName; { Mobile2ClientGEdt: TEdit; }
    FaxClientGEdt.ClassName; { FaxClientGEdt: TEdit; }
    NameClientGEdt.ClassName; { NameClientGEdt: TEdit; }
    ActiveClientGSlider.ClassName; { ActiveClientGSlider: TsSlider; }
    WilayaClientGCbx.ClassName; { WilayaClientGCbx: TComboBox; }
    VilleClientGCbx.ClassName; { VilleClientGCbx: TComboBox; }
    PlusInfoClientGTB.ClassName; { PlusInfoClientGTB: TsTabSheet; }
    PlusInfoTB.ClassName; { PlusInfoTB: TPanel; }
    RCClientGLbl.ClassName; { RCClientGLbl: TLabel; }
    NArtClientGLbl.ClassName; { NArtClientGLbl: TLabel; }
    NIFClientGLbl.ClassName; { NIFClientGLbl: TLabel; }
    NISClientGLbl.ClassName; { NISClientGLbl: TLabel; }
    ObserClientGLbl.ClassName; { ObserClientGLbl: TLabel; }
    MaxCreditClientGLbl.ClassName; { MaxCreditClientGLbl: TLabel; }
    TarificationClientGLbl.ClassName; { TarificationClientGLbl: TLabel; }
    ActiveTarificationClientGLbl.ClassName; { ActiveTarificationClientGLbl: TLabel; }
    ModeTarifClientGLbl.ClassName; { ModeTarifClientGLbl: TLabel; }
    CurrencyClientG.ClassName; { CurrencyClientG: TLabel; }
    CurrencyClientG1.ClassName; { CurrencyClientG1: TLabel; }
    OldCreditClientGLbl.ClassName; { OldCreditClientGLbl: TLabel; }
    NBankClientGLbl.ClassName; { NBankClientGLbl: TLabel; }
    RIBClientGLbl.ClassName; { RIBClientGLbl: TLabel; }
    LineP03.ClassName; { LineP03: TPanel; }
    RCClientGEdt.ClassName; { RCClientGEdt: TEdit; }
    NArtClientGEdt.ClassName; { NArtClientGEdt: TEdit; }
    NIFClientGEdt.ClassName; { NIFClientGEdt: TEdit; }
    NISClientGEdt.ClassName; { NISClientGEdt: TEdit; }
    LineP01.ClassName; { LineP01: TPanel; }
    ObserClientGMem.ClassName; { ObserClientGMem: TMemo; }
    OldCreditClientGEdt.ClassName; { OldCreditClientGEdt: TEdit; }
    MaxCreditClientGEdt.ClassName; { MaxCreditClientGEdt: TEdit; }
    ModeTarifClientGSlider.ClassName; { ModeTarifClientGSlider: TsSlider; }
    ModeTarifClientGCbx.ClassName; { ModeTarifClientGCbx: TComboBox; }
    LineP02.ClassName; { LineP02: TPanel; }
    NBankClientGEdt.ClassName; { NBankClientGEdt: TEdit; }
    RIBClientGEdt.ClassName; { RIBClientGEdt: TEdit; }
    BottomP.ClassName; { BottomP: TPanel; }
    OKClientGBtn.ClassName; { OKClientGBtn: TAdvToolButton; }
    CancelClientGBtn.ClassName; { CancelClientGBtn: TAdvToolButton; }
  end;

{ FSplash: TFSplash }
  with TFSplash(nil) do { USplash.pas }
  begin
    Label1.ClassName; { Label1: TLabel; }
  end;

{ FournisseurListF: TFournisseurListF }
  with TFournisseurListF(nil) do { UFournisseurList.pas }
  begin
    FournisseursListDBGridEh.ClassName; { FournisseursListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    TopP.ClassName; { TopP: TPanel; }
    EditFournisseursBtn.ClassName; { EditFournisseursBtn: TAdvToolButton; }
    DeleteFournisseursBtn.ClassName; { DeleteFournisseursBtn: TAdvToolButton; }
    AddFournisseursBtn.ClassName; { AddFournisseursBtn: TAdvToolButton; }
    ResearchFournisseursLbl.ClassName; { ResearchFournisseursLbl: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    toutFournisseursLbl.ClassName; { toutFournisseursLbl: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    Label3.ClassName; { Label3: TLabel; }
    PassifFournisseursLbl.ClassName; { PassifFournisseursLbl: TLabel; }
    Label5.ClassName; { Label5: TLabel; }
    ActifFournisseursLbl.ClassName; { ActifFournisseursLbl: TLabel; }
    ArrowsPnl.ClassName; { ArrowsPnl: TPanel; }
    LastClientbtn.ClassName; { LastClientbtn: TsSpeedButton; }
    NextClientbtn.ClassName; { NextClientbtn: TsSpeedButton; }
    PreviosClientbtn.ClassName; { PreviosClientbtn: TsSpeedButton; }
    FisrtFournisseursbtn.ClassName; { FisrtFournisseursbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchFournisseurEdt.ClassName; { ResearchFournisseurEdt: TSearchBox; }
    ActifFournisseursRdioBtn.ClassName; { ActifFournisseursRdioBtn: TRadioButton; }
    PassifFournisseursRdioBtn.ClassName; { PassifFournisseursRdioBtn: TRadioButton; }
    toutFournisseursRdioBtn.ClassName; { toutFournisseursRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    Button1.ClassName; { Button1: TButton; }
    Panel3.ClassName; { Panel3: TPanel; }
    FournisseurListDataS.ClassName; { FournisseurListDataS: TDataSource; }
  end;

{ FournisseurGestionF: TFournisseurGestionF }
  with TFournisseurGestionF(nil) do { UFournisseurGestion.pas }
  begin
    FournisseurGPgControl.ClassName; { FournisseurGPgControl: TsPageControl; }
    GeneralClientGTB.ClassName; { GeneralClientGTB: TsTabSheet; }
    GeneralTB.ClassName; { GeneralTB: TPanel; }
    WilayaFournisseurGLbl.ClassName; { WilayaFournisseurGLbl: TLabel; }
    VilleFournisseurGLbl.ClassName; { VilleFournisseurGLbl: TLabel; }
    ActiveFournisseurGLbl.ClassName; { ActiveFournisseurGLbl: TLabel; }
    NameFournisseurGLbl.ClassName; { NameFournisseurGLbl: TLabel; }
    AdrFournisseurGLbl.ClassName; { AdrFournisseurGLbl: TLabel; }
    FixFournisseurGLbl.ClassName; { FixFournisseurGLbl: TLabel; }
    SiteFournisseurGLbl.ClassName; { SiteFournisseurGLbl: TLabel; }
    EmailFournisseurGLbl.ClassName; { EmailFournisseurGLbl: TLabel; }
    MobileFournisseurGLbl.ClassName; { MobileFournisseurGLbl: TLabel; }
    Mobile2CFournisseurGLbl.ClassName; { Mobile2CFournisseurGLbl: TLabel; }
    FaxFournisseurGLbl.ClassName; { FaxFournisseurGLbl: TLabel; }
    RequiredStarFournisseurGLbl.ClassName; { RequiredStarFournisseurGLbl: TLabel; }
    RequiredFournisseurGlbl.ClassName; { RequiredFournisseurGlbl: TLabel; }
    ActiveFournisseurGOuiOuNon.ClassName; { ActiveFournisseurGOuiOuNon: TLabel; }
    NameFournisseurGErrorP.ClassName; { NameFournisseurGErrorP: TPanel; }
    LineP.ClassName; { LineP: TPanel; }
    AdrFournisseurGEdt.ClassName; { AdrFournisseurGEdt: TEdit; }
    FixFournisseurGEdt.ClassName; { FixFournisseurGEdt: TEdit; }
    EmailFournisseurGEdt.ClassName; { EmailFournisseurGEdt: TEdit; }
    SiteFournisseurGEdt.ClassName; { SiteFournisseurGEdt: TEdit; }
    MobileFournisseurGEdt.ClassName; { MobileFournisseurGEdt: TEdit; }
    Mobile2FournisseurGEdt.ClassName; { Mobile2FournisseurGEdt: TEdit; }
    FaxFournisseurGEdt.ClassName; { FaxFournisseurGEdt: TEdit; }
    NameFournisseurGEdt.ClassName; { NameFournisseurGEdt: TEdit; }
    ActiveFournisseurGSlider.ClassName; { ActiveFournisseurGSlider: TsSlider; }
    WilayaFournisseurGCbx.ClassName; { WilayaFournisseurGCbx: TComboBox; }
    VilleFournisseurGCbx.ClassName; { VilleFournisseurGCbx: TComboBox; }
    PlusInfoClientGTB.ClassName; { PlusInfoClientGTB: TsTabSheet; }
    PlusInfoTB.ClassName; { PlusInfoTB: TPanel; }
    RCFournisseurGLbl.ClassName; { RCFournisseurGLbl: TLabel; }
    NArtFournisseurGLbl.ClassName; { NArtFournisseurGLbl: TLabel; }
    NIFFournisseurGLbl.ClassName; { NIFFournisseurGLbl: TLabel; }
    NISFournisseurGLbl.ClassName; { NISFournisseurGLbl: TLabel; }
    ObserFournisseurGLbl.ClassName; { ObserFournisseurGLbl: TLabel; }
    MaxCreditFournisseurGLbl.ClassName; { MaxCreditFournisseurGLbl: TLabel; }
    CurrencyFournisseurG.ClassName; { CurrencyFournisseurG: TLabel; }
    CurrencyFournisseurG1.ClassName; { CurrencyFournisseurG1: TLabel; }
    OldCreditFournisseurGLbl.ClassName; { OldCreditFournisseurGLbl: TLabel; }
    NBankFournisseurGLbl.ClassName; { NBankFournisseurGLbl: TLabel; }
    RIBFournisseurGLbl.ClassName; { RIBFournisseurGLbl: TLabel; }
    LineP03.ClassName; { LineP03: TPanel; }
    RCFournisseurGEdt.ClassName; { RCFournisseurGEdt: TEdit; }
    NArtFournisseurGEdt.ClassName; { NArtFournisseurGEdt: TEdit; }
    NIFFournisseurGEdt.ClassName; { NIFFournisseurGEdt: TEdit; }
    NISFournisseurGEdt.ClassName; { NISFournisseurGEdt: TEdit; }
    LineP01.ClassName; { LineP01: TPanel; }
    ObserFournisseurGMem.ClassName; { ObserFournisseurGMem: TMemo; }
    OldCreditFournisseurGEdt.ClassName; { OldCreditFournisseurGEdt: TEdit; }
    MaxCreditFournisseurGEdt.ClassName; { MaxCreditFournisseurGEdt: TEdit; }
    LineP02.ClassName; { LineP02: TPanel; }
    NBankFournisseurGEdt.ClassName; { NBankFournisseurGEdt: TEdit; }
    RIBFournisseurGEdt.ClassName; { RIBFournisseurGEdt: TEdit; }
    BottomP.ClassName; { BottomP: TPanel; }
    OKFournisseurGBtn.ClassName; { OKFournisseurGBtn: TAdvToolButton; }
    CancelFournisseurGBtn.ClassName; { CancelFournisseurGBtn: TAdvToolButton; }
  end;

{ ProduitsListF: TProduitsListF }
  with TProduitsListF(nil) do { UProduitsList.pas }
  begin
    ProduitsListDBGridEh.ClassName; { ProduitsListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    TopP.ClassName; { TopP: TPanel; }
    EditProduitsBtn.ClassName; { EditProduitsBtn: TAdvToolButton; }
    DeleteProduitsBtn.ClassName; { DeleteProduitsBtn: TAdvToolButton; }
    AddProduitsBtn.ClassName; { AddProduitsBtn: TAdvToolButton; }
    ResearchProduitsLbl.ClassName; { ResearchProduitsLbl: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    sSpeedButton3.ClassName; { sSpeedButton3: TsSpeedButton; }
    ArrowsPnl.ClassName; { ArrowsPnl: TPanel; }
    LastClientbtn.ClassName; { LastClientbtn: TsSpeedButton; }
    NextClientbtn.ClassName; { NextClientbtn: TsSpeedButton; }
    PreviosClientbtn.ClassName; { PreviosClientbtn: TsSpeedButton; }
    FisrtClientbtn.ClassName; { FisrtClientbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchProduitsEdt.ClassName; { ResearchProduitsEdt: TSearchBox; }
    ResherchPARDesProduitsRdioBtn.ClassName; { ResherchPARDesProduitsRdioBtn: TRadioButton; }
    ResherchPARDCodProduitsRdioBtn.ClassName; { ResherchPARDCodProduitsRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    Panel4.ClassName; { Panel4: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    ProduitListDataS.ClassName; { ProduitListDataS: TDataSource; }
    ProduitListGridImgLst.ClassName; { ProduitListGridImgLst: TsAlphaImageList; }
  end;

{ ProduitGestionF: TProduitGestionF }
  with TProduitGestionF(nil) do { UProduitGestion.pas }
  begin
    ProduitGPgControl.ClassName; { ProduitGPgControl: TsPageControl; }
    GeneralClientGTB.ClassName; { GeneralClientGTB: TsTabSheet; }
    GeneralTB.ClassName; { GeneralTB: TPanel; }
    FamilleProduitGLbl.ClassName; { FamilleProduitGLbl: TLabel; }
    RefProduitGLbl.ClassName; { RefProduitGLbl: TLabel; }
    NameProduitGLbl.ClassName; { NameProduitGLbl: TLabel; }
    PrixAHTProduitLbl.ClassName; { PrixAHTProduitLbl: TLabel; }
    RequiredStarProduitGLbl.ClassName; { RequiredStarProduitGLbl: TLabel; }
    RequiredProduitGlbl.ClassName; { RequiredProduitGlbl: TLabel; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    Label3.ClassName; { Label3: TLabel; }
    Label4.ClassName; { Label4: TLabel; }
    PerProduitGLbl.ClassName; { PerProduitGLbl: TLabel; }
    DatePerProduitGLbl.ClassName; { DatePerProduitGLbl: TLabel; }
    AlertJoursProduitLbl.ClassName; { AlertJoursProduitLbl: TLabel; }
    AlertJoursProduitLbl2.ClassName; { AlertJoursProduitLbl2: TLabel; }
    PrixATTCProduitLbl.ClassName; { PrixATTCProduitLbl: TLabel; }
    Label10.ClassName; { Label10: TLabel; }
    Label11.ClassName; { Label11: TLabel; }
    Label12.ClassName; { Label12: TLabel; }
    Label13.ClassName; { Label13: TLabel; }
    Label14.ClassName; { Label14: TLabel; }
    Label15.ClassName; { Label15: TLabel; }
    Label16.ClassName; { Label16: TLabel; }
    Label17.ClassName; { Label17: TLabel; }
    Label18.ClassName; { Label18: TLabel; }
    Label19.ClassName; { Label19: TLabel; }
    Label20.ClassName; { Label20: TLabel; }
    Label21.ClassName; { Label21: TLabel; }
    Label22.ClassName; { Label22: TLabel; }
    Label23.ClassName; { Label23: TLabel; }
    Label24.ClassName; { Label24: TLabel; }
    Label25.ClassName; { Label25: TLabel; }
    Label26.ClassName; { Label26: TLabel; }
    Label27.ClassName; { Label27: TLabel; }
    Label28.ClassName; { Label28: TLabel; }
    Label29.ClassName; { Label29: TLabel; }
    RandomCBProduitGBtn.ClassName; { RandomCBProduitGBtn: TAdvToolButton; }
    Label9.ClassName; { Label9: TLabel; }
    AddSousFamilleProduitGBtn.ClassName; { AddSousFamilleProduitGBtn: TAdvToolButton; }
    AddFamilleProduitGBtn.ClassName; { AddFamilleProduitGBtn: TAdvToolButton; }
    AddUniteProduitGBtn.ClassName; { AddUniteProduitGBtn: TAdvToolButton; }
    AddFourProduitGBtn.ClassName; { AddFourProduitGBtn: TAdvToolButton; }
    ShowCalculaturProduitGBtn.ClassName; { ShowCalculaturProduitGBtn: TAdvToolButton; }
    MulteCBProduitGBtn.ClassName; { MulteCBProduitGBtn: TAdvToolButton; }
    RequiredRefProduitGlbl.ClassName; { RequiredRefProduitGlbl: TLabel; }
    NameProduitGErrorP.ClassName; { NameProduitGErrorP: TPanel; }
    LineP.ClassName; { LineP: TPanel; }
    PrixAHTProduitEdt.ClassName; { PrixAHTProduitEdt: TEdit; }
    NameProduitGEdt.ClassName; { NameProduitGEdt: TEdit; }
    FamilleProduitGCbx.ClassName; { FamilleProduitGCbx: TComboBox; }
    SFamilleProduitGCbx.ClassName; { SFamilleProduitGCbx: TComboBox; }
    UniteProduitGCbx.ClassName; { UniteProduitGCbx: TComboBox; }
    TVAProduitGCbx.ClassName; { TVAProduitGCbx: TComboBox; }
    PerProduitGSlider.ClassName; { PerProduitGSlider: TsSlider; }
    AlertJoursProduitEdt.ClassName; { AlertJoursProduitEdt: TEdit; }
    PrixATTCProduitEdt.ClassName; { PrixATTCProduitEdt: TEdit; }
    LineP3.ClassName; { LineP3: TPanel; }
    PrixVHTDProduitEdt.ClassName; { PrixVHTDProduitEdt: TEdit; }
    PrixVTTCDProduitEdt.ClassName; { PrixVTTCDProduitEdt: TEdit; }
    LineP4.ClassName; { LineP4: TPanel; }
    MargeDProduitEdt.ClassName; { MargeDProduitEdt: TEdit; }
    PrixVHTRProduitEdt.ClassName; { PrixVHTRProduitEdt: TEdit; }
    PrixVTTCRProduitEdt.ClassName; { PrixVTTCRProduitEdt: TEdit; }
    MargeRProduitEdt.ClassName; { MargeRProduitEdt: TEdit; }
    PrixVHTGProduitEdt.ClassName; { PrixVHTGProduitEdt: TEdit; }
    PrixVTTCGProduitEdt.ClassName; { PrixVTTCGProduitEdt: TEdit; }
    MargeGProduitEdt.ClassName; { MargeGProduitEdt: TEdit; }
    PrixVHTA1ProduitEdt.ClassName; { PrixVHTA1ProduitEdt: TEdit; }
    PrixVTTCA1ProduitEdt.ClassName; { PrixVTTCA1ProduitEdt: TEdit; }
    MargeA1ProduitEdt.ClassName; { MargeA1ProduitEdt: TEdit; }
    PrixVHTA2ProduitEdt.ClassName; { PrixVHTA2ProduitEdt: TEdit; }
    PrixVTTCA2ProduitEdt.ClassName; { PrixVTTCA2ProduitEdt: TEdit; }
    MargeA2ProduitEdt.ClassName; { MargeA2ProduitEdt: TEdit; }
    LineP2.ClassName; { LineP2: TPanel; }
    StockINProduitEdt.ClassName; { StockINProduitEdt: TEdit; }
    StockAlertProduitEdt.ClassName; { StockAlertProduitEdt: TEdit; }
    StockActuelProduitEdt.ClassName; { StockActuelProduitEdt: TEdit; }
    FournisseurProduitGCbx.ClassName; { FournisseurProduitGCbx: TComboBox; }
    LineP5.ClassName; { LineP5: TPanel; }
    RefProduitGErrorP.ClassName; { RefProduitGErrorP: TPanel; }
    RefProduitGEdt.ClassName; { RefProduitGEdt: TEdit; }
    DatePerProduitGD.ClassName; { DatePerProduitGD: TDateTimePicker; }
    CodeBarProduitGEdt.ClassName; { CodeBarProduitGEdt: TEdit; }
    PlusInfoClientGTB.ClassName; { PlusInfoClientGTB: TsTabSheet; }
    PlusInfoTB.ClassName; { PlusInfoTB: TPanel; }
    ObserClientGLbl.ClassName; { ObserClientGLbl: TLabel; }
    Label30.ClassName; { Label30: TLabel; }
    AddLocationProduitGBtn.ClassName; { AddLocationProduitGBtn: TAdvToolButton; }
    Label31.ClassName; { Label31: TLabel; }
    Label32.ClassName; { Label32: TLabel; }
    Label5.ClassName; { Label5: TLabel; }
    ImageShowProduitG.ClassName; { ImageShowProduitG: TsImage; }
    ImageEditProduitGBtn.ClassName; { ImageEditProduitGBtn: TAdvToolButton; }
    ImageDeleteProduitGBtn.ClassName; { ImageDeleteProduitGBtn: TAdvToolButton; }
    LineP03.ClassName; { LineP03: TPanel; }
    ObserProduitGMem.ClassName; { ObserProduitGMem: TMemo; }
    LocalisationProduitGCbx.ClassName; { LocalisationProduitGCbx: TComboBox; }
    MinStockProduitGCbx.ClassName; { MinStockProduitGCbx: TEdit; }
    MaxStockProduitGCbx.ClassName; { MaxStockProduitGCbx: TEdit; }
    Panel1.ClassName; { Panel1: TPanel; }
    Panel2.ClassName; { Panel2: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    Panel4.ClassName; { Panel4: TPanel; }
    BottomP.ClassName; { BottomP: TPanel; }
    OKProduitGBtn.ClassName; { OKProduitGBtn: TAdvToolButton; }
    CancelProduitGBtn.ClassName; { CancelProduitGBtn: TAdvToolButton; }
    OpenPictureDialogProduitG.ClassName; { OpenPictureDialogProduitG: TOpenPictureDialog; }
    sAlphaImageList1.ClassName; { sAlphaImageList1: TsAlphaImageList; }
  end;

{ FSplashAddUnite: TFSplashAddUnite }
  with TFSplashAddUnite(nil) do { USplashAddUnite.pas }
  begin
    NameAddUniteSLbl.ClassName; { NameAddUniteSLbl: TLabel; }
    OKAddUniteSBtn.ClassName; { OKAddUniteSBtn: TAdvToolButton; }
    CancelAddUniteSBtn.ClassName; { CancelAddUniteSBtn: TAdvToolButton; }
    RequiredAddUniteSlbl.ClassName; { RequiredAddUniteSlbl: TLabel; }
    RequiredStarAddUniteSLbl.ClassName; { RequiredStarAddUniteSLbl: TLabel; }
    Image1.ClassName; { Image1: TsImage; }
    CompteAddUniteSBtn.ClassName; { CompteAddUniteSBtn: TAdvToolButton; }
    CompteAddUniteSLbl.ClassName; { CompteAddUniteSLbl: TLabel; }
    NameAddUniteSErrorP.ClassName; { NameAddUniteSErrorP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    FormCaptionAddUniteSLbl.ClassName; { FormCaptionAddUniteSLbl: TLabel; }
    LineP.ClassName; { LineP: TPanel; }
    NameAddUniteSEdt.ClassName; { NameAddUniteSEdt: TEdit; }
    CompteAddUniteSCbx.ClassName; { CompteAddUniteSCbx: TComboBox; }
    AddUnitCompteDataS.ClassName; { AddUnitCompteDataS: TDataSource; }
  end;

{ FSplashAddCodeBarre: TFSplashAddCodeBarre }
  with TFSplashAddCodeBarre(nil) do { USplashAddCodeBarre.pas }
  begin
    OKAddUniteSBtn.ClassName; { OKAddUniteSBtn: TAdvToolButton; }
    AddCBAddCodeBarreSBtn.ClassName; { AddCBAddCodeBarreSBtn: TAdvToolButton; }
    DeleteCBAddCodeBarreSBtn.ClassName; { DeleteCBAddCodeBarreSBtn: TAdvToolButton; }
    NumberCBAddCodeBarreSLbl.ClassName; { NumberCBAddCodeBarreSLbl: TLabel; }
    RandomCBAddCodeBarreSBtn.ClassName; { RandomCBAddCodeBarreSBtn: TAdvToolButton; }
    DuplicatedCodeBarrelbl.ClassName; { DuplicatedCodeBarrelbl: TLabel; }
    MaxCodeBarrelbl.ClassName; { MaxCodeBarrelbl: TLabel; }
    NameCodeBarreErrorP.ClassName; { NameCodeBarreErrorP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    FormCaptionAddUniteSLbl.ClassName; { FormCaptionAddUniteSLbl: TLabel; }
    LineP.ClassName; { LineP: TPanel; }
    NameAddCodeBarreSEdt.ClassName; { NameAddCodeBarreSEdt: TEdit; }
    Panel2.ClassName; { Panel2: TPanel; }
    CodeBarresDBGridEh.ClassName; { CodeBarresDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    CodeBarreDataS.ClassName; { CodeBarreDataS: TDataSource; }
  end;

{ BonRecF: TBonRecF }
  with TBonRecF(nil) do { UBonRec.pas }
  begin
    BARecListDBGridEh.ClassName; { BARecListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    TopP.ClassName; { TopP: TPanel; }
    EditBARecBtn.ClassName; { EditBARecBtn: TAdvToolButton; }
    DeleteBARecBtn.ClassName; { DeleteBARecBtn: TAdvToolButton; }
    AddBARecBtn.ClassName; { AddBARecBtn: TAdvToolButton; }
    ResearchBARecLbl.ClassName; { ResearchBARecLbl: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    sSpeedButton3.ClassName; { sSpeedButton3: TsSpeedButton; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    ArrowsPnl.ClassName; { ArrowsPnl: TPanel; }
    LastBARecbtn.ClassName; { LastBARecbtn: TsSpeedButton; }
    NextBARecbtn.ClassName; { NextBARecbtn: TsSpeedButton; }
    PreviosBARecbtn.ClassName; { PreviosBARecbtn: TsSpeedButton; }
    FisrtBARecbtn.ClassName; { FisrtBARecbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchBARecEdt.ClassName; { ResearchBARecEdt: TSearchBox; }
    Panel2.ClassName; { Panel2: TPanel; }
    DateEndBARecD.ClassName; { DateEndBARecD: TDateTimePicker; }
    DateStartBARecD.ClassName; { DateStartBARecD: TDateTimePicker; }
    ResherchBARFourRdioBtn.ClassName; { ResherchBARFourRdioBtn: TRadioButton; }
    ResherchBARNumBRdioBtn.ClassName; { ResherchBARNumBRdioBtn: TRadioButton; }
    Panel4.ClassName; { Panel4: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    BonRecListDataS.ClassName; { BonRecListDataS: TDataSource; }
  end;

{ BonRecGestionF: TBonRecGestionF }
  with TBonRecGestionF(nil) do { UBonRecGestion.pas }
  begin
    Panel3.ClassName; { Panel3: TPanel; }
    TopP2.ClassName; { TopP2: TPanel; }
    Shape1.ClassName; { Shape1: TShape; }
    EditBARecBonRecGBtn.ClassName; { EditBARecBonRecGBtn: TAdvToolButton; }
    AddBARecBonRecGBtn.ClassName; { AddBARecBonRecGBtn: TAdvToolButton; }
    Label4.ClassName; { Label4: TLabel; }
    sSpeedButton4.ClassName; { sSpeedButton4: TsSpeedButton; }
    sSpeedButton5.ClassName; { sSpeedButton5: TsSpeedButton; }
    sSpeedButton6.ClassName; { sSpeedButton6: TsSpeedButton; }
    Label5.ClassName; { Label5: TLabel; }
    Label6.ClassName; { Label6: TLabel; }
    NumBonRecGEdt.ClassName; { NumBonRecGEdt: TLabel; }
    AddFourBonRecGBtn.ClassName; { AddFourBonRecGBtn: TAdvToolButton; }
    Label8.ClassName; { Label8: TLabel; }
    ValiderBARecBonRecGBtn.ClassName; { ValiderBARecBonRecGBtn: TAdvToolButton; }
    Label7.ClassName; { Label7: TLabel; }
    AddModePaieBonRecGBtn.ClassName; { AddModePaieBonRecGBtn: TAdvToolButton; }
    Label16.ClassName; { Label16: TLabel; }
    AddCompteBonRecGBtn.ClassName; { AddCompteBonRecGBtn: TAdvToolButton; }
    ListAddProduitBonRecGBtn.ClassName; { ListAddProduitBonRecGBtn: TAdvToolButton; }
    DeleteProduitBonRecGBtn.ClassName; { DeleteProduitBonRecGBtn: TAdvToolButton; }
    NewAddProduitBonRecGBtn.ClassName; { NewAddProduitBonRecGBtn: TAdvToolButton; }
    RequiredFourGlbl.ClassName; { RequiredFourGlbl: TLabel; }
    EnterAddProduitBonRecGBtn.ClassName; { EnterAddProduitBonRecGBtn: TAdvToolButton; }
    ClearProduitBonRecGBtn.ClassName; { ClearProduitBonRecGBtn: TAdvToolButton; }
    ValiderBARecBonRecGImg.ClassName; { ValiderBARecBonRecGImg: TsImage; }
    Shape5.ClassName; { Shape5: TShape; }
    BonRTotalTTCNewLbl.ClassName; { BonRTotalTTCNewLbl: TLabel; }
    BonRTotalHTNewLbl.ClassName; { BonRTotalHTNewLbl: TLabel; }
    TotalTVANewLbl.ClassName; { TotalTVANewLbl: TLabel; }
    Label23.ClassName; { Label23: TLabel; }
    ObserBonRecGLbl.ClassName; { ObserBonRecGLbl: TLabel; }
    BonRRemiseHTNewLbl.ClassName; { BonRRemiseHTNewLbl: TLabel; }
    ValiderBARecBonRecGLbl.ClassName; { ValiderBARecBonRecGLbl: TLabel; }
    NameFourGErrorP.ClassName; { NameFourGErrorP: TPanel; }
    Panel6.ClassName; { Panel6: TPanel; }
    sSpeedButton7.ClassName; { sSpeedButton7: TsSpeedButton; }
    sSpeedButton8.ClassName; { sSpeedButton8: TsSpeedButton; }
    sSpeedButton9.ClassName; { sSpeedButton9: TsSpeedButton; }
    sSpeedButton10.ClassName; { sSpeedButton10: TsSpeedButton; }
    Panel7.ClassName; { Panel7: TPanel; }
    Panel8.ClassName; { Panel8: TPanel; }
    Panel9.ClassName; { Panel9: TPanel; }
    Panel10.ClassName; { Panel10: TPanel; }
    Panel11.ClassName; { Panel11: TPanel; }
    DateBonRecGD.ClassName; { DateBonRecGD: TDateTimePicker; }
    FournisseurBonRecGCbx.ClassName; { FournisseurBonRecGCbx: TComboBox; }
    Panel12.ClassName; { Panel12: TPanel; }
    ProduitBonRecGCbx.ClassName; { ProduitBonRecGCbx: TComboBox; }
    ResherchPARDesProduitsRdioBtn.ClassName; { ResherchPARDesProduitsRdioBtn: TRadioButton; }
    ResherchPARCBProduitsRdioBtn.ClassName; { ResherchPARCBProduitsRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    ResherchPARRefProduitsRdioBtn.ClassName; { ResherchPARRefProduitsRdioBtn: TRadioButton; }
    Panel13.ClassName; { Panel13: TPanel; }
    ModePaieBonRecGCbx.ClassName; { ModePaieBonRecGCbx: TComboBox; }
    CompteBonRecGCbx.ClassName; { CompteBonRecGCbx: TComboBox; }
    Panel5.ClassName; { Panel5: TPanel; }
    BonRecGFourOLDCredit.ClassName; { BonRecGFourOLDCredit: TLabel; }
    BonRecGFourNEWCredit.ClassName; { BonRecGFourNEWCredit: TLabel; }
    Label18.ClassName; { Label18: TLabel; }
    Label17.ClassName; { Label17: TLabel; }
    Panel18.ClassName; { Panel18: TPanel; }
    NChequeBonRecGCbx.ClassName; { NChequeBonRecGCbx: TEdit; }
    ObserBonRecGMem.ClassName; { ObserBonRecGMem: TMemo; }
    ProduitsListDBGridEh.ClassName; { ProduitsListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    Panel4.ClassName; { Panel4: TPanel; }
    Shape4.ClassName; { Shape4: TShape; }
    Shape3.ClassName; { Shape3: TShape; }
    Shape2.ClassName; { Shape2: TShape; }
    label13.ClassName; { label13: TLabel; }
    label12.ClassName; { label12: TLabel; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    BonRecTotalTVALbl.ClassName; { BonRecTotalTVALbl: TLabel; }
    BonRecRegleLbl.ClassName; { BonRecRegleLbl: TLabel; }
    BonRecResteLbl.ClassName; { BonRecResteLbl: TLabel; }
    BonRecTotalHTLbl.ClassName; { BonRecTotalHTLbl: TLabel; }
    BonRecTotalTTCLbl.ClassName; { BonRecTotalTTCLbl: TLabel; }
    Label10.ClassName; { Label10: TLabel; }
    Label3.ClassName; { Label3: TLabel; }
    Label9.ClassName; { Label9: TLabel; }
    Label11.ClassName; { Label11: TLabel; }
    Label14.ClassName; { Label14: TLabel; }
    Label15.ClassName; { Label15: TLabel; }
    Label19.ClassName; { Label19: TLabel; }
    BonRecGOLDStock.ClassName; { BonRecGOLDStock: TLabel; }
    Label20.ClassName; { Label20: TLabel; }
    BonRecGNEWStock.ClassName; { BonRecGNEWStock: TLabel; }
    Panel14.ClassName; { Panel14: TPanel; }
    Edit1.ClassName; { Edit1: TEdit; }
    Edit2.ClassName; { Edit2: TEdit; }
    RemisePerctageBonRecGEdt.ClassName; { RemisePerctageBonRecGEdt: TEdit; }
    RemiseBonRecGEdt.ClassName; { RemiseBonRecGEdt: TEdit; }
    Panel1.ClassName; { Panel1: TPanel; }
    RemiseTypeBonRecGCbx.ClassName; { RemiseTypeBonRecGCbx: TComboBox; }
    BonRecPListDataS.ClassName; { BonRecPListDataS: TDataSource; }
    BindSourceDB1.ClassName; { BindSourceDB1: TBindSourceDB; }
    BindingsList1.ClassName; { BindingsList1: TBindingsList; }
    LinkPropertyToFieldCaption.ClassName; { LinkPropertyToFieldCaption: TLinkPropertyToField; }
    LinkControlToField1.ClassName; { LinkControlToField1: TLinkControlToField; }
  end;

{ BonLivGestionF: TBonLivGestionF }
  with TBonLivGestionF(nil) do { UBonLivGestion.pas }
  begin
    Panel3.ClassName; { Panel3: TPanel; }
    TopP2.ClassName; { TopP2: TPanel; }
    Shape1.ClassName; { Shape1: TShape; }
    EditBVlivBonLivGBtn.ClassName; { EditBVlivBonLivGBtn: TAdvToolButton; }
    AddBVlivBonLivGBtn.ClassName; { AddBVlivBonLivGBtn: TAdvToolButton; }
    Label4.ClassName; { Label4: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    sSpeedButton3.ClassName; { sSpeedButton3: TsSpeedButton; }
    Label5.ClassName; { Label5: TLabel; }
    Label6.ClassName; { Label6: TLabel; }
    NumBonLivGEdt.ClassName; { NumBonLivGEdt: TLabel; }
    AddClientBonLivGBtn.ClassName; { AddClientBonLivGBtn: TAdvToolButton; }
    Label8.ClassName; { Label8: TLabel; }
    ValiderBVlivBonLivGBtn.ClassName; { ValiderBVlivBonLivGBtn: TAdvToolButton; }
    Label7.ClassName; { Label7: TLabel; }
    AddModePaieBonLivGBtn.ClassName; { AddModePaieBonLivGBtn: TAdvToolButton; }
    Label16.ClassName; { Label16: TLabel; }
    AddCompteBonLivGBtn.ClassName; { AddCompteBonLivGBtn: TAdvToolButton; }
    ListAddProduitBonLivGBtn.ClassName; { ListAddProduitBonLivGBtn: TAdvToolButton; }
    DeleteProduitBonLivGBtn.ClassName; { DeleteProduitBonLivGBtn: TAdvToolButton; }
    NewAddProduitBonLivGBtn.ClassName; { NewAddProduitBonLivGBtn: TAdvToolButton; }
    RequiredClientGlbl.ClassName; { RequiredClientGlbl: TLabel; }
    EnterAddProduitBonLivGBtn.ClassName; { EnterAddProduitBonLivGBtn: TAdvToolButton; }
    ClearProduitBonLivGBtn.ClassName; { ClearProduitBonLivGBtn: TAdvToolButton; }
    ValiderBVlivBonLivGImg.ClassName; { ValiderBVlivBonLivGImg: TsImage; }
    Shape5.ClassName; { Shape5: TShape; }
    BonLTotalTTCNewLbl.ClassName; { BonLTotalTTCNewLbl: TLabel; }
    BonLTotalHTNewLbl.ClassName; { BonLTotalHTNewLbl: TLabel; }
    TotalTVANewLbl.ClassName; { TotalTVANewLbl: TLabel; }
    Label19.ClassName; { Label19: TLabel; }
    ObserBonLivGLbl.ClassName; { ObserBonLivGLbl: TLabel; }
    BonLRemiseHTNewLbl.ClassName; { BonLRemiseHTNewLbl: TLabel; }
    ValiderBVLivBonLivGLbl.ClassName; { ValiderBVLivBonLivGLbl: TLabel; }
    Label20.ClassName; { Label20: TLabel; }
    NameClientGErrorP.ClassName; { NameClientGErrorP: TPanel; }
    Panel6.ClassName; { Panel6: TPanel; }
    sSpeedButton4.ClassName; { sSpeedButton4: TsSpeedButton; }
    sSpeedButton5.ClassName; { sSpeedButton5: TsSpeedButton; }
    sSpeedButton6.ClassName; { sSpeedButton6: TsSpeedButton; }
    sSpeedButton7.ClassName; { sSpeedButton7: TsSpeedButton; }
    Panel7.ClassName; { Panel7: TPanel; }
    Panel8.ClassName; { Panel8: TPanel; }
    Panel9.ClassName; { Panel9: TPanel; }
    Panel10.ClassName; { Panel10: TPanel; }
    Panel11.ClassName; { Panel11: TPanel; }
    DateBonLivGD.ClassName; { DateBonLivGD: TDateTimePicker; }
    ClientBonLivGCbx.ClassName; { ClientBonLivGCbx: TComboBox; }
    Panel12.ClassName; { Panel12: TPanel; }
    ProduitBonLivGCbx.ClassName; { ProduitBonLivGCbx: TComboBox; }
    ResherchPARDesProduitsRdioBtn.ClassName; { ResherchPARDesProduitsRdioBtn: TRadioButton; }
    ResherchPARCBProduitsRdioBtn.ClassName; { ResherchPARCBProduitsRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    ResherchPARRefProduitsRdioBtn.ClassName; { ResherchPARRefProduitsRdioBtn: TRadioButton; }
    Panel13.ClassName; { Panel13: TPanel; }
    ModePaieBonLivGCbx.ClassName; { ModePaieBonLivGCbx: TComboBox; }
    CompteBonLivGCbx.ClassName; { CompteBonLivGCbx: TComboBox; }
    Panel5.ClassName; { Panel5: TPanel; }
    BonLivGClientOLDCredit.ClassName; { BonLivGClientOLDCredit: TLabel; }
    BonLivGClientNEWCredit.ClassName; { BonLivGClientNEWCredit: TLabel; }
    Label18.ClassName; { Label18: TLabel; }
    Label17.ClassName; { Label17: TLabel; }
    Panel15.ClassName; { Panel15: TPanel; }
    NChequeBonLivGCbx.ClassName; { NChequeBonLivGCbx: TEdit; }
    ObserBonLivGMem.ClassName; { ObserBonLivGMem: TMemo; }
    ProduitsListDBGridEh.ClassName; { ProduitsListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    Panel4.ClassName; { Panel4: TPanel; }
    Shape4.ClassName; { Shape4: TShape; }
    Shape3.ClassName; { Shape3: TShape; }
    Shape2.ClassName; { Shape2: TShape; }
    label13.ClassName; { label13: TLabel; }
    label12.ClassName; { label12: TLabel; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    BonLivTotalTVALbl.ClassName; { BonLivTotalTVALbl: TLabel; }
    BonLivRegleLbl.ClassName; { BonLivRegleLbl: TLabel; }
    BonLivResteLbl.ClassName; { BonLivResteLbl: TLabel; }
    BonLivTotalHTLbl.ClassName; { BonLivTotalHTLbl: TLabel; }
    BonLivTotalTTCLbl.ClassName; { BonLivTotalTTCLbl: TLabel; }
    Label10.ClassName; { Label10: TLabel; }
    Label3.ClassName; { Label3: TLabel; }
    Label9.ClassName; { Label9: TLabel; }
    Label11.ClassName; { Label11: TLabel; }
    Label14.ClassName; { Label14: TLabel; }
    Label15.ClassName; { Label15: TLabel; }
    Label21.ClassName; { Label21: TLabel; }
    Label22.ClassName; { Label22: TLabel; }
    BonLivGOLDStock.ClassName; { BonLivGOLDStock: TLabel; }
    BonLivGNEWStock.ClassName; { BonLivGNEWStock: TLabel; }
    Panel14.ClassName; { Panel14: TPanel; }
    Edit1.ClassName; { Edit1: TEdit; }
    Edit2.ClassName; { Edit2: TEdit; }
    RemisePerctageBonLivGEdt.ClassName; { RemisePerctageBonLivGEdt: TEdit; }
    RemiseBonLivGEdt.ClassName; { RemiseBonLivGEdt: TEdit; }
    Panel1.ClassName; { Panel1: TPanel; }
    RemiseTypeBonLivGCbx.ClassName; { RemiseTypeBonLivGCbx: TComboBox; }
    BonLivPListDataS.ClassName; { BonLivPListDataS: TDataSource; }
    BindingsList1.ClassName; { BindingsList1: TBindingsList; }
    LinkPropertyToFieldCaption.ClassName; { LinkPropertyToFieldCaption: TLinkPropertyToField; }
    LinkControlToField1.ClassName; { LinkControlToField1: TLinkControlToField; }
    BindSourceDB1.ClassName; { BindSourceDB1: TBindSourceDB; }
  end;

{ BonLivF: TBonLivF }
  with TBonLivF(nil) do { UBonLiv.pas }
  begin
    TopP.ClassName; { TopP: TPanel; }
    EditBARecBtn.ClassName; { EditBARecBtn: TAdvToolButton; }
    DeleteBARecBtn.ClassName; { DeleteBARecBtn: TAdvToolButton; }
    AddBARecBtn.ClassName; { AddBARecBtn: TAdvToolButton; }
    ResearchBALivLbl.ClassName; { ResearchBALivLbl: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    sSpeedButton3.ClassName; { sSpeedButton3: TsSpeedButton; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    ArrowsPnl.ClassName; { ArrowsPnl: TPanel; }
    LastBARecbtn.ClassName; { LastBARecbtn: TsSpeedButton; }
    NextBARecbtn.ClassName; { NextBARecbtn: TsSpeedButton; }
    PreviosBARecbtn.ClassName; { PreviosBARecbtn: TsSpeedButton; }
    FisrtBARecbtn.ClassName; { FisrtBARecbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchBVLivEdt.ClassName; { ResearchBVLivEdt: TSearchBox; }
    Panel2.ClassName; { Panel2: TPanel; }
    DateEndBVLivD.ClassName; { DateEndBVLivD: TDateTimePicker; }
    DateStartBVLivD.ClassName; { DateStartBVLivD: TDateTimePicker; }
    ResherchBVLNumBRdioBtn.ClassName; { ResherchBVLNumBRdioBtn: TRadioButton; }
    ResherchBVLFourRdioBtn.ClassName; { ResherchBVLFourRdioBtn: TRadioButton; }
    Panel4.ClassName; { Panel4: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    BVLivListDBGridEh.ClassName; { BVLivListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    BonLivListDataS.ClassName; { BonLivListDataS: TDataSource; }
  end;

{ ComptoirF: TComptoirF }
  with TComptoirF(nil) do { UComptoir.pas }
  begin
  end;

{ FastProduitsListF: TFastProduitsListF }
  with TFastProduitsListF(nil) do { UFastProduitsList.pas }
  begin
    TopP.ClassName; { TopP: TPanel; }
    ResearchProduitsLbl.ClassName; { ResearchProduitsLbl: TLabel; }
    CancelProduitGBtn.ClassName; { CancelProduitGBtn: TAdvToolButton; }
    OKProduitGBtn.ClassName; { OKProduitGBtn: TAdvToolButton; }
    LastClientbtn.ClassName; { LastClientbtn: TsSpeedButton; }
    NextClientbtn.ClassName; { NextClientbtn: TsSpeedButton; }
    PreviosClientbtn.ClassName; { PreviosClientbtn: TsSpeedButton; }
    FisrtClientbtn.ClassName; { FisrtClientbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchProduitsEdt.ClassName; { ResearchProduitsEdt: TSearchBox; }
    ResherchPARDesProduitsRdioBtn.ClassName; { ResherchPARDesProduitsRdioBtn: TRadioButton; }
    ResherchPARDCodProduitsRdioBtn.ClassName; { ResherchPARDCodProduitsRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    ProduitsListDBGridEh.ClassName; { ProduitsListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    ProduitListDataS.ClassName; { ProduitListDataS: TDataSource; }
  end;

{ ModePaieListF: TModePaieListF }
  with TModePaieListF(nil) do { UModePaieList.pas }
  begin
    AdvToolButton1.ClassName; { AdvToolButton1: TAdvToolButton; }
    AdvToolButton2.ClassName; { AdvToolButton2: TAdvToolButton; }
    AdvToolButton3.ClassName; { AdvToolButton3: TAdvToolButton; }
    Label1.ClassName; { Label1: TLabel; }
    CodeBarresDBGridEh.ClassName; { CodeBarresDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    NameAddCodeBarreSEdt.ClassName; { NameAddCodeBarreSEdt: TEdit; }
    Panel1.ClassName; { Panel1: TPanel; }
    FormCaptionAddUniteSLbl.ClassName; { FormCaptionAddUniteSLbl: TLabel; }
    BottomP.ClassName; { BottomP: TPanel; }
    OKAddUniteSBtn.ClassName; { OKAddUniteSBtn: TAdvToolButton; }
  end;

{ FSplashAddCompte: TFSplashAddCompte }
  with TFSplashAddCompte(nil) do { USplashAddCompte.pas }
  begin
    NameAddCompteSLbl.ClassName; { NameAddCompteSLbl: TLabel; }
    OKAddCompteSBtn.ClassName; { OKAddCompteSBtn: TAdvToolButton; }
    CancelAddCompteSBtn.ClassName; { CancelAddCompteSBtn: TAdvToolButton; }
    RequiredAddCompteSlbl.ClassName; { RequiredAddCompteSlbl: TLabel; }
    RequiredStarAddCompteSLbl.ClassName; { RequiredStarAddCompteSLbl: TLabel; }
    Image1.ClassName; { Image1: TsImage; }
    CompteAddCompteSLbl.ClassName; { CompteAddCompteSLbl: TLabel; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    NameAddCompteSErrorP.ClassName; { NameAddCompteSErrorP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    FormCaptionAddUniteSLbl.ClassName; { FormCaptionAddUniteSLbl: TLabel; }
    LineP.ClassName; { LineP: TPanel; }
    NameAddCompteSEdt.ClassName; { NameAddCompteSEdt: TEdit; }
    NatureAddCompteSCbx.ClassName; { NatureAddCompteSCbx: TComboBox; }
    NumAddCompteSEdt.ClassName; { NumAddCompteSEdt: TEdit; }
    SoldeAddCompteSCbx.ClassName; { SoldeAddCompteSCbx: TEdit; }
  end;

{ FSplashVersement: TFSplashVersement }
  with TFSplashVersement(nil) do { USplashVersement.pas }
  begin
    Label3.ClassName; { Label3: TLabel; }
    OldCreditVersementSLbl.ClassName; { OldCreditVersementSLbl: TLabel; }
    Label9.ClassName; { Label9: TLabel; }
    Label10.ClassName; { Label10: TLabel; }
    ResteVersementSLbl.ClassName; { ResteVersementSLbl: TLabel; }
    OKVersementSBtn.ClassName; { OKVersementSBtn: TAdvToolButton; }
    CancelVersementSBtn.ClassName; { CancelVersementSBtn: TAdvToolButton; }
    Label8.ClassName; { Label8: TLabel; }
    MontantTTCVersementSLbl.ClassName; { MontantTTCVersementSLbl: TLabel; }
    RequiredVerVersementSlbl.ClassName; { RequiredVerVersementSlbl: TLabel; }
    RequiredStarVerVersementSLbl.ClassName; { RequiredStarVerVersementSLbl: TLabel; }
    RegleVersementSGLbl.ClassName; { RegleVersementSGLbl: TLabel; }
    Panel1.ClassName; { Panel1: TPanel; }
    Label1.ClassName; { Label1: TLabel; }
    TotalVersementSLbl.ClassName; { TotalVersementSLbl: TLabel; }
    Panel2.ClassName; { Panel2: TPanel; }
    Panel3.ClassName; { Panel3: TPanel; }
    Panel4.ClassName; { Panel4: TPanel; }
    Panel5.ClassName; { Panel5: TPanel; }
    Panel6.ClassName; { Panel6: TPanel; }
    VerVersementSErrorP.ClassName; { VerVersementSErrorP: TPanel; }
    VerVersementSEdt.ClassName; { VerVersementSEdt: TEdit; }
    RegleVersementSGSlider.ClassName; { RegleVersementSGSlider: TsSlider; }
  end;

{ BonFacVF: TBonFacVF }
  with TBonFacVF(nil) do { UBonFacV.pas }
  begin
    BVFacListDBGridEh.ClassName; { BVFacListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    TopP.ClassName; { TopP: TPanel; }
    EditBVFacBtn.ClassName; { EditBVFacBtn: TAdvToolButton; }
    DeleteBVFacBtn.ClassName; { DeleteBVFacBtn: TAdvToolButton; }
    AddBVFacBtn.ClassName; { AddBVFacBtn: TAdvToolButton; }
    ResearchBARecLbl.ClassName; { ResearchBARecLbl: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    sSpeedButton3.ClassName; { sSpeedButton3: TsSpeedButton; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    ArrowsPnl.ClassName; { ArrowsPnl: TPanel; }
    LastBVFacbtn.ClassName; { LastBVFacbtn: TsSpeedButton; }
    NextBVFacbtn.ClassName; { NextBVFacbtn: TsSpeedButton; }
    PreviosBVFacbtn.ClassName; { PreviosBVFacbtn: TsSpeedButton; }
    FisrtBVFacbtn.ClassName; { FisrtBVFacbtn: TsSpeedButton; }
    LineP.ClassName; { LineP: TPanel; }
    Panel1.ClassName; { Panel1: TPanel; }
    S01.ClassName; { S01: TPanel; }
    S02.ClassName; { S02: TPanel; }
    ResearchBVFacEdt.ClassName; { ResearchBVFacEdt: TSearchBox; }
    Panel2.ClassName; { Panel2: TPanel; }
    DateEndBVFacD.ClassName; { DateEndBVFacD: TDateTimePicker; }
    DateStartBVFacD.ClassName; { DateStartBVFacD: TDateTimePicker; }
    Panel3.ClassName; { Panel3: TPanel; }
    BonFacVListDataS.ClassName; { BonFacVListDataS: TDataSource; }
  end;

{ BonFacVGestionF: TBonFacVGestionF }
  with TBonFacVGestionF(nil) do { UBonFacVGestion.pas }
  begin
    Panel3.ClassName; { Panel3: TPanel; }
    TopP2.ClassName; { TopP2: TPanel; }
    Shape1.ClassName; { Shape1: TShape; }
    EditBVFacBonFacVGBtn.ClassName; { EditBVFacBonFacVGBtn: TAdvToolButton; }
    AddBVFacBonFacVGBtn.ClassName; { AddBVFacBonFacVGBtn: TAdvToolButton; }
    Label4.ClassName; { Label4: TLabel; }
    sSpeedButton1.ClassName; { sSpeedButton1: TsSpeedButton; }
    sSpeedButton2.ClassName; { sSpeedButton2: TsSpeedButton; }
    sSpeedButton3.ClassName; { sSpeedButton3: TsSpeedButton; }
    Label5.ClassName; { Label5: TLabel; }
    Label6.ClassName; { Label6: TLabel; }
    NumBonFacVGEdt.ClassName; { NumBonFacVGEdt: TLabel; }
    AddFourBonFacVGBtn.ClassName; { AddFourBonFacVGBtn: TAdvToolButton; }
    Label8.ClassName; { Label8: TLabel; }
    ValiderBVFacBonRecGBtn.ClassName; { ValiderBVFacBonRecGBtn: TAdvToolButton; }
    Label7.ClassName; { Label7: TLabel; }
    AddModePaieBonFacVGBtn.ClassName; { AddModePaieBonFacVGBtn: TAdvToolButton; }
    Label16.ClassName; { Label16: TLabel; }
    AddCompteBonFacVGBtn.ClassName; { AddCompteBonFacVGBtn: TAdvToolButton; }
    ListAddProduitBonFacVGBtn.ClassName; { ListAddProduitBonFacVGBtn: TAdvToolButton; }
    DeleteProduitBonFacVGBtn.ClassName; { DeleteProduitBonFacVGBtn: TAdvToolButton; }
    NewAddProduitBonFacVGBtn.ClassName; { NewAddProduitBonFacVGBtn: TAdvToolButton; }
    RequiredFourGlbl.ClassName; { RequiredFourGlbl: TLabel; }
    EnterAddProduitBonFacVGBtn.ClassName; { EnterAddProduitBonFacVGBtn: TAdvToolButton; }
    ClearProduitBonFacVGBtn.ClassName; { ClearProduitBonFacVGBtn: TAdvToolButton; }
    ValiderBVFacBonRecGImg.ClassName; { ValiderBVFacBonRecGImg: TsImage; }
    Shape5.ClassName; { Shape5: TShape; }
    BonFacVTotalTTCNewLbl.ClassName; { BonFacVTotalTTCNewLbl: TLabel; }
    BonFacVTotalHTNewLbl.ClassName; { BonFacVTotalHTNewLbl: TLabel; }
    TotalTVANewLbl.ClassName; { TotalTVANewLbl: TLabel; }
    Label19.ClassName; { Label19: TLabel; }
    ObserBonFacVGLbl.ClassName; { ObserBonFacVGLbl: TLabel; }
    BonFacVRemiseHTNewLbl.ClassName; { BonFacVRemiseHTNewLbl: TLabel; }
    ValiderBVFacBonRecGLbl.ClassName; { ValiderBVFacBonRecGLbl: TLabel; }
    NameFourGErrorP.ClassName; { NameFourGErrorP: TPanel; }
    Panel6.ClassName; { Panel6: TPanel; }
    sSpeedButton4.ClassName; { sSpeedButton4: TsSpeedButton; }
    sSpeedButton5.ClassName; { sSpeedButton5: TsSpeedButton; }
    sSpeedButton6.ClassName; { sSpeedButton6: TsSpeedButton; }
    sSpeedButton7.ClassName; { sSpeedButton7: TsSpeedButton; }
    Panel7.ClassName; { Panel7: TPanel; }
    Panel8.ClassName; { Panel8: TPanel; }
    Panel9.ClassName; { Panel9: TPanel; }
    Panel10.ClassName; { Panel10: TPanel; }
    Panel11.ClassName; { Panel11: TPanel; }
    DateBonFacVGD.ClassName; { DateBonFacVGD: TDateTimePicker; }
    FournisseurBonFacVGCbx.ClassName; { FournisseurBonFacVGCbx: TComboBox; }
    Panel12.ClassName; { Panel12: TPanel; }
    ProduitBonFacVGCbx.ClassName; { ProduitBonFacVGCbx: TComboBox; }
    ResherchPARDesProduitsRdioBtn.ClassName; { ResherchPARDesProduitsRdioBtn: TRadioButton; }
    ResherchPARCBProduitsRdioBtn.ClassName; { ResherchPARCBProduitsRdioBtn: TRadioButton; }
    Panel2.ClassName; { Panel2: TPanel; }
    ResherchPARRefProduitsRdioBtn.ClassName; { ResherchPARRefProduitsRdioBtn: TRadioButton; }
    Panel13.ClassName; { Panel13: TPanel; }
    ModePaieBonFacVGCbx.ClassName; { ModePaieBonFacVGCbx: TComboBox; }
    CompteBonFacVGCbx.ClassName; { CompteBonFacVGCbx: TComboBox; }
    Panel5.ClassName; { Panel5: TPanel; }
    BonFacVGFourOLDCredit.ClassName; { BonFacVGFourOLDCredit: TLabel; }
    BonFacVGFourNEWCredit.ClassName; { BonFacVGFourNEWCredit: TLabel; }
    Label18.ClassName; { Label18: TLabel; }
    Label17.ClassName; { Label17: TLabel; }
    Panel15.ClassName; { Panel15: TPanel; }
    NChequeBonFacVGCbx.ClassName; { NChequeBonFacVGCbx: TEdit; }
    ObserBonFacVGMem.ClassName; { ObserBonFacVGMem: TMemo; }
    ProduitsListDBGridEh.ClassName; { ProduitsListDBGridEh: TDBGridEh; }
    RowDetailData.ClassName; { RowDetailData: TRowDetailPanelControlEh; }
    Panel4.ClassName; { Panel4: TPanel; }
    Shape4.ClassName; { Shape4: TShape; }
    Shape3.ClassName; { Shape3: TShape; }
    Shape2.ClassName; { Shape2: TShape; }
    label13.ClassName; { label13: TLabel; }
    label12.ClassName; { label12: TLabel; }
    Label1.ClassName; { Label1: TLabel; }
    Label2.ClassName; { Label2: TLabel; }
    BonFacVTotalTVALbl.ClassName; { BonFacVTotalTVALbl: TLabel; }
    BonFacVRegleLbl.ClassName; { BonFacVRegleLbl: TLabel; }
    BonFacVResteLbl.ClassName; { BonFacVResteLbl: TLabel; }
    BonFacVTotalHTLbl.ClassName; { BonFacVTotalHTLbl: TLabel; }
    BonFacVTotalTTCLbl.ClassName; { BonFacVTotalTTCLbl: TLabel; }
    Label10.ClassName; { Label10: TLabel; }
    Label3.ClassName; { Label3: TLabel; }
    Label9.ClassName; { Label9: TLabel; }
    Label11.ClassName; { Label11: TLabel; }
    Label14.ClassName; { Label14: TLabel; }
    Label15.ClassName; { Label15: TLabel; }
    Panel14.ClassName; { Panel14: TPanel; }
    Edit1.ClassName; { Edit1: TEdit; }
    Edit2.ClassName; { Edit2: TEdit; }
    RemisePerctageBonFacVGEdt.ClassName; { RemisePerctageBonFacVGEdt: TEdit; }
    RemiseBonFacVGEdt.ClassName; { RemiseBonFacVGEdt: TEdit; }
    Panel1.ClassName; { Panel1: TPanel; }
    RemiseTypeBonFacVGCbx.ClassName; { RemiseTypeBonFacVGCbx: TComboBox; }
    BonRecPListDataS.ClassName; { BonRecPListDataS: TDataSource; }
    BindSourceDB1.ClassName; { BindSourceDB1: TBindSourceDB; }
    BindingsList1.ClassName; { BindingsList1: TBindingsList; }
    LinkPropertyToFieldCaption.ClassName; { LinkPropertyToFieldCaption: TLinkPropertyToField; }
    LinkControlToField1.ClassName; { LinkControlToField1: TLinkControlToField; }
  end;

end;

end.
