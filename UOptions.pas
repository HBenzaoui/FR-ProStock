unit UOptions;

interface

uses
  Winapi.Windows,Data.DB,Vcl.Imaging.jpeg, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, sPanel,
  acSlider, AdvToolBtn, acImage, Vcl.ExtDlgs, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ComCtrls, sPageControl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxRadioGroup, cxGroupBox, sTrackBar, cxTrackBar,
  Vcl.Buttons, sSpeedButton, CPort;

type
  TFOptions = class(TForm)
    TopP: TPanel;
    S1: TPanel;
    P1: TPanel;
    P2: TPanel;
    Label1: TLabel;
    LineP: TPanel;
    AutoImL: TLabel;
    APrintOptionGSlider: TsSlider;
    PrintersListFOptionCaisseCbx: TComboBox;
    CaiseeLbl: TLabel;
    Label2: TLabel;
    PrintersListFOptionCodeBCbx: TComboBox;
    Label3: TLabel;
    FormatFOptionCodeBCbx: TComboBox;
    Label4: TLabel;
    PrixVenteListFOptionCodeBCbx: TComboBox;
    Label5: TLabel;
    NameCompanyOptionEdt: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    TelCompanyOptionEdt: TEdit;
    MobCompanyOptionEdt: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    AdrCompanyOptionEdt: TEdit;
    OpenPictureDialogProduitG: TOpenPictureDialog;
    ImageCompanyOptionImg: TsImage;
    ImageDeleteProduitGBtn: TAdvToolButton;
    ImageEditProduitGBtn: TAdvToolButton;
    Label10: TLabel;
    sAlphaImageList1: TsAlphaImageList;
    Shape1: TShape;
    OKFPrintingBtn: TAdvToolButton;
    OptionsPgControl: TsPageControl;
    GeneralOptionGTB: TsTabSheet;
    sTabSheet1: TsTabSheet;
    Panel1: TPanel;
    Label11: TLabel;
    Panel5: TPanel;
    Label17: TLabel;
    Panel7: TPanel;
    Label12: TLabel;
    PoleDisplayActiveSdr: TsSlider;
    PoleDisplayCOMListLbl: TLabel;
    PoleDisplayCOMListCbx: TComboBox;
    Label14: TLabel;
    TiroirCaisseActiveSdr: TsSlider;
    PoleDisplayMsgLbl: TLabel;
    PoleDisplayMsgEdt: TEdit;
    CaseCOMLbl: TLabel;
    TiroirCaisseCOMListCbx: TComboBox;
    TiroirCaisseCasePRINTRbtn: TcxRadioButton;
    CasePrinterLbl: TLabel;
    TiroirCaissePrinterListCbx: TComboBox;
    TiroirCaisseCaseCOMRbtn: TcxRadioButton;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    TiroirCaisseCasePasswordLbl: TLabel;
    TiroirCaisseCasePasswordSdr: TsSlider;
    PoleDisplayMsg2Lbl: TLabel;
    PoleDisplayMsg2Edt: TEdit;
    PoleDisplayTotalLbl: TLabel;
    PoleDisplayTotalEdt: TComboBox;
    TestPoleBtn: TsSpeedButton;
    TestPoleLbl: TLabel;
    TestTeroirBtn: TsSpeedButton;
    TestTeroirLbl: TLabel;
    ComPort1: TComPort;
    sTabSheet2: TsTabSheet;
    Panel11: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    ResetDBBtn: TsSpeedButton;
    Label21: TLabel;
    AllSdr0: TsSlider;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label16: TLabel;
    CtrSdr1: TsSlider;
    Label18: TLabel;
    BLSdr2: TsSlider;
    Label19: TLabel;
    FVSdr4: TsSlider;
    BRSdr3: TsSlider;
    Label20: TLabel;
    Label22: TLabel;
    RFSdr8: TsSlider;
    RCSdr7: TsSlider;
    Label23: TLabel;
    FPSdr6: TsSlider;
    Label24: TLabel;
    Label25: TLabel;
    FASdr5: TsSlider;
    BankSdr10: TsSlider;
    Label26: TLabel;
    Label27: TLabel;
    CaisseSdr9: TsSlider;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    ClientCreditSdr20: TsSlider;
    localSdr19: TsSlider;
    ClientSdr12: TsSlider;
    ChargeSdr14: TsSlider;
    FourSdr13: TsSlider;
    UniteSdr18: TsSlider;
    PSFamileSdr17: TsSlider;
    PFamileSdr16: TsSlider;
    PerteSdr15: TsSlider;
    ProduitSdr11: TsSlider;
    ResetDBPaswordGEdt: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    FourCreditSdr21: TsSlider;
    sTabSheet3: TsTabSheet;
    Panel12: TPanel;
    Panel13: TPanel;
    Label40: TLabel;
    procedure FormShow(Sender: TObject);
    procedure OKFPrintingBtnClick(Sender: TObject);
    procedure ImageCompanyOptionImgMouseEnter(Sender: TObject);
    procedure ImageCompanyOptionImgMouseLeave(Sender: TObject);
    procedure ImageCompanyOptionImgClick(Sender: TObject);
    procedure ImageDeleteProduitGBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TiroirCaisseCaseCOMRbtnClick(Sender: TObject);
    procedure TiroirCaisseCasePRINTRbtnClick(Sender: TObject);
    procedure PoleDisplayActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure TiroirCaisseActiveSdrChanging(Sender: TObject;
      var CanChange: Boolean);
    procedure TiroirCaisseCOMListCbxDropDown(Sender: TObject);
    procedure PoleDisplayCOMListCbxDropDown(Sender: TObject);
    procedure TestPoleBtnClick(Sender: TObject);
    procedure TestTeroirBtnClick(Sender: TObject);
    procedure AllSdr0Changing(Sender: TObject; var CanChange: Boolean);
    procedure ResetDBBtnClick(Sender: TObject);
    procedure ResetDBPaswordGEdtChange(Sender: TObject);
    procedure ProduitSdr11Changing(Sender: TObject; var CanChange: Boolean);
    procedure ClientSdr12Changing(Sender: TObject; var CanChange: Boolean);
    procedure FourSdr13Changing(Sender: TObject; var CanChange: Boolean);
    procedure ResetDBPaswordGEdtMouseEnter(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOptions: TFOptions;

implementation

uses
Printers,IniFiles, UClientGestion, UMainF, UWorkingSplash;


{$R *.dfm}

procedure TFOptions.AllSdr0Changing(Sender: TObject; var CanChange: Boolean);
begin
 if AllSdr0.SliderOn = False then
  begin
    CtrSdr1.SliderOn:= True;
    BLSdr2.SliderOn:= True;
    BRSdr3.SliderOn:= True;
    FVSdr4.SliderOn:= True;
    FASdr5.SliderOn:= True;
    FPSdr6.SliderOn:= True;
    RCSdr7.SliderOn:= True;
    RFSdr8.SliderOn:= True;
    CaisseSdr9.SliderOn:= True;
    BankSdr10.SliderOn:= True;
    ProduitSdr11.SliderOn:= True;
    ClientSdr12.SliderOn:= True;
    FourSdr13.SliderOn:= True;
    ChargeSdr14.SliderOn:= True;
    PerteSdr15.SliderOn:= True;
    PFamileSdr16.SliderOn:= True;
    PSFamileSdr17.SliderOn:= True;
    UniteSdr18.SliderOn:= True;
    localSdr19.SliderOn:= True;
    ClientCreditSdr20.SliderOn:= True;
    FourCreditSdr21.SliderOn:= True;



    CtrSdr1.Enabled:= False;
    BLSdr2.Enabled:= False;
    BRSdr3.Enabled:= False;
    FVSdr4.Enabled:= False;
    FASdr5.Enabled:= False;
    FPSdr6.Enabled:= False;
    RCSdr7.Enabled:= False;
    RFSdr8.Enabled:= False;
    CaisseSdr9.Enabled:= False;
    BankSdr10.Enabled:= False;
    ProduitSdr11.Enabled:= False;
    ClientSdr12.Enabled:= False;
    FourSdr13.Enabled:= False;
    ChargeSdr14.Enabled:= False;
    PerteSdr15.Enabled:= False;
    PFamileSdr16.Enabled:= False;
    PSFamileSdr17.Enabled:= False;
    UniteSdr18.Enabled:= False;
    localSdr19.Enabled:= False;
    ClientCreditSdr20.Enabled:= False;
    FourCreditSdr21.Enabled:= False;

  end else
      begin
          CtrSdr1.SliderOn:= False;
          BLSdr2.SliderOn:= False;
          BRSdr3.SliderOn:= False;
          FVSdr4.SliderOn:= False;
          FASdr5.SliderOn:= False;
          FPSdr6.SliderOn:= False;
          RCSdr7.SliderOn:= False;
          RFSdr8.SliderOn:= False;
          CaisseSdr9.SliderOn:= False;
          BankSdr10.SliderOn:= False;
          ProduitSdr11.SliderOn:= False;
          ClientSdr12.SliderOn:= False;
          FourSdr13.SliderOn:= False;
          ChargeSdr14.SliderOn:= False;
          PerteSdr15.SliderOn:= False;
          PFamileSdr16.SliderOn:= False;
          PSFamileSdr17.SliderOn:= False;
          UniteSdr18.SliderOn:= False;
          localSdr19.SliderOn:= False;
          ClientCreditSdr20.SliderOn:= False;
          FourCreditSdr21.SliderOn:= False;


          CtrSdr1.Enabled:= True;
          BLSdr2.Enabled:= True;
          BRSdr3.Enabled:= True;
          FVSdr4.Enabled:= True;
          FASdr5.Enabled:= True;
          FPSdr6.Enabled:= True;
          RCSdr7.Enabled:= True;
          RFSdr8.Enabled:= True;
          CaisseSdr9.Enabled:= True;
          BankSdr10.Enabled:= True;
          ProduitSdr11.Enabled:= True;
          ClientSdr12.Enabled:= True;
          FourSdr13.Enabled:= True;
          ChargeSdr14.Enabled:= True;
          PerteSdr15.Enabled:= True;
          PFamileSdr16.Enabled:= True;
          PSFamileSdr17.Enabled:= True;
          UniteSdr18.Enabled:= True;
          localSdr19.Enabled:= True;
          ClientCreditSdr20.Enabled:= True;
          FourCreditSdr21.Enabled:= True;
      end;
end;

procedure TFOptions.ClientSdr12Changing(Sender: TObject;
  var CanChange: Boolean);
begin
   if ClientSdr12.SliderOn = False then
  begin
    CtrSdr1.SliderOn:= True;
    BLSdr2.SliderOn:= True;
    FVSdr4.SliderOn:= True;
    FPSdr6.SliderOn:= True;
    RCSdr7.SliderOn:= True;

        CtrSdr1.Enabled:= False;
        BLSdr2.Enabled:= False;
        FVSdr4.Enabled:= False;
        FPSdr6.Enabled:= False;
        RCSdr7.Enabled:= False;

  end else
      begin

       if ProduitSdr11.SliderOn <> true then
       begin
          CtrSdr1.SliderOn:= False;
          BLSdr2.SliderOn:= False;
          FVSdr4.SliderOn:= False;
          FPSdr6.SliderOn:= False;

        CtrSdr1.Enabled:= True;
        BLSdr2.Enabled:= True;
        FVSdr4.Enabled:= True;
        FPSdr6.Enabled:= True;

       end;
          RCSdr7.SliderOn:= False;
          RCSdr7.Enabled:= True;

      end;
end;

procedure TFOptions.FormClose(Sender: TObject; var Action: TCloseAction);
Var CanChange : Boolean;
begin
NormalForms;


  ResetDBPaswordGEdt.Text:='';
  ResetDBPaswordGEdtChange(Sender);

  AllSdr0.SliderOn:= False;
  CtrSdr1.SliderOn:= False;
  BLSdr2.SliderOn:= False;
  BRSdr3.SliderOn:= False;
  FVSdr4.SliderOn:= False;
  FASdr5.SliderOn:= False;
  FPSdr6.SliderOn:= False;
  RCSdr7.SliderOn:= False;
  RFSdr8.SliderOn:= False;
  CaisseSdr9.SliderOn:= False;
  BankSdr10.SliderOn:= False;
  ProduitSdr11.SliderOn:= False;
  ClientSdr12.SliderOn:= False;
  FourSdr13.SliderOn:= False;
  ChargeSdr14.SliderOn:= False;
  PerteSdr15.SliderOn:= False;
  PFamileSdr16.SliderOn:= False;
  PSFamileSdr17.SliderOn:= False;
  UniteSdr18.SliderOn:= False;
  localSdr19.SliderOn:= False;
  ClientCreditSdr20.SliderOn:= False;
  FourCreditSdr21.SliderOn:= False;

end;

procedure TFOptions.FormCreate(Sender: TObject);
begin

   PrintersListFOptionCaisseCbx.Items.Assign(Printer.Printers);
   PrintersListFOptionCodeBCbx.Items.Assign(Printer.Printers);
   TiroirCaissePrinterListCbx.Items.Assign(Printer.Printers);
end;


procedure TFOptions.FormShow(Sender: TObject);
var
  S: TMemoryStream;
  Jpg: TJPEGImage;
  Ini: TIniFile;
  CanChange : Boolean;
begin
 GrayForms;
 OptionsPgControl.TabIndex:= 0;

//    inherited;



    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
    APrintOptionGSlider.SliderOn:=           Ini.ReadBool('', 'Auto Print',APrintOptionGSlider.SliderOn);
    PrintersListFOptionCaisseCbx.ItemIndex:= Ini.ReadInteger('', 'Printer Caisse',PrintersListFOptionCaisseCbx.ItemIndex);
    PrintersListFOptionCodeBCbx.ItemIndex := Ini.ReadInteger('', 'Printer Barcode',PrintersListFOptionCodeBCbx.ItemIndex);
    FormatFOptionCodeBCbx.ItemIndex :=       Ini.ReadInteger('', 'Format Barcode',FormatFOptionCodeBCbx.ItemIndex);
    PrixVenteListFOptionCodeBCbx.ItemIndex:= Ini.ReadInteger('', 'Prix de Vente',PrixVenteListFOptionCodeBCbx.ItemIndex);

    PoleDisplayActiveSdr.SliderOn:=          Ini.ReadBool('', 'Afficheur client Active',PoleDisplayActiveSdr.SliderOn);
     if PoleDisplayActiveSdr.SliderOn then
     begin
      PoleDisplayActiveSdr.SliderOn:=       Ini.ReadBool('',    'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
      PoleDisplayCOMListCbx.Text:=          Ini.ReadString('',  'Afficheur client PORT', PoleDisplayCOMListCbx.Text);
      PoleDisplayMsgEdt.Text:=              Ini.ReadString('',  'Afficheur client Msg', PoleDisplayMsgEdt.Text);
      PoleDisplayMsg2Edt.Text:=             Ini.ReadString('',  'Afficheur client Msg2', PoleDisplayMsg2Edt.Text);
      PoleDisplayTotalEdt.ItemIndex:=       Ini.ReadInteger('', 'Afficheur client Fin msg', PoleDisplayTotalEdt.ItemIndex);
     end else
         begin
          PoleDisplayActiveSdr.SliderOn:=       Ini.ReadBool('',    'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
          PoleDisplayCOMListCbx.Text:=          '';
          PoleDisplayMsgEdt.Text:=              'SOYEZ LES BIENVENUS';
          PoleDisplayMsg2Edt.Text:=             'MERCI ET A BIENTOT';
          PoleDisplayTotalEdt.ItemIndex:=       0;
         end;

    TiroirCaisseActiveSdr.SliderOn:=          Ini.ReadBool('', 'Tiroir caisse Active',TiroirCaisseActiveSdr.SliderOn);
     if TiroirCaisseActiveSdr.SliderOn then
     begin
      TiroirCaisseActiveSdr.SliderOn:=      Ini.ReadBool('', 'Tiroir caisse Active',TiroirCaisseActiveSdr.SliderOn);
        if Ini.ReadInteger('' ,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag) = 0 then
        begin
           TiroirCaisseCaseCOMRbtn.Checked:= True;
           TiroirCaisseCOMListCbx.Text:=          Ini.ReadString('' ,'Tiroir caisse COM', TiroirCaisseCOMListCbx.Text);
           TiroirCaissePrinterListCbx.ItemIndex:=   -1;
        end else
            begin
             if Ini.ReadInteger('' ,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag) = 1 then
             begin
               TiroirCaisseCasePRINTRbtn.Checked:= True;
               TiroirCaissePrinterListCbx.ItemIndex:=   Ini.ReadInteger(Caption,'Tiroir caisse PRINT', TiroirCaissePrinterListCbx.ItemIndex);
               TiroirCaisseCOMListCbx.Text:=         '';
             end;
            end;
      TiroirCaisseCasePasswordSdr.SliderOn:= Ini.ReadBool(Caption,'Tiroir caisse PASSWORD', TiroirCaisseCasePasswordSdr.SliderOn);
     end else
         begin

            TiroirCaisseCaseCOMRbtn.Enabled:=False;
            CaseCOMLbl.Enabled:=False;
            TiroirCaisseCOMListCbx.Enabled:=False;

            TiroirCaisseCasePRINTRbtn.Enabled:=False;
            CasePrinterLbl.Enabled:=False;
            TiroirCaissePrinterListCbx.Enabled:=False;

            TiroirCaisseCasePasswordLbl.Enabled:=False;
            TiroirCaisseCasePasswordSdr.Enabled:=False;

//          TiroirCaisseActiveSdrChanging(Sender,CanChange);
         end;

    Ini.Free;

      ImageEditProduitGBtn.Visible:=false;
      ImageDeleteProduitGBtn.Visible:=false;
      ImageCompanyOptionImg.ImageIndex:=0;
      ImageCompanyOptionImg.Stretch:=False;
      ImageCompanyOptionImg.Grayed:=True;
      ImageCompanyOptionImg.Blend:=40;
      ImageCompanyOptionImg.Picture.Graphic:= nil;
      OpenPictureDialogProduitG.CleanupInstance;


 if not (MainForm.CompanyTable.IsEmpty) then
    begin
 //---------SHOW THE DATA ON THE CLIENT GESTION PANEL -----------------------------//
      with MainForm.CompanyTable do
      begin
        if (fieldbyname('nom_comp').Value <> null) then
        begin
         NameCompanyOptionEdt.Text := fieldbyname('nom_comp').Value;
        end;
        if (fieldbyname('fix_comp').Value <> null) then
        begin
         TelCompanyOptionEdt.Text := fieldbyname('fix_comp').Value;
        end;
        if (fieldbyname('mob_comp').Value <> null) then
        begin
         MobCompanyOptionEdt.Text := fieldbyname('mob_comp').Value;
        end;
        if (fieldbyname('adr_comp').Value <> null) then
        begin
         AdrCompanyOptionEdt.Text := fieldbyname('adr_comp').Value;
        end;

        if (fieldbyname('logo_comp').Value <> null) then
        begin
          S := TMemoryStream.Create;
          try
            TBlobField(FieldByName('logo_comp')).SaveToStream(S);
            S.Position := 0;
            Jpg := TJPEGImage.Create;
            try
              Jpg.LoadFromStream(S);
               ImageCompanyOptionImg.ImageIndex := -1;
               ImageCompanyOptionImg.Stretch := True;
               ImageEditProduitGBtn.Visible := true;
               ImageDeleteProduitGBtn.Visible := True;
               ImageCompanyOptionImg.Grayed := False;
               ImageCompanyOptionImg.Blend := 0;
               ImageCompanyOptionImg.Picture.Assign(Jpg);
                finally
              Jpg.Free;
            end;
          finally
            S.Free;
          end;
        end

      end;

    end;


    NameCompanyOptionEdt.SetFocus;
end;



procedure TFOptions.FourSdr13Changing(Sender: TObject; var CanChange: Boolean);
begin
 if FourSdr13.SliderOn = False then
  begin
    BRSdr3.SliderOn:= True;
    FASdr5.SliderOn:= True;
    RFSdr8.SliderOn:= True;

    BRSdr3.Enabled:= False;
    FASdr5.Enabled:= False;
    RFSdr8.Enabled:= False;

  end else
      begin
            if ProduitSdr11.SliderOn <> true then
       begin
          BRSdr3.SliderOn:= False;
          FASdr5.SliderOn:= False;

          BRSdr3.Enabled:= True;
          FASdr5.Enabled:= True;

       end;
         RFSdr8.SliderOn:= False;
         RFSdr8.Enabled:= True;
      end;
end;

procedure TFOptions.OKFPrintingBtnClick(Sender: TObject);
var  S : TStream;
Ini: TIniFile;
begin

   if NameCompanyOptionEdt.Text <> '' then
    begin
     if MainForm.CompanyTable.IsEmpty then
      begin
           with MainForm.CompanyTable do  begin
            Insert;
            fieldbyname('code_comp').Value := 1;
            fieldbyname('nom_comp').Value := NameCompanyOptionEdt.Text;
            fieldbyname('fix_comp').Value := TelCompanyOptionEdt.Text;
            fieldbyname('mob_comp').Value := MobCompanyOptionEdt.Text;
            fieldbyname('adr_comp').Value := AdrCompanyOptionEdt.Text;

              {Creat the stream using BlobStream is better the to the blob dictely }

              S :=CreateBlobStream(FieldByName('logo_comp'), bmWrite);
             try
              if NOt (ImageCompanyOptionImg.ImageIndex = 0) then
               begin
                ImageCompanyOptionImg.Picture.Graphic.SaveToStream(S);
                S.Position := 0 ;
               end
                 else
               begin
               ImageCompanyOptionImg.Picture.Graphic := nil;
               ImageCompanyOptionImg.ImageIndex:=0;
               ImageCompanyOptionImg.Grayed:=True;
                 end ;

             finally
              S.Free;
             end;

             post;
           end;

      end else
          begin

               with MainForm.CompanyTable do  begin

              Edit;
              fieldbyname('nom_comp').Value := NameCompanyOptionEdt.Text;
              fieldbyname('fix_comp').Value := TelCompanyOptionEdt.Text;
              fieldbyname('mob_comp').Value := MobCompanyOptionEdt.Text;
              fieldbyname('adr_comp').Value := AdrCompanyOptionEdt.Text;

              {Creat the stream using BlobStream is better the to the blob dictely }

              S :=CreateBlobStream(FieldByName('logo_comp'), bmWrite);
             try
              if NOt (ImageCompanyOptionImg.ImageIndex = 0) then
               begin
                ImageCompanyOptionImg.Picture.Graphic.SaveToStream(S);
                S.Position := 0 ;
               end
                 else
               begin
               ImageCompanyOptionImg.Picture.Graphic := nil;
               ImageCompanyOptionImg.ImageIndex:=0;
               ImageCompanyOptionImg.Grayed:=True;
                 end ;

             finally
              S.Free;
             end;

              post;

            end;

          end;

    end;

  begin
    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    Ini.WriteBool(Caption,   'Auto Print', APrintOptionGSlider.SliderOn);
    Ini.WriteInteger(Caption, 'Printer Caisse', PrintersListFOptionCaisseCbx.ItemIndex);
    Ini.WriteInteger(Caption, 'Printer Barcode', PrintersListFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Format Barcode', FormatFOptionCodeBCbx.ItemIndex);
    Ini.WriteInteger(Caption,'Prix de Vente', PrixVenteListFOptionCodeBCbx.ItemIndex);

    if PoleDisplayActiveSdr.SliderOn then
    begin
    Ini.WriteBool(Caption,'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
    Ini.WriteString(Caption,'Afficheur client PORT', PoleDisplayCOMListCbx.Text);
    Ini.WriteString(Caption,'Afficheur client Msg', PoleDisplayMsgEdt.Text);
    Ini.WriteString(Caption,'Afficheur client Msg2', PoleDisplayMsg2Edt.Text);
    Ini.WriteInteger(Caption,'Afficheur client Fin msg', PoleDisplayTotalEdt.ItemIndex);
    end else
        begin
           Ini.WriteBool(Caption,'Afficheur client Active', PoleDisplayActiveSdr.SliderOn);
        end;

    if TiroirCaisseActiveSdr.SliderOn then
    begin
    Ini.WriteBool(Caption,'Tiroir caisse Active', TiroirCaisseActiveSdr.SliderOn);
     if TiroirCaisseCaseCOMRbtn.Checked then
     begin
     Ini.WriteInteger(Caption,'Tiroir caisse Cas', TiroirCaisseCaseCOMRbtn.Tag);
     Ini.WriteString(Caption,'Tiroir caisse COM', TiroirCaisseCOMListCbx.Text);
     end else
         begin
          if TiroirCaisseCasePRINTRbtn.Checked then
          begin
           Ini.WriteInteger(Caption,'Tiroir caisse Cas', TiroirCaisseCasePRINTRbtn.Tag);
           Ini.WriteInteger(Caption,'Tiroir caisse PRINT', TiroirCaissePrinterListCbx.ItemIndex);
          end;
         end;
     Ini.WriteBool(Caption,'Tiroir caisse PASSWORD', TiroirCaisseCasePasswordSdr.SliderOn);

     MainForm.OuvertureduTiroirCaisse1.Visible:= True;

    end else
        begin
             Ini.WriteBool(Caption,'Tiroir caisse Active', TiroirCaisseActiveSdr.SliderOn);

             MainForm.OuvertureduTiroirCaisse1.Visible:= False;
        end;


    Ini.Free;
//  inherited;
  end;

   Close;
  end;

procedure TFOptions.ImageCompanyOptionImgMouseEnter(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse enter
  if ImageCompanyOptionImg.Picture.Graphic = nil then
  begin
    ImageCompanyOptionImg.Grayed:=false;
    ImageCompanyOptionImg.Blend:=20;
  end else
      begin
      ImageCompanyOptionImg.Grayed:=false;
      ImageCompanyOptionImg.Blend:=20;
      end;
end;

procedure TFOptions.ImageCompanyOptionImgMouseLeave(Sender: TObject);
begin
//---- use this code to change color and grayad the icon wehn mouse leave
  if  ImageCompanyOptionImg.Picture.Graphic <> nil then
    begin
     ImageCompanyOptionImg.Grayed:= False;
     ImageCompanyOptionImg.Blend:=0;
     end else
    begin
    ImageCompanyOptionImg.Grayed:= true;
    ImageCompanyOptionImg.Blend:=50;
    end;
end;

procedure TFOptions.ImageCompanyOptionImgClick(Sender: TObject);
var
 Jpg:  TJPEGImage;
 bmp: TBitmap;
 scale: Double;
begin

 if  OpenPictureDialogProduitG.Execute then
 begin
   Jpg := TJPEGImage.Create;
   try
   ImageEditProduitGBtn.Visible:=true;
   ImageDeleteProduitGBtn.Visible:=True;
   ImageCompanyOptionImg.Stretch:=True;
   ImageCompanyOptionImg.Grayed:=False;
   ImageCompanyOptionImg.Blend:=0;
   ImageCompanyOptionImg.ImageIndex:= -1;

    Jpg.LoadFromFile(OpenPictureDialogProduitG.FileName);
          if jpg.Height > jpg.Width then
        scale := 1200 / jpg.Height
      else
        scale := 1920 / jpg.Width;
      bmp := TBitmap.Create;
      try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg.Width * scale);
        bmp.Height:= Round(jpg.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
        {Convert back to JPEG and save to file}
          jpg.Assign(bmp);
        {CompressionQuality JPEG and save to file}

//          Jpg.CompressionQuality:= 50;
//          Jpg.Compress;

          ImageCompanyOptionImg.Picture.Assign(Jpg);
      finally
        bmp.free;
      end;

   finally

     Jpg.Free

   end;

 end else begin exit
 end;

end;

procedure TFOptions.ImageDeleteProduitGBtnClick(Sender: TObject);
begin
ImageEditProduitGBtn.Visible:=false;
ImageDeleteProduitGBtn.Visible:=false;
ImageCompanyOptionImg.ImageIndex:=0;
ImageCompanyOptionImg.Stretch:=False;
ImageCompanyOptionImg.Grayed:=True;
ImageCompanyOptionImg.Blend:=40;
ImageCompanyOptionImg.Picture.Graphic:= nil;
OpenPictureDialogProduitG.CleanupInstance;
MainForm.CompanyTable.Edit;
MainForm.CompanyTable.FieldValues['logo_comp']:= null;
MainForm.CompanyTable.Post;
end;




procedure TFOptions.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
 begin
 key := #0;

  close;

 end;

 if key = #13 then

  begin
   key := #0;
   OKFPrintingBtnClick(Sender);

  end;
end;



// this function is to get a liot of available COM ports
function ExtComName(ComNr: DWORD): string;
begin
  if ComNr > 9 then
    Result := Format('\\\\.\\COM%d', [ComNr])
  else
    Result := Format('COM%d', [ComNr]);
end;

function CheckCom(AComNumber: Integer): Integer;
var
  FHandle: THandle;
begin
  Result := 0;
  FHandle := CreateFile(PChar(ExtComName(AComNumber)),
    GENERIC_READ or GENERIC_WRITE,
    0, {exclusive access}
    nil, {no security attrs}
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle)
  else
    Result := GetLastError;
end;


procedure TFOptions.PoleDisplayCOMListCbxDropDown(Sender: TObject);
//var
//  XX, Err: Integer;
  begin
//    PoleDisplayCOMListCbx.Items.Clear;
//    for XX := 1 to 20 do
//    begin
//      Err := CheckCom(XX);
//      if (Err = 0) or (Err = ERROR_ACCESS_DENIED) then
//      begin
//        {the Port exists, if  Err = ERROR_ACCESS_DENIED then the port is already open}
////        ShowMessage('Port COM'+ IntToStr(xx)) ;
//        PoleDisplayCOMListCbx.Items.Add('COM'+IntToStr(xx));
//        //  Break
//        end;
//
//        end;

end;


procedure TFOptions.ProduitSdr11Changing(Sender: TObject;
  var CanChange: Boolean);
begin
 if ProduitSdr11.SliderOn = False then
  begin
    CtrSdr1.SliderOn:= True;
    BLSdr2.SliderOn:= True;
    BRSdr3.SliderOn:= True;
    FVSdr4.SliderOn:= True;
    FASdr5.SliderOn:= True;
    FPSdr6.SliderOn:= True;

    PerteSdr15.SliderOn:= True;

    CtrSdr1.Enabled:= False;
    BLSdr2.Enabled:= False;
    BRSdr3.Enabled:= False;
    FVSdr4.Enabled:= False;
    FASdr5.Enabled:= False;
    FPSdr6.Enabled:= False;

    PerteSdr15.Enabled:= False;


  end else
      begin
       if ClientSdr12.SliderOn <> true then
       begin
          CtrSdr1.SliderOn:= False;
          BLSdr2.SliderOn:= False;
          FVSdr4.SliderOn:= False;
          FPSdr6.SliderOn:= False;

          CtrSdr1.Enabled:= True;
          BLSdr2.Enabled:= True;
          FVSdr4.Enabled:= True;
          FPSdr6.Enabled:= True;

       end;
       if FourSdr13.SliderOn <> true then
       begin
          BRSdr3.SliderOn:= False;
          FASdr5.SliderOn:= False;

         BRSdr3.Enabled:= True;
         FASdr5.Enabled:= True;
       end;

          PerteSdr15.SliderOn:= False;
          PerteSdr15.Enabled:= True;

      end;
end;

procedure TFOptions.ResetDBBtnClick(Sender: TObject);
begin


   if AllSdr0.SliderOn = True then
   begin

            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
//            SetWindowPos(FOptions.Handle, HWND_NOTOPMOST, 0, 0, 0, 0,SWP_NOMOVE or SWP_NOSIZE);
//            SetWindowPos(FWorkingSplash.Handle,HWND_TOPMOST,0,0,0,0,HWND_TOPMOST OR  SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
            FWorkingSplash.Show;

        MainForm.InactiveTables;

        try
          MainForm.SQLQuery.Active:= False;
          MainForm.SQLQuery.SQL.Clear;
          MainForm.SQLQuery.SQL.add('SELECT truncate_tables(''postgres'')');
          MainForm.SQLQuery.Active:= True;
        finally
          MainForm.SQLQuery.Active:= False;
          MainForm.SQLQuery.SQL.Clear;
        end;

//     MainForm.CreateTablesFDScript.ExecuteAll;                                 // Eable this is only for releasing
     MainForm.InsertDataFDScript.ExecuteAll;                                   // Eable this is only for releasing

     MainForm.ActiveTables;
     MainForm.RerfreshTables;

       FWorkingSplash.Close;
       FWorkingSplash.WorkingNormalForms;



   end else
       begin

            FWorkingSplash.dxActivityIndicator1.Active:= True;
            FWorkingSplash.Left := Screen.Width div 2 - (FWorkingSplash.Width div 2);
            FWorkingSplash.Top :=  (Screen.Height- FWorkingSplash.Height) div 2;
            FWorkingSplash.Show;

        MainForm.InactiveTables;

        if CtrSdr1.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_ctr');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_ctr_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvctr <> 0 OR code_bvctr is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvctr <> 0 OR code_bvctr is null  ' );

        end;

        if BLSdr2.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_liv');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_liv_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvliv <> 0 OR code_bvliv is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvliv <> 0 OR code_bvliv is null  ' );

        end;
        if BRSdr3.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_rec');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_rec_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_barec <> 0 OR code_barec is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_barec <> 0 OR code_barec is null  ' );

        end;
        if FVSdr4.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_fac');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonv_fac_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bvfac <> 0 OR code_bvfac is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where code_bvfac <> 0 OR code_bvfac is null  ' );


        end;
        if FASdr5.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_fac');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bona_fac_list');
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_bafac <> 0 OR code_bafac is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where code_bafac <> 0 OR code_bafac is null  ' );

        end;
        if FPSdr6.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonp_fac');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  bonp_fac_list');

        end;
        if RCSdr7.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_rc <> 0 OR code_rc is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regclient where bon_or_no_rc = 1  ' );

        end;
        if RFSdr8.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('DELETE FROM opt_cas_bnk where code_rf <> 0 OR code_rf is null  ' );
         MainForm.GstockdcConnection.ExecSQL('DELETE FROM regfournisseur where bon_or_no_rf = 1  ' );

        end;
        if CaisseSdr9.SliderOn = True then
        begin
          try
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.add('SELECT code_cmpt from compte WHERE nature_cmpt = false ');
            MainForm.SQLQuery.Active:= True;

            while NOT MainForm.SQLQuery.Eof do
            begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM transfer_comptes where code_cmpts = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger)
               +'OR code_cmptd = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger) );
               MainForm.SQLQuery.Next;
            end;


          finally
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
          end;

          MainForm.GstockdcConnection.ExecSQL('DELETE FROM compte where nature_cmpt = false ' );
          MainForm.GstockdcConnection.ExecSQL('INSERT INTO "public"."compte" ("code_cmpt", "nom_cmpt", "refer_cmpt", "nature_cmpt", "oldcredit_cmpt", "date_cmpt") VALUES (''1'', ''Caisse'', ''00001'', ''f'', ''0'', ''2016-01-01'') ' );

        end;
        if BankSdr10.SliderOn = True then
        begin

          try
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
            MainForm.SQLQuery.SQL.add('SELECT code_cmpt from compte WHERE nature_cmpt = true ');
            MainForm.SQLQuery.Active:= True;

            while NOT MainForm.SQLQuery.Eof do
            begin
              MainForm.GstockdcConnection.ExecSQL('DELETE FROM transfer_comptes where code_cmpts = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger)
               +'OR code_cmptd = '+IntToStr(MainForm.SQLQuery.FieldByName('code_cmpt').AsInteger) );
               MainForm.SQLQuery.Next;
            end;


          finally
            MainForm.SQLQuery.Active:= False;
            MainForm.SQLQuery.SQL.Clear;
          end;

          MainForm.GstockdcConnection.ExecSQL('DELETE FROM compte where nature_cmpt = true ' );
          MainForm.GstockdcConnection.ExecSQL('INSERT INTO "public"."compte" ("code_cmpt", "nom_cmpt", "refer_cmpt", "nature_cmpt", "oldcredit_cmpt", "date_cmpt") VALUES (''2'', ''Banque'', ''00002'', ''t'', ''0'', ''2016-01-01'') ' );

        end;
        if ProduitSdr11.SliderOn = True then
        begin

         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  produit');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  codebarres');

        end;
        if ClientSdr12.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  client');
        end;
        if FourSdr13.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  fournisseur');
        end;
        if ChargeSdr14.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  charges');
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  charge_type');
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  charge_s_type');
        end;
        if PerteSdr15.SliderOn = True then
        begin
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  pertes');
         MainForm.GstockdcConnection.ExecSQL('TRUNCATE  perte_type');
        end;
        if PFamileSdr16.SliderOn = True then
        begin
           MainForm.GstockdcConnection.ExecSQL('TRUNCATE  famproduit');
        end;
        if PSFamileSdr17.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  sfamproduit');
        end;
        if UniteSdr18.SliderOn = True then
        begin
           MainForm.GstockdcConnection.ExecSQL('TRUNCATE  unite');
        end;
        if localSdr19.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('TRUNCATE  localisation');
        end;
        if ClientCreditSdr20.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('UPDATE client set (oldcredit_c ,credit_c) = (0,0) ;');
        end;
        if FourCreditSdr21.SliderOn = True then
        begin
          MainForm.GstockdcConnection.ExecSQL('UPDATE fournisseur set (oldcredit_f ,credit_f) = (0,0) ;');
        end;

         MainForm.ActiveTables;
         MainForm.RerfreshTables;

         FWorkingSplash.Close;
         FWorkingSplash.WorkingNormalForms;
       end;



end;

procedure TFOptions.ResetDBPaswordGEdtChange(Sender: TObject);
begin

 if ResetDBPaswordGEdt.Text = 'p88stk' then
 begin
  ResetDBBtn.Enabled:= True;
  Label21.Enabled:= True;


 end else
     begin
        ResetDBBtn.Enabled:= False;
        Label21.Enabled:= False;

     end;

end;

procedure TFOptions.ResetDBPaswordGEdtMouseEnter(Sender: TObject);
begin
   Application.HintPause := 500;      // 250 mSec before hint is shown
   Application.HintHidePause := 5000;
   ResetDBPaswordGEdt.ShowHint:= True;
   ResetDBPaswordGEdt.Hint:='Appelez Hamza : 213 661 45 81 97 ';
end;

procedure TFOptions.TiroirCaisseCOMListCbxDropDown(Sender: TObject);
//var
//  XX, Err: Integer;
  begin
//    TiroirCaisseCOMListCbx.Items.Clear;
//    for XX := 1 to 20 do
//    begin
//      Err := CheckCom(XX);
//      if (Err = 0) or (Err = ERROR_ACCESS_DENIED) then
//      begin
//        {the Port exists, if  Err = ERROR_ACCESS_DENIED then the port is already open}
////        ShowMessage('Port COM'+ IntToStr(xx)) ;
//        TiroirCaisseCOMListCbx.Items.Add('COM'+IntToStr(xx));
//        //  Break
//        end;
//
//        end;

end;

procedure TFOptions.TiroirCaisseCaseCOMRbtnClick(Sender: TObject);
begin

  CaseCOMLbl.Enabled:= True;
  TiroirCaisseCOMListCbx.Enabled:= True;

  CasePrinterLbl.Enabled:= False;
  TiroirCaissePrinterListCbx.Enabled:= False;


end;

procedure TFOptions.TiroirCaisseCasePRINTRbtnClick(Sender: TObject);
begin

  CasePrinterLbl.Enabled:= True;
  TiroirCaissePrinterListCbx.Enabled:= True;

  CaseCOMLbl.Enabled:= False;
  TiroirCaisseCOMListCbx.Enabled:= False;

end;



procedure TFOptions.PoleDisplayActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin

 if PoleDisplayActiveSdr.SliderOn = False then
  begin
  PoleDisplayCOMListLbl.Enabled:=True;
  PoleDisplayCOMListCbx.Enabled:=True;

  PoleDisplayMsgLbl.Enabled:=True;
  PoleDisplayMsgEdt.Enabled:=True;
  PoleDisplayMsg2Lbl.Enabled:=True;
  PoleDisplayMsg2Edt.Enabled:=True;

  PoleDisplayTotalLbl.Enabled:=True;
  PoleDisplayTotalEdt.Enabled:=True;

  TestPoleBtn.Enabled:=True;
  TestPoleLbl.Enabled:=True;

  end else
      begin
        PoleDisplayCOMListLbl.Enabled:=False;
        PoleDisplayCOMListCbx.Enabled:=False;

        PoleDisplayMsgLbl.Enabled:=False;
        PoleDisplayMsgEdt.Enabled:=False;
        PoleDisplayMsg2Lbl.Enabled:=False;
        PoleDisplayMsg2Edt.Enabled:=False;

        PoleDisplayTotalLbl.Enabled:=False;
        PoleDisplayTotalEdt.Enabled:=False;

        TestPoleBtn.Enabled:=False;
        TestPoleLbl.Enabled:=False;
      end;



end;





procedure TFOptions.TiroirCaisseActiveSdrChanging(Sender: TObject;
  var CanChange: Boolean);
begin
    if TiroirCaisseActiveSdr.SliderOn = False then
  begin

    TiroirCaisseCaseCOMRbtn.Enabled:=True;
    CaseCOMLbl.Enabled:=True;
    TiroirCaisseCOMListCbx.Enabled:=True;

    TiroirCaisseCasePRINTRbtn.Enabled:=True;
    CasePrinterLbl.Enabled:=True;
    TiroirCaissePrinterListCbx.Enabled:=True;

    TiroirCaisseCasePasswordLbl.Enabled:=True;
    TiroirCaisseCasePasswordSdr.Enabled:=True;

    TestTeroirBtn.Enabled:=True;
    TestTeroirLbl.Enabled:=True;


  end else
      begin

          TiroirCaisseCaseCOMRbtn.Enabled:=False;
          CaseCOMLbl.Enabled:=False;
          TiroirCaisseCOMListCbx.Enabled:=False;

          TiroirCaisseCasePRINTRbtn.Enabled:=False;
          CasePrinterLbl.Enabled:=False;
          TiroirCaissePrinterListCbx.Enabled:=False;

          TiroirCaisseCasePasswordLbl.Enabled:=False;
          TiroirCaisseCasePasswordSdr.Enabled:=False;
          TiroirCaisseCasePasswordSdr.SliderOn:=False;

          TestTeroirBtn.Enabled:=False;
          TestTeroirLbl.Enabled:=False;
                 end;


end;


procedure TFOptions.TestPoleBtnClick(Sender: TObject);
begin
          try
            ComPort1.Port := PoleDisplayCOMListCbx.Text;// 'COM7';
            ComPort1.Events := [];
            ComPort1.FlowControl.ControlDTR := dtrEnable;
            ComPort1.FlowControl.ControlRTS := rtsEnable;
            ComPort1.Open; // open port
            ComPort1.WriteUnicodeString('                                        '#13#10);
//            ComPort1.WriteUnicodeString('                                        '#13#10);
            ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
            ComPort1.Close;
          except
            ShowMessage('Svp, brancher l''Afficheur Client');
          end;


end;


procedure TFOptions.TestTeroirBtnClick(Sender: TObject);
var myPrinter   : TPrinter;

begin


  if TiroirCaisseCasePRINTRbtn.Checked then
  begin
    myPrinter := printer;
    with myPrinter do
    begin

      Printer.PrinterIndex:= TiroirCaissePrinterListCbx.ItemIndex;
      // Start printing
      BeginDoc;

      // Set up a large blue font
      Canvas.Font.Size   := 12;
      Canvas.Font.Color  := clBlack;

      // Write out the page size
      Canvas.TextOut(20, 40, 'C''est un TEST :D');

      // Finish printing
      EndDoc;
    end;
  end;

  if TiroirCaisseCaseCOMRbtn.Checked then
  begin
          try
            ComPort1.Port := TiroirCaisseCOMListCbx.Text;// 'COM7';
            ComPort1.Events := [];
            ComPort1.FlowControl.ControlDTR := dtrEnable;
            ComPort1.FlowControl.ControlRTS := rtsEnable;
            ComPort1.Open; // open port
            ComPort1.WriteUnicodeString('                                        '#13#10);
            ComPort1.WriteUnicodeString('C''est un TEST :D'+#13#10); // send test command
            ComPort1.Close;
          except
            ShowMessage('Svp, brancher le Tiroir Caisse');
          end;
  end;


end;

End.

